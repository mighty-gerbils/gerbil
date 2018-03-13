(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12778_ . _args12779_)
      (let* ((_g1278112791_
              (lambda (_g1278212788_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1278212788_)))
             (_g1278012819_
              (lambda (_g1278212794_)
                (if (gx#stx-pair? _g1278212794_)
                    (let ((_e1278412796_ (gx#stx-e _g1278212794_)))
                      (let ((_hd1278512799_ (##car _e1278412796_))
                            (_tl1278612801_ (##cdr _e1278412796_)))
                        ((lambda (_L12804_)
                           (let ((_$e12814_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L12804_)
                                   '#f)))
                             (if _$e12814_
                                 ((lambda (_method12817_)
                                    (apply _method12817_
                                           _stx12778_
                                           _args12779_))
                                  _$e12814_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12778_
                                  _L12804_))))
                         _hd1278512799_)))
                    (_g1278112791_ _g1278212794_)))))
        (_g1278012819_ _stx12778_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12775_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12775_ '%#begin-annotation void)
           (table-set! _tbl12775_ '%#lambda void)
           (table-set! _tbl12775_ '%#case-lambda void)
           (table-set! _tbl12775_ '%#let-values void)
           (table-set! _tbl12775_ '%#letrec-values void)
           (table-set! _tbl12775_ '%#letrec*-values void)
           (table-set! _tbl12775_ '%#quote void)
           (table-set! _tbl12775_ '%#quote-syntax void)
           (table-set! _tbl12775_ '%#call void)
           (table-set! _tbl12775_ '%#if void)
           (table-set! _tbl12775_ '%#ref void)
           (table-set! _tbl12775_ '%#set! void)
           (table-set! _tbl12775_ '%#struct-instance? void)
           (table-set! _tbl12775_ '%#struct-direct-instance? void)
           (table-set! _tbl12775_ '%#struct-ref void)
           (table-set! _tbl12775_ '%#struct-set! void)
           (table-set! _tbl12775_ '%#struct-direct-ref void)
           (table-set! _tbl12775_ '%#struct-direct-set! void)
           (table-set! _tbl12775_ '%#struct-unchecked-ref void)
           (table-set! _tbl12775_ '%#struct-unchecked-set! void)
           _tbl12775_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12771_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12771_ '%#begin void)
           (table-set! _tbl12771_ '%#begin-syntax void)
           (table-set! _tbl12771_ '%#begin-foreign void)
           (table-set! _tbl12771_ '%#module void)
           (table-set! _tbl12771_ '%#import void)
           (table-set! _tbl12771_ '%#export void)
           (table-set! _tbl12771_ '%#provide void)
           (table-set! _tbl12771_ '%#extern void)
           (table-set! _tbl12771_ '%#define-values void)
           (table-set! _tbl12771_ '%#define-syntax void)
           (table-set! _tbl12771_ '%#define-alias void)
           (table-set! _tbl12771_ '%#declare void)
           _tbl12771_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl12767_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12767_ (force gxc#&void-special-form))
           (hash-copy! _tbl12767_ (force gxc#&void-expression))
           _tbl12767_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl12763_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12763_ '%#begin-annotation false)
           (table-set! _tbl12763_ '%#lambda false)
           (table-set! _tbl12763_ '%#case-lambda false)
           (table-set! _tbl12763_ '%#let-values false)
           (table-set! _tbl12763_ '%#letrec-values false)
           (table-set! _tbl12763_ '%#letrec*-values false)
           (table-set! _tbl12763_ '%#quote false)
           (table-set! _tbl12763_ '%#quote-syntax false)
           (table-set! _tbl12763_ '%#call false)
           (table-set! _tbl12763_ '%#if false)
           (table-set! _tbl12763_ '%#ref false)
           (table-set! _tbl12763_ '%#set! false)
           (table-set! _tbl12763_ '%#struct-instance? false)
           (table-set! _tbl12763_ '%#struct-direct-instance? false)
           (table-set! _tbl12763_ '%#struct-ref false)
           (table-set! _tbl12763_ '%#struct-set! false)
           (table-set! _tbl12763_ '%#struct-direct-ref false)
           (table-set! _tbl12763_ '%#struct-direct-set! false)
           (table-set! _tbl12763_ '%#struct-unchecked-ref false)
           (table-set! _tbl12763_ '%#struct-unchecked-set! false)
           _tbl12763_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12759_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12759_ '%#begin false)
           (table-set! _tbl12759_ '%#begin-syntax false)
           (table-set! _tbl12759_ '%#begin-foreign false)
           (table-set! _tbl12759_ '%#module false)
           (table-set! _tbl12759_ '%#import false)
           (table-set! _tbl12759_ '%#export false)
           (table-set! _tbl12759_ '%#provide false)
           (table-set! _tbl12759_ '%#extern false)
           (table-set! _tbl12759_ '%#define-values false)
           (table-set! _tbl12759_ '%#define-syntax false)
           (table-set! _tbl12759_ '%#define-alias false)
           (table-set! _tbl12759_ '%#declare false)
           _tbl12759_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl12755_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12755_ (force gxc#&false-special-form))
           (hash-copy! _tbl12755_ (force gxc#&false-expression))
           _tbl12755_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl12751_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12751_ (force gxc#&void-expression))
           (hash-copy! _tbl12751_ (force gxc#&void-special-form))
           (table-set! _tbl12751_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12751_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl12751_ '%#module gxc#collect-module%)
           (table-set!
            _tbl12751_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl12751_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl12751_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx12744_ . _args12746_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12744_ _args12746_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl12741_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12741_ (force gxc#&void))
           (table-set! _tbl12741_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12741_ '%#module gxc#lift-modules-module%)
           _tbl12741_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx12734_ . _args12736_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12734_ _args12736_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl12731_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12731_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl12731_ '%#begin-syntax false)
           (table-set! _tbl12731_ '%#begin-foreign true)
           (table-set! _tbl12731_ '%#begin-annotation true)
           (table-set! _tbl12731_ '%#module false)
           (table-set! _tbl12731_ '%#import false)
           (table-set! _tbl12731_ '%#export false)
           (table-set! _tbl12731_ '%#provide false)
           (table-set! _tbl12731_ '%#extern false)
           (table-set! _tbl12731_ '%#define-values true)
           (table-set! _tbl12731_ '%#define-syntax false)
           (table-set! _tbl12731_ '%#define-alias false)
           (table-set! _tbl12731_ '%#declare false)
           (table-set! _tbl12731_ '%#lambda true)
           (table-set! _tbl12731_ '%#case-lambda true)
           (table-set! _tbl12731_ '%#let-values true)
           (table-set! _tbl12731_ '%#letrec-values true)
           (table-set! _tbl12731_ '%#letrec*-values true)
           (table-set! _tbl12731_ '%#quote true)
           (table-set! _tbl12731_ '%#call true)
           (table-set! _tbl12731_ '%#if true)
           (table-set! _tbl12731_ '%#ref true)
           (table-set! _tbl12731_ '%#set! true)
           (table-set! _tbl12731_ '%#struct-instance? true)
           (table-set! _tbl12731_ '%#struct-direct-instance? true)
           (table-set! _tbl12731_ '%#struct-ref true)
           (table-set! _tbl12731_ '%#struct-set! true)
           (table-set! _tbl12731_ '%#struct-direct-ref true)
           (table-set! _tbl12731_ '%#struct-direct-set! true)
           (table-set! _tbl12731_ '%#struct-unchecked-ref true)
           (table-set! _tbl12731_ '%#struct-unchecked-set! true)
           _tbl12731_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx12724_ . _args12726_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12724_ _args12726_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl12721_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12721_ (force gxc#&false))
           (table-set! _tbl12721_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl12721_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl12721_ '%#lambda values)
           (table-set! _tbl12721_ '%#case-lambda values)
           (table-set!
            _tbl12721_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12721_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12721_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl12721_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx12714_ . _args12716_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12714_ _args12716_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (make-promise
     (lambda ()
       (let ((_tbl12711_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12711_ (force gxc#&false-expression))
           (table-set! _tbl12711_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl12711_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl12711_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl12711_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl12711_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl12711_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl12711_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl12711_ '%#quote gxc#count-values-single%)
           (table-set! _tbl12711_ '%#call gxc#count-values-call%)
           (table-set! _tbl12711_ '%#if gxc#count-values-if%)
           _tbl12711_)))))
  (define gxc#apply-count-values
    (lambda (_stx12704_ . _args12706_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12704_ _args12706_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl12701_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12701_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl12701_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12701_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12701_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl12701_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12701_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12701_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12701_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12701_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl12701_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl12697_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12697_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12697_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12697_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl12697_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx12690_ . _args12692_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12690_ _args12692_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl12687_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12687_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12687_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12687_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl12687_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl12687_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl12687_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl12687_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl12687_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl12687_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl12687_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl12687_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl12687_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl12687_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl12687_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl12687_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl12687_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl12687_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl12687_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl12687_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl12687_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl12687_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl12687_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl12687_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl12687_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl12687_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl12687_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx12680_ . _args12682_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12680_ _args12682_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl12677_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12677_ (force gxc#&generate-runtime))
           (table-set!
            _tbl12677_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl12677_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx12670_ . _args12672_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12670_ _args12672_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl12667_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12667_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl12667_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl12667_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl12667_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl12667_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl12667_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl12667_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl12667_ '%#quote void)
           (table-set! _tbl12667_ '%#quote-syntax void)
           (table-set! _tbl12667_ '%#call gxc#collect-operands)
           (table-set! _tbl12667_ '%#if gxc#collect-operands)
           (table-set! _tbl12667_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl12667_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl12667_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl12667_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl12667_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl12667_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl12667_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl12667_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl12667_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl12667_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl12667_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx12660_ . _args12662_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12660_ _args12662_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl12657_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12657_ (force gxc#&void-expression))
           (table-set! _tbl12657_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12657_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl12657_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl12657_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl12657_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl12657_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl12657_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl12657_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl12657_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12657_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl12657_ '%#begin-foreign void)
           (table-set! _tbl12657_ '%#declare void)
           _tbl12657_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx12650_ . _args12652_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12650_ _args12652_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl12647_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12647_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12647_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl12647_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12647_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl12647_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl12647_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12647_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12647_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12647_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12647_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12647_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12647_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12647_ '%#declare void)
           _tbl12647_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx12640_ . _args12642_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12640_ _args12642_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx12597_ . _args12598_)
      (let* ((_g1260012610_
              (lambda (_g1260112607_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1260112607_)))
             (_g1259912637_
              (lambda (_g1260112613_)
                (if (gx#stx-pair? _g1260112613_)
                    (let ((_e1260312615_ (gx#stx-e _g1260112613_)))
                      (let ((_hd1260412618_ (##car _e1260312615_))
                            (_tl1260512620_ (##cdr _e1260312615_)))
                        ((lambda (_L12623_)
                           (for-each
                            (lambda (_g1263212634_)
                              (apply gxc#compile-e _g1263212634_ _args12598_))
                            (gx#stx-e _L12623_)))
                         _tl1260512620_)))
                    (_g1260012610_ _g1260112613_)))))
        (_g1259912637_ _stx12597_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx12553_ . _args12554_)
      (let* ((_g1255612566_
              (lambda (_g1255712563_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1255712563_)))
             (_g1255512594_
              (lambda (_g1255712569_)
                (if (gx#stx-pair? _g1255712569_)
                    (let ((_e1255912571_ (gx#stx-e _g1255712569_)))
                      (let ((_hd1256012574_ (##car _e1255912571_))
                            (_tl1256112576_ (##cdr _e1255912571_)))
                        ((lambda (_L12579_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1258912591_)
                                 (apply gxc#compile-e
                                        _g1258912591_
                                        _args12554_))
                               (gx#stx-e _L12579_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1256112576_)))
                    (_g1255612566_ _g1255712569_)))))
        (_g1255512594_ _stx12553_))))
  (define gxc#collect-module%
    (lambda (_stx12495_ . _args12496_)
      (let* ((_g1249812512_
              (lambda (_g1249912509_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1249912509_)))
             (_g1249712550_
              (lambda (_g1249912515_)
                (if (gx#stx-pair? _g1249912515_)
                    (let ((_e1250212517_ (gx#stx-e _g1249912515_)))
                      (let ((_hd1250312520_ (##car _e1250212517_))
                            (_tl1250412522_ (##cdr _e1250212517_)))
                        (if (gx#stx-pair? _tl1250412522_)
                            (let ((_e1250512525_ (gx#stx-e _tl1250412522_)))
                              (let ((_hd1250612528_ (##car _e1250512525_))
                                    (_tl1250712530_ (##cdr _e1250512525_)))
                                ((lambda (_L12533_ _L12534_)
                                   (let ((_ctx12547_
                                          (gx#syntax-local-e__0 _L12534_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx12547_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args12496_))
                                      gx#current-expander-context
                                      _ctx12547_)))
                                 _tl1250712530_
                                 _hd1250612528_)))
                            (_g1249812512_ _g1249912515_))))
                    (_g1249812512_ _g1249912515_)))))
        (_g1249712550_ _stx12495_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx12427_ . _args12428_)
      (let* ((_g1243012447_
              (lambda (_g1243112444_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1243112444_)))
             (_g1242912492_
              (lambda (_g1243112450_)
                (if (gx#stx-pair? _g1243112450_)
                    (let ((_e1243412452_ (gx#stx-e _g1243112450_)))
                      (let ((_hd1243512455_ (##car _e1243412452_))
                            (_tl1243612457_ (##cdr _e1243412452_)))
                        (if (gx#stx-pair? _tl1243612457_)
                            (let ((_e1243712460_ (gx#stx-e _tl1243612457_)))
                              (let ((_hd1243812463_ (##car _e1243712460_))
                                    (_tl1243912465_ (##cdr _e1243712460_)))
                                (if (gx#stx-pair? _tl1243912465_)
                                    (let ((_e1244012468_
                                           (gx#stx-e _tl1243912465_)))
                                      (let ((_hd1244112471_
                                             (##car _e1244012468_))
                                            (_tl1244212473_
                                             (##cdr _e1244012468_)))
                                        (if (gx#stx-null? _tl1244212473_)
                                            ((lambda (_L12476_ _L12477_)
                                               (apply gxc#compile-e
                                                      _L12476_
                                                      _args12428_))
                                             _hd1244112471_
                                             _hd1243812463_)
                                            (_g1243012447_ _g1243112450_))))
                                    (_g1243012447_ _g1243112450_))))
                            (_g1243012447_ _g1243112450_))))
                    (_g1243012447_ _g1243112450_)))))
        (_g1242912492_ _stx12427_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx12359_ . _args12360_)
      (let* ((_g1236212379_
              (lambda (_g1236312376_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1236312376_)))
             (_g1236112424_
              (lambda (_g1236312382_)
                (if (gx#stx-pair? _g1236312382_)
                    (let ((_e1236612384_ (gx#stx-e _g1236312382_)))
                      (let ((_hd1236712387_ (##car _e1236612384_))
                            (_tl1236812389_ (##cdr _e1236612384_)))
                        (if (gx#stx-pair? _tl1236812389_)
                            (let ((_e1236912392_ (gx#stx-e _tl1236812389_)))
                              (let ((_hd1237012395_ (##car _e1236912392_))
                                    (_tl1237112397_ (##cdr _e1236912392_)))
                                (if (gx#stx-pair? _tl1237112397_)
                                    (let ((_e1237212400_
                                           (gx#stx-e _tl1237112397_)))
                                      (let ((_hd1237312403_
                                             (##car _e1237212400_))
                                            (_tl1237412405_
                                             (##cdr _e1237212400_)))
                                        (if (gx#stx-null? _tl1237412405_)
                                            ((lambda (_L12408_ _L12409_)
                                               (apply gxc#compile-e
                                                      _L12408_
                                                      _args12360_))
                                             _hd1237312403_
                                             _hd1237012395_)
                                            (_g1236212379_ _g1236312382_))))
                                    (_g1236212379_ _g1236312382_))))
                            (_g1236212379_ _g1236312382_))))
                    (_g1236212379_ _g1236312382_)))))
        (_g1236112424_ _stx12359_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx12241_ . _args12242_)
      (let* ((_g1224412272_
              (lambda (_g1224512269_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1224512269_)))
             (_g1224312356_
              (lambda (_g1224512275_)
                (if (gx#stx-pair? _g1224512275_)
                    (let ((_e1224812277_ (gx#stx-e _g1224512275_)))
                      (let ((_hd1224912280_ (##car _e1224812277_))
                            (_tl1225012282_ (##cdr _e1224812277_)))
                        (if (gx#stx-pair/null? _tl1225012282_)
                            (if (fx>= (gx#stx-length _tl1225012282_) '0)
                                (let ((_g12821_
                                       (gx#syntax-split-splice
                                        _tl1225012282_
                                        '0)))
                                  (begin
                                    (let ((_g12822_
                                           (if (##values? _g12821_)
                                               (##vector-length _g12821_)
                                               1)))
                                      (if (not (##fx= _g12822_ 2))
                                          (error "Context expects 2 values"
                                                 _g12822_)))
                                    (let ((_target1225112285_
                                           (##vector-ref _g12821_ 0))
                                          (_tl1225312287_
                                           (##vector-ref _g12821_ 1)))
                                      (if (gx#stx-null? _tl1225312287_)
                                          (letrec ((_loop1225412290_
                                                    (lambda (_hd1225212293_
                                                             _body1225812295_
                                                             _hd1225912297_)
                                                      (if (gx#stx-pair?
                                                           _hd1225212293_)
                                                          (let ((_e1225512300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1225212293_)))
                    (let ((_lp-hd1225612303_ (##car _e1225512300_))
                          (_lp-tl1225712305_ (##cdr _e1225512300_)))
                      (if (gx#stx-pair? _lp-hd1225612303_)
                          (let ((_e1226212308_ (gx#stx-e _lp-hd1225612303_)))
                            (let ((_hd1226312311_ (##car _e1226212308_))
                                  (_tl1226412313_ (##cdr _e1226212308_)))
                              (if (gx#stx-pair? _tl1226412313_)
                                  (let ((_e1226512316_
                                         (gx#stx-e _tl1226412313_)))
                                    (let ((_hd1226612319_
                                           (##car _e1226512316_))
                                          (_tl1226712321_
                                           (##cdr _e1226512316_)))
                                      (if (gx#stx-null? _tl1226712321_)
                                          (_loop1225412290_
                                           _lp-tl1225712305_
                                           (cons _hd1226612319_
                                                 _body1225812295_)
                                           (cons _hd1226312311_
                                                 _hd1225912297_))
                                          (_g1224412272_ _g1224512275_))))
                                  (_g1224412272_ _g1224512275_))))
                          (_g1224412272_ _g1224512275_))))
                  (let ((_body1226012324_ (reverse _body1225812295_))
                        (_hd1226112326_ (reverse _hd1225912297_)))
                    ((lambda (_L12329_ _L12330_)
                       (for-each
                        (lambda (_g1234412346_)
                          (apply gxc#compile-e _g1234412346_ _args12242_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1234812351_ _g1234912353_)
                                    (cons _g1234812351_ _g1234912353_))
                                  '()
                                  _L12329_))))
                     _body1226012324_
                     _hd1226112326_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1225412290_
                                             _target1225112285_
                                             '()
                                             '()))
                                          (_g1224412272_ _g1224512275_)))))
                                (_g1224412272_ _g1224512275_))
                            (_g1224412272_ _g1224512275_))))
                    (_g1224412272_ _g1224512275_)))))
        (_g1224312356_ _stx12241_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx12094_ . _args12095_)
      (let* ((_g1209712132_
              (lambda (_g1209812129_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1209812129_)))
             (_g1209612238_
              (lambda (_g1209812135_)
                (if (gx#stx-pair? _g1209812135_)
                    (let ((_e1210212137_ (gx#stx-e _g1209812135_)))
                      (let ((_hd1210312140_ (##car _e1210212137_))
                            (_tl1210412142_ (##cdr _e1210212137_)))
                        (if (gx#stx-pair? _tl1210412142_)
                            (let ((_e1210512145_ (gx#stx-e _tl1210412142_)))
                              (let ((_hd1210612148_ (##car _e1210512145_))
                                    (_tl1210712150_ (##cdr _e1210512145_)))
                                (if (gx#stx-pair/null? _hd1210612148_)
                                    (if (fx>= (gx#stx-length _hd1210612148_)
                                              '0)
                                        (let ((_g12823_
                                               (gx#syntax-split-splice
                                                _hd1210612148_
                                                '0)))
                                          (begin
                                            (let ((_g12824_
                                                   (if (##values? _g12823_)
                                                       (##vector-length
                                                        _g12823_)
                                                       1)))
                                              (if (not (##fx= _g12824_ 2))
                                                  (error "Context expects 2 values"
                                                         _g12824_)))
                                            (let ((_target1210812153_
                                                   (##vector-ref _g12823_ 0))
                                                  (_tl1211012155_
                                                   (##vector-ref _g12823_ 1)))
                                              (if (gx#stx-null? _tl1211012155_)
                                                  (letrec ((_loop1211112158_
                                                            (lambda (_hd1210912161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1211512163_
                             _hd1211612165_)
                      (if (gx#stx-pair? _hd1210912161_)
                          (let ((_e1211212168_ (gx#stx-e _hd1210912161_)))
                            (let ((_lp-hd1211312171_ (##car _e1211212168_))
                                  (_lp-tl1211412173_ (##cdr _e1211212168_)))
                              (if (gx#stx-pair? _lp-hd1211312171_)
                                  (let ((_e1211912176_
                                         (gx#stx-e _lp-hd1211312171_)))
                                    (let ((_hd1212012179_
                                           (##car _e1211912176_))
                                          (_tl1212112181_
                                           (##cdr _e1211912176_)))
                                      (if (gx#stx-pair? _tl1212112181_)
                                          (let ((_e1212212184_
                                                 (gx#stx-e _tl1212112181_)))
                                            (let ((_hd1212312187_
                                                   (##car _e1212212184_))
                                                  (_tl1212412189_
                                                   (##cdr _e1212212184_)))
                                              (if (gx#stx-null? _tl1212412189_)
                                                  (_loop1211112158_
                                                   _lp-tl1211412173_
                                                   (cons _hd1212312187_
                                                         _expr1211512163_)
                                                   (cons _hd1212012179_
                                                         _hd1211612165_))
                                                  (_g1209712132_
                                                   _g1209812135_))))
                                          (_g1209712132_ _g1209812135_))))
                                  (_g1209712132_ _g1209812135_))))
                          (let ((_expr1211712192_ (reverse _expr1211512163_))
                                (_hd1211812194_ (reverse _hd1211612165_)))
                            (if (gx#stx-pair? _tl1210712150_)
                                (let ((_e1212512197_
                                       (gx#stx-e _tl1210712150_)))
                                  (let ((_hd1212612200_ (##car _e1212512197_))
                                        (_tl1212712202_ (##cdr _e1212512197_)))
                                    (if (gx#stx-null? _tl1212712202_)
                                        ((lambda (_L12205_ _L12206_ _L12207_)
                                           (for-each
                                            (lambda (_g1222612228_)
                                              (apply gxc#compile-e
                                                     _g1222612228_
                                                     _args12095_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1223012233_
                                                               _g1223112235_)
                                                        (cons _g1223012233_
                                                              _g1223112235_))
                                                      (cons _L12205_ '())
                                                      _L12206_))))
                                         _hd1212612200_
                                         _expr1211712192_
                                         _hd1211812194_)
                                        (_g1209712132_ _g1209812135_))))
                                (_g1209712132_ _g1209812135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1211112158_
                                                     _target1210812153_
                                                     '()
                                                     '()))
                                                  (_g1209712132_
                                                   _g1209812135_)))))
                                        (_g1209712132_ _g1209812135_))
                                    (_g1209712132_ _g1209812135_))))
                            (_g1209712132_ _g1209812135_))))
                    (_g1209712132_ _g1209812135_)))))
        (_g1209612238_ _stx12094_))))
  (define gxc#collect-body-setq%
    (lambda (_stx12026_ . _args12027_)
      (let* ((_g1202912046_
              (lambda (_g1203012043_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1203012043_)))
             (_g1202812091_
              (lambda (_g1203012049_)
                (if (gx#stx-pair? _g1203012049_)
                    (let ((_e1203312051_ (gx#stx-e _g1203012049_)))
                      (let ((_hd1203412054_ (##car _e1203312051_))
                            (_tl1203512056_ (##cdr _e1203312051_)))
                        (if (gx#stx-pair? _tl1203512056_)
                            (let ((_e1203612059_ (gx#stx-e _tl1203512056_)))
                              (let ((_hd1203712062_ (##car _e1203612059_))
                                    (_tl1203812064_ (##cdr _e1203612059_)))
                                (if (gx#stx-pair? _tl1203812064_)
                                    (let ((_e1203912067_
                                           (gx#stx-e _tl1203812064_)))
                                      (let ((_hd1204012070_
                                             (##car _e1203912067_))
                                            (_tl1204112072_
                                             (##cdr _e1203912067_)))
                                        (if (gx#stx-null? _tl1204112072_)
                                            ((lambda (_L12075_ _L12076_)
                                               (apply gxc#compile-e
                                                      _L12075_
                                                      _args12027_))
                                             _hd1204012070_
                                             _hd1203712062_)
                                            (_g1202912046_ _g1203012049_))))
                                    (_g1202912046_ _g1203012049_))))
                            (_g1202912046_ _g1203012049_))))
                    (_g1202912046_ _g1203012049_)))))
        (_g1202812091_ _stx12026_))))
  (define gxc#collect-operands
    (lambda (_stx11939_ . _args11940_)
      (let* ((_g1194211961_
              (lambda (_g1194311958_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1194311958_)))
             (_g1194112023_
              (lambda (_g1194311964_)
                (if (gx#stx-pair? _g1194311964_)
                    (let ((_e1194511966_ (gx#stx-e _g1194311964_)))
                      (let ((_hd1194611969_ (##car _e1194511966_))
                            (_tl1194711971_ (##cdr _e1194511966_)))
                        (if (gx#stx-pair/null? _tl1194711971_)
                            (if (fx>= (gx#stx-length _tl1194711971_) '0)
                                (let ((_g12825_
                                       (gx#syntax-split-splice
                                        _tl1194711971_
                                        '0)))
                                  (begin
                                    (let ((_g12826_
                                           (if (##values? _g12825_)
                                               (##vector-length _g12825_)
                                               1)))
                                      (if (not (##fx= _g12826_ 2))
                                          (error "Context expects 2 values"
                                                 _g12826_)))
                                    (let ((_target1194811974_
                                           (##vector-ref _g12825_ 0))
                                          (_tl1195011976_
                                           (##vector-ref _g12825_ 1)))
                                      (if (gx#stx-null? _tl1195011976_)
                                          (letrec ((_loop1195111979_
                                                    (lambda (_hd1194911982_
                                                             _rands1195511984_)
                                                      (if (gx#stx-pair?
                                                           _hd1194911982_)
                                                          (let ((_e1195211987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1194911982_)))
                    (let ((_lp-hd1195311990_ (##car _e1195211987_))
                          (_lp-tl1195411992_ (##cdr _e1195211987_)))
                      (_loop1195111979_
                       _lp-tl1195411992_
                       (cons _lp-hd1195311990_ _rands1195511984_))))
                  (let ((_rands1195611995_ (reverse _rands1195511984_)))
                    ((lambda (_L11998_)
                       (for-each
                        (lambda (_g1201112013_)
                          (apply gxc#compile-e _g1201112013_ _args11940_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1201512018_ _g1201612020_)
                                    (cons _g1201512018_ _g1201612020_))
                                  '()
                                  _L11998_))))
                     _rands1195611995_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1195111979_
                                             _target1194811974_
                                             '()))
                                          (_g1194211961_ _g1194311964_)))))
                                (_g1194211961_ _g1194311964_))
                            (_g1194211961_ _g1194311964_))))
                    (_g1194211961_ _g1194311964_)))))
        (_g1194112023_ _stx11939_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11870_)
      (let* ((_g1187211889_
              (lambda (_g1187311886_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1187311886_)))
             (_g1187111936_
              (lambda (_g1187311892_)
                (if (gx#stx-pair? _g1187311892_)
                    (let ((_e1187611894_ (gx#stx-e _g1187311892_)))
                      (let ((_hd1187711897_ (##car _e1187611894_))
                            (_tl1187811899_ (##cdr _e1187611894_)))
                        (if (gx#stx-pair? _tl1187811899_)
                            (let ((_e1187911902_ (gx#stx-e _tl1187811899_)))
                              (let ((_hd1188011905_ (##car _e1187911902_))
                                    (_tl1188111907_ (##cdr _e1187911902_)))
                                (if (gx#stx-pair? _tl1188111907_)
                                    (let ((_e1188211910_
                                           (gx#stx-e _tl1188111907_)))
                                      (let ((_hd1188311913_
                                             (##car _e1188211910_))
                                            (_tl1188411915_
                                             (##cdr _e1188211910_)))
                                        (if (gx#stx-null? _tl1188411915_)
                                            ((lambda (_L11918_ _L11919_)
                                               (gx#stx-for-each1
                                                (lambda (_bind11934_)
                                                  (if (gx#identifier?
                                                       _bind11934_)
                                                      (gxc#add-module-binding!
                                                       _bind11934_
                                                       '#f)
                                                      '#!void))
                                                _L11919_))
                                             _hd1188311913_
                                             _hd1188011905_)
                                            (_g1187211889_ _g1187311892_))))
                                    (_g1187211889_ _g1187311892_))))
                            (_g1187211889_ _g1187311892_))))
                    (_g1187211889_ _g1187311892_)))))
        (_g1187111936_ _stx11870_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11803_)
      (let* ((_g1180511822_
              (lambda (_g1180611819_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1180611819_)))
             (_g1180411867_
              (lambda (_g1180611825_)
                (if (gx#stx-pair? _g1180611825_)
                    (let ((_e1180911827_ (gx#stx-e _g1180611825_)))
                      (let ((_hd1181011830_ (##car _e1180911827_))
                            (_tl1181111832_ (##cdr _e1180911827_)))
                        (if (gx#stx-pair? _tl1181111832_)
                            (let ((_e1181211835_ (gx#stx-e _tl1181111832_)))
                              (let ((_hd1181311838_ (##car _e1181211835_))
                                    (_tl1181411840_ (##cdr _e1181211835_)))
                                (if (gx#stx-pair? _tl1181411840_)
                                    (let ((_e1181511843_
                                           (gx#stx-e _tl1181411840_)))
                                      (let ((_hd1181611846_
                                             (##car _e1181511843_))
                                            (_tl1181711848_
                                             (##cdr _e1181511843_)))
                                        (if (gx#stx-null? _tl1181711848_)
                                            ((lambda (_L11851_ _L11852_)
                                               (gxc#add-module-binding!
                                                _L11852_
                                                '#t))
                                             _hd1181611846_
                                             _hd1181311838_)
                                            (_g1180511822_ _g1180611825_))))
                                    (_g1180511822_ _g1180611825_))))
                            (_g1180511822_ _g1180611825_))))
                    (_g1180511822_ _g1180611825_)))))
        (_g1180411867_ _stx11803_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11745_ _modules11746_)
      (let* ((_g1174811762_
              (lambda (_g1174911759_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1174911759_)))
             (_g1174711800_
              (lambda (_g1174911765_)
                (if (gx#stx-pair? _g1174911765_)
                    (let ((_e1175211767_ (gx#stx-e _g1174911765_)))
                      (let ((_hd1175311770_ (##car _e1175211767_))
                            (_tl1175411772_ (##cdr _e1175211767_)))
                        (if (gx#stx-pair? _tl1175411772_)
                            (let ((_e1175511775_ (gx#stx-e _tl1175411772_)))
                              (let ((_hd1175611778_ (##car _e1175511775_))
                                    (_tl1175711780_ (##cdr _e1175511775_)))
                                ((lambda (_L11783_ _L11784_)
                                   (let ((_ctx11797_
                                          (gx#syntax-local-e__0 _L11784_)))
                                     (begin
                                       (set-box!
                                        _modules11746_
                                        (cons _ctx11797_
                                              (unbox _modules11746_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11797_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11746_))
                                        gx#current-expander-context
                                        _ctx11797_))))
                                 _tl1175711780_
                                 _hd1175611778_)))
                            (_g1174811762_ _g1174911765_))))
                    (_g1174811762_ _g1174911765_)))))
        (_g1174711800_ _stx11745_))))
  (define gxc#add-module-binding!
    (lambda (_id11739_ _syntax?11740_)
      (let ((_eid11742_
             (##structure-ref
              (gx#resolve-identifier__0 _id11739_)
              '1
              gx#binding::t
              '#f))
            (_ht11743_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11742_)
            '#!void
            (table-set!
             _ht11743_
             _eid11742_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11742_)
              _syntax?11740_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id111732_ _id211733_)
      (letrec ((_symbol-e11735_
                (lambda (_id11737_)
                  (if (symbol? _id11737_)
                      _id11737_
                      (gxc#generate-runtime-binding-id _id11737_)))))
        (eq? (_symbol-e11735_ _id111732_) (_symbol-e11735_ _id211733_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id11710_)
      (let ((_$e11712_
             (if (##structure-direct-instance-of?
                  _id11710_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id11710_)
                 '#f)))
        (if _$e11712_
            ((lambda (_bind11715_)
               (let ((_eid11717_
                      (##structure-ref _bind11715_ '1 gx#binding::t '#f))
                     (_ht11718_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid11717_)
                     _eid11717_
                     (let ((_$e11720_ (table-ref _ht11718_ _eid11717_ '#f)))
                       (if _$e11720_
                           (values _$e11720_)
                           (if (##structure-instance-of?
                                _bind11715_
                                'gx#local-binding::t)
                               (let ((_gid11723_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid11717_)))
                                 (begin
                                   (table-set! _ht11718_ _eid11717_ _gid11723_)
                                   _gid11723_))
                               (if (##structure-instance-of?
                                    _bind11715_
                                    'gx#module-binding::t)
                                   (let ((_gid11730_
                                          (let ((_$e11725_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind11715_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e11725_
                                                ((lambda (_ns11728_)
                                                   (make-symbol
                                                    _ns11728_
                                                    '"#"
                                                    _eid11717_))
                                                 _$e11725_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid11717_)))))
                                     (begin
                                       (table-set!
                                        _ht11718_
                                        _eid11717_
                                        _gid11730_)
                                       _gid11730_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id11710_
                                    _eid11717_
                                    _bind11715_))))))))
             _$e11712_)
            (if (interned-symbol? (gx#stx-e _id11710_))
                (gx#stx-e _id11710_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id11710_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id11708_)
      (if (gx#identifier? _id11708_)
          (gxc#generate-runtime-binding-id _id11708_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym11688_ _quote?11689_)
        (let* ((_ht11691_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e11693_ (table-ref _ht11691_ _sym11688_ '#f)))
          (if _$e11693_
              (values _$e11693_)
              (let ((_g11696_
                     (if _quote?11689_
                         (make-symbol
                          '"__"
                          _sym11688_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym11688_ '"_"))))
                (begin
                  (table-set! _ht11691_ _sym11688_ _g11696_)
                  _g11696_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym11701_)
          (let ((_quote?11703_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym11701_
             _quote?11703_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g12828_
          (let ((_g12827_ (length _g12828_)))
            (cond ((##fx= _g12827_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g12828_))
                  ((##fx= _g12827_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g12828_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g12828_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id11685_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id11685_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key11645_)
      (if (interned-symbol? _key11645_)
          _key11645_
          (if (uninterned-symbol? _key11645_)
              (gxc#generate-runtime-gensym-reference__0 _key11645_)
              (let* ((_key1164611653_ _key11645_)
                     (_E1164811657_
                      (lambda ()
                        (error '"No clause matching" _key1164611653_)))
                     (_K1164911673_
                      (lambda (_mark11660_ _eid11661_)
                        (let ((_$e11663_
                               (##structure-ref
                                _mark11660_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e11663_
                              ((lambda (_ht11666_)
                                 (let ((_$e11668_
                                        (table-ref _ht11666_ _eid11661_ '#f)))
                                   (if _$e11668_
                                       ((lambda (_id11671_)
                                          (if (interned-symbol? _id11671_)
                                              _id11671_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id11671_)))
                                        _$e11668_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid11661_))))
                               _$e11663_)
                              (gxc#generate-runtime-identifier-key
                               _eid11661_))))))
                (if (##pair? _key1164611653_)
                    (let ((_hd1165011676_ (##car _key1164611653_))
                          (_tl1165111678_ (##cdr _key1164611653_)))
                      (let* ((_eid11681_ _hd1165011676_)
                             (_mark11683_ _tl1165111678_))
                        (_K1164911673_ _mark11683_ _eid11681_)))
                    (_E1164811657_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top11632_)
        (if _top11632_
            (let ((_ns11634_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi11635_ (gx#current-expander-phi)))
              (if (fxpositive? _phi11635_)
                  (make-symbol
                   _ns11634_
                   '"["
                   (number->string _phi11635_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns11634_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top11641_ '#f))
            (gxc#generate-runtime-temporary__% _top11641_))))
      (define gxc#generate-runtime-temporary
        (lambda _g12830_
          (let ((_g12829_ (length _g12830_)))
            (cond ((##fx= _g12829_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g12830_))
                  ((##fx= _g12829_ 1)
                   (apply gxc#generate-runtime-temporary__% _g12830_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g12830_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx11629_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx11549_)
      (let* ((_g1155111561_
              (lambda (_g1155211558_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1155211558_)))
             (_g1155011626_
              (lambda (_g1155211564_)
                (if (gx#stx-pair? _g1155211564_)
                    (let ((_e1155411566_ (gx#stx-e _g1155211564_)))
                      (let ((_hd1155511569_ (##car _e1155411566_))
                            (_tl1155611571_ (##cdr _e1155411566_)))
                        ((lambda (_L11574_)
                           (let* ((_body11584_
                                   (gx#stx-map1 gxc#compile-e _L11574_))
                                  (_body11623_
                                   (filter (lambda (_stx11586_)
                                             (let* ((_g1158911598_
                                                     (lambda (_g1159011595_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1159011595_)))
                                                    (_g1158811605_
                                                     (lambda (_g1159011601_)
                                                       ((lambda () '#t))))
                                                    (_g1158711620_
                                                     (lambda (_g1159011608_)
                                                       (if (gx#stx-pair?
                                                            _g1159011608_)
                                                           (let ((_e1159111610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1159011608_)))
                     (let ((_hd1159211613_ (##car _e1159111610_))
                           (_tl1159311615_ (##cdr _e1159111610_)))
                       (if (gx#identifier? _hd1159211613_)
                           (if (gx#stx-eq? 'begin _hd1159211613_)
                               (if (gx#stx-null? _tl1159311615_)
                                   ((lambda () '#f))
                                   (_g1158811605_ _g1159011608_))
                               (_g1158811605_ _g1159011608_))
                           (_g1158811605_ _g1159011608_))))
                   (_g1158811605_ _g1159011608_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1158711620_ _stx11586_)))
                                           _body11584_)))
                             (if (fx= (length _body11623_) '1)
                                 (car _body11623_)
                                 (cons 'begin _body11623_))))
                         _tl1155611571_)))
                    (_g1155111561_ _g1155211564_)))))
        (_g1155011626_ _stx11549_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx11511_)
      (let* ((_g1151311523_
              (lambda (_g1151411520_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1151411520_)))
             (_g1151211546_
              (lambda (_g1151411526_)
                (if (gx#stx-pair? _g1151411526_)
                    (let ((_e1151611528_ (gx#stx-e _g1151411526_)))
                      (let ((_hd1151711531_ (##car _e1151611528_))
                            (_tl1151811533_ (##cdr _e1151611528_)))
                        ((lambda (_L11536_)
                           (cons 'begin (gx#syntax->datum _L11536_)))
                         _tl1151811533_)))
                    (_g1151311523_ _g1151411526_)))))
        (_g1151211546_ _stx11511_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx11444_)
      (let* ((_g1144611463_
              (lambda (_g1144711460_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1144711460_)))
             (_g1144511508_
              (lambda (_g1144711466_)
                (if (gx#stx-pair? _g1144711466_)
                    (let ((_e1145011468_ (gx#stx-e _g1144711466_)))
                      (let ((_hd1145111471_ (##car _e1145011468_))
                            (_tl1145211473_ (##cdr _e1145011468_)))
                        (if (gx#stx-pair? _tl1145211473_)
                            (let ((_e1145311476_ (gx#stx-e _tl1145211473_)))
                              (let ((_hd1145411479_ (##car _e1145311476_))
                                    (_tl1145511481_ (##cdr _e1145311476_)))
                                (if (gx#stx-pair? _tl1145511481_)
                                    (let ((_e1145611484_
                                           (gx#stx-e _tl1145511481_)))
                                      (let ((_hd1145711487_
                                             (##car _e1145611484_))
                                            (_tl1145811489_
                                             (##cdr _e1145611484_)))
                                        (if (gx#stx-null? _tl1145811489_)
                                            ((lambda (_L11492_ _L11493_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L11493_))
                   (cons (gxc#compile-e _L11492_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1145711487_
                                             _hd1145411479_)
                                            (_g1144611463_ _g1144711466_))))
                                    (_g1144611463_ _g1144711466_))))
                            (_g1144611463_ _g1144711466_))))
                    (_g1144611463_ _g1144711466_)))))
        (_g1144511508_ _stx11444_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx11406_)
      (let* ((_g1140811418_
              (lambda (_g1140911415_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1140911415_)))
             (_g1140711441_
              (lambda (_g1140911421_)
                (if (gx#stx-pair? _g1140911421_)
                    (let ((_e1141111423_ (gx#stx-e _g1140911421_)))
                      (let ((_hd1141211426_ (##car _e1141111423_))
                            (_tl1141311428_ (##cdr _e1141111423_)))
                        ((lambda (_L11431_)
                           (cons 'declare (map gx#syntax->datum _L11431_)))
                         _tl1141311428_)))
                    (_g1140811418_ _g1140911421_)))))
        (_g1140711441_ _stx11406_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx11162_)
      (let* ((_g1116411181_
              (lambda (_g1116511178_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1116511178_)))
             (_g1116311403_
              (lambda (_g1116511184_)
                (if (gx#stx-pair? _g1116511184_)
                    (let ((_e1116811186_ (gx#stx-e _g1116511184_)))
                      (let ((_hd1116911189_ (##car _e1116811186_))
                            (_tl1117011191_ (##cdr _e1116811186_)))
                        (if (gx#stx-pair? _tl1117011191_)
                            (let ((_e1117111194_ (gx#stx-e _tl1117011191_)))
                              (let ((_hd1117211197_ (##car _e1117111194_))
                                    (_tl1117311199_ (##cdr _e1117111194_)))
                                (if (gx#stx-pair? _tl1117311199_)
                                    (let ((_e1117411202_
                                           (gx#stx-e _tl1117311199_)))
                                      (let ((_hd1117511205_
                                             (##car _e1117411202_))
                                            (_tl1117611207_
                                             (##cdr _e1117411202_)))
                                        (if (gx#stx-null? _tl1117611207_)
                                            ((lambda (_L11210_ _L11211_)
                                               (let* ((_g1122811241_
                                                       (lambda (_g1122911238_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1122911238_)))
                                                      (_g1122711355_
                                                       (lambda (_g1122911244_)
                                                         ((lambda ()
                                                            (let* ((_tmp11248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__% '#t))
                           (_body11352_
                            (let _lp11250_ ((_rest11252_ _L11211_)
                                            (_k11253_ '0)
                                            (_r11254_ '()))
                              (let* ((_g1125911275_
                                      (lambda (_g1126011272_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1126011272_)))
                                     (_g1125811282_
                                      (lambda (_g1126011278_)
                                        ((lambda () (reverse _r11254_)))))
                                     (_g1125711303_
                                      (lambda (_g1126011285_)
                                        ((lambda (_L11287_)
                                           (if (gx#identifier? _L11287_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L11287_)
                                 (cons (gxc#generate-runtime-values->list
                                        _tmp11248_
                                        _k11253_)
                                       '())))
                     '())
               _r11254_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1125811282_ _g1126011285_)))
                                         _g1126011285_)))
                                     (_g1125611327_
                                      (lambda (_g1126011306_)
                                        (if (gx#stx-pair? _g1126011306_)
                                            (let ((_e1126711308_
                                                   (gx#stx-e _g1126011306_)))
                                              (let ((_hd1126811311_
                                                     (##car _e1126711308_))
                                                    (_tl1126911313_
                                                     (##cdr _e1126711308_)))
                                                ((lambda (_L11316_ _L11317_)
                                                   (_lp11250_
                                                    _L11316_
                                                    (fx+ _k11253_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L11317_)
                              (cons (gxc#generate-runtime-values-ref
                                     _tmp11248_
                                     _k11253_
                                     _L11316_)
                                    '())))
                  _r11254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1126911313_
                                                 _hd1126811311_)))
                                            (_g1125711303_ _g1126011306_))))
                                     (_g1125511349_
                                      (lambda (_g1126011330_)
                                        (if (gx#stx-pair? _g1126011330_)
                                            (let ((_e1126211332_
                                                   (gx#stx-e _g1126011330_)))
                                              (let ((_hd1126311335_
                                                     (##car _e1126211332_))
                                                    (_tl1126411337_
                                                     (##cdr _e1126211332_)))
                                                (if (gx#stx-datum?
                                                     _hd1126311335_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1126311335_)
                        '#f)
                ((lambda (_L11340_)
                   (_lp11250_ _L11340_ (fx+ _k11253_ '1) _r11254_))
                 _tl1126411337_)
                (_g1125611327_ _g1126011330_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1125611327_
                                                     _g1126011330_))))
                                            (_g1125611327_ _g1126011330_)))))
                                (_g1125511349_ _rest11252_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp11248_
                                              (cons (gxc#compile-e _L11210_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp11248_
                                         _L11211_
                                         _L11210_)
                                        _body11352_))))))))
              (_g1122611385_
               (lambda (_g1122911358_)
                 (if (gx#stx-pair? _g1122911358_)
                     (let ((_e1123411360_ (gx#stx-e _g1122911358_)))
                       (let ((_hd1123511363_ (##car _e1123411360_))
                             (_tl1123611365_ (##cdr _e1123411360_)))
                         (if (gx#stx-null? _tl1123611365_)
                             ((lambda (_L11368_)
                                (let ((_eid11377_
                                       (gxc#generate-runtime-binding-id
                                        _L11368_)))
                                  (begin
                                    (let ((_lambda-expr1137811380_
                                           (gxc#apply-find-lambda-expression
                                            _L11210_)))
                                      (if _lambda-expr1137811380_
                                          (let ((_lambda-expr11383_
                                                 _lambda-expr1137811380_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr11383_
                                             _eid11377_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid11377_
                                                (cons (gxc#compile-e _L11210_)
                                                      '()))))))
                              _hd1123511363_)
                             (_g1122711355_ _g1122911358_))))
                     (_g1122711355_ _g1122911358_))))
              (_g1122511400_
               (lambda (_g1122911388_)
                 (if (gx#stx-pair? _g1122911388_)
                     (let ((_e1123011390_ (gx#stx-e _g1122911388_)))
                       (let ((_hd1123111393_ (##car _e1123011390_))
                             (_tl1123211395_ (##cdr _e1123011390_)))
                         (if (gx#stx-datum? _hd1123111393_)
                             (if (equal? (gx#stx-e _hd1123111393_) '#f)
                                 (if (gx#stx-null? _tl1123211395_)
                                     ((lambda () (gxc#compile-e _L11210_)))
                                     (_g1122611385_ _g1122911388_))
                                 (_g1122611385_ _g1122911388_))
                             (_g1122611385_ _g1122911388_))))
                     (_g1122611385_ _g1122911388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1122511400_ _L11211_)))
                                             _hd1117511205_
                                             _hd1117211197_)
                                            (_g1116411181_ _g1116511184_))))
                                    (_g1116411181_ _g1116511184_))))
                            (_g1116411181_ _g1116511184_))))
                    (_g1116411181_ _g1116511184_)))))
        (_g1116311403_ _stx11162_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals11138_ _hd11139_ _expr11140_)
      (let ((_$e11142_ (gxc#apply-count-values _expr11140_)))
        (if _$e11142_
            ((lambda (_count11145_)
               (let ((_len11147_ (gx#stx-length _hd11139_))
                     (_cmp11148_ (if (gx#stx-list? _hd11139_) fx= fx>=)))
                 (if (let ((_$e11150_ (fx= _len11147_ '0)))
                       (if _$e11150_
                           _$e11150_
                           (_cmp11148_ _count11145_ _len11147_)))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr11140_
                      _hd11139_))))
             _$e11142_)
            (let* ((_len11153_ (gx#stx-length _hd11139_))
                   (_cmp11155_ (if (gx#stx-list? _hd11139_) '##fx= '##fx>=))
                   (_errmsg11157_
                    (string-append
                     (if (gx#stx-list? _hd11139_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len11153_)
                     '" values"))
                   (_count11159_ (gxc#generate-runtime-temporary__0)))
              (if (if (not (gx#stx-list? _hd11139_)) (fx= _len11153_ '0) '#f)
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count11159_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals11138_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp11155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11159_ (cons _len11153_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg11157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11159_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var11136_)
      (cons 'if
            (cons (cons '##values? (cons _var11136_ '()))
                  (cons (cons '##vector-length (cons _var11136_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var11132_ _i11133_ _rest11134_)
      (if (if (fx= _i11133_ '0) (not (gx#stx-pair? _rest11134_)) '#f)
          (cons 'if
                (cons (cons '##values? (cons _var11132_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var11132_ (cons '0 '())))
                            (cons _var11132_ '()))))
          (cons '##vector-ref (cons _var11132_ (cons _i11133_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var11129_ _i11130_)
      (if (fx= _i11130_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var11129_ '()))
                      (cons (cons '##vector->list (cons _var11129_ '()))
                            (cons (cons 'list (cons _var11129_ '())) '()))))
          (if (fx= _i11130_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var11129_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var11129_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var11129_ '()))
                          (cons _i11130_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx11062_)
      (let* ((_g1106411081_
              (lambda (_g1106511078_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1106511078_)))
             (_g1106311126_
              (lambda (_g1106511084_)
                (if (gx#stx-pair? _g1106511084_)
                    (let ((_e1106811086_ (gx#stx-e _g1106511084_)))
                      (let ((_hd1106911089_ (##car _e1106811086_))
                            (_tl1107011091_ (##cdr _e1106811086_)))
                        (if (gx#stx-pair? _tl1107011091_)
                            (let ((_e1107111094_ (gx#stx-e _tl1107011091_)))
                              (let ((_hd1107211097_ (##car _e1107111094_))
                                    (_tl1107311099_ (##cdr _e1107111094_)))
                                (if (gx#stx-pair? _tl1107311099_)
                                    (let ((_e1107411102_
                                           (gx#stx-e _tl1107311099_)))
                                      (let ((_hd1107511105_
                                             (##car _e1107411102_))
                                            (_tl1107611107_
                                             (##cdr _e1107411102_)))
                                        (if (gx#stx-null? _tl1107611107_)
                                            ((lambda (_L11110_ _L11111_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L11111_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11110_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1107511105_
                                             _hd1107211097_)
                                            (_g1106411081_ _g1106511084_))))
                                    (_g1106411081_ _g1106511084_))))
                            (_g1106411081_ _g1106511084_))))
                    (_g1106411081_ _g1106511084_)))))
        (_g1106311126_ _stx11062_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd11060_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd11060_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx9603_)
      (letrec ((_dispatch-case?9605_
                (lambda (_hd10290_ _body10291_)
                  (let* ((_form10293_ (cons _hd10290_ (cons _body10291_ '())))
                         (_g1029810455_
                          (lambda (_g1029910452_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1029910452_)))
                         (_g1029710462_
                          (lambda (_g1029910458_) ((lambda () '#f))))
                         (_g1029610603_
                          (lambda (_g1029910465_)
                            (if (gx#stx-pair? _g1029910465_)
                                (let ((_e1041510467_ (gx#stx-e _g1029910465_)))
                                  (let ((_hd1041610470_ (##car _e1041510467_))
                                        (_tl1041710472_ (##cdr _e1041510467_)))
                                    (if (gx#stx-pair? _tl1041710472_)
                                        (let ((_e1041810475_
                                               (gx#stx-e _tl1041710472_)))
                                          (let ((_hd1041910478_
                                                 (##car _e1041810475_))
                                                (_tl1042010480_
                                                 (##cdr _e1041810475_)))
                                            (if (gx#stx-pair? _hd1041910478_)
                                                (let ((_e1042110483_
                                                       (gx#stx-e
                                                        _hd1041910478_)))
                                                  (let ((_hd1042210486_
                                                         (##car _e1042110483_))
                                                        (_tl1042310488_
                                                         (##cdr _e1042110483_)))
                                                    (if (gx#identifier?
                                                         _hd1042210486_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1042210486_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1042310488_)
                        (let ((_e1042410491_ (gx#stx-e _tl1042310488_)))
                          (let ((_hd1042510494_ (##car _e1042410491_))
                                (_tl1042610496_ (##cdr _e1042410491_)))
                            (if (gx#stx-pair? _hd1042510494_)
                                (let ((_e1042710499_
                                       (gx#stx-e _hd1042510494_)))
                                  (let ((_hd1042810502_ (##car _e1042710499_))
                                        (_tl1042910504_ (##cdr _e1042710499_)))
                                    (if (gx#identifier? _hd1042810502_)
                                        (if (gx#stx-eq? '%#ref _hd1042810502_)
                                            (if (gx#stx-pair? _tl1042910504_)
                                                (let ((_e1043010507_
                                                       (gx#stx-e
                                                        _tl1042910504_)))
                                                  (let ((_hd1043110510_
                                                         (##car _e1043010507_))
                                                        (_tl1043210512_
                                                         (##cdr _e1043010507_)))
                                                    (if (gx#stx-null?
                                                         _tl1043210512_)
                                                        (if (gx#stx-pair?
                                                             _tl1042610496_)
                                                            (let ((_e1043310515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1042610496_)))
                      (let ((_hd1043410518_ (##car _e1043310515_))
                            (_tl1043510520_ (##cdr _e1043310515_)))
                        (if (gx#stx-pair? _hd1043410518_)
                            (let ((_e1043610523_ (gx#stx-e _hd1043410518_)))
                              (let ((_hd1043710526_ (##car _e1043610523_))
                                    (_tl1043810528_ (##cdr _e1043610523_)))
                                (if (gx#identifier? _hd1043710526_)
                                    (if (gx#stx-eq? '%#ref _hd1043710526_)
                                        (if (gx#stx-pair? _tl1043810528_)
                                            (let ((_e1043910531_
                                                   (gx#stx-e _tl1043810528_)))
                                              (let ((_hd1044010534_
                                                     (##car _e1043910531_))
                                                    (_tl1044110536_
                                                     (##cdr _e1043910531_)))
                                                (if (gx#stx-null?
                                                     _tl1044110536_)
                                                    (if (gx#stx-pair?
                                                         _tl1043510520_)
                                                        (let ((_e1044210539_
                                                               (gx#stx-e
                                                                _tl1043510520_)))
                                                          (let ((_hd1044310542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1044210539_))
                        (_tl1044410544_ (##cdr _e1044210539_)))
                    (if (gx#stx-pair? _hd1044310542_)
                        (let ((_e1044510547_ (gx#stx-e _hd1044310542_)))
                          (let ((_hd1044610550_ (##car _e1044510547_))
                                (_tl1044710552_ (##cdr _e1044510547_)))
                            (if (gx#identifier? _hd1044610550_)
                                (if (gx#stx-eq? '%#ref _hd1044610550_)
                                    (if (gx#stx-pair? _tl1044710552_)
                                        (let ((_e1044810555_
                                               (gx#stx-e _tl1044710552_)))
                                          (let ((_hd1044910558_
                                                 (##car _e1044810555_))
                                                (_tl1045010560_
                                                 (##cdr _e1044810555_)))
                                            (if (gx#stx-null? _tl1045010560_)
                                                (if (gx#stx-null?
                                                     _tl1044410544_)
                                                    (if (gx#stx-null?
                                                         _tl1042010480_)
                                                        ((lambda (_L10563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10564_
                          _L10565_
                          _L10566_)
                   (if (if (gx#identifier? _L10566_)
                           (if (gxc#runtime-identifier=? _L10565_ 'apply)
                               (if (gx#free-identifier=? _L10566_ _L10563_)
                                   (not (gx#free-identifier=?
                                         _L10564_
                                         _L10566_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g1029710462_ _g1029910465_)))
                 _hd1044910558_
                 _hd1044010534_
                 _hd1043110510_
                 _hd1041610470_)
                (_g1029710462_ _g1029910465_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029710462_
                                                     _g1029910465_))
                                                (_g1029710462_
                                                 _g1029910465_))))
                                        (_g1029710462_ _g1029910465_))
                                    (_g1029710462_ _g1029910465_))
                                (_g1029710462_ _g1029910465_))))
                        (_g1029710462_ _g1029910465_))))
                (_g1029710462_ _g1029910465_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029710462_
                                                     _g1029910465_))))
                                            (_g1029710462_ _g1029910465_))
                                        (_g1029710462_ _g1029910465_))
                                    (_g1029710462_ _g1029910465_))))
                            (_g1029710462_ _g1029910465_))))
                    (_g1029710462_ _g1029910465_))
                (_g1029710462_ _g1029910465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029710462_ _g1029910465_))
                                            (_g1029710462_ _g1029910465_))
                                        (_g1029710462_ _g1029910465_))))
                                (_g1029710462_ _g1029910465_))))
                        (_g1029710462_ _g1029910465_))
                    (_g1029710462_ _g1029910465_))
                (_g1029710462_ _g1029910465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029710462_
                                                 _g1029910465_))))
                                        (_g1029710462_ _g1029910465_))))
                                (_g1029710462_ _g1029910465_))))
                         (_g1029510863_
                          (lambda (_g1029910606_)
                            (if (gx#stx-pair? _g1029910606_)
                                (let ((_e1035110608_ (gx#stx-e _g1029910606_)))
                                  (let ((_hd1035210611_ (##car _e1035110608_))
                                        (_tl1035310613_ (##cdr _e1035110608_)))
                                    (if (gx#stx-pair/null? _hd1035210611_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1035210611_)
                                                  '0)
                                            (let ((_g12831_
                                                   (gx#syntax-split-splice
                                                    _hd1035210611_
                                                    '0)))
                                              (begin
                                                (let ((_g12832_
                                                       (if (##values? _g12831_)
                                                           (##vector-length
                                                            _g12831_)
                                                           1)))
                                                  (if (not (##fx= _g12832_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12832_)))
                                                (let ((_target1035410616_
                                                       (##vector-ref
                                                        _g12831_
                                                        0))
                                                      (_tl1035610618_
                                                       (##vector-ref
                                                        _g12831_
                                                        1)))
                                                  (letrec ((_loop1035710621_
                                                            (lambda (_hd1035510624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1036110626_)
                      (if (gx#stx-pair? _hd1035510624_)
                          (let ((_e1035810629_ (gx#stx-e _hd1035510624_)))
                            (let ((_lp-hd1035910632_ (##car _e1035810629_))
                                  (_lp-tl1036010634_ (##cdr _e1035810629_)))
                              (_loop1035710621_
                               _lp-tl1036010634_
                               (cons _lp-hd1035910632_ _arg1036110626_))))
                          (let ((_arg1036210637_ (reverse _arg1036110626_)))
                            (if (gx#stx-pair? _tl1035310613_)
                                (let ((_e1036310640_
                                       (gx#stx-e _tl1035310613_)))
                                  (let ((_hd1036410643_ (##car _e1036310640_))
                                        (_tl1036510645_ (##cdr _e1036310640_)))
                                    (if (gx#stx-pair? _hd1036410643_)
                                        (let ((_e1036610648_
                                               (gx#stx-e _hd1036410643_)))
                                          (let ((_hd1036710651_
                                                 (##car _e1036610648_))
                                                (_tl1036810653_
                                                 (##cdr _e1036610648_)))
                                            (if (gx#identifier? _hd1036710651_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1036710651_)
                                                    (if (gx#stx-pair?
                                                         _tl1036810653_)
                                                        (let ((_e1036910656_
                                                               (gx#stx-e
                                                                _tl1036810653_)))
                                                          (let ((_hd1037010659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1036910656_))
                        (_tl1037110661_ (##cdr _e1036910656_)))
                    (if (gx#stx-pair? _hd1037010659_)
                        (let ((_e1037210664_ (gx#stx-e _hd1037010659_)))
                          (let ((_hd1037310667_ (##car _e1037210664_))
                                (_tl1037410669_ (##cdr _e1037210664_)))
                            (if (gx#identifier? _hd1037310667_)
                                (if (gx#stx-eq? '%#ref _hd1037310667_)
                                    (if (gx#stx-pair? _tl1037410669_)
                                        (let ((_e1037510672_
                                               (gx#stx-e _tl1037410669_)))
                                          (let ((_hd1037610675_
                                                 (##car _e1037510672_))
                                                (_tl1037710677_
                                                 (##cdr _e1037510672_)))
                                            (if (gx#stx-null? _tl1037710677_)
                                                (if (gx#stx-pair?
                                                     _tl1037110661_)
                                                    (let ((_e1037810680_
                                                           (gx#stx-e
                                                            _tl1037110661_)))
                                                      (let ((_hd1037910683_
                                                             (##car _e1037810680_))
                                                            (_tl1038010685_
                                                             (##cdr _e1037810680_)))
                                                        (if (gx#stx-pair?
                                                             _hd1037910683_)
                                                            (let ((_e1038110688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1037910683_)))
                      (let ((_hd1038210691_ (##car _e1038110688_))
                            (_tl1038310693_ (##cdr _e1038110688_)))
                        (if (gx#identifier? _hd1038210691_)
                            (if (gx#stx-eq? '%#ref _hd1038210691_)
                                (if (gx#stx-pair? _tl1038310693_)
                                    (let ((_e1038410696_
                                           (gx#stx-e _tl1038310693_)))
                                      (let ((_hd1038510699_
                                             (##car _e1038410696_))
                                            (_tl1038610701_
                                             (##cdr _e1038410696_)))
                                        (if (gx#stx-null? _tl1038610701_)
                                            (if (gx#stx-pair/null?
                                                 _tl1038010685_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1038010685_)
                                                          '1)
                                                    (let ((_g12833_
                                                           (gx#syntax-split-splice
                                                            _tl1038010685_
                                                            '1)))
                                                      (begin
                                                        (let ((_g12834_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g12833_)
                           (##vector-length _g12833_)
                           1)))
                  (if (not (##fx= _g12834_ 2))
                      (error "Context expects 2 values" _g12834_)))
                (let ((_target1038710704_ (##vector-ref _g12833_ 0))
                      (_tl1038910706_ (##vector-ref _g12833_ 1)))
                  (if (gx#stx-pair? _tl1038910706_)
                      (let ((_e1039610709_ (gx#stx-e _tl1038910706_)))
                        (let ((_hd1039710712_ (##car _e1039610709_))
                              (_tl1039810714_ (##cdr _e1039610709_)))
                          (if (gx#stx-pair? _hd1039710712_)
                              (let ((_e1039910717_ (gx#stx-e _hd1039710712_)))
                                (let ((_hd1040010720_ (##car _e1039910717_))
                                      (_tl1040110722_ (##cdr _e1039910717_)))
                                  (if (gx#identifier? _hd1040010720_)
                                      (if (gx#stx-eq? '%#ref _hd1040010720_)
                                          (if (gx#stx-pair? _tl1040110722_)
                                              (let ((_e1040210725_
                                                     (gx#stx-e
                                                      _tl1040110722_)))
                                                (let ((_hd1040310728_
                                                       (##car _e1040210725_))
                                                      (_tl1040410730_
                                                       (##cdr _e1040210725_)))
                                                  (if (gx#stx-null?
                                                       _tl1040410730_)
                                                      (if (gx#stx-null?
                                                           _tl1039810714_)
                                                          (letrec ((_loop1039010733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1038810736_ _xarg1039410738_)
                              (if (gx#stx-pair? _hd1038810736_)
                                  (let ((_e1039110741_
                                         (gx#stx-e _hd1038810736_)))
                                    (let ((_lp-hd1039210744_
                                           (##car _e1039110741_))
                                          (_lp-tl1039310746_
                                           (##cdr _e1039110741_)))
                                      (if (gx#stx-pair? _lp-hd1039210744_)
                                          (let ((_e1040510749_
                                                 (gx#stx-e _lp-hd1039210744_)))
                                            (let ((_hd1040610752_
                                                   (##car _e1040510749_))
                                                  (_tl1040710754_
                                                   (##cdr _e1040510749_)))
                                              (if (gx#identifier?
                                                   _hd1040610752_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1040610752_)
                                                      (if (gx#stx-pair?
                                                           _tl1040710754_)
                                                          (let ((_e1040810757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1040710754_)))
                    (let ((_hd1040910760_ (##car _e1040810757_))
                          (_tl1041010762_ (##cdr _e1040810757_)))
                      (if (gx#stx-null? _tl1041010762_)
                          (_loop1039010733_
                           _lp-tl1039310746_
                           (cons _hd1040910760_ _xarg1039410738_))
                          (_g1029610603_ _g1029910606_))))
                  (_g1029610603_ _g1029910606_))
              (_g1029610603_ _g1029910606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1029610603_
                                                   _g1029910606_))))
                                          (_g1029610603_ _g1029910606_))))
                                  (let ((_xarg1039510765_
                                         (reverse _xarg1039410738_)))
                                    (if (gx#stx-null? _tl1036510645_)
                                        ((lambda (_L10768_
                                                  _L10769_
                                                  _L10770_
                                                  _L10771_
                                                  _L10772_
                                                  _L10773_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1081610819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1081710821_)
                        (cons _g1081610819_ _g1081710821_))
                      '()
                      _L10773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier?
                                                        _L10772_)
                                                       (if (gxc#runtime-identifier=?
                                                            _L10771_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g1082310826_
                                                       _g1082410828_)
                                                (cons _g1082310826_
                                                      _g1082410828_))
                                              '()
                                              _L10773_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1083010833_
                                                       _g1083110835_)
                                                (cons _g1083010833_
                                                      _g1083110835_))
                                              '()
                                              _L10769_))))
                       (if (andmap2 gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1083710840_
                                                       _g1083810842_)
                                                (cons _g1083710840_
                                                      _g1083810842_))
                                              '()
                                              _L10773_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1084410847_
                                                       _g1084510849_)
                                                (cons _g1084410847_
                                                      _g1084510849_))
                                              '()
                                              _L10769_)))
                           (if (gx#free-identifier=? _L10772_ _L10768_)
                               (not (find (lambda (_g1085110853_)
                                            (gx#free-identifier=?
                                             _g1085110853_
                                             _L10770_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1085510858_
                                                             _g1085610860_)
                                                      (cons _g1085510858_
                                                            _g1085610860_))
                                                    (cons _L10772_ '())
                                                    _L10773_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g1029610603_ _g1029910606_)))
                                         _hd1040310728_
                                         _xarg1039510765_
                                         _hd1038510699_
                                         _hd1037610675_
                                         _tl1035610618_
                                         _arg1036210637_)
                                        (_g1029610603_ _g1029910606_)))))))
                    (_loop1039010733_ _target1038710704_ '()))
                  (_g1029610603_ _g1029910606_))
              (_g1029610603_ _g1029910606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1029610603_ _g1029910606_))
                                          (_g1029610603_ _g1029910606_))
                                      (_g1029610603_ _g1029910606_))))
                              (_g1029610603_ _g1029910606_))))
                      (_g1029610603_ _g1029910606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029610603_
                                                     _g1029910606_))
                                                (_g1029610603_ _g1029910606_))
                                            (_g1029610603_ _g1029910606_))))
                                    (_g1029610603_ _g1029910606_))
                                (_g1029610603_ _g1029910606_))
                            (_g1029610603_ _g1029910606_))))
                    (_g1029610603_ _g1029910606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029610603_
                                                     _g1029910606_))
                                                (_g1029610603_
                                                 _g1029910606_))))
                                        (_g1029610603_ _g1029910606_))
                                    (_g1029610603_ _g1029910606_))
                                (_g1029610603_ _g1029910606_))))
                        (_g1029610603_ _g1029910606_))))
                (_g1029610603_ _g1029910606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029610603_
                                                     _g1029910606_))
                                                (_g1029610603_
                                                 _g1029910606_))))
                                        (_g1029610603_ _g1029910606_))))
                                (_g1029610603_ _g1029910606_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1035710621_
                                                     _target1035410616_
                                                     '())))))
                                            (_g1029610603_ _g1029910606_))
                                        (_g1029610603_ _g1029910606_))))
                                (_g1029610603_ _g1029910606_))))
                         (_g1029411057_
                          (lambda (_g1029910866_)
                            (if (gx#stx-pair? _g1029910866_)
                                (let ((_e1030310868_ (gx#stx-e _g1029910866_)))
                                  (let ((_hd1030410871_ (##car _e1030310868_))
                                        (_tl1030510873_ (##cdr _e1030310868_)))
                                    (if (gx#stx-pair/null? _hd1030410871_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1030410871_)
                                                  '0)
                                            (let ((_g12835_
                                                   (gx#syntax-split-splice
                                                    _hd1030410871_
                                                    '0)))
                                              (begin
                                                (let ((_g12836_
                                                       (if (##values? _g12835_)
                                                           (##vector-length
                                                            _g12835_)
                                                           1)))
                                                  (if (not (##fx= _g12836_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12836_)))
                                                (let ((_target1030610876_
                                                       (##vector-ref
                                                        _g12835_
                                                        0))
                                                      (_tl1030810878_
                                                       (##vector-ref
                                                        _g12835_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1030810878_)
                                                      (letrec ((_loop1030910881_
                                                                (lambda (_hd1030710884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg1031310886_)
                          (if (gx#stx-pair? _hd1030710884_)
                              (let ((_e1031010889_ (gx#stx-e _hd1030710884_)))
                                (let ((_lp-hd1031110892_ (##car _e1031010889_))
                                      (_lp-tl1031210894_
                                       (##cdr _e1031010889_)))
                                  (_loop1030910881_
                                   _lp-tl1031210894_
                                   (cons _lp-hd1031110892_ _arg1031310886_))))
                              (let ((_arg1031410897_
                                     (reverse _arg1031310886_)))
                                (if (gx#stx-pair? _tl1030510873_)
                                    (let ((_e1031510900_
                                           (gx#stx-e _tl1030510873_)))
                                      (let ((_hd1031610903_
                                             (##car _e1031510900_))
                                            (_tl1031710905_
                                             (##cdr _e1031510900_)))
                                        (if (gx#stx-pair? _hd1031610903_)
                                            (let ((_e1031810908_
                                                   (gx#stx-e _hd1031610903_)))
                                              (let ((_hd1031910911_
                                                     (##car _e1031810908_))
                                                    (_tl1032010913_
                                                     (##cdr _e1031810908_)))
                                                (if (gx#identifier?
                                                     _hd1031910911_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1031910911_)
                                                        (if (gx#stx-pair?
                                                             _tl1032010913_)
                                                            (let ((_e1032110916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1032010913_)))
                      (let ((_hd1032210919_ (##car _e1032110916_))
                            (_tl1032310921_ (##cdr _e1032110916_)))
                        (if (gx#stx-pair? _hd1032210919_)
                            (let ((_e1032410924_ (gx#stx-e _hd1032210919_)))
                              (let ((_hd1032510927_ (##car _e1032410924_))
                                    (_tl1032610929_ (##cdr _e1032410924_)))
                                (if (gx#identifier? _hd1032510927_)
                                    (if (gx#stx-eq? '%#ref _hd1032510927_)
                                        (if (gx#stx-pair? _tl1032610929_)
                                            (let ((_e1032710932_
                                                   (gx#stx-e _tl1032610929_)))
                                              (let ((_hd1032810935_
                                                     (##car _e1032710932_))
                                                    (_tl1032910937_
                                                     (##cdr _e1032710932_)))
                                                (if (gx#stx-null?
                                                     _tl1032910937_)
                                                    (if (gx#stx-pair/null?
                                                         _tl1032310921_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1032310921_)
                          '0)
                    (let ((_g12837_
                           (gx#syntax-split-splice _tl1032310921_ '0)))
                      (begin
                        (let ((_g12838_
                               (if (##values? _g12837_)
                                   (##vector-length _g12837_)
                                   1)))
                          (if (not (##fx= _g12838_ 2))
                              (error "Context expects 2 values" _g12838_)))
                        (let ((_target1033010940_ (##vector-ref _g12837_ 0))
                              (_tl1033210942_ (##vector-ref _g12837_ 1)))
                          (if (gx#stx-null? _tl1033210942_)
                              (letrec ((_loop1033310945_
                                        (lambda (_hd1033110948_
                                                 _xarg1033710950_)
                                          (if (gx#stx-pair? _hd1033110948_)
                                              (let ((_e1033410953_
                                                     (gx#stx-e
                                                      _hd1033110948_)))
                                                (let ((_lp-hd1033510956_
                                                       (##car _e1033410953_))
                                                      (_lp-tl1033610958_
                                                       (##cdr _e1033410953_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd1033510956_)
                                                      (let ((_e1033910961_
                                                             (gx#stx-e
                                                              _lp-hd1033510956_)))
                                                        (let ((_hd1034010964_
                                                               (##car _e1033910961_))
                                                              (_tl1034110966_
                                                               (##cdr _e1033910961_)))
                                                          (if (gx#identifier?
                                                               _hd1034010964_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd1034010964_)
                          (if (gx#stx-pair? _tl1034110966_)
                              (let ((_e1034210969_ (gx#stx-e _tl1034110966_)))
                                (let ((_hd1034310972_ (##car _e1034210969_))
                                      (_tl1034410974_ (##cdr _e1034210969_)))
                                  (if (gx#stx-null? _tl1034410974_)
                                      (_loop1033310945_
                                       _lp-tl1033610958_
                                       (cons _hd1034310972_ _xarg1033710950_))
                                      (_g1029510863_ _g1029910866_))))
                              (_g1029510863_ _g1029910866_))
                          (_g1029510863_ _g1029910866_))
                      (_g1029510863_ _g1029910866_))))
              (_g1029510863_ _g1029910866_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg1033810977_
                                                     (reverse _xarg1033710950_)))
                                                (if (gx#stx-null?
                                                     _tl1031710905_)
                                                    ((lambda (_L10980_
                                                              _L10981_
                                                              _L10982_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1101011013_ _g1101111015_)
                                    (cons _g1101011013_ _g1101111015_))
                                  '()
                                  _L10982_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1101711020_
                                                           _g1101811022_)
                                                    (cons _g1101711020_
                                                          _g1101811022_))
                                                  '()
                                                  _L10982_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1102411027_
                                                           _g1102511029_)
                                                    (cons _g1102411027_
                                                          _g1102511029_))
                                                  '()
                                                  _L10980_))))
                           (if (andmap2 gx#free-identifier=?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1103111034_
                                                           _g1103211036_)
                                                    (cons _g1103111034_
                                                          _g1103211036_))
                                                  '()
                                                  _L10982_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1103811041_
                                                           _g1103911043_)
                                                    (cons _g1103811041_
                                                          _g1103911043_))
                                                  '()
                                                  _L10980_)))
                               (not (find (lambda (_g1104511047_)
                                            (gx#free-identifier=?
                                             _g1104511047_
                                             _L10981_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1104911052_
                                                             _g1105011054_)
                                                      (cons _g1104911052_
                                                            _g1105011054_))
                                                    '()
                                                    _L10982_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g1029510863_ _g1029910866_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg1033810977_
                                                     _hd1032810935_
                                                     _arg1031410897_)
                                                    (_g1029510863_
                                                     _g1029910866_)))))))
                                (_loop1033310945_ _target1033010940_ '()))
                              (_g1029510863_ _g1029910866_)))))
                    (_g1029510863_ _g1029910866_))
                (_g1029510863_ _g1029910866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029510863_
                                                     _g1029910866_))))
                                            (_g1029510863_ _g1029910866_))
                                        (_g1029510863_ _g1029910866_))
                                    (_g1029510863_ _g1029910866_))))
                            (_g1029510863_ _g1029910866_))))
                    (_g1029510863_ _g1029910866_))
                (_g1029510863_ _g1029910866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029510863_
                                                     _g1029910866_))))
                                            (_g1029510863_ _g1029910866_))))
                                    (_g1029510863_ _g1029910866_)))))))
                (_loop1030910881_ _target1030610876_ '()))
              (_g1029510863_ _g1029910866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1029510863_ _g1029910866_))
                                        (_g1029510863_ _g1029910866_))))
                                (_g1029510863_ _g1029910866_)))))
                    (_g1029411057_ _form10293_))))
               (_dispatch-case-e9606_
                (lambda (_hd9754_ _body9755_)
                  (let* ((_form9757_ (cons _hd9754_ (cons _body9755_ '())))
                         (_g97619885_
                          (lambda (_g97629882_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g97629882_)))
                         (_g976010003_
                          (lambda (_g97629888_)
                            (if (gx#stx-pair? _g97629888_)
                                (let ((_e98519890_ (gx#stx-e _g97629888_)))
                                  (let ((_hd98529893_ (##car _e98519890_))
                                        (_tl98539895_ (##cdr _e98519890_)))
                                    (if (gx#stx-pair? _tl98539895_)
                                        (let ((_e98549898_
                                               (gx#stx-e _tl98539895_)))
                                          (let ((_hd98559901_
                                                 (##car _e98549898_))
                                                (_tl98569903_
                                                 (##cdr _e98549898_)))
                                            (if (gx#stx-pair? _hd98559901_)
                                                (let ((_e98579906_
                                                       (gx#stx-e
                                                        _hd98559901_)))
                                                  (let ((_hd98589909_
                                                         (##car _e98579906_))
                                                        (_tl98599911_
                                                         (##cdr _e98579906_)))
                                                    (if (gx#identifier?
                                                         _hd98589909_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd98589909_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl98599911_)
                        (let ((_e98609914_ (gx#stx-e _tl98599911_)))
                          (let ((_hd98619917_ (##car _e98609914_))
                                (_tl98629919_ (##cdr _e98609914_)))
                            (if (gx#stx-pair? _hd98619917_)
                                (let ((_e98639922_ (gx#stx-e _hd98619917_)))
                                  (let ((_hd98649925_ (##car _e98639922_))
                                        (_tl98659927_ (##cdr _e98639922_)))
                                    (if (gx#identifier? _hd98649925_)
                                        (if (gx#stx-eq? '%#ref _hd98649925_)
                                            (if (gx#stx-pair? _tl98659927_)
                                                (let ((_e98669930_
                                                       (gx#stx-e
                                                        _tl98659927_)))
                                                  (let ((_hd98679933_
                                                         (##car _e98669930_))
                                                        (_tl98689935_
                                                         (##cdr _e98669930_)))
                                                    (if (gx#stx-null?
                                                         _tl98689935_)
                                                        (if (gx#stx-pair?
                                                             _tl98629919_)
                                                            (let ((_e98699938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl98629919_)))
                      (let ((_hd98709941_ (##car _e98699938_))
                            (_tl98719943_ (##cdr _e98699938_)))
                        (if (gx#stx-pair? _hd98709941_)
                            (let ((_e98729946_ (gx#stx-e _hd98709941_)))
                              (let ((_hd98739949_ (##car _e98729946_))
                                    (_tl98749951_ (##cdr _e98729946_)))
                                (if (gx#identifier? _hd98739949_)
                                    (if (gx#stx-eq? '%#ref _hd98739949_)
                                        (if (gx#stx-pair? _tl98749951_)
                                            (let ((_e98759954_
                                                   (gx#stx-e _tl98749951_)))
                                              (let ((_hd98769957_
                                                     (##car _e98759954_))
                                                    (_tl98779959_
                                                     (##cdr _e98759954_)))
                                                (if (gx#stx-null? _tl98779959_)
                                                    (if (gx#stx-pair?
                                                         _tl98719943_)
                                                        (let ((_e98789962_
                                                               (gx#stx-e
                                                                _tl98719943_)))
                                                          (let ((_hd98799965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e98789962_))
                        (_tl98809967_ (##cdr _e98789962_)))
                    (if (gx#stx-null? _tl98809967_)
                        (if (gx#stx-null? _tl98569903_)
                            ((lambda (_L9970_ _L9971_ _L9972_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L9970_ '()))))
                             _hd98769957_
                             _hd98679933_
                             _hd98529893_)
                            (_g97619885_ _g97629888_))
                        (_g97619885_ _g97629888_))))
                (_g97619885_ _g97629888_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g97619885_
                                                     _g97629888_))))
                                            (_g97619885_ _g97629888_))
                                        (_g97619885_ _g97629888_))
                                    (_g97619885_ _g97629888_))))
                            (_g97619885_ _g97629888_))))
                    (_g97619885_ _g97629888_))
                (_g97619885_ _g97629888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g97619885_ _g97629888_))
                                            (_g97619885_ _g97629888_))
                                        (_g97619885_ _g97629888_))))
                                (_g97619885_ _g97629888_))))
                        (_g97619885_ _g97629888_))
                    (_g97619885_ _g97629888_))
                (_g97619885_ _g97629888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g97619885_ _g97629888_))))
                                        (_g97619885_ _g97629888_))))
                                (_g97619885_ _g97629888_))))
                         (_g975910139_
                          (lambda (_g976210006_)
                            (if (gx#stx-pair? _g976210006_)
                                (let ((_e981210008_ (gx#stx-e _g976210006_)))
                                  (let ((_hd981310011_ (##car _e981210008_))
                                        (_tl981410013_ (##cdr _e981210008_)))
                                    (if (gx#stx-pair/null? _hd981310011_)
                                        (if (fx>= (gx#stx-length _hd981310011_)
                                                  '0)
                                            (let ((_g12839_
                                                   (gx#syntax-split-splice
                                                    _hd981310011_
                                                    '0)))
                                              (begin
                                                (let ((_g12840_
                                                       (if (##values? _g12839_)
                                                           (##vector-length
                                                            _g12839_)
                                                           1)))
                                                  (if (not (##fx= _g12840_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12840_)))
                                                (let ((_target981510016_
                                                       (##vector-ref
                                                        _g12839_
                                                        0))
                                                      (_tl981710018_
                                                       (##vector-ref
                                                        _g12839_
                                                        1)))
                                                  (letrec ((_loop981810021_
                                                            (lambda (_hd981610024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg982210026_)
                      (if (gx#stx-pair? _hd981610024_)
                          (let ((_e981910029_ (gx#stx-e _hd981610024_)))
                            (let ((_lp-hd982010032_ (##car _e981910029_))
                                  (_lp-tl982110034_ (##cdr _e981910029_)))
                              (_loop981810021_
                               _lp-tl982110034_
                               (cons _lp-hd982010032_ _arg982210026_))))
                          (let ((_arg982310037_ (reverse _arg982210026_)))
                            (if (gx#stx-pair? _tl981410013_)
                                (let ((_e982410040_ (gx#stx-e _tl981410013_)))
                                  (let ((_hd982510043_ (##car _e982410040_))
                                        (_tl982610045_ (##cdr _e982410040_)))
                                    (if (gx#stx-pair? _hd982510043_)
                                        (let ((_e982710048_
                                               (gx#stx-e _hd982510043_)))
                                          (let ((_hd982810051_
                                                 (##car _e982710048_))
                                                (_tl982910053_
                                                 (##cdr _e982710048_)))
                                            (if (gx#identifier? _hd982810051_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd982810051_)
                                                    (if (gx#stx-pair?
                                                         _tl982910053_)
                                                        (let ((_e983010056_
                                                               (gx#stx-e
                                                                _tl982910053_)))
                                                          (let ((_hd983110059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e983010056_))
                        (_tl983210061_ (##cdr _e983010056_)))
                    (if (gx#stx-pair? _hd983110059_)
                        (let ((_e983310064_ (gx#stx-e _hd983110059_)))
                          (let ((_hd983410067_ (##car _e983310064_))
                                (_tl983510069_ (##cdr _e983310064_)))
                            (if (gx#identifier? _hd983410067_)
                                (if (gx#stx-eq? '%#ref _hd983410067_)
                                    (if (gx#stx-pair? _tl983510069_)
                                        (let ((_e983610072_
                                               (gx#stx-e _tl983510069_)))
                                          (let ((_hd983710075_
                                                 (##car _e983610072_))
                                                (_tl983810077_
                                                 (##cdr _e983610072_)))
                                            (if (gx#stx-null? _tl983810077_)
                                                (if (gx#stx-pair?
                                                     _tl983210061_)
                                                    (let ((_e983910080_
                                                           (gx#stx-e
                                                            _tl983210061_)))
                                                      (let ((_hd984010083_
                                                             (##car _e983910080_))
                                                            (_tl984110085_
                                                             (##cdr _e983910080_)))
                                                        (if (gx#stx-pair?
                                                             _hd984010083_)
                                                            (let ((_e984210088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd984010083_)))
                      (let ((_hd984310091_ (##car _e984210088_))
                            (_tl984410093_ (##cdr _e984210088_)))
                        (if (gx#identifier? _hd984310091_)
                            (if (gx#stx-eq? '%#ref _hd984310091_)
                                (if (gx#stx-pair? _tl984410093_)
                                    (let ((_e984510096_
                                           (gx#stx-e _tl984410093_)))
                                      (let ((_hd984610099_
                                             (##car _e984510096_))
                                            (_tl984710101_
                                             (##cdr _e984510096_)))
                                        (if (gx#stx-null? _tl984710101_)
                                            (if (gx#stx-null? _tl982610045_)
                                                ((lambda (_L10104_
                                                          _L10105_
                                                          _L10106_
                                                          _L10107_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L10104_
                                                                '()))))
                                                 _hd984610099_
                                                 _hd983710075_
                                                 _tl981710018_
                                                 _arg982310037_)
                                                (_g976010003_ _g976210006_))
                                            (_g976010003_ _g976210006_))))
                                    (_g976010003_ _g976210006_))
                                (_g976010003_ _g976210006_))
                            (_g976010003_ _g976210006_))))
                    (_g976010003_ _g976210006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g976010003_
                                                     _g976210006_))
                                                (_g976010003_ _g976210006_))))
                                        (_g976010003_ _g976210006_))
                                    (_g976010003_ _g976210006_))
                                (_g976010003_ _g976210006_))))
                        (_g976010003_ _g976210006_))))
                (_g976010003_ _g976210006_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g976010003_
                                                     _g976210006_))
                                                (_g976010003_ _g976210006_))))
                                        (_g976010003_ _g976210006_))))
                                (_g976010003_ _g976210006_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop981810021_
                                                     _target981510016_
                                                     '())))))
                                            (_g976010003_ _g976210006_))
                                        (_g976010003_ _g976210006_))))
                                (_g976010003_ _g976210006_))))
                         (_g975810287_
                          (lambda (_g976210142_)
                            (if (gx#stx-pair? _g976210142_)
                                (let ((_e976610144_ (gx#stx-e _g976210142_)))
                                  (let ((_hd976710147_ (##car _e976610144_))
                                        (_tl976810149_ (##cdr _e976610144_)))
                                    (if (gx#stx-pair/null? _hd976710147_)
                                        (if (fx>= (gx#stx-length _hd976710147_)
                                                  '0)
                                            (let ((_g12841_
                                                   (gx#syntax-split-splice
                                                    _hd976710147_
                                                    '0)))
                                              (begin
                                                (let ((_g12842_
                                                       (if (##values? _g12841_)
                                                           (##vector-length
                                                            _g12841_)
                                                           1)))
                                                  (if (not (##fx= _g12842_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12842_)))
                                                (let ((_target976910152_
                                                       (##vector-ref
                                                        _g12841_
                                                        0))
                                                      (_tl977110154_
                                                       (##vector-ref
                                                        _g12841_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl977110154_)
                                                      (letrec ((_loop977210157_
                                                                (lambda (_hd977010160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg977610162_)
                          (if (gx#stx-pair? _hd977010160_)
                              (let ((_e977310165_ (gx#stx-e _hd977010160_)))
                                (let ((_lp-hd977410168_ (##car _e977310165_))
                                      (_lp-tl977510170_ (##cdr _e977310165_)))
                                  (_loop977210157_
                                   _lp-tl977510170_
                                   (cons _lp-hd977410168_ _arg977610162_))))
                              (let ((_arg977710173_ (reverse _arg977610162_)))
                                (if (gx#stx-pair? _tl976810149_)
                                    (let ((_e977810176_
                                           (gx#stx-e _tl976810149_)))
                                      (let ((_hd977910179_
                                             (##car _e977810176_))
                                            (_tl978010181_
                                             (##cdr _e977810176_)))
                                        (if (gx#stx-pair? _hd977910179_)
                                            (let ((_e978110184_
                                                   (gx#stx-e _hd977910179_)))
                                              (let ((_hd978210187_
                                                     (##car _e978110184_))
                                                    (_tl978310189_
                                                     (##cdr _e978110184_)))
                                                (if (gx#identifier?
                                                     _hd978210187_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd978210187_)
                                                        (if (gx#stx-pair?
                                                             _tl978310189_)
                                                            (let ((_e978410192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl978310189_)))
                      (let ((_hd978510195_ (##car _e978410192_))
                            (_tl978610197_ (##cdr _e978410192_)))
                        (if (gx#stx-pair? _hd978510195_)
                            (let ((_e978710200_ (gx#stx-e _hd978510195_)))
                              (let ((_hd978810203_ (##car _e978710200_))
                                    (_tl978910205_ (##cdr _e978710200_)))
                                (if (gx#identifier? _hd978810203_)
                                    (if (gx#stx-eq? '%#ref _hd978810203_)
                                        (if (gx#stx-pair? _tl978910205_)
                                            (let ((_e979010208_
                                                   (gx#stx-e _tl978910205_)))
                                              (let ((_hd979110211_
                                                     (##car _e979010208_))
                                                    (_tl979210213_
                                                     (##cdr _e979010208_)))
                                                (if (gx#stx-null?
                                                     _tl979210213_)
                                                    (if (gx#stx-pair/null?
                                                         _tl978610197_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl978610197_)
                          '0)
                    (let ((_g12843_ (gx#syntax-split-splice _tl978610197_ '0)))
                      (begin
                        (let ((_g12844_
                               (if (##values? _g12843_)
                                   (##vector-length _g12843_)
                                   1)))
                          (if (not (##fx= _g12844_ 2))
                              (error "Context expects 2 values" _g12844_)))
                        (let ((_target979310216_ (##vector-ref _g12843_ 0))
                              (_tl979510218_ (##vector-ref _g12843_ 1)))
                          (if (gx#stx-null? _tl979510218_)
                              (letrec ((_loop979610221_
                                        (lambda (_hd979410224_ _xarg980010226_)
                                          (if (gx#stx-pair? _hd979410224_)
                                              (let ((_e979710229_
                                                     (gx#stx-e _hd979410224_)))
                                                (let ((_lp-hd979810232_
                                                       (##car _e979710229_))
                                                      (_lp-tl979910234_
                                                       (##cdr _e979710229_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd979810232_)
                                                      (let ((_e980210237_
                                                             (gx#stx-e
                                                              _lp-hd979810232_)))
                                                        (let ((_hd980310240_
                                                               (##car _e980210237_))
                                                              (_tl980410242_
                                                               (##cdr _e980210237_)))
                                                          (if (gx#identifier?
                                                               _hd980310240_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd980310240_)
                          (if (gx#stx-pair? _tl980410242_)
                              (let ((_e980510245_ (gx#stx-e _tl980410242_)))
                                (let ((_hd980610248_ (##car _e980510245_))
                                      (_tl980710250_ (##cdr _e980510245_)))
                                  (if (gx#stx-null? _tl980710250_)
                                      (_loop979610221_
                                       _lp-tl979910234_
                                       (cons _hd980610248_ _xarg980010226_))
                                      (_g975910139_ _g976210142_))))
                              (_g975910139_ _g976210142_))
                          (_g975910139_ _g976210142_))
                      (_g975910139_ _g976210142_))))
              (_g975910139_ _g976210142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg980110253_
                                                     (reverse _xarg980010226_)))
                                                (if (gx#stx-null?
                                                     _tl978010181_)
                                                    ((lambda (_L10256_
                                                              _L10257_
                                                              _L10258_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L10257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg980110253_
                                                     _hd979110211_
                                                     _arg977710173_)
                                                    (_g975910139_
                                                     _g976210142_)))))))
                                (_loop979610221_ _target979310216_ '()))
                              (_g975910139_ _g976210142_)))))
                    (_g975910139_ _g976210142_))
                (_g975910139_ _g976210142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g975910139_
                                                     _g976210142_))))
                                            (_g975910139_ _g976210142_))
                                        (_g975910139_ _g976210142_))
                                    (_g975910139_ _g976210142_))))
                            (_g975910139_ _g976210142_))))
                    (_g975910139_ _g976210142_))
                (_g975910139_ _g976210142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g975910139_
                                                     _g976210142_))))
                                            (_g975910139_ _g976210142_))))
                                    (_g975910139_ _g976210142_)))))))
                (_loop977210157_ _target976910152_ '()))
              (_g975910139_ _g976210142_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g975910139_ _g976210142_))
                                        (_g975910139_ _g976210142_))))
                                (_g975910139_ _g976210142_)))))
                    (_g975810287_ _form9757_))))
               (_generate19607_
                (lambda (_args9742_ _arglen9743_ _hd9744_ _body9745_)
                  (let* ((_len9747_ (gx#stx-length _hd9744_))
                         (_condition9749_
                          (if (gx#stx-list? _hd9744_)
                              (cons '##fx=
                                    (cons _arglen9743_ (cons _len9747_ '())))
                              (if (> _len9747_ '0)
                                  (cons '##fx>=
                                        (cons _arglen9743_
                                              (cons _len9747_ '())))
                                  '#t)))
                         (_dispatch9751_
                          (if (_dispatch-case?9605_ _hd9744_ _body9745_)
                              (_dispatch-case-e9606_ _hd9744_ _body9745_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9744_)
                                          (cons (gxc#compile-e _body9745_)
                                                '()))))))
                    (cons _condition9749_
                          (cons (cons 'apply
                                      (cons _dispatch9751_
                                            (cons _args9742_ '())))
                                '()))))))
        (let* ((_g96099637_
                (lambda (_g96109634_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g96109634_)))
               (_g96089739_
                (lambda (_g96109640_)
                  (if (gx#stx-pair? _g96109640_)
                      (let ((_e96139642_ (gx#stx-e _g96109640_)))
                        (let ((_hd96149645_ (##car _e96139642_))
                              (_tl96159647_ (##cdr _e96139642_)))
                          (if (gx#stx-pair/null? _tl96159647_)
                              (if (fx>= (gx#stx-length _tl96159647_) '0)
                                  (let ((_g12845_
                                         (gx#syntax-split-splice
                                          _tl96159647_
                                          '0)))
                                    (begin
                                      (let ((_g12846_
                                             (if (##values? _g12845_)
                                                 (##vector-length _g12845_)
                                                 1)))
                                        (if (not (##fx= _g12846_ 2))
                                            (error "Context expects 2 values"
                                                   _g12846_)))
                                      (let ((_target96169650_
                                             (##vector-ref _g12845_ 0))
                                            (_tl96189652_
                                             (##vector-ref _g12845_ 1)))
                                        (if (gx#stx-null? _tl96189652_)
                                            (letrec ((_loop96199655_
                                                      (lambda (_hd96179658_
                                                               _body96239660_
                                                               _hd96249662_)
                                                        (if (gx#stx-pair?
                                                             _hd96179658_)
                                                            (let ((_e96209665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd96179658_)))
                      (let ((_lp-hd96219668_ (##car _e96209665_))
                            (_lp-tl96229670_ (##cdr _e96209665_)))
                        (if (gx#stx-pair? _lp-hd96219668_)
                            (let ((_e96279673_ (gx#stx-e _lp-hd96219668_)))
                              (let ((_hd96289676_ (##car _e96279673_))
                                    (_tl96299678_ (##cdr _e96279673_)))
                                (if (gx#stx-pair? _tl96299678_)
                                    (let ((_e96309681_
                                           (gx#stx-e _tl96299678_)))
                                      (let ((_hd96319684_ (##car _e96309681_))
                                            (_tl96329686_ (##cdr _e96309681_)))
                                        (if (gx#stx-null? _tl96329686_)
                                            (_loop96199655_
                                             _lp-tl96229670_
                                             (cons _hd96319684_ _body96239660_)
                                             (cons _hd96289676_ _hd96249662_))
                                            (_g96099637_ _g96109640_))))
                                    (_g96099637_ _g96109640_))))
                            (_g96099637_ _g96109640_))))
                    (let ((_body96259689_ (reverse _body96239660_))
                          (_hd96269691_ (reverse _hd96249662_)))
                      ((lambda (_L9694_ _L9695_)
                         (let ((_args9714_ (gxc#generate-runtime-temporary__0))
                               (_arglen9715_
                                (gxc#generate-runtime-temporary__0))
                               (_name9716_
                                (let ((_$e9711_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx9603_
                                        '#f)))
                                  (if _$e9711_
                                      _$e9711_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args9714_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen9715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args9714_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name9716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args9714_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g97179720_ _g97189722_)
                                            (_generate19607_
                                             _args9714_
                                             _arglen9715_
                                             _g97179720_
                                             _g97189722_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g97249727_
                                                             _g97259729_)
                                                      (cons _g97249727_
                                                            _g97259729_))
                                                    '()
                                                    _L9695_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g97319734_
                                                             _g97329736_)
                                                      (cons _g97319734_
                                                            _g97329736_))
                                                    '()
                                                    _L9694_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body96259689_
                       _hd96269691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop96199655_
                                               _target96169650_
                                               '()
                                               '()))
                                            (_g96099637_ _g96109640_)))))
                                  (_g96099637_ _g96109640_))
                              (_g96099637_ _g96109640_))))
                      (_g96099637_ _g96109640_)))))
          (_g96089739_ _stx9603_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx8668_ _compiled-body?8669_)
        (letrec ((_generate-simple8671_
                  (lambda (_hd9590_ _body9591_)
                    (_coalesce-let*8672_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd9590_
                      _body9591_
                      _compiled-body?8669_))))
                 (_coalesce-let*8672_
                  (lambda (_code8974_)
                    (let* ((_g89799114_
                            (lambda (_g89809111_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g89809111_)))
                           (_g89789121_
                            (lambda (_g89809117_) ((lambda () _code8974_))))
                           (_g89779291_
                            (lambda (_g89809124_)
                              (if (gx#stx-pair? _g89809124_)
                                  (let ((_e90689126_ (gx#stx-e _g89809124_)))
                                    (let ((_hd90699129_ (##car _e90689126_))
                                          (_tl90709131_ (##cdr _e90689126_)))
                                      (if (gx#identifier? _hd90699129_)
                                          (if (gx#stx-eq? 'let _hd90699129_)
                                              (if (gx#stx-pair? _tl90709131_)
                                                  (let ((_e90719134_
                                                         (gx#stx-e
                                                          _tl90709131_)))
                                                    (let ((_hd90729137_
                                                           (##car _e90719134_))
                                                          (_tl90739139_
                                                           (##cdr _e90719134_)))
                                                      (if (gx#stx-pair?
                                                           _hd90729137_)
                                                          (let ((_e90749142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90729137_)))
                    (let ((_hd90759145_ (##car _e90749142_))
                          (_tl90769147_ (##cdr _e90749142_)))
                      (if (gx#stx-pair? _hd90759145_)
                          (let ((_e90779150_ (gx#stx-e _hd90759145_)))
                            (let ((_hd90789153_ (##car _e90779150_))
                                  (_tl90799155_ (##cdr _e90779150_)))
                              (if (gx#stx-pair? _tl90799155_)
                                  (let ((_e90809158_ (gx#stx-e _tl90799155_)))
                                    (let ((_hd90819161_ (##car _e90809158_))
                                          (_tl90829163_ (##cdr _e90809158_)))
                                      (if (gx#stx-null? _tl90829163_)
                                          (if (gx#stx-null? _tl90769147_)
                                              (if (gx#stx-pair? _tl90739139_)
                                                  (let ((_e90839166_
                                                         (gx#stx-e
                                                          _tl90739139_)))
                                                    (let ((_hd90849169_
                                                           (##car _e90839166_))
                                                          (_tl90859171_
                                                           (##cdr _e90839166_)))
                                                      (if (gx#stx-pair?
                                                           _hd90849169_)
                                                          (let ((_e90869174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90849169_)))
                    (let ((_hd90879177_ (##car _e90869174_))
                          (_tl90889179_ (##cdr _e90869174_)))
                      (if (gx#identifier? _hd90879177_)
                          (if (gx#stx-eq? 'let* _hd90879177_)
                              (if (gx#stx-pair? _tl90889179_)
                                  (let ((_e90899182_ (gx#stx-e _tl90889179_)))
                                    (let ((_hd90909185_ (##car _e90899182_))
                                          (_tl90919187_ (##cdr _e90899182_)))
                                      (if (gx#stx-pair/null? _hd90909185_)
                                          (if (fx>= (gx#stx-length
                                                     _hd90909185_)
                                                    '0)
                                              (let ((_g12847_
                                                     (gx#syntax-split-splice
                                                      _hd90909185_
                                                      '0)))
                                                (begin
                                                  (let ((_g12848_
                                                         (if (##values?
                                                              _g12847_)
                                                             (##vector-length
                                                              _g12847_)
                                                             1)))
                                                    (if (not (##fx= _g12848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g12848_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target90929190_
                                                         (##vector-ref
                                                          _g12847_
                                                          0))
                                                        (_tl90949192_
                                                         (##vector-ref
                                                          _g12847_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl90949192_)
                                                        (letrec ((_loop90959195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd90939198_ _bind90999200_)
                            (if (gx#stx-pair? _hd90939198_)
                                (let ((_e90969203_ (gx#stx-e _hd90939198_)))
                                  (let ((_lp-hd90979206_ (##car _e90969203_))
                                        (_lp-tl90989208_ (##cdr _e90969203_)))
                                    (_loop90959195_
                                     _lp-tl90989208_
                                     (cons _lp-hd90979206_ _bind90999200_))))
                                (let ((_bind91009211_
                                       (reverse _bind90999200_)))
                                  (if (gx#stx-pair/null? _tl90919187_)
                                      (if (fx>= (gx#stx-length _tl90919187_)
                                                '0)
                                          (let ((_g12849_
                                                 (gx#syntax-split-splice
                                                  _tl90919187_
                                                  '0)))
                                            (begin
                                              (let ((_g12850_
                                                     (if (##values? _g12849_)
                                                         (##vector-length
                                                          _g12849_)
                                                         1)))
                                                (if (not (##fx= _g12850_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12850_)))
                                              (let ((_target91019214_
                                                     (##vector-ref _g12849_ 0))
                                                    (_tl91039216_
                                                     (##vector-ref
                                                      _g12849_
                                                      1)))
                                                (if (gx#stx-null? _tl91039216_)
                                                    (letrec ((_loop91049219_
                                                              (lambda (_hd91029222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body91089224_)
                        (if (gx#stx-pair? _hd91029222_)
                            (let ((_e91059227_ (gx#stx-e _hd91029222_)))
                              (let ((_lp-hd91069230_ (##car _e91059227_))
                                    (_lp-tl91079232_ (##cdr _e91059227_)))
                                (_loop91049219_
                                 _lp-tl91079232_
                                 (cons _lp-hd91069230_ _body91089224_))))
                            (let ((_body91099235_ (reverse _body91089224_)))
                              (if (gx#stx-null? _tl90859171_)
                                  ((lambda (_L9238_ _L9239_ _L9240_ _L9241_)
                                     (cons 'let*
                                           (cons (cons (cons _L9241_
                                                             (cons _L9240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g92769279_ _g92779281_)
                           (cons _g92769279_ _g92779281_))
                         '()
                         _L9239_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g92839286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g92849288_)
                     (cons _g92839286_ _g92849288_))
                   '()
                   _L9238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body91099235_
                                   _bind91009211_
                                   _hd90819161_
                                   _hd90789153_)
                                  (_g89789121_ _g89809124_)))))))
              (_loop91049219_ _target91019214_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g89789121_
                                                     _g89809124_)))))
                                          (_g89789121_ _g89809124_))
                                      (_g89789121_ _g89809124_)))))))
                  (_loop90959195_ _target90929190_ '()))
                (_g89789121_ _g89809124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g89789121_ _g89809124_))
                                          (_g89789121_ _g89809124_))))
                                  (_g89789121_ _g89809124_))
                              (_g89789121_ _g89809124_))
                          (_g89789121_ _g89809124_))))
                  (_g89789121_ _g89809124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89789121_ _g89809124_))
                                              (_g89789121_ _g89809124_))
                                          (_g89789121_ _g89809124_))))
                                  (_g89789121_ _g89809124_))))
                          (_g89789121_ _g89809124_))))
                  (_g89789121_ _g89809124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89789121_ _g89809124_))
                                              (_g89789121_ _g89809124_))
                                          (_g89789121_ _g89809124_))))
                                  (_g89789121_ _g89809124_))))
                           (_g89769456_
                            (lambda (_g89809294_)
                              (if (gx#stx-pair? _g89809294_)
                                  (let ((_e90229296_ (gx#stx-e _g89809294_)))
                                    (let ((_hd90239299_ (##car _e90229296_))
                                          (_tl90249301_ (##cdr _e90229296_)))
                                      (if (gx#identifier? _hd90239299_)
                                          (if (gx#stx-eq? 'let _hd90239299_)
                                              (if (gx#stx-pair? _tl90249301_)
                                                  (let ((_e90259304_
                                                         (gx#stx-e
                                                          _tl90249301_)))
                                                    (let ((_hd90269307_
                                                           (##car _e90259304_))
                                                          (_tl90279309_
                                                           (##cdr _e90259304_)))
                                                      (if (gx#stx-pair?
                                                           _hd90269307_)
                                                          (let ((_e90289312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90269307_)))
                    (let ((_hd90299315_ (##car _e90289312_))
                          (_tl90309317_ (##cdr _e90289312_)))
                      (if (gx#stx-pair? _hd90299315_)
                          (let ((_e90319320_ (gx#stx-e _hd90299315_)))
                            (let ((_hd90329323_ (##car _e90319320_))
                                  (_tl90339325_ (##cdr _e90319320_)))
                              (if (gx#stx-pair? _tl90339325_)
                                  (let ((_e90349328_ (gx#stx-e _tl90339325_)))
                                    (let ((_hd90359331_ (##car _e90349328_))
                                          (_tl90369333_ (##cdr _e90349328_)))
                                      (if (gx#stx-null? _tl90369333_)
                                          (if (gx#stx-null? _tl90309317_)
                                              (if (gx#stx-pair? _tl90279309_)
                                                  (let ((_e90379336_
                                                         (gx#stx-e
                                                          _tl90279309_)))
                                                    (let ((_hd90389339_
                                                           (##car _e90379336_))
                                                          (_tl90399341_
                                                           (##cdr _e90379336_)))
                                                      (if (gx#stx-pair?
                                                           _hd90389339_)
                                                          (let ((_e90409344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90389339_)))
                    (let ((_hd90419347_ (##car _e90409344_))
                          (_tl90429349_ (##cdr _e90409344_)))
                      (if (gx#identifier? _hd90419347_)
                          (if (gx#stx-eq? 'let _hd90419347_)
                              (if (gx#stx-pair? _tl90429349_)
                                  (let ((_e90439352_ (gx#stx-e _tl90429349_)))
                                    (let ((_hd90449355_ (##car _e90439352_))
                                          (_tl90459357_ (##cdr _e90439352_)))
                                      (if (gx#stx-pair? _hd90449355_)
                                          (let ((_e90469360_
                                                 (gx#stx-e _hd90449355_)))
                                            (let ((_hd90479363_
                                                   (##car _e90469360_))
                                                  (_tl90489365_
                                                   (##cdr _e90469360_)))
                                              (if (gx#stx-pair? _hd90479363_)
                                                  (let ((_e90499368_
                                                         (gx#stx-e
                                                          _hd90479363_)))
                                                    (let ((_hd90509371_
                                                           (##car _e90499368_))
                                                          (_tl90519373_
                                                           (##cdr _e90499368_)))
                                                      (if (gx#stx-pair?
                                                           _tl90519373_)
                                                          (let ((_e90529376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl90519373_)))
                    (let ((_hd90539379_ (##car _e90529376_))
                          (_tl90549381_ (##cdr _e90529376_)))
                      (if (gx#stx-null? _tl90549381_)
                          (if (gx#stx-null? _tl90489365_)
                              (if (gx#stx-pair/null? _tl90459357_)
                                  (if (fx>= (gx#stx-length _tl90459357_) '0)
                                      (let ((_g12851_
                                             (gx#syntax-split-splice
                                              _tl90459357_
                                              '0)))
                                        (begin
                                          (let ((_g12852_
                                                 (if (##values? _g12851_)
                                                     (##vector-length _g12851_)
                                                     1)))
                                            (if (not (##fx= _g12852_ 2))
                                                (error "Context expects 2 values"
                                                       _g12852_)))
                                          (let ((_target90559384_
                                                 (##vector-ref _g12851_ 0))
                                                (_tl90579386_
                                                 (##vector-ref _g12851_ 1)))
                                            (if (gx#stx-null? _tl90579386_)
                                                (letrec ((_loop90589389_
                                                          (lambda (_hd90569392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90629394_)
                    (if (gx#stx-pair? _hd90569392_)
                        (let ((_e90599397_ (gx#stx-e _hd90569392_)))
                          (let ((_lp-hd90609400_ (##car _e90599397_))
                                (_lp-tl90619402_ (##cdr _e90599397_)))
                            (_loop90589389_
                             _lp-tl90619402_
                             (cons _lp-hd90609400_ _body90629394_))))
                        (let ((_body90639405_ (reverse _body90629394_)))
                          (if (gx#stx-null? _tl90399341_)
                              ((lambda (_L9408_
                                        _L9409_
                                        _L9410_
                                        _L9411_
                                        _L9412_)
                                 (cons 'let*
                                       (cons (cons (cons _L9412_
                                                         (cons _L9411_ '()))
                                                   (cons (cons _L9410_
                                                               (cons _L9409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g94489451_
                                                                _g94499453_)
                                                         (cons _g94489451_
                                                               _g94499453_))
                                                       '()
                                                       _L9408_)))))
                               _body90639405_
                               _hd90539379_
                               _hd90509371_
                               _hd90359331_
                               _hd90329323_)
                              (_g89779291_ _g89809294_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop90589389_
                                                   _target90559384_
                                                   '()))
                                                (_g89779291_ _g89809294_)))))
                                      (_g89779291_ _g89809294_))
                                  (_g89779291_ _g89809294_))
                              (_g89779291_ _g89809294_))
                          (_g89779291_ _g89809294_))))
                  (_g89779291_ _g89809294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89779291_ _g89809294_))))
                                          (_g89779291_ _g89809294_))))
                                  (_g89779291_ _g89809294_))
                              (_g89779291_ _g89809294_))
                          (_g89779291_ _g89809294_))))
                  (_g89779291_ _g89809294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89779291_ _g89809294_))
                                              (_g89779291_ _g89809294_))
                                          (_g89779291_ _g89809294_))))
                                  (_g89779291_ _g89809294_))))
                          (_g89779291_ _g89809294_))))
                  (_g89779291_ _g89809294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89779291_ _g89809294_))
                                              (_g89779291_ _g89809294_))
                                          (_g89779291_ _g89809294_))))
                                  (_g89779291_ _g89809294_))))
                           (_g89759587_
                            (lambda (_g89809459_)
                              (if (gx#stx-pair? _g89809459_)
                                  (let ((_e89849461_ (gx#stx-e _g89809459_)))
                                    (let ((_hd89859464_ (##car _e89849461_))
                                          (_tl89869466_ (##cdr _e89849461_)))
                                      (if (gx#identifier? _hd89859464_)
                                          (if (gx#stx-eq? 'let _hd89859464_)
                                              (if (gx#stx-pair? _tl89869466_)
                                                  (let ((_e89879469_
                                                         (gx#stx-e
                                                          _tl89869466_)))
                                                    (let ((_hd89889472_
                                                           (##car _e89879469_))
                                                          (_tl89899474_
                                                           (##cdr _e89879469_)))
                                                      (if (gx#stx-pair?
                                                           _hd89889472_)
                                                          (let ((_e89909477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd89889472_)))
                    (let ((_hd89919480_ (##car _e89909477_))
                          (_tl89929482_ (##cdr _e89909477_)))
                      (if (gx#stx-pair? _hd89919480_)
                          (let ((_e89939485_ (gx#stx-e _hd89919480_)))
                            (let ((_hd89949488_ (##car _e89939485_))
                                  (_tl89959490_ (##cdr _e89939485_)))
                              (if (gx#stx-pair? _tl89959490_)
                                  (let ((_e89969493_ (gx#stx-e _tl89959490_)))
                                    (let ((_hd89979496_ (##car _e89969493_))
                                          (_tl89989498_ (##cdr _e89969493_)))
                                      (if (gx#stx-null? _tl89989498_)
                                          (if (gx#stx-null? _tl89929482_)
                                              (if (gx#stx-pair? _tl89899474_)
                                                  (let ((_e89999501_
                                                         (gx#stx-e
                                                          _tl89899474_)))
                                                    (let ((_hd90009504_
                                                           (##car _e89999501_))
                                                          (_tl90019506_
                                                           (##cdr _e89999501_)))
                                                      (if (gx#stx-pair?
                                                           _hd90009504_)
                                                          (let ((_e90029509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90009504_)))
                    (let ((_hd90039512_ (##car _e90029509_))
                          (_tl90049514_ (##cdr _e90029509_)))
                      (if (gx#identifier? _hd90039512_)
                          (if (gx#stx-eq? 'let _hd90039512_)
                              (if (gx#stx-pair? _tl90049514_)
                                  (let ((_e90059517_ (gx#stx-e _tl90049514_)))
                                    (let ((_hd90069520_ (##car _e90059517_))
                                          (_tl90079522_ (##cdr _e90059517_)))
                                      (if (gx#stx-null? _hd90069520_)
                                          (if (gx#stx-pair/null? _tl90079522_)
                                              (if (fx>= (gx#stx-length
                                                         _tl90079522_)
                                                        '0)
                                                  (let ((_g12853_
                                                         (gx#syntax-split-splice
                                                          _tl90079522_
                                                          '0)))
                                                    (begin
                                                      (let ((_g12854_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g12853_)
                         (##vector-length _g12853_)
                         1)))
                (if (not (##fx= _g12854_ 2))
                    (error "Context expects 2 values" _g12854_)))
              (let ((_target90089525_ (##vector-ref _g12853_ 0))
                    (_tl90109527_ (##vector-ref _g12853_ 1)))
                (if (gx#stx-null? _tl90109527_)
                    (letrec ((_loop90119530_
                              (lambda (_hd90099533_ _body90159535_)
                                (if (gx#stx-pair? _hd90099533_)
                                    (let ((_e90129538_
                                           (gx#stx-e _hd90099533_)))
                                      (let ((_lp-hd90139541_
                                             (##car _e90129538_))
                                            (_lp-tl90149543_
                                             (##cdr _e90129538_)))
                                        (_loop90119530_
                                         _lp-tl90149543_
                                         (cons _lp-hd90139541_
                                               _body90159535_))))
                                    (let ((_body90169546_
                                           (reverse _body90159535_)))
                                      (if (gx#stx-null? _tl90019506_)
                                          ((lambda (_L9549_ _L9550_ _L9551_)
                                             (cons 'let
                                                   (cons (cons (cons _L9551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L9550_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g95799582_ _g95809584_)
                             (cons _g95799582_ _g95809584_))
                           '()
                           _L9549_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body90169546_
                                           _hd89979496_
                                           _hd89949488_)
                                          (_g89769456_ _g89809459_)))))))
                      (_loop90119530_ _target90089525_ '()))
                    (_g89769456_ _g89809459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89769456_ _g89809459_))
                                              (_g89769456_ _g89809459_))
                                          (_g89769456_ _g89809459_))))
                                  (_g89769456_ _g89809459_))
                              (_g89769456_ _g89809459_))
                          (_g89769456_ _g89809459_))))
                  (_g89769456_ _g89809459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89769456_ _g89809459_))
                                              (_g89769456_ _g89809459_))
                                          (_g89769456_ _g89809459_))))
                                  (_g89769456_ _g89809459_))))
                          (_g89769456_ _g89809459_))))
                  (_g89769456_ _g89809459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89769456_ _g89809459_))
                                              (_g89769456_ _g89809459_))
                                          (_g89769456_ _g89809459_))))
                                  (_g89769456_ _g89809459_)))))
                      (_g89759587_ _code8974_))))
                 (_generate-values8673_
                  (lambda (_hd8787_ _body8788_)
                    (let _lp8790_ ((_rest8792_ _hd8787_)
                                   (_bind8793_ '())
                                   (_check8794_ '())
                                   (_post8795_ '()))
                      (let* ((_g87988809_
                              (lambda (_g87998806_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g87998806_)))
                             (_g87978823_
                              (lambda (_g87998812_)
                                ((lambda ()
                                   (let* ((_body8816_
                                           (if _compiled-body?8669_
                                               _body8788_
                                               (gxc#compile-e _body8788_)))
                                          (_body8818_
                                           (_generate-values-post8674_
                                            _post8795_
                                            _body8816_))
                                          (_body8820_
                                           (_generate-values-check8675_
                                            _check8794_
                                            _body8818_)))
                                     (cons 'let
                                           (cons (reverse _bind8793_)
                                                 (cons _body8820_ '()))))))))
                             (_g87968971_
                              (lambda (_g87998826_)
                                (if (gx#stx-pair? _g87998826_)
                                    (let ((_e88028828_ (gx#stx-e _g87998826_)))
                                      (let ((_hd88038831_ (##car _e88028828_))
                                            (_tl88048833_ (##cdr _e88028828_)))
                                        ((lambda (_L8836_ _L8837_)
                                           (let* ((_g88528877_
                                                   (lambda (_g88538874_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g88538874_)))
                                                  (_g88518921_
                                                   (lambda (_g88538880_)
                                                     (if (gx#stx-pair?
                                                          _g88538880_)
                                                         (let ((_e88678882_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g88538880_)))
                   (let ((_hd88688885_ (##car _e88678882_))
                         (_tl88698887_ (##cdr _e88678882_)))
                     (if (gx#stx-pair? _tl88698887_)
                         (let ((_e88708890_ (gx#stx-e _tl88698887_)))
                           (let ((_hd88718893_ (##car _e88708890_))
                                 (_tl88728895_ (##cdr _e88708890_)))
                             (if (gx#stx-null? _tl88728895_)
                                 ((lambda (_L8898_ _L8899_)
                                    (let* ((_vals8912_
                                            (gxc#generate-runtime-temporary__0))
                                           (_check-values8914_
                                            (gxc#generate-runtime-check-values
                                             _vals8912_
                                             _L8899_
                                             _L8898_))
                                           (_refs8916_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8912_
                                             _L8899_))
                                           (_expr8918_
                                            (gxc#compile-e _L8898_)))
                                      (_lp8790_
                                       _L8836_
                                       (cons (cons _vals8912_
                                                   (cons _expr8918_ '()))
                                             _bind8793_)
                                       (cons _check-values8914_ _check8794_)
                                       (cons _refs8916_ _post8795_))))
                                  _hd88718893_
                                  _hd88688885_)
                                 (_g88528877_ _g88538880_))))
                         (_g88528877_ _g88538880_))))
                 (_g88528877_ _g88538880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g88508968_
                                                   (lambda (_g88538924_)
                                                     (if (gx#stx-pair?
                                                          _g88538924_)
                                                         (let ((_e88568926_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g88538924_)))
                   (let ((_hd88578929_ (##car _e88568926_))
                         (_tl88588931_ (##cdr _e88568926_)))
                     (if (gx#stx-pair? _hd88578929_)
                         (let ((_e88598934_ (gx#stx-e _hd88578929_)))
                           (let ((_hd88608937_ (##car _e88598934_))
                                 (_tl88618939_ (##cdr _e88598934_)))
                             (if (gx#stx-null? _tl88618939_)
                                 (if (gx#stx-pair? _tl88588931_)
                                     (let ((_e88628942_
                                            (gx#stx-e _tl88588931_)))
                                       (let ((_hd88638945_ (##car _e88628942_))
                                             (_tl88648947_
                                              (##cdr _e88628942_)))
                                         (if (gx#stx-null? _tl88648947_)
                                             ((lambda (_L8950_ _L8951_)
                                                (let ((_eid8965_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8951_))
                                                      (_expr8966_
                                                       (gxc#compile-e
                                                        _L8950_)))
                                                  (_lp8790_
                                                   _L8836_
                                                   (cons (cons _eid8965_
                                                               (cons _expr8966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8793_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8794_
                                                   _post8795_)))
                                              _hd88638945_
                                              _hd88608937_)
                                             (_g88518921_ _g88538924_))))
                                     (_g88518921_ _g88538924_))
                                 (_g88518921_ _g88538924_))))
                         (_g88518921_ _g88538924_))))
                 (_g88518921_ _g88538924_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g88508968_ _L8837_)))
                                         _tl88048833_
                                         _hd88038831_)))
                                    (_g87978823_ _g87998826_)))))
                        (_g87968971_ _rest8792_)))))
                 (_generate-values-post8674_
                  (lambda (_post8746_ _body8747_)
                    (let _lp8749_ ((_rest8751_ _post8746_)
                                   (_body8752_ _body8747_))
                      (let* ((_rest87538761_ _rest8751_)
                             (_E87568765_
                              (lambda ()
                                (error '"No clause matching" _rest87538761_)))
                             (_else87558769_ (lambda () _body8752_))
                             (_K87578775_
                              (lambda (_rest8772_ _bind8773_)
                                (_lp8749_
                                 _rest8772_
                                 (cons 'let
                                       (cons _bind8773_
                                             (cons _body8752_ '())))))))
                        (if (##pair? _rest87538761_)
                            (let ((_hd87588778_ (##car _rest87538761_))
                                  (_tl87598780_ (##cdr _rest87538761_)))
                              (let* ((_bind8783_ _hd87588778_)
                                     (_rest8785_ _tl87598780_))
                                (_K87578775_ _rest8785_ _bind8783_)))
                            (_else87558769_))))))
                 (_generate-values-check8675_
                  (lambda (_check8743_ _body8744_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8744_ '())
                                  (reverse _check8743_))))))
          (let* ((_g86778694_
                  (lambda (_g86788691_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86788691_)))
                 (_g86768740_
                  (lambda (_g86788697_)
                    (if (gx#stx-pair? _g86788697_)
                        (let ((_e86818699_ (gx#stx-e _g86788697_)))
                          (let ((_hd86828702_ (##car _e86818699_))
                                (_tl86838704_ (##cdr _e86818699_)))
                            (if (gx#stx-pair? _tl86838704_)
                                (let ((_e86848707_ (gx#stx-e _tl86838704_)))
                                  (let ((_hd86858710_ (##car _e86848707_))
                                        (_tl86868712_ (##cdr _e86848707_)))
                                    (if (gx#stx-pair? _tl86868712_)
                                        (let ((_e86878715_
                                               (gx#stx-e _tl86868712_)))
                                          (let ((_hd86888718_
                                                 (##car _e86878715_))
                                                (_tl86898720_
                                                 (##cdr _e86878715_)))
                                            (if (gx#stx-null? _tl86898720_)
                                                ((lambda (_L8723_ _L8724_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8724_)
                                                       (_generate-simple8671_
                                                        _L8724_
                                                        _L8723_)
                                                       (_generate-values8673_
                                                        _L8724_
                                                        _L8723_)))
                                                 _hd86888718_
                                                 _hd86858710_)
                                                (_g86778694_ _g86788697_))))
                                        (_g86778694_ _g86788697_))))
                                (_g86778694_ _g86788697_))))
                        (_g86778694_ _g86788697_)))))
            (_g86768740_ _stx8668_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx9596_)
          (let ((_compiled-body?9598_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx9596_
             _compiled-body?9598_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g12856_
          (let ((_g12855_ (length _g12856_)))
            (cond ((##fx= _g12855_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g12856_))
                  ((##fx= _g12855_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g12856_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g12856_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals8567_ _hd8568_)
      (let _lp8570_ ((_rest8572_ _hd8568_) (_k8573_ '0) (_r8574_ '()))
        (let* ((_g85798595_
                (lambda (_g85808592_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85808592_)))
               (_g85788602_
                (lambda (_g85808598_) ((lambda () (reverse _r8574_)))))
               (_g85778618_
                (lambda (_g85808605_)
                  ((lambda (_L8607_)
                     (if (gx#identifier? _L8607_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L8607_)
                                             (cons (gxc#generate-runtime-values->list
                                                    _vals8567_
                                                    _k8573_)
                                                   '()))
                                       '())
                                 _r8574_)
                         (_g85788602_ _g85808605_)))
                   _g85808605_)))
               (_g85768642_
                (lambda (_g85808621_)
                  (if (gx#stx-pair? _g85808621_)
                      (let ((_e85878623_ (gx#stx-e _g85808621_)))
                        (let ((_hd85888626_ (##car _e85878623_))
                              (_tl85898628_ (##cdr _e85878623_)))
                          ((lambda (_L8631_ _L8632_)
                             (_lp8570_
                              _L8631_
                              (fx+ _k8573_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L8632_)
                                          (cons (gxc#generate-runtime-values-ref
                                                 _vals8567_
                                                 _k8573_
                                                 _L8631_)
                                                '()))
                                    _r8574_)))
                           _tl85898628_
                           _hd85888626_)))
                      (_g85778618_ _g85808621_))))
               (_g85758664_
                (lambda (_g85808645_)
                  (if (gx#stx-pair? _g85808645_)
                      (let ((_e85828647_ (gx#stx-e _g85808645_)))
                        (let ((_hd85838650_ (##car _e85828647_))
                              (_tl85848652_ (##cdr _e85828647_)))
                          (if (gx#stx-datum? _hd85838650_)
                              (if (equal? (gx#stx-e _hd85838650_) '#f)
                                  ((lambda (_L8655_)
                                     (_lp8570_
                                      _L8655_
                                      (fx+ _k8573_ '1)
                                      _r8574_))
                                   _tl85848652_)
                                  (_g85768642_ _g85808645_))
                              (_g85768642_ _g85808645_))))
                      (_g85768642_ _g85808645_)))))
          (_g85758664_ _rest8572_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx8247_ _compiled-body?8248_)
        (letrec ((_generate-simple8250_
                  (lambda (_hd8554_ _body8555_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd8554_
                     _body8555_
                     _compiled-body?8248_)))
                 (_generate-values8251_
                  (lambda (_hd8331_ _body8332_)
                    (let _lp8334_ ((_rest8336_ _hd8331_)
                                   (_bind8337_ '())
                                   (_check8338_ '())
                                   (_post8339_ '()))
                      (let* ((_g83428353_
                              (lambda (_g83438350_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g83438350_)))
                             (_g83418367_
                              (lambda (_g83438356_)
                                ((lambda ()
                                   (let* ((_body8360_
                                           (if _compiled-body?8248_
                                               _body8332_
                                               (gxc#compile-e _body8332_)))
                                          (_body8362_
                                           (_generate-values-post8253_
                                            _post8339_
                                            _body8360_))
                                          (_body8364_
                                           (_generate-values-check8252_
                                            _check8338_
                                            _body8362_)))
                                     (cons 'letrec
                                           (cons (reverse _bind8337_)
                                                 (cons _body8364_ '()))))))))
                             (_g83408551_
                              (lambda (_g83438370_)
                                (if (gx#stx-pair? _g83438370_)
                                    (let ((_e83468372_ (gx#stx-e _g83438370_)))
                                      (let ((_hd83478375_ (##car _e83468372_))
                                            (_tl83488377_ (##cdr _e83468372_)))
                                        ((lambda (_L8380_ _L8381_)
                                           (let* ((_g83968421_
                                                   (lambda (_g83978418_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g83978418_)))
                                                  (_g83958501_
                                                   (lambda (_g83978424_)
                                                     (if (gx#stx-pair?
                                                          _g83978424_)
                                                         (let ((_e84118426_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83978424_)))
                   (let ((_hd84128429_ (##car _e84118426_))
                         (_tl84138431_ (##cdr _e84118426_)))
                     (if (gx#stx-pair? _tl84138431_)
                         (let ((_e84148434_ (gx#stx-e _tl84138431_)))
                           (let ((_hd84158437_ (##car _e84148434_))
                                 (_tl84168439_ (##cdr _e84148434_)))
                             (if (gx#stx-null? _tl84168439_)
                                 ((lambda (_L8442_ _L8443_)
                                    (let* ((_vals8456_
                                            (gxc#generate-runtime-temporary__0))
                                           (_check-values8458_
                                            (gxc#generate-runtime-check-values
                                             _vals8456_
                                             _L8443_
                                             _L8442_))
                                           (_refs8460_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8456_
                                             _L8443_))
                                           (_expr8462_
                                            (gxc#compile-e _L8442_)))
                                      (_lp8334_
                                       _L8380_
                                       (foldl1 cons
                                               (cons (cons _vals8456_
                                                           (cons _expr8462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8337_)
                                               (map (lambda (_e84648466_)
                                                      (let* ((_g84688477_
                                                              _e84648466_)
                                                             (_E84708481_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g84688477_)))
                     (_K84718486_
                      (lambda (_eid8484_)
                        (cons _eid8484_ (cons '#!void '())))))
                (if (##pair? _g84688477_)
                    (let ((_hd84728489_ (##car _g84688477_))
                          (_tl84738491_ (##cdr _g84688477_)))
                      (let ((_eid8494_ _hd84728489_))
                        (if (##pair? _tl84738491_)
                            (let ((_hd84748496_ (##car _tl84738491_))
                                  (_tl84758498_ (##cdr _tl84738491_)))
                              (if (##null? _tl84758498_)
                                  (_K84718486_ _eid8494_)
                                  (_E84708481_)))
                            (_E84708481_))))
                    (_E84708481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs8460_))
                                       (cons _check-values8458_ _check8338_)
                                       (foldl1 cons _refs8460_ _post8339_))))
                                  _hd84158437_
                                  _hd84128429_)
                                 (_g83968421_ _g83978424_))))
                         (_g83968421_ _g83978424_))))
                 (_g83968421_ _g83978424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g83948548_
                                                   (lambda (_g83978504_)
                                                     (if (gx#stx-pair?
                                                          _g83978504_)
                                                         (let ((_e84008506_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83978504_)))
                   (let ((_hd84018509_ (##car _e84008506_))
                         (_tl84028511_ (##cdr _e84008506_)))
                     (if (gx#stx-pair? _hd84018509_)
                         (let ((_e84038514_ (gx#stx-e _hd84018509_)))
                           (let ((_hd84048517_ (##car _e84038514_))
                                 (_tl84058519_ (##cdr _e84038514_)))
                             (if (gx#stx-null? _tl84058519_)
                                 (if (gx#stx-pair? _tl84028511_)
                                     (let ((_e84068522_
                                            (gx#stx-e _tl84028511_)))
                                       (let ((_hd84078525_ (##car _e84068522_))
                                             (_tl84088527_
                                              (##cdr _e84068522_)))
                                         (if (gx#stx-null? _tl84088527_)
                                             ((lambda (_L8530_ _L8531_)
                                                (let ((_eid8545_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8531_))
                                                      (_expr8546_
                                                       (gxc#compile-e
                                                        _L8530_)))
                                                  (_lp8334_
                                                   _L8380_
                                                   (cons (cons _eid8545_
                                                               (cons _expr8546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8337_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8338_
                                                   _post8339_)))
                                              _hd84078525_
                                              _hd84048517_)
                                             (_g83958501_ _g83978504_))))
                                     (_g83958501_ _g83978504_))
                                 (_g83958501_ _g83978504_))))
                         (_g83958501_ _g83978504_))))
                 (_g83958501_ _g83978504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g83948548_ _L8381_)))
                                         _tl83488377_
                                         _hd83478375_)))
                                    (_g83418367_ _g83438370_)))))
                        (_g83408551_ _rest8336_)))))
                 (_generate-values-check8252_
                  (lambda (_check8328_ _body8329_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8329_ '())
                                  (reverse _check8328_)))))
                 (_generate-values-post8253_
                  (lambda (_post8321_ _body8322_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8322_ '())
                                  (map (lambda (_g83238325_)
                                         (cons 'set! _g83238325_))
                                       (reverse _post8321_)))))))
          (let* ((_g82558272_
                  (lambda (_g82568269_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g82568269_)))
                 (_g82548318_
                  (lambda (_g82568275_)
                    (if (gx#stx-pair? _g82568275_)
                        (let ((_e82598277_ (gx#stx-e _g82568275_)))
                          (let ((_hd82608280_ (##car _e82598277_))
                                (_tl82618282_ (##cdr _e82598277_)))
                            (if (gx#stx-pair? _tl82618282_)
                                (let ((_e82628285_ (gx#stx-e _tl82618282_)))
                                  (let ((_hd82638288_ (##car _e82628285_))
                                        (_tl82648290_ (##cdr _e82628285_)))
                                    (if (gx#stx-pair? _tl82648290_)
                                        (let ((_e82658293_
                                               (gx#stx-e _tl82648290_)))
                                          (let ((_hd82668296_
                                                 (##car _e82658293_))
                                                (_tl82678298_
                                                 (##cdr _e82658293_)))
                                            (if (gx#stx-null? _tl82678298_)
                                                ((lambda (_L8301_ _L8302_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8302_)
                                                       (_generate-simple8250_
                                                        _L8302_
                                                        _L8301_)
                                                       (_generate-values8251_
                                                        _L8302_
                                                        _L8301_)))
                                                 _hd82668296_
                                                 _hd82638288_)
                                                (_g82558272_ _g82568275_))))
                                        (_g82558272_ _g82568275_))))
                                (_g82558272_ _g82568275_))))
                        (_g82558272_ _g82568275_)))))
            (_g82548318_ _stx8247_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx8560_)
          (let ((_compiled-body?8562_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx8560_
             _compiled-body?8562_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g12858_
          (let ((_g12857_ (length _g12858_)))
            (cond ((##fx= _g12857_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g12858_))
                  ((##fx= _g12857_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g12858_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g12858_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7829_)
      (letrec ((_generate-values7831_
                (lambda (_hd8074_ _body8075_)
                  (let _lp8077_ ((_rest8079_ _hd8074_) (_bind8080_ '()))
                    (let* ((_rest80818089_ _rest8079_)
                           (_E80848093_
                            (lambda ()
                              (error '"No clause matching" _rest80818089_)))
                           (_else80838100_
                            (lambda ()
                              (let ((_bind8097_ (reverse _bind8080_))
                                    (_body8098_ (gxc#compile-e _body8075_)))
                                (cons 'letrec*
                                      (cons _bind8097_
                                            (cons _body8098_ '()))))))
                           (_K80858234_
                            (lambda (_rest8103_ _hd-bind8104_)
                              (let* ((_g81078132_
                                      (lambda (_g81088129_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g81088129_)))
                                     (_g81068184_
                                      (lambda (_g81088135_)
                                        (if (gx#stx-pair? _g81088135_)
                                            (let ((_e81228137_
                                                   (gx#stx-e _g81088135_)))
                                              (let ((_hd81238140_
                                                     (##car _e81228137_))
                                                    (_tl81248142_
                                                     (##cdr _e81228137_)))
                                                (if (gx#stx-pair? _tl81248142_)
                                                    (let ((_e81258145_
                                                           (gx#stx-e
                                                            _tl81248142_)))
                                                      (let ((_hd81268148_
                                                             (##car _e81258145_))
                                                            (_tl81278150_
                                                             (##cdr _e81258145_)))
                                                        (if (gx#stx-null?
                                                             _tl81278150_)
                                                            ((lambda (_L8153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8154_)
                       (let* ((_vals8173_ (gxc#generate-runtime-temporary__0))
                              (_tmp8175_ (gxc#generate-runtime-temporary__0))
                              (_check-values8177_
                               (gxc#generate-runtime-check-values
                                _tmp8175_
                                _L8154_
                                _L8153_))
                              (_refs8179_
                               (gxc#generate-runtime-let-values-bind
                                _vals8173_
                                _L8154_))
                              (_expr8181_ (gxc#compile-e _L8153_)))
                         (_lp8077_
                          _rest8103_
                          (foldl1 cons
                                  (cons (cons _vals8173_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp8175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr8181_ '()))
                              '())
                        (cons _check-values8177_ (cons _tmp8175_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind8080_)
                                  _refs8179_))))
                     _hd81268148_
                     _hd81238140_)
                    (_g81078132_ _g81088135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81078132_
                                                     _g81088135_))))
                                            (_g81078132_ _g81088135_))))
                                     (_g81058231_
                                      (lambda (_g81088187_)
                                        (if (gx#stx-pair? _g81088187_)
                                            (let ((_e81118189_
                                                   (gx#stx-e _g81088187_)))
                                              (let ((_hd81128192_
                                                     (##car _e81118189_))
                                                    (_tl81138194_
                                                     (##cdr _e81118189_)))
                                                (if (gx#stx-pair? _hd81128192_)
                                                    (let ((_e81148197_
                                                           (gx#stx-e
                                                            _hd81128192_)))
                                                      (let ((_hd81158200_
                                                             (##car _e81148197_))
                                                            (_tl81168202_
                                                             (##cdr _e81148197_)))
                                                        (if (gx#stx-null?
                                                             _tl81168202_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81138194_)
                        (let ((_e81178205_ (gx#stx-e _tl81138194_)))
                          (let ((_hd81188208_ (##car _e81178205_))
                                (_tl81198210_ (##cdr _e81178205_)))
                            (if (gx#stx-null? _tl81198210_)
                                ((lambda (_L8213_ _L8214_)
                                   (let ((_eid8228_
                                          (gxc#generate-runtime-binding-id*
                                           _L8214_))
                                         (_expr8229_ (gxc#compile-e _L8213_)))
                                     (_lp8077_
                                      _rest8103_
                                      (cons (cons _eid8228_
                                                  (cons _expr8229_ '()))
                                            _bind8080_))))
                                 _hd81188208_
                                 _hd81158200_)
                                (_g81068184_ _g81088187_))))
                        (_g81068184_ _g81088187_))
                    (_g81068184_ _g81088187_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81068184_
                                                     _g81088187_))))
                                            (_g81068184_ _g81088187_)))))
                                (_g81058231_ _hd-bind8104_)))))
                      (if (##pair? _rest80818089_)
                          (let ((_hd80868237_ (##car _rest80818089_))
                                (_tl80878239_ (##cdr _rest80818089_)))
                            (let* ((_hd-bind8242_ _hd80868237_)
                                   (_rest8244_ _tl80878239_))
                              (_K80858234_ _rest8244_ _hd-bind8242_)))
                          (_else80838100_))))))
               (_generate-letrec?7832_
                (lambda (_hd7964_)
                  (let _lp7966_ ((_rest7968_ _hd7964_))
                    (let* ((_rest79697977_ _rest7968_)
                           (_E79727981_
                            (lambda ()
                              (error '"No clause matching" _rest79697977_)))
                           (_else79717985_ (lambda () '#t))
                           (_K79738062_
                            (lambda (_rest7988_ _hd-bind7989_)
                              (let* ((_g79918008_
                                      (lambda (_g79928005_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g79928005_)))
                                     (_g79908059_
                                      (lambda (_g79928011_)
                                        (if (gx#stx-pair? _g79928011_)
                                            (let ((_e79958013_
                                                   (gx#stx-e _g79928011_)))
                                              (let ((_hd79968016_
                                                     (##car _e79958013_))
                                                    (_tl79978018_
                                                     (##cdr _e79958013_)))
                                                (if (gx#stx-pair? _hd79968016_)
                                                    (let ((_e79988021_
                                                           (gx#stx-e
                                                            _hd79968016_)))
                                                      (let ((_hd79998024_
                                                             (##car _e79988021_))
                                                            (_tl80008026_
                                                             (##cdr _e79988021_)))
                                                        (if (gx#stx-null?
                                                             _tl80008026_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79978018_)
                        (let ((_e80018029_ (gx#stx-e _tl79978018_)))
                          (let ((_hd80028032_ (##car _e80018029_))
                                (_tl80038034_ (##cdr _e80018029_)))
                            (if (gx#stx-null? _tl80038034_)
                                ((lambda (_L8037_ _L8038_)
                                   (if (_is-lambda-expr?7833_ _L8037_)
                                       (_lp7966_ _rest7988_)
                                       '#f))
                                 _hd80028032_
                                 _hd79998024_)
                                (_g79918008_ _g79928011_))))
                        (_g79918008_ _g79928011_))
                    (_g79918008_ _g79928011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79918008_
                                                     _g79928011_))))
                                            (_g79918008_ _g79928011_)))))
                                (_g79908059_ _hd-bind7989_)))))
                      (if (##pair? _rest79697977_)
                          (let ((_hd79748065_ (##car _rest79697977_))
                                (_tl79758067_ (##cdr _rest79697977_)))
                            (let* ((_hd-bind8070_ _hd79748065_)
                                   (_rest8072_ _tl79758067_))
                              (_K79738062_ _rest8072_ _hd-bind8070_)))
                          (_else79717985_))))))
               (_is-lambda-expr?7833_
                (lambda (_expr7901_)
                  (let* ((_g79047918_
                          (lambda (_g79057915_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g79057915_)))
                         (_g79037925_ (lambda (_g79057921_) ((lambda () '#f))))
                         (_g79027961_
                          (lambda (_g79057928_)
                            (if (gx#stx-pair? _g79057928_)
                                (let ((_e79087930_ (gx#stx-e _g79057928_)))
                                  (let ((_hd79097933_ (##car _e79087930_))
                                        (_tl79107935_ (##cdr _e79087930_)))
                                    (if (gx#identifier? _hd79097933_)
                                        (if (gx#stx-eq? '%#lambda _hd79097933_)
                                            (if (gx#stx-pair? _tl79107935_)
                                                (let ((_e79117938_
                                                       (gx#stx-e
                                                        _tl79107935_)))
                                                  (let ((_hd79127941_
                                                         (##car _e79117938_))
                                                        (_tl79137943_
                                                         (##cdr _e79117938_)))
                                                    ((lambda (_L7946_ _L7947_)
                                                       '#t)
                                                     _tl79137943_
                                                     _hd79127941_)))
                                                (_g79037925_ _g79057928_))
                                            (_g79037925_ _g79057928_))
                                        (_g79037925_ _g79057928_))))
                                (_g79037925_ _g79057928_)))))
                    (_g79027961_ _expr7901_)))))
        (let* ((_g78357852_
                (lambda (_g78367849_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g78367849_)))
               (_g78347898_
                (lambda (_g78367855_)
                  (if (gx#stx-pair? _g78367855_)
                      (let ((_e78397857_ (gx#stx-e _g78367855_)))
                        (let ((_hd78407860_ (##car _e78397857_))
                              (_tl78417862_ (##cdr _e78397857_)))
                          (if (gx#stx-pair? _tl78417862_)
                              (let ((_e78427865_ (gx#stx-e _tl78417862_)))
                                (let ((_hd78437868_ (##car _e78427865_))
                                      (_tl78447870_ (##cdr _e78427865_)))
                                  (if (gx#stx-pair? _tl78447870_)
                                      (let ((_e78457873_
                                             (gx#stx-e _tl78447870_)))
                                        (let ((_hd78467876_
                                               (##car _e78457873_))
                                              (_tl78477878_
                                               (##cdr _e78457873_)))
                                          (if (gx#stx-null? _tl78477878_)
                                              ((lambda (_L7881_ _L7882_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7882_)
                                                     (if (_generate-letrec?7832_
                                                          _L7882_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7882_
                                                          _L7881_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7882_
                                                          _L7881_
                                                          '#f))
                                                     (_generate-values7831_
                                                      _L7882_
                                                      _L7881_)))
                                               _hd78467876_
                                               _hd78437868_)
                                              (_g78357852_ _g78367855_))))
                                      (_g78357852_ _g78367855_))))
                              (_g78357852_ _g78367855_))))
                      (_g78357852_ _g78367855_)))))
          (_g78347898_ _stx7829_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7722_)
      (let _lp7724_ ((_rest7726_ _hd7722_))
        (let* ((_g77307751_
                (lambda (_g77317748_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g77317748_)))
               (_g77297758_ (lambda (_g77317754_) ((lambda () '#f))))
               (_g77287765_
                (lambda (_g77317761_)
                  (if (gx#stx-null? _g77317761_)
                      ((lambda () '#t))
                      (_g77297758_ _g77317761_))))
               (_g77277826_
                (lambda (_g77317768_)
                  (if (gx#stx-pair? _g77317768_)
                      (let ((_e77357770_ (gx#stx-e _g77317768_)))
                        (let ((_hd77367773_ (##car _e77357770_))
                              (_tl77377775_ (##cdr _e77357770_)))
                          (if (gx#stx-pair? _hd77367773_)
                              (let ((_e77387778_ (gx#stx-e _hd77367773_)))
                                (let ((_hd77397781_ (##car _e77387778_))
                                      (_tl77407783_ (##cdr _e77387778_)))
                                  (if (gx#stx-pair? _hd77397781_)
                                      (let ((_e77417786_
                                             (gx#stx-e _hd77397781_)))
                                        (let ((_hd77427789_
                                               (##car _e77417786_))
                                              (_tl77437791_
                                               (##cdr _e77417786_)))
                                          (if (gx#stx-null? _tl77437791_)
                                              (if (gx#stx-pair? _tl77407783_)
                                                  (let ((_e77447794_
                                                         (gx#stx-e
                                                          _tl77407783_)))
                                                    (let ((_hd77457797_
                                                           (##car _e77447794_))
                                                          (_tl77467799_
                                                           (##cdr _e77447794_)))
                                                      (if (gx#stx-null?
                                                           _tl77467799_)
                                                          ((lambda (_L7802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7803_
                            _L7804_)
                     (_lp7724_ _L7802_))
                   _tl77377775_
                   _hd77457797_
                   _hd77427789_)
                  (_g77287765_ _g77317768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77287765_ _g77317768_))
                                              (_g77287765_ _g77317768_))))
                                      (_g77287765_ _g77317768_))))
                              (_g77287765_ _g77317768_))))
                      (_g77287765_ _g77317768_)))))
          (_g77277826_ _rest7726_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form7646_ _hd7647_ _body7648_ _compiled-body?7649_)
      (letrec ((_generate17651_
                (lambda (_bind7653_)
                  (let* ((_g76557672_
                          (lambda (_g76567669_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g76567669_)))
                         (_g76547719_
                          (lambda (_g76567675_)
                            (if (gx#stx-pair? _g76567675_)
                                (let ((_e76597677_ (gx#stx-e _g76567675_)))
                                  (let ((_hd76607680_ (##car _e76597677_))
                                        (_tl76617682_ (##cdr _e76597677_)))
                                    (if (gx#stx-pair? _hd76607680_)
                                        (let ((_e76627685_
                                               (gx#stx-e _hd76607680_)))
                                          (let ((_hd76637688_
                                                 (##car _e76627685_))
                                                (_tl76647690_
                                                 (##cdr _e76627685_)))
                                            (if (gx#stx-null? _tl76647690_)
                                                (if (gx#stx-pair? _tl76617682_)
                                                    (let ((_e76657693_
                                                           (gx#stx-e
                                                            _tl76617682_)))
                                                      (let ((_hd76667696_
                                                             (##car _e76657693_))
                                                            (_tl76677698_
                                                             (##cdr _e76657693_)))
                                                        (if (gx#stx-null?
                                                             _tl76677698_)
                                                            ((lambda (_L7701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7702_)
                       (cons (gxc#generate-runtime-binding-id* _L7702_)
                             (cons (gxc#compile-e _L7701_) '())))
                     _hd76667696_
                     _hd76637688_)
                    (_g76557672_ _g76567675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76557672_ _g76567675_))
                                                (_g76557672_ _g76567675_))))
                                        (_g76557672_ _g76567675_))))
                                (_g76557672_ _g76567675_)))))
                    (_g76547719_ _bind7653_)))))
        (cons _form7646_
              (cons (map _generate17651_ _hd7647_)
                    (cons (if _compiled-body?7649_
                              _body7648_
                              (gxc#compile-e _body7648_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx7554_)
      (letrec ((_generate17556_
                (lambda (_datum7608_)
                  (if (let ((_$e7610_ (null? _datum7608_)))
                        (if _$e7610_
                            _$e7610_
                            (let ((_$e7613_ (interned-symbol? _datum7608_)))
                              (if _$e7613_
                                  _$e7613_
                                  (let ((_$e7616_
                                         (gx#self-quoting? _datum7608_)))
                                    (if _$e7616_
                                        _$e7616_
                                        (eof-object? _datum7608_)))))))
                      _datum7608_
                      (if (uninterned-symbol? _datum7608_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum7608_
                           '#t)
                          (if (pair? _datum7608_)
                              (cons (_generate17556_ (car _datum7608_))
                                    (_generate17556_ (cdr _datum7608_)))
                              (if (box? _datum7608_)
                                  (box (_generate17556_ (unbox _datum7608_)))
                                  (if (vector? _datum7608_)
                                      (vector-map _generate17556_ _datum7608_)
                                      (if (let ((_$e7619_
                                                 (s8vector? _datum7608_)))
                                            (if _$e7619_
                                                _$e7619_
                                                (let ((_$e7622_
                                                       (u8vector?
                                                        _datum7608_)))
                                                  (if _$e7622_
                                                      _$e7622_
                                                      (let ((_$e7625_
                                                             (s16vector?
                                                              _datum7608_)))
                                                        (if _$e7625_
                                                            _$e7625_
                                                            (let ((_$e7628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum7608_)))
                      (if _$e7628_
                          _$e7628_
                          (let ((_$e7631_ (s32vector? _datum7608_)))
                            (if _$e7631_
                                _$e7631_
                                (let ((_$e7634_ (u32vector? _datum7608_)))
                                  (if _$e7634_
                                      _$e7634_
                                      (let ((_$e7637_
                                             (s64vector? _datum7608_)))
                                        (if _$e7637_
                                            _$e7637_
                                            (let ((_$e7640_
                                                   (u64vector? _datum7608_)))
                                              (if _$e7640_
                                                  _$e7640_
                                                  (let ((_$e7643_
                                                         (f32vector?
                                                          _datum7608_)))
                                                    (if _$e7643_
                                                        _$e7643_
                                                        (f64vector?
                                                         _datum7608_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum7608_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx7554_))))))))))
        (let* ((_g75587571_
                (lambda (_g75597568_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g75597568_)))
               (_g75577605_
                (lambda (_g75597574_)
                  (if (gx#stx-pair? _g75597574_)
                      (let ((_e75617576_ (gx#stx-e _g75597574_)))
                        (let ((_hd75627579_ (##car _e75617576_))
                              (_tl75637581_ (##cdr _e75617576_)))
                          (if (gx#stx-pair? _tl75637581_)
                              (let ((_e75647584_ (gx#stx-e _tl75637581_)))
                                (let ((_hd75657587_ (##car _e75647584_))
                                      (_tl75667589_ (##cdr _e75647584_)))
                                  (if (gx#stx-null? _tl75667589_)
                                      ((lambda (_L7592_)
                                         (cons 'quote
                                               (cons (_generate17556_
                                                      (gx#stx-e _L7592_))
                                                     '())))
                                       _hd75657587_)
                                      (_g75587571_ _g75597574_))))
                              (_g75587571_ _g75597574_))))
                      (_g75587571_ _g75597574_)))))
          (_g75577605_ _stx7554_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx7247_)
      (let* ((_g72497263_
              (lambda (_g72507260_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72507260_)))
             (_g72487551_
              (lambda (_g72507266_)
                (if (gx#stx-pair? _g72507266_)
                    (let ((_e72537268_ (gx#stx-e _g72507266_)))
                      (let ((_hd72547271_ (##car _e72537268_))
                            (_tl72557273_ (##cdr _e72537268_)))
                        (if (gx#stx-pair? _tl72557273_)
                            (let ((_e72567276_ (gx#stx-e _tl72557273_)))
                              (let ((_hd72577279_ (##car _e72567276_))
                                    (_tl72587281_ (##cdr _e72567276_)))
                                ((lambda (_L7284_ _L7285_)
                                   (let ((_rator7298_ (gxc#compile-e _L7285_))
                                         (_rands7299_
                                          (map gxc#compile-e _L7284_)))
                                     (let* ((_g73027354_
                                             (lambda (_g73037351_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g73037351_)))
                                            (_g73017361_
                                             (lambda (_g73037357_)
                                               ((lambda ()
                                                  (cons _rator7298_
                                                        _rands7299_)))))
                                            (_g73007548_
                                             (lambda (_g73037364_)
                                               (if (gx#stx-pair? _g73037364_)
                                                   (let ((_e73087366_
                                                          (gx#stx-e
                                                           _g73037364_)))
                                                     (let ((_hd73097369_
                                                            (##car _e73087366_))
                                                           (_tl73107371_
                                                            (##cdr _e73087366_)))
                                                       (if (gx#identifier?
                                                            _hd73097369_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd73097369_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl73107371_)
                           (let ((_e73117374_ (gx#stx-e _tl73107371_)))
                             (let ((_hd73127377_ (##car _e73117374_))
                                   (_tl73137379_ (##cdr _e73117374_)))
                               (if (gx#stx-pair? _hd73127377_)
                                   (let ((_e73147382_ (gx#stx-e _hd73127377_)))
                                     (let ((_hd73157385_ (##car _e73147382_))
                                           (_tl73167387_ (##cdr _e73147382_)))
                                       (if (gx#stx-pair? _hd73157385_)
                                           (let ((_e73177390_
                                                  (gx#stx-e _hd73157385_)))
                                             (let ((_hd73187393_
                                                    (##car _e73177390_))
                                                   (_tl73197395_
                                                    (##cdr _e73177390_)))
                                               (if (gx#stx-pair? _tl73197395_)
                                                   (let ((_e73207398_
                                                          (gx#stx-e
                                                           _tl73197395_)))
                                                     (let ((_hd73217401_
                                                            (##car _e73207398_))
                                                           (_tl73227403_
                                                            (##cdr _e73207398_)))
                                                       (if (gx#stx-pair?
                                                            _hd73217401_)
                                                           (let ((_e73237406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd73217401_)))
                     (let ((_hd73247409_ (##car _e73237406_))
                           (_tl73257411_ (##cdr _e73237406_)))
                       (if (gx#identifier? _hd73247409_)
                           (if (gx#stx-eq? 'lambda _hd73247409_)
                               (if (gx#stx-pair? _tl73257411_)
                                   (let ((_e73267414_ (gx#stx-e _tl73257411_)))
                                     (let ((_hd73277417_ (##car _e73267414_))
                                           (_tl73287419_ (##cdr _e73267414_)))
                                       (if (gx#stx-pair/null? _hd73277417_)
                                           (if (fx>= (gx#stx-length
                                                      _hd73277417_)
                                                     '0)
                                               (let ((_g12859_
                                                      (gx#syntax-split-splice
                                                       _hd73277417_
                                                       '0)))
                                                 (begin
                                                   (let ((_g12860_
                                                          (if (##values?
                                                               _g12859_)
                                                              (##vector-length
                                                               _g12859_)
                                                              1)))
                                                     (if (not (##fx= _g12860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g12860_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target73297422_
                                                          (##vector-ref
                                                           _g12859_
                                                           0))
                                                         (_tl73317424_
                                                          (##vector-ref
                                                           _g12859_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl73317424_)
                                                         (letrec ((_loop73327427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd73307430_ _arg73367432_)
                             (if (gx#stx-pair? _hd73307430_)
                                 (let ((_e73337435_ (gx#stx-e _hd73307430_)))
                                   (let ((_lp-hd73347438_ (##car _e73337435_))
                                         (_lp-tl73357440_ (##cdr _e73337435_)))
                                     (_loop73327427_
                                      _lp-tl73357440_
                                      (cons _lp-hd73347438_ _arg73367432_))))
                                 (let ((_arg73377443_ (reverse _arg73367432_)))
                                   (if (gx#stx-pair/null? _tl73287419_)
                                       (if (fx>= (gx#stx-length _tl73287419_)
                                                 '0)
                                           (let ((_g12861_
                                                  (gx#syntax-split-splice
                                                   _tl73287419_
                                                   '0)))
                                             (begin
                                               (let ((_g12862_
                                                      (if (##values? _g12861_)
                                                          (##vector-length
                                                           _g12861_)
                                                          1)))
                                                 (if (not (##fx= _g12862_ 2))
                                                     (error "Context expects 2 values"
                                                            _g12862_)))
                                               (let ((_target73387446_
                                                      (##vector-ref
                                                       _g12861_
                                                       0))
                                                     (_tl73407448_
                                                      (##vector-ref
                                                       _g12861_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl73407448_)
                                                     (letrec ((_loop73417451_
                                                               (lambda (_hd73397454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body73457456_)
                         (if (gx#stx-pair? _hd73397454_)
                             (let ((_e73427459_ (gx#stx-e _hd73397454_)))
                               (let ((_lp-hd73437462_ (##car _e73427459_))
                                     (_lp-tl73447464_ (##cdr _e73427459_)))
                                 (_loop73417451_
                                  _lp-tl73447464_
                                  (cons _lp-hd73437462_ _body73457456_))))
                             (let ((_body73467467_ (reverse _body73457456_)))
                               (if (gx#stx-null? _tl73227403_)
                                   (if (gx#stx-null? _tl73167387_)
                                       (if (gx#stx-pair? _tl73137379_)
                                           (let ((_e73477470_
                                                  (gx#stx-e _tl73137379_)))
                                             (let ((_hd73487473_
                                                    (##car _e73477470_))
                                                   (_tl73497475_
                                                    (##cdr _e73477470_)))
                                               (if (gx#stx-null? _tl73497475_)
                                                   ((lambda (_L7478_
                                                             _L7479_
                                                             _L7480_
                                                             _L7481_)
                                                      (if (eq? _L7481_ _L7478_)
                                                          (if (fx= (length _rands7299_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g75177520_ _g75187522_)
                                               (cons _g75177520_ _g75187522_))
                                             '()
                                             _L7480_))))
                      (let* ((_id7525_ _L7481_)
                             (_args7534_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g75267529_ _g75277531_)
                                          (cons _g75267529_ _g75277531_))
                                        '()
                                        _L7480_)))
                             (_body7543_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g75357538_ _g75367540_)
                                          (cons _g75357538_ _g75367540_))
                                        '()
                                        _L7479_)))
                             (_init7545_ (map list _args7534_ _rands7299_)))
                        (cons 'let
                              (cons _id7525_ (cons _init7545_ _body7543_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx7247_))
                  (_g73017361_ _g73037364_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd73487473_
                                                    _body73467467_
                                                    _arg73377443_
                                                    _hd73187393_)
                                                   (_g73017361_ _g73037364_))))
                                           (_g73017361_ _g73037364_))
                                       (_g73017361_ _g73037364_))
                                   (_g73017361_ _g73037364_)))))))
               (_loop73417451_ _target73387446_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g73017361_
                                                      _g73037364_)))))
                                           (_g73017361_ _g73037364_))
                                       (_g73017361_ _g73037364_)))))))
                   (_loop73327427_ _target73297422_ '()))
                 (_g73017361_ _g73037364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g73017361_ _g73037364_))
                                           (_g73017361_ _g73037364_))))
                                   (_g73017361_ _g73037364_))
                               (_g73017361_ _g73037364_))
                           (_g73017361_ _g73037364_))))
                   (_g73017361_ _g73037364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73017361_ _g73037364_))))
                                           (_g73017361_ _g73037364_))))
                                   (_g73017361_ _g73037364_))))
                           (_g73017361_ _g73037364_))
                       (_g73017361_ _g73037364_))
                   (_g73017361_ _g73037364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73017361_
                                                    _g73037364_)))))
                                       (_g73007548_ _rator7298_))))
                                 _tl72587281_
                                 _hd72577279_)))
                            (_g72497263_ _g72507266_))))
                    (_g72497263_ _g72507266_)))))
        (_g72487551_ _stx7247_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx7209_)
      (let* ((_g72117221_
              (lambda (_g72127218_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72127218_)))
             (_g72107244_
              (lambda (_g72127224_)
                (if (gx#stx-pair? _g72127224_)
                    (let ((_e72147226_ (gx#stx-e _g72127224_)))
                      (let ((_hd72157229_ (##car _e72147226_))
                            (_tl72167231_ (##cdr _e72147226_)))
                        ((lambda (_L7234_)
                           (cons 'if (map gxc#compile-e _L7234_)))
                         _tl72167231_)))
                    (_g72117221_ _g72127224_)))))
        (_g72107244_ _stx7209_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx7158_)
      (let* ((_g71607173_
              (lambda (_g71617170_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g71617170_)))
             (_g71597206_
              (lambda (_g71617176_)
                (if (gx#stx-pair? _g71617176_)
                    (let ((_e71637178_ (gx#stx-e _g71617176_)))
                      (let ((_hd71647181_ (##car _e71637178_))
                            (_tl71657183_ (##cdr _e71637178_)))
                        (if (gx#stx-pair? _tl71657183_)
                            (let ((_e71667186_ (gx#stx-e _tl71657183_)))
                              (let ((_hd71677189_ (##car _e71667186_))
                                    (_tl71687191_ (##cdr _e71667186_)))
                                (if (gx#stx-null? _tl71687191_)
                                    ((lambda (_L7194_)
                                       (gxc#generate-runtime-binding-id
                                        _L7194_))
                                     _hd71677189_)
                                    (_g71607173_ _g71617176_))))
                            (_g71607173_ _g71617176_))))
                    (_g71607173_ _g71617176_)))))
        (_g71597206_ _stx7158_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx7091_)
      (let* ((_g70937110_
              (lambda (_g70947107_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70947107_)))
             (_g70927155_
              (lambda (_g70947113_)
                (if (gx#stx-pair? _g70947113_)
                    (let ((_e70977115_ (gx#stx-e _g70947113_)))
                      (let ((_hd70987118_ (##car _e70977115_))
                            (_tl70997120_ (##cdr _e70977115_)))
                        (if (gx#stx-pair? _tl70997120_)
                            (let ((_e71007123_ (gx#stx-e _tl70997120_)))
                              (let ((_hd71017126_ (##car _e71007123_))
                                    (_tl71027128_ (##cdr _e71007123_)))
                                (if (gx#stx-pair? _tl71027128_)
                                    (let ((_e71037131_
                                           (gx#stx-e _tl71027128_)))
                                      (let ((_hd71047134_ (##car _e71037131_))
                                            (_tl71057136_ (##cdr _e71037131_)))
                                        (if (gx#stx-null? _tl71057136_)
                                            ((lambda (_L7139_ _L7140_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L7140_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7139_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd71047134_
                                             _hd71017126_)
                                            (_g70937110_ _g70947113_))))
                                    (_g70937110_ _g70947113_))))
                            (_g70937110_ _g70947113_))))
                    (_g70937110_ _g70947113_)))))
        (_g70927155_ _stx7091_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx7024_)
      (let* ((_g70267043_
              (lambda (_g70277040_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70277040_)))
             (_g70257088_
              (lambda (_g70277046_)
                (if (gx#stx-pair? _g70277046_)
                    (let ((_e70307048_ (gx#stx-e _g70277046_)))
                      (let ((_hd70317051_ (##car _e70307048_))
                            (_tl70327053_ (##cdr _e70307048_)))
                        (if (gx#stx-pair? _tl70327053_)
                            (let ((_e70337056_ (gx#stx-e _tl70327053_)))
                              (let ((_hd70347059_ (##car _e70337056_))
                                    (_tl70357061_ (##cdr _e70337056_)))
                                (if (gx#stx-pair? _tl70357061_)
                                    (let ((_e70367064_
                                           (gx#stx-e _tl70357061_)))
                                      (let ((_hd70377067_ (##car _e70367064_))
                                            (_tl70387069_ (##cdr _e70367064_)))
                                        (if (gx#stx-null? _tl70387069_)
                                            ((lambda (_L7072_ _L7073_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7072_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7073_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd70377067_
                                             _hd70347059_)
                                            (_g70267043_ _g70277046_))))
                                    (_g70267043_ _g70277046_))))
                            (_g70267043_ _g70277046_))))
                    (_g70267043_ _g70277046_)))))
        (_g70257088_ _stx7024_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx6957_)
      (let* ((_g69596976_
              (lambda (_g69606973_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g69606973_)))
             (_g69587021_
              (lambda (_g69606979_)
                (if (gx#stx-pair? _g69606979_)
                    (let ((_e69636981_ (gx#stx-e _g69606979_)))
                      (let ((_hd69646984_ (##car _e69636981_))
                            (_tl69656986_ (##cdr _e69636981_)))
                        (if (gx#stx-pair? _tl69656986_)
                            (let ((_e69666989_ (gx#stx-e _tl69656986_)))
                              (let ((_hd69676992_ (##car _e69666989_))
                                    (_tl69686994_ (##cdr _e69666989_)))
                                (if (gx#stx-pair? _tl69686994_)
                                    (let ((_e69696997_
                                           (gx#stx-e _tl69686994_)))
                                      (let ((_hd69707000_ (##car _e69696997_))
                                            (_tl69717002_ (##cdr _e69696997_)))
                                        (if (gx#stx-null? _tl69717002_)
                                            ((lambda (_L7005_ _L7006_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7005_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7006_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd69707000_
                                             _hd69676992_)
                                            (_g69596976_ _g69606979_))))
                                    (_g69596976_ _g69606979_))))
                            (_g69596976_ _g69606979_))))
                    (_g69596976_ _g69606979_)))))
        (_g69587021_ _stx6957_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6874_)
      (let* ((_g68766897_
              (lambda (_g68776894_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g68776894_)))
             (_g68756954_
              (lambda (_g68776900_)
                (if (gx#stx-pair? _g68776900_)
                    (let ((_e68816902_ (gx#stx-e _g68776900_)))
                      (let ((_hd68826905_ (##car _e68816902_))
                            (_tl68836907_ (##cdr _e68816902_)))
                        (if (gx#stx-pair? _tl68836907_)
                            (let ((_e68846910_ (gx#stx-e _tl68836907_)))
                              (let ((_hd68856913_ (##car _e68846910_))
                                    (_tl68866915_ (##cdr _e68846910_)))
                                (if (gx#stx-pair? _tl68866915_)
                                    (let ((_e68876918_
                                           (gx#stx-e _tl68866915_)))
                                      (let ((_hd68886921_ (##car _e68876918_))
                                            (_tl68896923_ (##cdr _e68876918_)))
                                        (if (gx#stx-pair? _tl68896923_)
                                            (let ((_e68906926_
                                                   (gx#stx-e _tl68896923_)))
                                              (let ((_hd68916929_
                                                     (##car _e68906926_))
                                                    (_tl68926931_
                                                     (##cdr _e68906926_)))
                                                (if (gx#stx-null? _tl68926931_)
                                                    ((lambda (_L6934_
                                                              _L6935_
                                                              _L6936_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6934_)
                           (cons (gxc#compile-e _L6935_)
                                 (cons (gxc#compile-e _L6936_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd68916929_
                                                     _hd68886921_
                                                     _hd68856913_)
                                                    (_g68766897_
                                                     _g68776900_))))
                                            (_g68766897_ _g68776900_))))
                                    (_g68766897_ _g68776900_))))
                            (_g68766897_ _g68776900_))))
                    (_g68766897_ _g68776900_)))))
        (_g68756954_ _stx6874_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6775_)
      (let* ((_g67776802_
              (lambda (_g67786799_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67786799_)))
             (_g67766871_
              (lambda (_g67786805_)
                (if (gx#stx-pair? _g67786805_)
                    (let ((_e67836807_ (gx#stx-e _g67786805_)))
                      (let ((_hd67846810_ (##car _e67836807_))
                            (_tl67856812_ (##cdr _e67836807_)))
                        (if (gx#stx-pair? _tl67856812_)
                            (let ((_e67866815_ (gx#stx-e _tl67856812_)))
                              (let ((_hd67876818_ (##car _e67866815_))
                                    (_tl67886820_ (##cdr _e67866815_)))
                                (if (gx#stx-pair? _tl67886820_)
                                    (let ((_e67896823_
                                           (gx#stx-e _tl67886820_)))
                                      (let ((_hd67906826_ (##car _e67896823_))
                                            (_tl67916828_ (##cdr _e67896823_)))
                                        (if (gx#stx-pair? _tl67916828_)
                                            (let ((_e67926831_
                                                   (gx#stx-e _tl67916828_)))
                                              (let ((_hd67936834_
                                                     (##car _e67926831_))
                                                    (_tl67946836_
                                                     (##cdr _e67926831_)))
                                                (if (gx#stx-pair? _tl67946836_)
                                                    (let ((_e67956839_
                                                           (gx#stx-e
                                                            _tl67946836_)))
                                                      (let ((_hd67966842_
                                                             (##car _e67956839_))
                                                            (_tl67976844_
                                                             (##cdr _e67956839_)))
                                                        (if (gx#stx-null?
                                                             _tl67976844_)
                                                            ((lambda (_L6847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6848_
                              _L6849_
                              _L6850_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6848_)
                                   (cons (gxc#compile-e _L6847_)
                                         (cons (gxc#compile-e _L6849_)
                                               (cons (gxc#compile-e _L6850_)
                                                     (cons ''#f '())))))))
                     _hd67966842_
                     _hd67936834_
                     _hd67906826_
                     _hd67876818_)
                    (_g67776802_ _g67786805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g67776802_
                                                     _g67786805_))))
                                            (_g67776802_ _g67786805_))))
                                    (_g67776802_ _g67786805_))))
                            (_g67776802_ _g67786805_))))
                    (_g67776802_ _g67786805_)))))
        (_g67766871_ _stx6775_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx6692_)
      (let* ((_g66946715_
              (lambda (_g66956712_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g66956712_)))
             (_g66936772_
              (lambda (_g66956718_)
                (if (gx#stx-pair? _g66956718_)
                    (let ((_e66996720_ (gx#stx-e _g66956718_)))
                      (let ((_hd67006723_ (##car _e66996720_))
                            (_tl67016725_ (##cdr _e66996720_)))
                        (if (gx#stx-pair? _tl67016725_)
                            (let ((_e67026728_ (gx#stx-e _tl67016725_)))
                              (let ((_hd67036731_ (##car _e67026728_))
                                    (_tl67046733_ (##cdr _e67026728_)))
                                (if (gx#stx-pair? _tl67046733_)
                                    (let ((_e67056736_
                                           (gx#stx-e _tl67046733_)))
                                      (let ((_hd67066739_ (##car _e67056736_))
                                            (_tl67076741_ (##cdr _e67056736_)))
                                        (if (gx#stx-pair? _tl67076741_)
                                            (let ((_e67086744_
                                                   (gx#stx-e _tl67076741_)))
                                              (let ((_hd67096747_
                                                     (##car _e67086744_))
                                                    (_tl67106749_
                                                     (##cdr _e67086744_)))
                                                (if (gx#stx-null? _tl67106749_)
                                                    ((lambda (_L6752_
                                                              _L6753_
                                                              _L6754_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6752_)
                           (cons (gxc#compile-e _L6753_)
                                 (cons (gxc#compile-e _L6754_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd67096747_
                                                     _hd67066739_
                                                     _hd67036731_)
                                                    (_g66946715_
                                                     _g66956718_))))
                                            (_g66946715_ _g66956718_))))
                                    (_g66946715_ _g66956718_))))
                            (_g66946715_ _g66956718_))))
                    (_g66946715_ _g66956718_)))))
        (_g66936772_ _stx6692_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx6593_)
      (let* ((_g65956620_
              (lambda (_g65966617_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65966617_)))
             (_g65946689_
              (lambda (_g65966623_)
                (if (gx#stx-pair? _g65966623_)
                    (let ((_e66016625_ (gx#stx-e _g65966623_)))
                      (let ((_hd66026628_ (##car _e66016625_))
                            (_tl66036630_ (##cdr _e66016625_)))
                        (if (gx#stx-pair? _tl66036630_)
                            (let ((_e66046633_ (gx#stx-e _tl66036630_)))
                              (let ((_hd66056636_ (##car _e66046633_))
                                    (_tl66066638_ (##cdr _e66046633_)))
                                (if (gx#stx-pair? _tl66066638_)
                                    (let ((_e66076641_
                                           (gx#stx-e _tl66066638_)))
                                      (let ((_hd66086644_ (##car _e66076641_))
                                            (_tl66096646_ (##cdr _e66076641_)))
                                        (if (gx#stx-pair? _tl66096646_)
                                            (let ((_e66106649_
                                                   (gx#stx-e _tl66096646_)))
                                              (let ((_hd66116652_
                                                     (##car _e66106649_))
                                                    (_tl66126654_
                                                     (##cdr _e66106649_)))
                                                (if (gx#stx-pair? _tl66126654_)
                                                    (let ((_e66136657_
                                                           (gx#stx-e
                                                            _tl66126654_)))
                                                      (let ((_hd66146660_
                                                             (##car _e66136657_))
                                                            (_tl66156662_
                                                             (##cdr _e66136657_)))
                                                        (if (gx#stx-null?
                                                             _tl66156662_)
                                                            ((lambda (_L6665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6666_
                              _L6667_
                              _L6668_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L6666_)
                                   (cons (gxc#compile-e _L6665_)
                                         (cons (gxc#compile-e _L6667_)
                                               (cons (gxc#compile-e _L6668_)
                                                     (cons ''#f '())))))))
                     _hd66146660_
                     _hd66116652_
                     _hd66086644_
                     _hd66056636_)
                    (_g65956620_ _g65966623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g65956620_
                                                     _g65966623_))))
                                            (_g65956620_ _g65966623_))))
                                    (_g65956620_ _g65966623_))))
                            (_g65956620_ _g65966623_))))
                    (_g65956620_ _g65966623_)))))
        (_g65946689_ _stx6593_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx6510_)
      (let* ((_g65126533_
              (lambda (_g65136530_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65136530_)))
             (_g65116590_
              (lambda (_g65136536_)
                (if (gx#stx-pair? _g65136536_)
                    (let ((_e65176538_ (gx#stx-e _g65136536_)))
                      (let ((_hd65186541_ (##car _e65176538_))
                            (_tl65196543_ (##cdr _e65176538_)))
                        (if (gx#stx-pair? _tl65196543_)
                            (let ((_e65206546_ (gx#stx-e _tl65196543_)))
                              (let ((_hd65216549_ (##car _e65206546_))
                                    (_tl65226551_ (##cdr _e65206546_)))
                                (if (gx#stx-pair? _tl65226551_)
                                    (let ((_e65236554_
                                           (gx#stx-e _tl65226551_)))
                                      (let ((_hd65246557_ (##car _e65236554_))
                                            (_tl65256559_ (##cdr _e65236554_)))
                                        (if (gx#stx-pair? _tl65256559_)
                                            (let ((_e65266562_
                                                   (gx#stx-e _tl65256559_)))
                                              (let ((_hd65276565_
                                                     (##car _e65266562_))
                                                    (_tl65286567_
                                                     (##cdr _e65266562_)))
                                                (if (gx#stx-null? _tl65286567_)
                                                    ((lambda (_L6570_
                                                              _L6571_
                                                              _L6572_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6570_)
                           (cons (gxc#compile-e _L6571_)
                                 (cons (gxc#compile-e _L6572_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd65276565_
                                                     _hd65246557_
                                                     _hd65216549_)
                                                    (_g65126533_
                                                     _g65136536_))))
                                            (_g65126533_ _g65136536_))))
                                    (_g65126533_ _g65136536_))))
                            (_g65126533_ _g65136536_))))
                    (_g65126533_ _g65136536_)))))
        (_g65116590_ _stx6510_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx6411_)
      (let* ((_g64136438_
              (lambda (_g64146435_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64146435_)))
             (_g64126507_
              (lambda (_g64146441_)
                (if (gx#stx-pair? _g64146441_)
                    (let ((_e64196443_ (gx#stx-e _g64146441_)))
                      (let ((_hd64206446_ (##car _e64196443_))
                            (_tl64216448_ (##cdr _e64196443_)))
                        (if (gx#stx-pair? _tl64216448_)
                            (let ((_e64226451_ (gx#stx-e _tl64216448_)))
                              (let ((_hd64236454_ (##car _e64226451_))
                                    (_tl64246456_ (##cdr _e64226451_)))
                                (if (gx#stx-pair? _tl64246456_)
                                    (let ((_e64256459_
                                           (gx#stx-e _tl64246456_)))
                                      (let ((_hd64266462_ (##car _e64256459_))
                                            (_tl64276464_ (##cdr _e64256459_)))
                                        (if (gx#stx-pair? _tl64276464_)
                                            (let ((_e64286467_
                                                   (gx#stx-e _tl64276464_)))
                                              (let ((_hd64296470_
                                                     (##car _e64286467_))
                                                    (_tl64306472_
                                                     (##cdr _e64286467_)))
                                                (if (gx#stx-pair? _tl64306472_)
                                                    (let ((_e64316475_
                                                           (gx#stx-e
                                                            _tl64306472_)))
                                                      (let ((_hd64326478_
                                                             (##car _e64316475_))
                                                            (_tl64336480_
                                                             (##cdr _e64316475_)))
                                                        (if (gx#stx-null?
                                                             _tl64336480_)
                                                            ((lambda (_L6483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6484_
                              _L6485_
                              _L6486_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L6484_)
                                   (cons (gxc#compile-e _L6483_)
                                         (cons (gxc#compile-e _L6485_)
                                               (cons (gxc#compile-e _L6486_)
                                                     (cons ''#f '())))))))
                     _hd64326478_
                     _hd64296470_
                     _hd64266462_
                     _hd64236454_)
                    (_g64136438_ _g64146441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64136438_
                                                     _g64146441_))))
                                            (_g64136438_ _g64146441_))))
                                    (_g64136438_ _g64146441_))))
                            (_g64136438_ _g64146441_))))
                    (_g64136438_ _g64146441_)))))
        (_g64126507_ _stx6411_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx6265_)
      (letrec ((_import-set-template6267_
                (lambda (_in6363_ _phi6364_)
                  (let ((_iphi6366_
                         (fx+ _phi6364_
                              (##direct-structure-ref
                               _in6363_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports6367_
                         (##structure-ref
                          (##direct-structure-ref
                           _in6363_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp6369_ ((_rest6371_ _imports6367_) (_r6372_ '()))
                      (let* ((_rest63736381_ _rest6371_)
                             (_E63766385_
                              (lambda ()
                                (error '"No clause matching" _rest63736381_)))
                             (_else63756389_ (lambda () _r6372_))
                             (_K63776399_
                              (lambda (_rest6392_ _in6393_)
                                (if (##structure-instance-of?
                                     _in6393_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi6366_)
                                        (_lp6369_
                                         _rest6392_
                                         (cons _in6393_ _r6372_))
                                        (_lp6369_ _rest6392_ _r6372_))
                                    (if (##structure-direct-instance-of?
                                         _in6393_
                                         'gx#module-import::t)
                                        (let ((_iphi6395_
                                               (fx+ _phi6364_
                                                    (##direct-structure-ref
                                                     _in6393_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi6395_)
                                              (_lp6369_
                                               _rest6392_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in6393_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r6372_))
                                              (_lp6369_ _rest6392_ _r6372_)))
                                        (if (##structure-direct-instance-of?
                                             _in6393_
                                             'gx#import-set::t)
                                            (let ((_xphi6397_
                                                   (fx+ _iphi6366_
                                                        (##direct-structure-ref
                                                         _in6393_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi6397_)
                                                  (_lp6369_
                                                   _rest6392_
                                                   (cons (##direct-structure-ref
                                                          _in6393_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r6372_))
                                                  (if (fxpositive? _xphi6397_)
                                                      (_lp6369_
                                                       _rest6392_
                                                       (foldl1 cons
                                                               _r6372_
                                                               (_import-set-template6267_
                                                                _in6393_
                                                                _iphi6366_)))
                                                      (_lp6369_
                                                       _rest6392_
                                                       _r6372_))))
                                            (_lp6369_ _rest6392_ _r6372_)))))))
                        (if (##pair? _rest63736381_)
                            (let ((_hd63786402_ (##car _rest63736381_))
                                  (_tl63796404_ (##cdr _rest63736381_)))
                              (let* ((_in6407_ _hd63786402_)
                                     (_rest6409_ _tl63796404_))
                                (_K63776399_ _rest6409_ _in6407_)))
                            (_else63756389_))))))))
        (let* ((_g62696279_
                (lambda (_g62706276_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g62706276_)))
               (_g62686360_
                (lambda (_g62706282_)
                  (if (gx#stx-pair? _g62706282_)
                      (let ((_e62726284_ (gx#stx-e _g62706282_)))
                        (let ((_hd62736287_ (##car _e62726284_))
                              (_tl62746289_ (##cdr _e62726284_)))
                          ((lambda (_L6292_)
                             (let ((_ht6303_ (make-hash-table-eq)))
                               (let _lp6305_ ((_rest6307_ _L6292_)
                                              (_loads6308_ '()))
                                 (letrec ((_K6310_ (lambda (_ctx6353_
                                                            _rest6354_)
                                                     (let ((_id6356_
                                                            (##structure-ref
                                                             _ctx6353_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht6303_
                                                            _id6356_
                                                            '#f)
                                                           (_lp6305_
                                                            _rest6354_
                                                            _loads6308_)
                                                           (let ((_rt6358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append
                           (gxc#module-id->path-string _id6356_)
                           '"__rt")))
                     (begin
                       (table-set! _ht6303_ _id6356_ _rt6358_)
                       (_lp6305_ _rest6354_ (cons _rt6358_ _loads6308_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest63116319_ _rest6307_)
                                          (_E63146323_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest63116319_)))
                                          (_else63136331_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g63266328_)
                                                          (list 'load-module
                                                                _g63266328_))
                                                        (reverse _loads6308_)))))
                                          (_K63156341_
                                           (lambda (_rest6334_ _in6335_)
                                             (if (##structure-instance-of?
                                                  _in6335_
                                                  'gx#module-context::t)
                                                 (_K6310_ _in6335_ _rest6334_)
                                                 (if (##structure-direct-instance-of?
                                                      _in6335_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in6335_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K6310_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in6335_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest6334_)
                 (_lp6305_ _rest6334_ _loads6308_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in6335_
                                                          'gx#import-set::t)
                                                         (let ((_phi6337_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in6335_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi6337_)
                       (_K6310_ (##direct-structure-ref
                                 _in6335_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest6334_)
                       (if (fxpositive? _phi6337_)
                           (let ((_deps6339_
                                  (_import-set-template6267_ _in6335_ '0)))
                             (_lp6305_
                              (foldl1 cons _rest6334_ _deps6339_)
                              _loads6308_))
                           (_lp6305_ _rest6334_ _loads6308_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx6265_
                  _in6335_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest63116319_)
                                         (let ((_hd63166344_
                                                (##car _rest63116319_))
                                               (_tl63176346_
                                                (##cdr _rest63116319_)))
                                           (let* ((_in6349_ _hd63166344_)
                                                  (_rest6351_ _tl63176346_))
                                             (_K63156341_
                                              _rest6351_
                                              _in6349_)))
                                         (_else63136331_)))))))
                           _tl62746289_)))
                      (_g62696279_ _g62706282_)))))
          (_g62686360_ _stx6265_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx6088_)
      (letrec ((_add-lift!6090_
                (lambda (_expr6263_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr6263_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple6091_
                (lambda (_stxq6258_)
                  (let ((_gid6260_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid6261_
                         (gxc#generate-runtime-identifier _stxq6258_)))
                    (begin
                      (_add-lift!6090_
                       (cons 'define
                             (cons _gid6260_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6261_
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
                      _gid6260_))))
               (_generate-serialized6092_
                (lambda (_stxq6248_ _marks6249_)
                  (let* ((_mark-refs6251_
                          (map _generate-mark6093_ _marks6249_))
                         (_gid6253_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid6255_
                          (gxc#generate-runtime-identifier _stxq6248_)))
                    (begin
                      (_add-lift!6090_
                       (cons 'define
                             (cons _gid6253_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs6251_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid6253_))))
               (_generate-mark6093_
                (lambda (_mark6234_)
                  (let ((_$e6236_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark6234_
                          '#f)))
                    (if _$e6236_
                        (values _$e6236_)
                        (let* ((_gid6239_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr6241_ (_serialize-mark6094_ _mark6234_))
                               (_ctx6243_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark6234_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref6245_
                                (if (eq? _ctx6243_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref6095_
                                                             _ctx6243_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark6234_
                             _gid6239_)
                            (_add-lift!6090_
                             (cons 'define
                                   (cons _gid6239_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr6241_ '()))
                   (cons _ctx-ref6245_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid6239_))))))
               (_serialize-mark6094_
                (lambda (_mark6181_)
                  (letrec ((_quote-e6183_
                            (lambda (_sym6232_)
                              (if (interned-symbol? _sym6232_)
                                  _sym6232_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym6232_)))))
                    (let* ((_mark61846193_ _mark6181_)
                           (_E61866197_
                            (lambda ()
                              (error '"No clause matching" _mark61846193_)))
                           (_K61876209_
                            (lambda (_trace6200_
                                     _phi6201_
                                     _ctx6202_
                                     _subst6203_)
                              (let ((_subs6205_
                                     (if _subst6203_
                                         (table->list _subst6203_)
                                         '())))
                                (cons _phi6201_
                                      (map (lambda (_pair6207_)
                                             (cons (_quote-e6183_
                                                    (car _pair6207_))
                                                   (_quote-e6183_
                                                    (cdr _pair6207_))))
                                           _subs6205_))))))
                      (if (##structure-instance-of?
                           _mark61846193_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e61886212_ (##vector-ref _mark61846193_ '1))
                                 (_subst6215_ _e61886212_)
                                 (_e61896217_ (##vector-ref _mark61846193_ '2))
                                 (_ctx6220_ _e61896217_)
                                 (_e61906222_ (##vector-ref _mark61846193_ '3))
                                 (_phi6225_ _e61906222_)
                                 (_e61916227_ (##vector-ref _mark61846193_ '4))
                                 (_trace6230_ _e61916227_))
                            (_K61876209_
                             _trace6230_
                             _phi6225_
                             _ctx6220_
                             _subst6215_))
                          (_E61866197_))))))
               (_context-ref6095_
                (lambda (_ctx6168_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx6168_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref6170_
                             (_context-ref-nested6097_ _ctx6168_))
                            (_ctx-origin6171_
                             (_context-ref-origin6096_ _ctx6168_))
                            (_origin6172_
                             (_context-ref-origin6096_
                              (gx#current-expander-context))))
                        (if (eq? _origin6172_ _ctx-origin6171_)
                            (let ((_ref6174_
                                   (_context-ref-nested6097_
                                    (gx#current-expander-context))))
                              (let _lp6176_ ((_ref6178_ (cdr _ref6174_))
                                             (_ctx-ref6179_
                                              (cdr _ctx-ref6170_)))
                                (if (if (pair? _ref6178_)
                                        (eq? (car _ref6178_)
                                             (car _ctx-ref6179_))
                                        '#f)
                                    (_lp6176_
                                     (cdr _ref6178_)
                                     (cdr _ctx-ref6179_))
                                    (cons '#f _ctx-ref6179_))))
                            _ctx-ref6170_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx6168_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin6096_
                (lambda (_ctx6160_)
                  (let _lp6162_ ((_ctx6164_ _ctx6160_))
                    (let ((_super6166_
                           (##structure-ref
                            _ctx6164_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6166_
                           'gx#module-context::t)
                          (_lp6162_ _super6166_)
                          _ctx6164_)))))
               (_context-ref-nested6097_
                (lambda (_ctx6151_)
                  (let _lp6153_ ((_ctx6155_ _ctx6151_) (_r6156_ '()))
                    (let ((_super6158_
                           (##structure-ref
                            _ctx6155_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6158_
                           'gx#module-context::t)
                          (_lp6153_
                           _super6158_
                           (cons (car (##structure-ref
                                       _ctx6155_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r6156_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx6155_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r6156_)))))))
        (let* ((_g60996112_
                (lambda (_g61006109_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61006109_)))
               (_g60986148_
                (lambda (_g61006115_)
                  (if (gx#stx-pair? _g61006115_)
                      (let ((_e61026117_ (gx#stx-e _g61006115_)))
                        (let ((_hd61036120_ (##car _e61026117_))
                              (_tl61046122_ (##cdr _e61026117_)))
                          (if (gx#stx-pair? _tl61046122_)
                              (let ((_e61056125_ (gx#stx-e _tl61046122_)))
                                (let ((_hd61066128_ (##car _e61056125_))
                                      (_tl61076130_ (##cdr _e61056125_)))
                                  (if (gx#stx-null? _tl61076130_)
                                      ((lambda (_L6133_)
                                         (if (gx#identifier? _L6133_)
                                             (let ((_marks6146_
                                                    (##direct-structure-ref
                                                     _L6133_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks6146_)
                                                   (_generate-simple6091_
                                                    _L6133_)
                                                   (_generate-serialized6092_
                                                    _L6133_
                                                    _marks6146_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L6133_)))
                                       _hd61066128_)
                                      (_g60996112_ _g61006115_))))
                              (_g60996112_ _g61006115_))))
                      (_g60996112_ _g61006115_)))))
          (_g60986148_ _stx6088_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx6021_)
      (let* ((_g60236040_
              (lambda (_g60246037_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60246037_)))
             (_g60226085_
              (lambda (_g60246043_)
                (if (gx#stx-pair? _g60246043_)
                    (let ((_e60276045_ (gx#stx-e _g60246043_)))
                      (let ((_hd60286048_ (##car _e60276045_))
                            (_tl60296050_ (##cdr _e60276045_)))
                        (if (gx#stx-pair? _tl60296050_)
                            (let ((_e60306053_ (gx#stx-e _tl60296050_)))
                              (let ((_hd60316056_ (##car _e60306053_))
                                    (_tl60326058_ (##cdr _e60306053_)))
                                (if (gx#stx-pair? _tl60326058_)
                                    (let ((_e60336061_
                                           (gx#stx-e _tl60326058_)))
                                      (let ((_hd60346064_ (##car _e60336061_))
                                            (_tl60356066_ (##cdr _e60336061_)))
                                        (if (gx#stx-null? _tl60356066_)
                                            ((lambda (_L6069_ _L6070_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L6070_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6069_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60346064_
                                             _hd60316056_)
                                            (_g60236040_ _g60246043_))))
                                    (_g60236040_ _g60246043_))))
                            (_g60236040_ _g60246043_))))
                    (_g60236040_ _g60246043_)))))
        (_g60226085_ _stx6021_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx5970_ _state5971_)
      (let* ((_g59735983_
              (lambda (_g59745980_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59745980_)))
             (_g59726018_
              (lambda (_g59745986_)
                (if (gx#stx-pair? _g59745986_)
                    (let ((_e59765988_ (gx#stx-e _g59745986_)))
                      (let ((_hd59775991_ (##car _e59765988_))
                            (_tl59785993_ (##cdr _e59765988_)))
                        ((lambda (_L5996_)
                           (let* ((_c-body6010_
                                   (map (lambda (_g60056007_)
                                          (gxc#compile-e
                                           _g60056007_
                                           _state5971_))
                                        _L5996_))
                                  (_c-body6015_
                                   (filter (lambda (_$obj6012_)
                                             (not (eq? _$obj6012_ '#!void)))
                                           _c-body6010_)))
                             (cons '%#begin _c-body6015_)))
                         _tl59785993_)))
                    (_g59735983_ _g59745986_)))))
        (_g59726018_ _stx5970_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5878_ _state5879_)
      (let* ((_g58815891_
              (lambda (_g58825888_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58825888_)))
             (_g58805967_
              (lambda (_g58825894_)
                (if (gx#stx-pair? _g58825894_)
                    (let ((_e58845896_ (gx#stx-e _g58825894_)))
                      (let ((_hd58855899_ (##car _e58845896_))
                            (_tl58865901_ (##cdr _e58845896_)))
                        ((lambda (_L5904_)
                           (let* ((_phi5914_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5916_
                                   (gxc#meta-state-begin-phi!
                                    _state5879_
                                    _phi5914_))
                                  (_compiled5919_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5904_)
                                       _state5879_))
                                    gx#current-expander-phi
                                    _phi5914_)))
                             (let* ((_g59225932_
                                     (lambda (_g59235929_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g59235929_)))
                                    (_g59215964_
                                     (lambda (_g59235935_)
                                       (if (gx#stx-pair? _g59235935_)
                                           (let ((_e59255937_
                                                  (gx#stx-e _g59235935_)))
                                             (let ((_hd59265940_
                                                    (##car _e59255937_))
                                                   (_tl59275942_
                                                    (##cdr _e59255937_)))
                                               (if (gx#identifier?
                                                    _hd59265940_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd59265940_)
                                                       ((lambda (_L5945_)
                                                          (let ((_c-body5962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj5959_)
                                   (not (eq? _$obj5959_ '#!void)))
                                 _L5945_)))
                    (if _block5916_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body5962_))
                        (if (null? _c-body5962_)
                            '#!void
                            (cons '%#begin-syntax _c-body5962_)))))
                _tl59275942_)
               (_g59225932_ _g59235935_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g59225932_ _g59235935_))))
                                           (_g59225932_ _g59235935_)))))
                               (_g59215964_ _compiled5919_))))
                         _tl58865901_)))
                    (_g58815891_ _g58825894_)))))
        (_g58805967_ _stx5878_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5809_ _state5810_)
      (begin
        (gxc#meta-state-end-phi! _state5810_)
        (let* ((_g58125826_
                (lambda (_g58135823_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58135823_)))
               (_g58115875_
                (lambda (_g58135829_)
                  (if (gx#stx-pair? _g58135829_)
                      (let ((_e58165831_ (gx#stx-e _g58135829_)))
                        (let ((_hd58175834_ (##car _e58165831_))
                              (_tl58185836_ (##cdr _e58165831_)))
                          (if (gx#stx-pair? _tl58185836_)
                              (let ((_e58195839_ (gx#stx-e _tl58185836_)))
                                (let ((_hd58205842_ (##car _e58195839_))
                                      (_tl58215844_ (##cdr _e58195839_)))
                                  ((lambda (_L5847_ _L5848_)
                                     (let ((_key5861_
                                            (gx#core-identifier-key _L5848_)))
                                       (begin
                                         (if (interned-symbol? _key5861_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5809_
                                              _L5848_
                                              _key5861_))
                                         (let* ((_ctx5863_
                                                 (gx#syntax-local-e__0
                                                  _L5848_))
                                                (_code5866_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5863_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5810_))
                                                  gx#current-expander-context
                                                  _ctx5863_))
                                                (_rt5868_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5863_
                                                  '#f))
                                                (_loader5870_
                                                 (if _rt5868_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5868_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5872_
                                                 (gx#stx-e _L5848_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5810_)
                                             (cons '%#module
                                                   (cons _modid5872_
                                                         (cons _code5866_
                                                               _loader5870_))))))))
                                   _tl58215844_
                                   _hd58205842_)))
                              (_g58125826_ _g58135829_))))
                      (_g58125826_ _g58135829_)))))
          (_g58115875_ _stx5809_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5799_ _context-chain5800_)
      (let _lp5802_ ((_ctx5804_ _ctx5799_) (_path5805_ '()))
        (let ((_super5807_
               (##structure-ref _ctx5804_ '3 gx#phi-context::t '#f)))
          (if (memq _super5807_ _context-chain5800_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx5804_
                                '7
                                gx#module-context::t
                                '#f))
                          _path5805_))
              (if (##structure-instance-of? _super5807_ 'gx#module-context::t)
                  (_lp5802_
                   _super5807_
                   (cons (car (##structure-ref
                               _ctx5804_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5805_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5804_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5805_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5794_ ((_ctx5796_ (gx#current-expander-context)) (_r5797_ '()))
        (if (##structure-instance-of? _ctx5796_ 'gx#module-context::t)
            (_lp5794_
             (##structure-ref _ctx5796_ '3 gx#phi-context::t '#f)
             (cons _ctx5796_ _r5797_))
            _r5797_))))
  (define gxc#generate-meta-import%
    (lambda (_stx5563_ _state5564_)
      (letrec* ((_context-chain5566_ (gxc#current-context-chain))
                (_make-import-spec5567_
                 (lambda (_in5730_)
                   (let* ((_in57315743_ _in5730_)
                          (_E57335747_
                           (lambda ()
                             (error '"No clause matching" _in57315743_)))
                          (_K57345757_
                           (lambda (_phi5750_
                                    _name5751_
                                    _src-name5752_
                                    _src-phi5753_
                                    _src-key5754_
                                    _src-ctx5755_)
                             (cons _phi5750_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5751_)
                                         (cons _src-phi5753_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5752_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in57315743_
                          (##type-id gx#module-import::t))
                         (let ((_e57355760_ (##vector-ref _in57315743_ '1)))
                           (if (##structure-direct-instance-of?
                                _e57355760_
                                (##type-id gx#module-export::t))
                               (let* ((_e57385763_
                                       (##vector-ref _e57355760_ '1))
                                      (_src-ctx5766_ _e57385763_)
                                      (_e57395768_
                                       (##vector-ref _e57355760_ '2))
                                      (_src-key5771_ _e57395768_)
                                      (_e57405773_
                                       (##vector-ref _e57355760_ '3))
                                      (_src-phi5776_ _e57405773_)
                                      (_e57415778_
                                       (##vector-ref _e57355760_ '4))
                                      (_src-name5781_ _e57415778_)
                                      (_e57365783_
                                       (##vector-ref _in57315743_ '2))
                                      (_name5786_ _e57365783_)
                                      (_e57375788_
                                       (##vector-ref _in57315743_ '3))
                                      (_phi5791_ _e57375788_))
                                 (_K57345757_
                                  _phi5791_
                                  _name5786_
                                  _src-name5781_
                                  _src-phi5776_
                                  _src-key5771_
                                  _src-ctx5766_))
                               (_E57335747_)))
                         (_E57335747_)))))
                (_make-import-path5568_
                 (lambda (_ctx5728_)
                   (gxc#generate-meta-import-path
                    _ctx5728_
                    _context-chain5566_)))
                (_make-import-spec-in5569_
                 (lambda (_ctx5725_ _in5726_)
                   (cons 'spec:
                         (cons (_make-import-path5568_ _ctx5725_)
                               (reverse _in5726_))))))
        (begin
          (gxc#meta-state-end-phi! _state5564_)
          (let* ((_g55715581_
                  (lambda (_g55725578_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g55725578_)))
                 (_g55705722_
                  (lambda (_g55725584_)
                    (if (gx#stx-pair? _g55725584_)
                        (let ((_e55745586_ (gx#stx-e _g55725584_)))
                          (let ((_hd55755589_ (##car _e55745586_))
                                (_tl55765591_ (##cdr _e55745586_)))
                            ((lambda (_L5594_)
                               (let _lp5605_ ((_rest5607_ _L5594_)
                                              (_current-src5608_ '#f)
                                              (_current-in5609_ '())
                                              (_r5610_ '()))
                                 (let* ((_rest56115619_ _rest5607_)
                                        (_E56145623_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest56115619_)))
                                        (_else56135629_
                                         (lambda ()
                                           (let ((_r5627_ (if _current-src5608_
                                                              (cons (_make-import-spec-in5569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src5608_
                             _current-in5609_)
                            _r5610_)
                      _r5610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r5627_)))))
                                        (_K56155710_
                                         (lambda (_rest5632_ _in5633_)
                                           (if (##structure-direct-instance-of?
                                                _in5633_
                                                'gx#module-import::t)
                                               (let* ((_in56345641_ _in5633_)
                                                      (_E56365645_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in56345641_)))
                                                      (_K56375650_
                                                       (lambda (_src-ctx5648_)
                                                         (if (eq? _current-src5608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx5648_)
                     (_lp5605_
                      _rest5632_
                      _current-src5608_
                      (cons (_make-import-spec5567_ _in5633_) _current-in5609_)
                      _r5610_)
                     (if _current-src5608_
                         (_lp5605_
                          _rest5632_
                          _src-ctx5648_
                          (cons (_make-import-spec5567_ _in5633_) '())
                          (cons (_make-import-spec-in5569_
                                 _current-src5608_
                                 _current-in5609_)
                                _r5610_))
                         (_lp5605_
                          _rest5632_
                          _src-ctx5648_
                          (cons (_make-import-spec5567_ _in5633_) '())
                          _r5610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in56345641_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e56385653_
                                                            (##vector-ref
                                                             _in56345641_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e56385653_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e56395656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e56385653_ '1))
                          (_src-ctx5659_ _e56395656_))
                     (_K56375650_ _src-ctx5659_))
                   (_E56365645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E56365645_)))
                                               (if (##structure-direct-instance-of?
                                                    _in5633_
                                                    'gx#import-set::t)
                                                   (let* ((_phi5661_
                                                           (##direct-structure-ref
                                                            _in5633_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src5663_
                                                           (##direct-structure-ref
                                                            _in5633_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5703_
                                                           (let* ((_g56645673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path5568_ _src5663_))
                          (_E56675677_
                           (lambda ()
                             (error '"No clause matching" _g56645673_)))
                          (_try-match56665688_
                           (lambda ()
                             (let* ((_K56685683_
                                     (lambda (_path5681_)
                                       (cons 'in: _path5681_)))
                                    (_path5686_ _g56645673_))
                               (_K56685683_ _path5686_))))
                          (_K56695693_ (lambda (_path5691_) _path5691_)))
                     (if (##pair? _g56645673_)
                         (let ((_hd56705696_ (##car _g56645673_))
                               (_tl56715698_ (##cdr _g56645673_)))
                           (let ((_path5701_ _hd56705696_))
                             (if (##null? _tl56715698_)
                                 (_K56695693_ _path5701_)
                                 (_try-match56665688_))))
                         (_try-match56665688_))))
                  (_r5705_ (if _current-src5608_
                               (cons (_make-import-spec-in5569_
                                      _current-src5608_
                                      _current-in5609_)
                                     _r5610_)
                               _r5610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp5605_
                                                      _rest5632_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi5661_)
                                                                _src-in5703_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi5661_ (cons _src-in5703_ '()))))
                    _r5705_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in5633_
                                                        'gx#module-context::t)
                                                       (let ((_r5708_ (if _current-src5608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in5569_
                                         _current-src5608_
                                         _current-in5609_)
                                        _r5610_)
                                  _r5610_)))
                 (_lp5605_
                  _rest5632_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path5568_ _in5633_))
                        _r5708_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest56115619_)
                                       (let ((_hd56165713_
                                              (##car _rest56115619_))
                                             (_tl56175715_
                                              (##cdr _rest56115619_)))
                                         (let* ((_in5718_ _hd56165713_)
                                                (_rest5720_ _tl56175715_))
                                           (_K56155710_ _rest5720_ _in5718_)))
                                       (_else56135629_)))))
                             _tl55765591_)))
                        (_g55715581_ _g55725584_)))))
            (_g55705722_ _stx5563_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx5373_ _state5374_)
      (letrec* ((_context-chain5376_ (gxc#current-context-chain))
                (_make-import-path5377_
                 (lambda (_ctx5561_)
                   (gxc#generate-meta-import-path
                    _ctx5561_
                    _context-chain5376_))))
        (let* ((_g53795389_
                (lambda (_g53805386_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53805386_)))
               (_g53785558_
                (lambda (_g53805392_)
                  (if (gx#stx-pair? _g53805392_)
                      (let ((_e53825394_ (gx#stx-e _g53805392_)))
                        (let ((_hd53835397_ (##car _e53825394_))
                              (_tl53845399_ (##cdr _e53825394_)))
                          ((lambda (_L5402_)
                             (let _lp5413_ ((_rest5415_ _L5402_) (_r5416_ '()))
                               (let* ((_rest54175425_ _rest5415_)
                                      (_E54205429_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest54175425_)))
                                      (_else54195433_
                                       (lambda ()
                                         (cons '%#export (reverse _r5416_))))
                                      (_K54215546_
                                       (lambda (_rest5436_ _out5437_)
                                         (let* ((_out54385451_ _out5437_)
                                                (_E54415455_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out54385451_)))
                                                (_try-match54405518_
                                                 (lambda ()
                                                   (let ((_K54425505_
                                                          (lambda (_phi5459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src5460_)
                    (let* ((_out5500_
                            (if _src5460_
                                (cons 'import:
                                      (cons (let* ((_g54615470_
                                                    (_make-import-path5377_
                                                     _src5460_))
                                                   (_E54645474_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g54615470_)))
                                                   (_try-match54635485_
                                                    (lambda ()
                                                      (let* ((_K54655480_
                                                              (lambda (_path5478_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path5478_)))
                     (_path5483_ _g54615470_))
                (_K54655480_ _path5483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K54665490_
                                                    (lambda (_path5488_)
                                                      _path5488_)))
                                              (if (##pair? _g54615470_)
                                                  (let ((_hd54675493_
                                                         (##car _g54615470_))
                                                        (_tl54685495_
                                                         (##cdr _g54615470_)))
                                                    (let ((_path5498_
                                                           _hd54675493_))
                                                      (if (##null? _tl54685495_)
                                                          (_K54665490_
                                                           _path5498_)
                                                          (_try-match54635485_))))
                                                  (_try-match54635485_)))
                                            '()))
                                '#t))
                           (_out5502_
                            (if (fxzero? _phi5459_)
                                _out5500_
                                (cons 'phi:
                                      (cons _phi5459_ (cons _out5500_ '()))))))
                      (_lp5413_ _rest5436_ (cons _out5502_ _r5416_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out54385451_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e54435508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out54385451_ '1))
                        (_src5511_ _e54435508_)
                        (_e54445513_ (##vector-ref _out54385451_ '2))
                        (_phi5516_ _e54445513_))
                   (_K54425505_ _phi5516_ _src5511_))
                 (_E54415455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K54455525_
                                                 (lambda (_name5521_
                                                          _phi5522_
                                                          _key5523_)
                                                   (_lp5413_
                                                    _rest5436_
                                                    (cons (cons 'spec:
                                                                (cons _phi5522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key5523_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name5521_)
                                          '()))))
                  _r5416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out54385451_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e54465528_
                                                       (##vector-ref
                                                        _out54385451_
                                                        '1))
                                                      (_e54475531_
                                                       (##vector-ref
                                                        _out54385451_
                                                        '2))
                                                      (_key5534_ _e54475531_)
                                                      (_e54485536_
                                                       (##vector-ref
                                                        _out54385451_
                                                        '3))
                                                      (_phi5539_ _e54485536_)
                                                      (_e54495541_
                                                       (##vector-ref
                                                        _out54385451_
                                                        '4))
                                                      (_name5544_ _e54495541_))
                                                 (_K54455525_
                                                  _name5544_
                                                  _phi5539_
                                                  _key5534_))
                                               (_try-match54405518_))))))
                                 (if (##pair? _rest54175425_)
                                     (let ((_hd54225549_
                                            (##car _rest54175425_))
                                           (_tl54235551_
                                            (##cdr _rest54175425_)))
                                       (let* ((_out5554_ _hd54225549_)
                                              (_rest5556_ _tl54235551_))
                                         (_K54215546_ _rest5556_ _out5554_)))
                                     (_else54195433_)))))
                           _tl53845399_)))
                      (_g53795389_ _g53805392_)))))
          (_g53785558_ _stx5373_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx5334_ _state5335_)
      (begin
        (gxc#meta-state-end-phi! _state5335_)
        (let* ((_g53375347_
                (lambda (_g53385344_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53385344_)))
               (_g53365370_
                (lambda (_g53385350_)
                  (if (gx#stx-pair? _g53385350_)
                      (let ((_e53405352_ (gx#stx-e _g53385350_)))
                        (let ((_hd53415355_ (##car _e53405352_))
                              (_tl53425357_ (##cdr _e53405352_)))
                          ((lambda (_L5360_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L5360_)))
                           _tl53425357_)))
                      (_g53375347_ _g53385350_)))))
          (_g53365370_ _stx5334_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx5205_ _state5206_)
      (letrec ((_generate15208_
                (lambda (_id5329_ _eid5330_)
                  (let ((_eid5332_ (gx#stx-e _eid5330_)))
                    (begin
                      (if (interned-symbol? _eid5332_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx5205_
                           _eid5332_))
                      (cons (gxc#generate-runtime-identifier _id5329_)
                            (cons _eid5332_ '())))))))
        (let* ((_g52105238_
                (lambda (_g52115235_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g52115235_)))
               (_g52095326_
                (lambda (_g52115241_)
                  (if (gx#stx-pair? _g52115241_)
                      (let ((_e52145243_ (gx#stx-e _g52115241_)))
                        (let ((_hd52155246_ (##car _e52145243_))
                              (_tl52165248_ (##cdr _e52145243_)))
                          (if (gx#stx-pair/null? _tl52165248_)
                              (if (fx>= (gx#stx-length _tl52165248_) '0)
                                  (let ((_g12863_
                                         (gx#syntax-split-splice
                                          _tl52165248_
                                          '0)))
                                    (begin
                                      (let ((_g12864_
                                             (if (##values? _g12863_)
                                                 (##vector-length _g12863_)
                                                 1)))
                                        (if (not (##fx= _g12864_ 2))
                                            (error "Context expects 2 values"
                                                   _g12864_)))
                                      (let ((_target52175251_
                                             (##vector-ref _g12863_ 0))
                                            (_tl52195253_
                                             (##vector-ref _g12863_ 1)))
                                        (if (gx#stx-null? _tl52195253_)
                                            (letrec ((_loop52205256_
                                                      (lambda (_hd52185259_
                                                               _eid52245261_
                                                               _id52255263_)
                                                        (if (gx#stx-pair?
                                                             _hd52185259_)
                                                            (let ((_e52215266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd52185259_)))
                      (let ((_lp-hd52225269_ (##car _e52215266_))
                            (_lp-tl52235271_ (##cdr _e52215266_)))
                        (if (gx#stx-pair? _lp-hd52225269_)
                            (let ((_e52285274_ (gx#stx-e _lp-hd52225269_)))
                              (let ((_hd52295277_ (##car _e52285274_))
                                    (_tl52305279_ (##cdr _e52285274_)))
                                (if (gx#stx-pair? _tl52305279_)
                                    (let ((_e52315282_
                                           (gx#stx-e _tl52305279_)))
                                      (let ((_hd52325285_ (##car _e52315282_))
                                            (_tl52335287_ (##cdr _e52315282_)))
                                        (if (gx#stx-null? _tl52335287_)
                                            (_loop52205256_
                                             _lp-tl52235271_
                                             (cons _hd52325285_ _eid52245261_)
                                             (cons _hd52295277_ _id52255263_))
                                            (_g52105238_ _g52115241_))))
                                    (_g52105238_ _g52115241_))))
                            (_g52105238_ _g52115241_))))
                    (let ((_eid52265290_ (reverse _eid52245261_))
                          (_id52275292_ (reverse _id52255263_)))
                      ((lambda (_L5295_ _L5296_)
                         (cons '%#extern
                               (map _generate15208_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g53115314_ _g53125316_)
                                                (cons _g53115314_ _g53125316_))
                                              '()
                                              _L5296_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g53185321_ _g53195323_)
                                                (cons _g53185321_ _g53195323_))
                                              '()
                                              _L5295_)))))
                       _eid52265290_
                       _id52275292_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop52205256_
                                               _target52175251_
                                               '()
                                               '()))
                                            (_g52105238_ _g52115241_)))))
                                  (_g52105238_ _g52115241_))
                              (_g52105238_ _g52115241_))))
                      (_g52105238_ _g52115241_)))))
          (_g52095326_ _stx5205_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx5000_ _state5001_)
      (letrec ((_generate15003_
                (lambda (_id5200_)
                  (let ((_eid5202_ (gxc#generate-runtime-binding-id _id5200_))
                        (_ident5203_
                         (gxc#generate-runtime-identifier _id5200_)))
                    (cons '%#define-runtime
                          (cons _ident5203_ (cons _eid5202_ '()))))))
               (_generate*5004_
                (lambda (_all5168_)
                  (let* ((_all51695177_ _all5168_)
                         (_E51725181_
                          (lambda ()
                            (error '"No clause matching" _all51695177_)))
                         (_else51715185_ (lambda () (cons '%#begin _all5168_)))
                         (_K51735190_ (lambda (_one5188_) _one5188_)))
                    (if (##pair? _all51695177_)
                        (let ((_hd51745193_ (##car _all51695177_))
                              (_tl51755195_ (##cdr _all51695177_)))
                          (let ((_one5198_ _hd51745193_))
                            (if (##null? _tl51755195_)
                                (_K51735190_ _one5198_)
                                (_else51715185_))))
                        (_else51715185_))))))
        (let* ((_g50065023_
                (lambda (_g50075020_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g50075020_)))
               (_g50055165_
                (lambda (_g50075026_)
                  (if (gx#stx-pair? _g50075026_)
                      (let ((_e50105028_ (gx#stx-e _g50075026_)))
                        (let ((_hd50115031_ (##car _e50105028_))
                              (_tl50125033_ (##cdr _e50105028_)))
                          (if (gx#stx-pair? _tl50125033_)
                              (let ((_e50135036_ (gx#stx-e _tl50125033_)))
                                (let ((_hd50145039_ (##car _e50135036_))
                                      (_tl50155041_ (##cdr _e50135036_)))
                                  (if (gx#stx-pair? _tl50155041_)
                                      (let ((_e50165044_
                                             (gx#stx-e _tl50155041_)))
                                        (let ((_hd50175047_
                                               (##car _e50165044_))
                                              (_tl50185049_
                                               (##cdr _e50165044_)))
                                          (if (gx#stx-null? _tl50185049_)
                                              ((lambda (_L5052_ _L5053_)
                                                 (let _lp5069_ ((_rest5071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5053_)
                        (_r5072_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g50775093_
                                                           (lambda (_g50785090_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g50785090_)))
                                                          (_g50765100_
                                                           (lambda (_g50785096_)
                                                             ((lambda ()
                                                                (_generate*5004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r5072_))))))
                  (_g50755116_
                   (lambda (_g50785103_)
                     ((lambda (_L5105_)
                        (if (gx#identifier? _L5105_)
                            (_generate*5004_
                             (foldl1 cons
                                     (cons (_generate15003_ _L5105_) '())
                                     _r5072_))
                            (_g50765100_ _g50785103_)))
                      _g50785103_)))
                  (_g50745140_
                   (lambda (_g50785119_)
                     (if (gx#stx-pair? _g50785119_)
                         (let ((_e50855121_ (gx#stx-e _g50785119_)))
                           (let ((_hd50865124_ (##car _e50855121_))
                                 (_tl50875126_ (##cdr _e50855121_)))
                             ((lambda (_L5129_ _L5130_)
                                (_lp5069_
                                 _L5129_
                                 (cons (_generate15003_ _L5130_) _r5072_)))
                              _tl50875126_
                              _hd50865124_)))
                         (_g50755116_ _g50785119_))))
                  (_g50735162_
                   (lambda (_g50785143_)
                     (if (gx#stx-pair? _g50785143_)
                         (let ((_e50805145_ (gx#stx-e _g50785143_)))
                           (let ((_hd50815148_ (##car _e50805145_))
                                 (_tl50825150_ (##cdr _e50805145_)))
                             (if (gx#stx-datum? _hd50815148_)
                                 (if (equal? (gx#stx-e _hd50815148_) '#f)
                                     ((lambda (_L5153_)
                                        (_lp5069_ _L5153_ _r5072_))
                                      _tl50825150_)
                                     (_g50745140_ _g50785143_))
                                 (_g50745140_ _g50785143_))))
                         (_g50745140_ _g50785143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g50735162_
                                                      _rest5071_))))
                                               _hd50175047_
                                               _hd50145039_)
                                              (_g50065023_ _g50075026_))))
                                      (_g50065023_ _g50075026_))))
                              (_g50065023_ _g50075026_))))
                      (_g50065023_ _g50075026_)))))
          (_g50055165_ _stx5000_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4897_ _state4898_)
      (let* ((_g49004917_
              (lambda (_g49014914_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49014914_)))
             (_g48994997_
              (lambda (_g49014920_)
                (if (gx#stx-pair? _g49014920_)
                    (let ((_e49044922_ (gx#stx-e _g49014920_)))
                      (let ((_hd49054925_ (##car _e49044922_))
                            (_tl49064927_ (##cdr _e49044922_)))
                        (if (gx#stx-pair? _tl49064927_)
                            (let ((_e49074930_ (gx#stx-e _tl49064927_)))
                              (let ((_hd49084933_ (##car _e49074930_))
                                    (_tl49094935_ (##cdr _e49074930_)))
                                (if (gx#stx-pair? _tl49094935_)
                                    (let ((_e49104938_
                                           (gx#stx-e _tl49094935_)))
                                      (let ((_hd49114941_ (##car _e49104938_))
                                            (_tl49124943_ (##cdr _e49104938_)))
                                        (if (gx#stx-null? _tl49124943_)
                                            ((lambda (_L4946_ _L4947_)
                                               (let* ((_eid4962_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4947_))
                                                      (_phi4964_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block4966_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4898_
                                                        _phi4964_)))
                                                 (begin
                                                   (let* ((_g49694976_
                                                           (lambda (_g49704973_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g49704973_)))
                                                          (_g49684994_
                                                           (lambda (_g49704979_)
                                                             ((lambda (_L4981_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4898_
                           _phi4964_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L4981_ (cons _L4946_ '()))))))
                      _g49704979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g49684994_ _eid4962_))
                                                   (if _block4966_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block4966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4947_)
                                             (cons _eid4962_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4947_)
                           (cons _eid4962_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd49114941_
                                             _hd49084933_)
                                            (_g49004917_ _g49014920_))))
                                    (_g49004917_ _g49014920_))))
                            (_g49004917_ _g49014920_))))
                    (_g49004917_ _g49014920_)))))
        (_g48994997_ _stx4897_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4829_ _state4830_)
      (let* ((_g48324849_
              (lambda (_g48334846_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g48334846_)))
             (_g48314894_
              (lambda (_g48334852_)
                (if (gx#stx-pair? _g48334852_)
                    (let ((_e48364854_ (gx#stx-e _g48334852_)))
                      (let ((_hd48374857_ (##car _e48364854_))
                            (_tl48384859_ (##cdr _e48364854_)))
                        (if (gx#stx-pair? _tl48384859_)
                            (let ((_e48394862_ (gx#stx-e _tl48384859_)))
                              (let ((_hd48404865_ (##car _e48394862_))
                                    (_tl48414867_ (##cdr _e48394862_)))
                                (if (gx#stx-pair? _tl48414867_)
                                    (let ((_e48424870_
                                           (gx#stx-e _tl48414867_)))
                                      (let ((_hd48434873_ (##car _e48424870_))
                                            (_tl48444875_ (##cdr _e48424870_)))
                                        (if (gx#stx-null? _tl48444875_)
                                            ((lambda (_L4878_ _L4879_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4879_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4878_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd48434873_
                                             _hd48404865_)
                                            (_g48324849_ _g48334852_))))
                                    (_g48324849_ _g48334852_))))
                            (_g48324849_ _g48334852_))))
                    (_g48324849_ _g48334852_)))))
        (_g48314894_ _stx4829_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4826_ _state4827_)
      (begin
        (gxc#meta-state-add-phi!
         _state4827_
         (gx#current-expander-phi)
         _stx4826_)
        (gxc#generate-meta-define-values% _stx4826_ _state4827_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4823_ _state4824_)
      (begin
        (gxc#meta-state-add-phi!
         _state4824_
         (gx#current-expander-phi)
         _stx4823_)
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
    (lambda _$args4820_
      (apply make-struct-instance gxc#meta-state::t _$args4820_)))
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
    (lambda (_self4817_ _ctx4818_)
      (if (##fx< '4 (##vector-length _self4817_))
          (begin
            (##vector-set!
             _self4817_
             '1
             (gxc#module-id->path-string
              (##structure-ref _ctx4818_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4817_ '2 '1)
            (##vector-set! _self4817_ '3 (make-hash-table-eq))
            (##vector-set! _self4817_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4817_))))
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
    (lambda _$args4692_
      (apply make-struct-instance gxc#meta-state-block::t _$args4692_)))
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
    (lambda (_state4651_ _phi4652_)
      (let* ((_state46534661_ _state4651_)
             (_E46554665_
              (lambda () (error '"No clause matching" _state46534661_)))
             (_K46564674_
              (lambda (_open4668_ _n4669_ _src4670_)
                (if (table-ref _open4668_ _phi4652_ '#f)
                    '#f
                    (let ((_block-ref4672_
                           (string-append
                            _src4670_
                            '"__"
                            (number->string _n4669_))))
                      (begin
                        (##structure-set!
                         _state4651_
                         (fx+ _n4669_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open4668_
                         _phi4652_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi4652_
                          _n4669_
                          '()))
                        _block-ref4672_))))))
        (if (##structure-instance-of?
             _state46534661_
             (##type-id gxc#meta-state::t))
            (let* ((_e46574677_ (##vector-ref _state46534661_ '1))
                   (_src4680_ _e46574677_)
                   (_e46584682_ (##vector-ref _state46534661_ '2))
                   (_n4685_ _e46584682_)
                   (_e46594687_ (##vector-ref _state46534661_ '3))
                   (_open4690_ _e46594687_))
              (_K46564674_ _open4690_ _n4685_ _src4680_))
            (_E46554665_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state4645_ _phi4646_ _stx4647_)
      (let ((_block4649_
             (table-ref
              (##structure-ref _state4645_ '3 gxc#meta-state::t '#f)
              _phi4646_
              '#f)))
        (##structure-set!
         _block4649_
         (cons _stx4647_
               (##structure-ref _block4649_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state4640_)
      (begin
        (##structure-set!
         _state4640_
         (hash-fold
          (lambda (_g12865_ _block4642_ _r4643_) (cons _block4642_ _r4643_))
          (##structure-ref _state4640_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state4640_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state4640_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state4592_)
      (begin
        (gxc#meta-state-end-phi! _state4592_)
        (foldl1 (lambda (_block4594_ _r4595_)
                  (let* ((_block45964605_ _block4594_)
                         (_E45984609_
                          (lambda ()
                            (error '"No clause matching" _block45964605_)))
                         (_K45994617_
                          (lambda (_code4612_ _n4613_ _phi4614_ _ctx4615_)
                            (if (null? _code4612_)
                                _r4595_
                                (cons (cons _ctx4615_
                                            (cons _phi4614_
                                                  (cons _n4613_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code4612_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r4595_)))))
                    (if (##structure-instance-of?
                         _block45964605_
                         (##type-id gxc#meta-state-block::t))
                        (let* ((_e46004620_ (##vector-ref _block45964605_ '1))
                               (_ctx4623_ _e46004620_)
                               (_e46014625_ (##vector-ref _block45964605_ '2))
                               (_phi4628_ _e46014625_)
                               (_e46024630_ (##vector-ref _block45964605_ '3))
                               (_n4633_ _e46024630_)
                               (_e46034635_ (##vector-ref _block45964605_ '4))
                               (_code4638_ _e46034635_))
                          (_K45994617_ _code4638_ _n4633_ _phi4628_ _ctx4623_))
                        (_E45984609_))))
                '()
                (##structure-ref _state4592_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx4588_)
      (let ((_ht4590_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx4588_ _ht4590_)
          _ht4590_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx4531_ _ht4532_)
      (let* ((_g45344547_
              (lambda (_g45354544_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45354544_)))
             (_g45334585_
              (lambda (_g45354550_)
                (if (gx#stx-pair? _g45354550_)
                    (let ((_e45374552_ (gx#stx-e _g45354550_)))
                      (let ((_hd45384555_ (##car _e45374552_))
                            (_tl45394557_ (##cdr _e45374552_)))
                        (if (gx#stx-pair? _tl45394557_)
                            (let ((_e45404560_ (gx#stx-e _tl45394557_)))
                              (let ((_hd45414563_ (##car _e45404560_))
                                    (_tl45424565_ (##cdr _e45404560_)))
                                (if (gx#stx-null? _tl45424565_)
                                    ((lambda (_L4568_)
                                       (let* ((_bind4580_
                                               (gx#resolve-identifier__0
                                                _L4568_))
                                              (_eid4582_
                                               (if _bind4580_
                                                   (##structure-ref
                                                    _bind4580_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L4568_))))
                                         (table-set!
                                          _ht4532_
                                          _eid4582_
                                          _eid4582_)))
                                     _hd45414563_)
                                    (_g45344547_ _g45354550_))))
                            (_g45344547_ _g45354550_))))
                    (_g45344547_ _g45354550_)))))
        (_g45334585_ _stx4531_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx4458_ _ht4459_)
      (let* ((_g44614478_
              (lambda (_g44624475_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44624475_)))
             (_g44604528_
              (lambda (_g44624481_)
                (if (gx#stx-pair? _g44624481_)
                    (let ((_e44654483_ (gx#stx-e _g44624481_)))
                      (let ((_hd44664486_ (##car _e44654483_))
                            (_tl44674488_ (##cdr _e44654483_)))
                        (if (gx#stx-pair? _tl44674488_)
                            (let ((_e44684491_ (gx#stx-e _tl44674488_)))
                              (let ((_hd44694494_ (##car _e44684491_))
                                    (_tl44704496_ (##cdr _e44684491_)))
                                (if (gx#stx-pair? _tl44704496_)
                                    (let ((_e44714499_
                                           (gx#stx-e _tl44704496_)))
                                      (let ((_hd44724502_ (##car _e44714499_))
                                            (_tl44734504_ (##cdr _e44714499_)))
                                        (if (gx#stx-null? _tl44734504_)
                                            ((lambda (_L4507_ _L4508_)
                                               (let* ((_bind4523_
                                                       (gx#resolve-identifier__0
                                                        _L4508_))
                                                      (_eid4525_
                                                       (if _bind4523_
                                                           (##structure-ref
                                                            _bind4523_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L4508_))))
                                                 (begin
                                                   (table-set!
                                                    _ht4459_
                                                    _eid4525_
                                                    _eid4525_)
                                                   (gxc#compile-e
                                                    _L4507_
                                                    _ht4459_))))
                                             _hd44724502_
                                             _hd44694494_)
                                            (_g44614478_ _g44624481_))))
                                    (_g44614478_ _g44624481_))))
                            (_g44614478_ _g44624481_))))
                    (_g44614478_ _g44624481_)))))
        (_g44604528_ _stx4458_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx4420_)
      (let* ((_g44224432_
              (lambda (_g44234429_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44234429_)))
             (_g44214455_
              (lambda (_g44234435_)
                (if (gx#stx-pair? _g44234435_)
                    (let ((_e44254437_ (gx#stx-e _g44234435_)))
                      (let ((_hd44264440_ (##car _e44254437_))
                            (_tl44274442_ (##cdr _e44254437_)))
                        ((lambda (_L4445_) (ormap1 gxc#compile-e _L4445_))
                         _tl44274442_)))
                    (_g44224432_ _g44234435_)))))
        (_g44214455_ _stx4420_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx4382_)
      (let* ((_g43844394_
              (lambda (_g43854391_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43854391_)))
             (_g43834417_
              (lambda (_g43854397_)
                (if (gx#stx-pair? _g43854397_)
                    (let ((_e43874399_ (gx#stx-e _g43854397_)))
                      (let ((_hd43884402_ (##car _e43874399_))
                            (_tl43894404_ (##cdr _e43874399_)))
                        ((lambda (_L4407_) (gxc#compile-e (last _L4407_)))
                         _tl43894404_)))
                    (_g43844394_ _g43854397_)))))
        (_g43834417_ _stx4382_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx4315_)
      (let* ((_g43174334_
              (lambda (_g43184331_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43184331_)))
             (_g43164379_
              (lambda (_g43184337_)
                (if (gx#stx-pair? _g43184337_)
                    (let ((_e43214339_ (gx#stx-e _g43184337_)))
                      (let ((_hd43224342_ (##car _e43214339_))
                            (_tl43234344_ (##cdr _e43214339_)))
                        (if (gx#stx-pair? _tl43234344_)
                            (let ((_e43244347_ (gx#stx-e _tl43234344_)))
                              (let ((_hd43254350_ (##car _e43244347_))
                                    (_tl43264352_ (##cdr _e43244347_)))
                                (if (gx#stx-pair? _tl43264352_)
                                    (let ((_e43274355_
                                           (gx#stx-e _tl43264352_)))
                                      (let ((_hd43284358_ (##car _e43274355_))
                                            (_tl43294360_ (##cdr _e43274355_)))
                                        (if (gx#stx-null? _tl43294360_)
                                            ((lambda (_L4363_ _L4364_)
                                               (gxc#compile-e _L4363_))
                                             _hd43284358_
                                             _hd43254350_)
                                            (_g43174334_ _g43184337_))))
                                    (_g43174334_ _g43184337_))))
                            (_g43174334_ _g43184337_))))
                    (_g43174334_ _g43184337_)))))
        (_g43164379_ _stx4315_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx4248_)
      (let* ((_g42504267_
              (lambda (_g42514264_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42514264_)))
             (_g42494312_
              (lambda (_g42514270_)
                (if (gx#stx-pair? _g42514270_)
                    (let ((_e42544272_ (gx#stx-e _g42514270_)))
                      (let ((_hd42554275_ (##car _e42544272_))
                            (_tl42564277_ (##cdr _e42544272_)))
                        (if (gx#stx-pair? _tl42564277_)
                            (let ((_e42574280_ (gx#stx-e _tl42564277_)))
                              (let ((_hd42584283_ (##car _e42574280_))
                                    (_tl42594285_ (##cdr _e42574280_)))
                                (if (gx#stx-pair? _tl42594285_)
                                    (let ((_e42604288_
                                           (gx#stx-e _tl42594285_)))
                                      (let ((_hd42614291_ (##car _e42604288_))
                                            (_tl42624293_ (##cdr _e42604288_)))
                                        (if (gx#stx-null? _tl42624293_)
                                            ((lambda (_L4296_ _L4297_)
                                               (gxc#compile-e _L4296_))
                                             _hd42614291_
                                             _hd42584283_)
                                            (_g42504267_ _g42514270_))))
                                    (_g42504267_ _g42514270_))))
                            (_g42504267_ _g42514270_))))
                    (_g42504267_ _g42514270_)))))
        (_g42494312_ _stx4248_))))
  (define gxc#count-values-single% (lambda (_stx4246_) '1))
  (define gxc#count-values-begin%
    (lambda (_stx4164_)
      (let* ((_g41664185_
              (lambda (_g41674182_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41674182_)))
             (_g41654243_
              (lambda (_g41674188_)
                (if (gx#stx-pair? _g41674188_)
                    (let ((_e41694190_ (gx#stx-e _g41674188_)))
                      (let ((_hd41704193_ (##car _e41694190_))
                            (_tl41714195_ (##cdr _e41694190_)))
                        (if (gx#stx-pair/null? _tl41714195_)
                            (if (fx>= (gx#stx-length _tl41714195_) '0)
                                (let ((_g12866_
                                       (gx#syntax-split-splice
                                        _tl41714195_
                                        '0)))
                                  (begin
                                    (let ((_g12867_
                                           (if (##values? _g12866_)
                                               (##vector-length _g12866_)
                                               1)))
                                      (if (not (##fx= _g12867_ 2))
                                          (error "Context expects 2 values"
                                                 _g12867_)))
                                    (let ((_target41724198_
                                           (##vector-ref _g12866_ 0))
                                          (_tl41744200_
                                           (##vector-ref _g12866_ 1)))
                                      (if (gx#stx-null? _tl41744200_)
                                          (letrec ((_loop41754203_
                                                    (lambda (_hd41734206_
                                                             _expr41794208_)
                                                      (if (gx#stx-pair?
                                                           _hd41734206_)
                                                          (let ((_e41764211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd41734206_)))
                    (let ((_lp-hd41774214_ (##car _e41764211_))
                          (_lp-tl41784216_ (##cdr _e41764211_)))
                      (_loop41754203_
                       _lp-tl41784216_
                       (cons _lp-hd41774214_ _expr41794208_))))
                  (let ((_expr41804219_ (reverse _expr41794208_)))
                    ((lambda (_L4222_)
                       (gxc#compile-e
                        (last (begin
                                '#!void
                                (foldr1 (lambda (_g42354238_ _g42364240_)
                                          (cons _g42354238_ _g42364240_))
                                        '()
                                        _L4222_)))))
                     _expr41804219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop41754203_
                                             _target41724198_
                                             '()))
                                          (_g41664185_ _g41674188_)))))
                                (_g41664185_ _g41674188_))
                            (_g41664185_ _g41674188_))))
                    (_g41664185_ _g41674188_)))))
        (_g41654243_ _stx4164_))))
  (define gxc#count-values-begin-annotation%
    (lambda (_stx4097_)
      (let* ((_g40994116_
              (lambda (_g41004113_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41004113_)))
             (_g40984161_
              (lambda (_g41004119_)
                (if (gx#stx-pair? _g41004119_)
                    (let ((_e41034121_ (gx#stx-e _g41004119_)))
                      (let ((_hd41044124_ (##car _e41034121_))
                            (_tl41054126_ (##cdr _e41034121_)))
                        (if (gx#stx-pair? _tl41054126_)
                            (let ((_e41064129_ (gx#stx-e _tl41054126_)))
                              (let ((_hd41074132_ (##car _e41064129_))
                                    (_tl41084134_ (##cdr _e41064129_)))
                                (if (gx#stx-pair? _tl41084134_)
                                    (let ((_e41094137_
                                           (gx#stx-e _tl41084134_)))
                                      (let ((_hd41104140_ (##car _e41094137_))
                                            (_tl41114142_ (##cdr _e41094137_)))
                                        (if (gx#stx-null? _tl41114142_)
                                            ((lambda (_L4145_ _L4146_)
                                               (gxc#compile-e _L4145_))
                                             _hd41104140_
                                             _hd41074132_)
                                            (_g40994116_ _g41004119_))))
                                    (_g40994116_ _g41004119_))))
                            (_g40994116_ _g41004119_))))
                    (_g40994116_ _g41004119_)))))
        (_g40984161_ _stx4097_))))
  (define gxc#count-values-let-values%
    (lambda (_stx4030_)
      (let* ((_g40324049_
              (lambda (_g40334046_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g40334046_)))
             (_g40314094_
              (lambda (_g40334052_)
                (if (gx#stx-pair? _g40334052_)
                    (let ((_e40364054_ (gx#stx-e _g40334052_)))
                      (let ((_hd40374057_ (##car _e40364054_))
                            (_tl40384059_ (##cdr _e40364054_)))
                        (if (gx#stx-pair? _tl40384059_)
                            (let ((_e40394062_ (gx#stx-e _tl40384059_)))
                              (let ((_hd40404065_ (##car _e40394062_))
                                    (_tl40414067_ (##cdr _e40394062_)))
                                (if (gx#stx-pair? _tl40414067_)
                                    (let ((_e40424070_
                                           (gx#stx-e _tl40414067_)))
                                      (let ((_hd40434073_ (##car _e40424070_))
                                            (_tl40444075_ (##cdr _e40424070_)))
                                        (if (gx#stx-null? _tl40444075_)
                                            ((lambda (_L4078_ _L4079_)
                                               (gxc#compile-e _L4078_))
                                             _hd40434073_
                                             _hd40404065_)
                                            (_g40324049_ _g40334052_))))
                                    (_g40324049_ _g40334052_))))
                            (_g40324049_ _g40334052_))))
                    (_g40324049_ _g40334052_)))))
        (_g40314094_ _stx4030_))))
  (define gxc#count-values-call%
    (lambda (_stx3897_)
      (let* ((_g39003929_
              (lambda (_g39013926_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g39013926_)))
             (_g38993936_ (lambda (_g39013932_) ((lambda () '#f))))
             (_g38984027_
              (lambda (_g39013939_)
                (if (gx#stx-pair? _g39013939_)
                    (let ((_e39043941_ (gx#stx-e _g39013939_)))
                      (let ((_hd39053944_ (##car _e39043941_))
                            (_tl39063946_ (##cdr _e39043941_)))
                        (if (gx#stx-pair? _tl39063946_)
                            (let ((_e39073949_ (gx#stx-e _tl39063946_)))
                              (let ((_hd39083952_ (##car _e39073949_))
                                    (_tl39093954_ (##cdr _e39073949_)))
                                (if (gx#stx-pair? _hd39083952_)
                                    (let ((_e39103957_
                                           (gx#stx-e _hd39083952_)))
                                      (let ((_hd39113960_ (##car _e39103957_))
                                            (_tl39123962_ (##cdr _e39103957_)))
                                        (if (gx#identifier? _hd39113960_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd39113960_)
                                                (if (gx#stx-pair? _tl39123962_)
                                                    (let ((_e39133965_
                                                           (gx#stx-e
                                                            _tl39123962_)))
                                                      (let ((_hd39143968_
                                                             (##car _e39133965_))
                                                            (_tl39153970_
                                                             (##cdr _e39133965_)))
                                                        (if (gx#stx-null?
                                                             _tl39153970_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl39093954_)
                        (if (fx>= (gx#stx-length _tl39093954_) '0)
                            (let ((_g12868_
                                   (gx#syntax-split-splice _tl39093954_ '0)))
                              (begin
                                (let ((_g12869_
                                       (if (##values? _g12868_)
                                           (##vector-length _g12868_)
                                           1)))
                                  (if (not (##fx= _g12869_ 2))
                                      (error "Context expects 2 values"
                                             _g12869_)))
                                (let ((_target39163973_
                                       (##vector-ref _g12868_ 0))
                                      (_tl39183975_ (##vector-ref _g12868_ 1)))
                                  (if (gx#stx-null? _tl39183975_)
                                      (letrec ((_loop39193978_
                                                (lambda (_hd39173981_
                                                         _rand39233983_)
                                                  (if (gx#stx-pair?
                                                       _hd39173981_)
                                                      (let ((_e39203986_
                                                             (gx#stx-e
                                                              _hd39173981_)))
                                                        (let ((_lp-hd39213989_
                                                               (##car _e39203986_))
                                                              (_lp-tl39223991_
                                                               (##cdr _e39203986_)))
                                                          (_loop39193978_
                                                           _lp-tl39223991_
                                                           (cons _lp-hd39213989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rand39233983_))))
              (let ((_rand39243994_ (reverse _rand39233983_)))
                ((lambda (_L3997_ _L3998_)
                   (if (gx#free-identifier=? _L3998_ 'values)
                       (length (begin
                                 '#!void
                                 (foldr1 (lambda (_g40194022_ _g40204024_)
                                           (cons _g40194022_ _g40204024_))
                                         '()
                                         _L3997_)))
                       (_g38993936_ _g39013939_)))
                 _rand39243994_
                 _hd39143968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop39193978_ _target39163973_ '()))
                                      (_g38993936_ _g39013939_)))))
                            (_g38993936_ _g39013939_))
                        (_g38993936_ _g39013939_))
                    (_g38993936_ _g39013939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g38993936_ _g39013939_))
                                                (_g38993936_ _g39013939_))
                                            (_g38993936_ _g39013939_))))
                                    (_g38993936_ _g39013939_))))
                            (_g38993936_ _g39013939_))))
                    (_g38993936_ _g39013939_)))))
        (_g38984027_ _stx3897_))))
  (define gxc#count-values-if%
    (lambda (_stx3801_)
      (let* ((_g38033824_
              (lambda (_g38043821_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38043821_)))
             (_g38023894_
              (lambda (_g38043827_)
                (if (gx#stx-pair? _g38043827_)
                    (let ((_e38083829_ (gx#stx-e _g38043827_)))
                      (let ((_hd38093832_ (##car _e38083829_))
                            (_tl38103834_ (##cdr _e38083829_)))
                        (if (gx#stx-pair? _tl38103834_)
                            (let ((_e38113837_ (gx#stx-e _tl38103834_)))
                              (let ((_hd38123840_ (##car _e38113837_))
                                    (_tl38133842_ (##cdr _e38113837_)))
                                (if (gx#stx-pair? _tl38133842_)
                                    (let ((_e38143845_
                                           (gx#stx-e _tl38133842_)))
                                      (let ((_hd38153848_ (##car _e38143845_))
                                            (_tl38163850_ (##cdr _e38143845_)))
                                        (if (gx#stx-pair? _tl38163850_)
                                            (let ((_e38173853_
                                                   (gx#stx-e _tl38163850_)))
                                              (let ((_hd38183856_
                                                     (##car _e38173853_))
                                                    (_tl38193858_
                                                     (##cdr _e38173853_)))
                                                (if (gx#stx-null? _tl38193858_)
                                                    ((lambda (_L3861_
                                                              _L3862_
                                                              _L3863_)
                                                       (let ((_c138803882_
                                                              (gxc#compile-e
                                                               _L3862_)))
                                                         (if _c138803882_
                                                             (let* ((_c13885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _c138803882_)
                            (_c238863888_ (gxc#compile-e _L3861_)))
                       (if _c238863888_
                           (let ((_c23891_ _c238863888_))
                             (if (fx= _c13885_ _c23891_) _c13885_ '#f))
                           '#f))
                     '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd38183856_
                                                     _hd38153848_
                                                     _hd38123840_)
                                                    (_g38033824_
                                                     _g38043827_))))
                                            (_g38033824_ _g38043827_))))
                                    (_g38033824_ _g38043827_))))
                            (_g38033824_ _g38043827_))))
                    (_g38033824_ _g38043827_)))))
        (_g38023894_ _stx3801_)))))
