(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707565662)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl213796_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213796_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213796_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213796_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213796_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl213796_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl213792_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213792_ '%#declare gxc#xform-identity))
           _tbl213792_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl213788_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218236 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl213788_ __tmp218236))
           (let ((__tmp218237 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl213788_ __tmp218237))
           _tbl213788_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl213784_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213784_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213784_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213784_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213784_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213784_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl213784_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl213780_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218238 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl213780_ __tmp218238))
           (let ((__tmp218239 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl213780_ __tmp218239))
           (let ()
             (declare (not safe))
             (table-set! _tbl213780_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213780_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213780_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213780_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213780_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl213780_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl213776_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218240 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl213776_ __tmp218240))
           (let ()
             (declare (not safe))
             (table-set! _tbl213776_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213776_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213776_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213776_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213776_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213776_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213776_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213776_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213776_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213776_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213776_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl213776_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx213759_ . _args213761_)
        (let ((__tmp218242
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213761_)
                     (gxc#compile-e__0 _stx213759_)
                     (let ((_arg1213766_ (car _args213761_))
                           (_rest213768_ (cdr _args213761_)))
                       (if (null? _rest213768_)
                           (gxc#compile-e__1 _stx213759_ _arg1213766_)
                           (let ((_arg2213771_ (car _rest213768_))
                                 (_rest213773_ (cdr _rest213768_)))
                             (if (null? _rest213773_)
                                 (gxc#compile-e__2
                                  _stx213759_
                                  _arg1213766_
                                  _arg2213771_)
                                 (apply gxc#compile-e
                                        _stx213759_
                                        _arg1213766_
                                        _arg2213771_
                                        _rest213773_))))))))
              (__tmp218241 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp218242
           gxc#current-compile-methods
           __tmp218241))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl213756_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218243 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl213756_ __tmp218243))
           (let ()
             (declare (not safe))
             (table-set! _tbl213756_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213756_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213756_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213756_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213756_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl213756_))))
    (define gxc#apply-collect-methods
      (lambda (_stx213739_ . _args213741_)
        (let ((__tmp218245
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213741_)
                     (gxc#compile-e__0 _stx213739_)
                     (let ((_arg1213746_ (car _args213741_))
                           (_rest213748_ (cdr _args213741_)))
                       (if (null? _rest213748_)
                           (gxc#compile-e__1 _stx213739_ _arg1213746_)
                           (let ((_arg2213751_ (car _rest213748_))
                                 (_rest213753_ (cdr _rest213748_)))
                             (if (null? _rest213753_)
                                 (gxc#compile-e__2
                                  _stx213739_
                                  _arg1213746_
                                  _arg2213751_)
                                 (apply gxc#compile-e
                                        _stx213739_
                                        _arg1213746_
                                        _arg2213751_
                                        _rest213753_))))))))
              (__tmp218244 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp218245
           gxc#current-compile-methods
           __tmp218244))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl213736_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218246 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl213736_ __tmp218246))
           (let ()
             (declare (not safe))
             (table-set! _tbl213736_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213736_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213736_ '%#set! gxc#expression-subst-setq%))
           _tbl213736_))))
    (define gxc#apply-expression-subst
      (lambda (_stx213719_ . _args213721_)
        (let ((__tmp218248
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213721_)
                     (gxc#compile-e__0 _stx213719_)
                     (let ((_arg1213726_ (car _args213721_))
                           (_rest213728_ (cdr _args213721_)))
                       (if (null? _rest213728_)
                           (gxc#compile-e__1 _stx213719_ _arg1213726_)
                           (let ((_arg2213731_ (car _rest213728_))
                                 (_rest213733_ (cdr _rest213728_)))
                             (if (null? _rest213733_)
                                 (gxc#compile-e__2
                                  _stx213719_
                                  _arg1213726_
                                  _arg2213731_)
                                 (apply gxc#compile-e
                                        _stx213719_
                                        _arg1213726_
                                        _arg2213731_
                                        _rest213733_))))))))
              (__tmp218247 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp218248
           gxc#current-compile-methods
           __tmp218247))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl213716_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218249 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl213716_ __tmp218249))
           (let ()
             (declare (not safe))
             (table-set! _tbl213716_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213716_ '%#set! gxc#expression-subst*-setq%))
           _tbl213716_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx213699_ . _args213701_)
        (let ((__tmp218251
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213701_)
                     (gxc#compile-e__0 _stx213699_)
                     (let ((_arg1213706_ (car _args213701_))
                           (_rest213708_ (cdr _args213701_)))
                       (if (null? _rest213708_)
                           (gxc#compile-e__1 _stx213699_ _arg1213706_)
                           (let ((_arg2213711_ (car _rest213708_))
                                 (_rest213713_ (cdr _rest213708_)))
                             (if (null? _rest213713_)
                                 (gxc#compile-e__2
                                  _stx213699_
                                  _arg1213706_
                                  _arg2213711_)
                                 (apply gxc#compile-e
                                        _stx213699_
                                        _arg1213706_
                                        _arg2213711_
                                        _rest213713_))))))))
              (__tmp218250 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp218251
           gxc#current-compile-methods
           __tmp218250))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl213696_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218252 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl213696_ __tmp218252))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213696_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213696_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213696_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl213696_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl213692_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218253 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl213692_ __tmp218253))
           (let ()
             (declare (not safe))
             (table-set! _tbl213692_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213692_ '%#set! gxc#find-var-refs-setq%))
           _tbl213692_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx213675_ . _args213677_)
        (let ((__tmp218255
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213677_)
                     (gxc#compile-e__0 _stx213675_)
                     (let ((_arg1213682_ (car _args213677_))
                           (_rest213684_ (cdr _args213677_)))
                       (if (null? _rest213684_)
                           (gxc#compile-e__1 _stx213675_ _arg1213682_)
                           (let ((_arg2213687_ (car _rest213684_))
                                 (_rest213689_ (cdr _rest213684_)))
                             (if (null? _rest213689_)
                                 (gxc#compile-e__2
                                  _stx213675_
                                  _arg1213682_
                                  _arg2213687_)
                                 (apply gxc#compile-e
                                        _stx213675_
                                        _arg1213682_
                                        _arg2213687_
                                        _rest213689_))))))))
              (__tmp218254 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp218255
           gxc#current-compile-methods
           __tmp218254))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl213672_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218256 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl213672_ __tmp218256))
           (let ()
             (declare (not safe))
             (table-set! _tbl213672_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213672_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl213672_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx213655_ . _args213657_)
        (let ((__tmp218258
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213657_)
                     (gxc#compile-e__0 _stx213655_)
                     (let ((_arg1213662_ (car _args213657_))
                           (_rest213664_ (cdr _args213657_)))
                       (if (null? _rest213664_)
                           (gxc#compile-e__1 _stx213655_ _arg1213662_)
                           (let ((_arg2213667_ (car _rest213664_))
                                 (_rest213669_ (cdr _rest213664_)))
                             (if (null? _rest213669_)
                                 (gxc#compile-e__2
                                  _stx213655_
                                  _arg1213662_
                                  _arg2213667_)
                                 (apply gxc#compile-e
                                        _stx213655_
                                        _arg1213662_
                                        _arg2213667_
                                        _rest213669_))))))))
              (__tmp218257 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp218258
           gxc#current-compile-methods
           __tmp218257))))
    (define gxc#xform-identity
      (lambda (_stx213652_ . _args213653_) _stx213652_))
    (define gxc#xform-wrap-source
      (lambda (_stx213649_ _src-stx213650_)
        (let ((__tmp218259
               (let () (declare (not safe)) (gx#stx-source _src-stx213650_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx213649_ __tmp218259))))
    (define gxc#xform-apply-compile-e
      (lambda (_args213636_)
        (lambda (_stx213638_)
          (if (let () (declare (not safe)) (null? _args213636_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx213638_))
              (let ((_arg1213640_ (car _args213636_))
                    (_rest213642_ (cdr _args213636_)))
                (if (let () (declare (not safe)) (null? _rest213642_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx213638_ _arg1213640_))
                    (let ((_arg2213645_ (car _rest213642_))
                          (_rest213647_ (cdr _rest213642_)))
                      (if (let () (declare (not safe)) (null? _rest213647_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx213638_
                             _arg1213640_
                             _arg2213645_))
                          (apply gxc#compile-e
                                 _stx213638_
                                 _arg1213640_
                                 _arg2213645_
                                 _rest213647_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx213595_ . _args213596_)
        (let* ((_g213598213608_
                (lambda (_g213599213605_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213599213605_))))
               (_g213597213633_
                (lambda (_g213599213611_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213599213611_))
                      (let ((_e213603213613_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213599213611_))))
                        (let ((_hd213602213616_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213603213613_)))
                              (_tl213601213618_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213603213613_))))
                          ((lambda (_L213621_)
                             (let* ((_forms213631_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args213596_))
                                          _L213621_))
                                    (__tmp218260
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms213631_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp218260
                                _stx213595_)))
                           _tl213601213618_)))
                      (let ()
                        (declare (not safe))
                        (_g213598213608_ _g213599213611_))))))
          (declare (not safe))
          (_g213597213633_ _stx213595_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx213553_ . _args213554_)
        (let* ((_g213556213566_
                (lambda (_g213557213563_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213557213563_))))
               (_g213555213592_
                (lambda (_g213557213569_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213557213569_))
                      (let ((_e213561213571_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213557213569_))))
                        (let ((_hd213560213574_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213561213571_)))
                              (_tl213559213576_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213561213571_))))
                          ((lambda (_L213579_)
                             (let ((__tmp218263
                                    (lambda ()
                                      (let* ((_forms213590_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args213554_))
                                                   _L213579_))
                                             (__tmp218264
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms213590_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp218264
                                         _stx213553_))))
                                   (__tmp218261
                                    (let ((__tmp218262
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp218262 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp218263
                                gx#current-expander-phi
                                __tmp218261)))
                           _tl213559213576_)))
                      (let ()
                        (declare (not safe))
                        (_g213556213566_ _g213557213569_))))))
          (declare (not safe))
          (_g213555213592_ _stx213553_))))
    (define gxc#xform-module%
      (lambda (_stx213481_ . _args213482_)
        (let* ((_g213484213498_
                (lambda (_g213485213495_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213485213495_))))
               (_g213483213550_
                (lambda (_g213485213501_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213485213501_))
                      (let ((_e213490213503_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213485213501_))))
                        (let ((_hd213489213506_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213490213503_)))
                              (_tl213488213508_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213490213503_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213488213508_))
                              (let ((_e213493213511_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213488213508_))))
                                (let ((_hd213492213514_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213493213511_)))
                                      (_tl213491213516_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213493213511_))))
                                  ((lambda (_L213519_ _L213520_)
                                     (let* ((_ctx213533_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L213520_)))
                                            (_code213535_
                                             (##structure-ref
                                              _ctx213533_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code213547_
                                             (let ((__tmp218265
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args213482_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code213535_))
                                                          (let ((_arg1213538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args213482_))
                        (_rest213540_ (cdr _args213482_)))
                    (if (let () (declare (not safe)) (null? _rest213540_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code213535_ _arg1213538_))
                        (let ((_arg2213543_ (car _rest213540_))
                              (_rest213545_ (cdr _rest213540_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest213545_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code213535_
                                 _arg1213538_
                                 _arg2213543_))
                              (apply gxc#compile-e
                                     _code213535_
                                     _arg1213538_
                                     _arg2213543_
                                     _rest213545_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp218265
                                                gx#current-expander-context
                                                _ctx213533_))))
                                       (##structure-set!
                                        _ctx213533_
                                        _code213547_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp218266
                                              (let ((__tmp218267
                                                     (let ((__tmp218268
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code213547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L213520_ __tmp218268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp218267))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp218266
                                          _stx213481_))))
                                   _tl213491213516_
                                   _hd213492213514_)))
                              (let ()
                                (declare (not safe))
                                (_g213484213498_ _g213485213501_)))))
                      (let ()
                        (declare (not safe))
                        (_g213484213498_ _g213485213501_))))))
          (declare (not safe))
          (_g213483213550_ _stx213481_))))
    (define gxc#xform-define-values%
      (lambda (_stx213402_ . _args213403_)
        (let* ((_g213405213422_
                (lambda (_g213406213419_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213406213419_))))
               (_g213404213478_
                (lambda (_g213406213425_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213406213425_))
                      (let ((_e213411213427_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213406213425_))))
                        (let ((_hd213410213430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213411213427_)))
                              (_tl213409213432_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213411213427_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213409213432_))
                              (let ((_e213414213435_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213409213432_))))
                                (let ((_hd213413213438_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213414213435_)))
                                      (_tl213412213440_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213414213435_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213412213440_))
                                      (let ((_e213417213443_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213412213440_))))
                                        (let ((_hd213416213446_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213417213443_)))
                                              (_tl213415213448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213417213443_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213415213448_))
                                              ((lambda (_L213451_ _L213452_)
                                                 (let* ((_expr213476_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args213403_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L213451_))
                     (let ((_arg1213467_ (car _args213403_))
                           (_rest213469_ (cdr _args213403_)))
                       (if (let () (declare (not safe)) (null? _rest213469_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L213451_ _arg1213467_))
                           (let ((_arg2213472_ (car _rest213469_))
                                 (_rest213474_ (cdr _rest213469_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest213474_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L213451_
                                    _arg1213467_
                                    _arg2213472_))
                                 (apply gxc#compile-e
                                        _L213451_
                                        _arg1213467_
                                        _arg2213472_
                                        _rest213474_)))))))
                (__tmp218269
                 (let ((__tmp218270
                        (let ((__tmp218271
                               (let ()
                                 (declare (not safe))
                                 (cons _expr213476_ '()))))
                          (declare (not safe))
                          (cons _L213452_ __tmp218271))))
                   (declare (not safe))
                   (cons '%#define-values __tmp218270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp218269
                                                    _stx213402_)))
                                               _hd213416213446_
                                               _hd213413213438_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213405213422_
                                                 _g213406213425_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213405213422_ _g213406213425_)))))
                              (let ()
                                (declare (not safe))
                                (_g213405213422_ _g213406213425_)))))
                      (let ()
                        (declare (not safe))
                        (_g213405213422_ _g213406213425_))))))
          (declare (not safe))
          (_g213404213478_ _stx213402_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx213322_ . _args213323_)
        (let* ((_g213325213342_
                (lambda (_g213326213339_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213326213339_))))
               (_g213324213399_
                (lambda (_g213326213345_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213326213345_))
                      (let ((_e213331213347_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213326213345_))))
                        (let ((_hd213330213350_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213331213347_)))
                              (_tl213329213352_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213331213347_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213329213352_))
                              (let ((_e213334213355_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213329213352_))))
                                (let ((_hd213333213358_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213334213355_)))
                                      (_tl213332213360_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213334213355_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213332213360_))
                                      (let ((_e213337213363_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213332213360_))))
                                        (let ((_hd213336213366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213337213363_)))
                                              (_tl213335213368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213337213363_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213335213368_))
                                              ((lambda (_L213371_ _L213372_)
                                                 (let ((__tmp218274
                                                        (lambda ()
                                                          (let* ((_expr213397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args213323_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L213371_))
                              (let ((_arg1213388_ (car _args213323_))
                                    (_rest213390_ (cdr _args213323_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest213390_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L213371_
                                       _arg1213388_))
                                    (let ((_arg2213393_ (car _rest213390_))
                                          (_rest213395_ (cdr _rest213390_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest213395_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L213371_
                                             _arg1213388_
                                             _arg2213393_))
                                          (apply gxc#compile-e
                                                 _L213371_
                                                 _arg1213388_
                                                 _arg2213393_
                                                 _rest213395_)))))))
                         (__tmp218275
                          (let ((__tmp218276
                                 (let ((__tmp218277
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr213397_ '()))))
                                   (declare (not safe))
                                   (cons _L213372_ __tmp218277))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp218276))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp218275 _stx213322_))))
               (__tmp218272
                (let ((__tmp218273 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp218273 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp218274
                                                    gx#current-expander-phi
                                                    __tmp218272)))
                                               _hd213336213366_
                                               _hd213333213358_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213325213342_
                                                 _g213326213345_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213325213342_ _g213326213345_)))))
                              (let ()
                                (declare (not safe))
                                (_g213325213342_ _g213326213345_)))))
                      (let ()
                        (declare (not safe))
                        (_g213325213342_ _g213326213345_))))))
          (declare (not safe))
          (_g213324213399_ _stx213322_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx213243_ . _args213244_)
        (let* ((_g213246213263_
                (lambda (_g213247213260_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213247213260_))))
               (_g213245213319_
                (lambda (_g213247213266_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213247213266_))
                      (let ((_e213252213268_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213247213266_))))
                        (let ((_hd213251213271_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213252213268_)))
                              (_tl213250213273_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213252213268_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213250213273_))
                              (let ((_e213255213276_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213250213273_))))
                                (let ((_hd213254213279_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213255213276_)))
                                      (_tl213253213281_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213255213276_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213253213281_))
                                      (let ((_e213258213284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213253213281_))))
                                        (let ((_hd213257213287_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213258213284_)))
                                              (_tl213256213289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213258213284_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213256213289_))
                                              ((lambda (_L213292_ _L213293_)
                                                 (let* ((_expr213317_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args213244_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L213292_))
                     (let ((_arg1213308_ (car _args213244_))
                           (_rest213310_ (cdr _args213244_)))
                       (if (let () (declare (not safe)) (null? _rest213310_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L213292_ _arg1213308_))
                           (let ((_arg2213313_ (car _rest213310_))
                                 (_rest213315_ (cdr _rest213310_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest213315_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L213292_
                                    _arg1213308_
                                    _arg2213313_))
                                 (apply gxc#compile-e
                                        _L213292_
                                        _arg1213308_
                                        _arg2213313_
                                        _rest213315_)))))))
                (__tmp218278
                 (let ((__tmp218279
                        (let ((__tmp218280
                               (let ()
                                 (declare (not safe))
                                 (cons _expr213317_ '()))))
                          (declare (not safe))
                          (cons _L213293_ __tmp218280))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp218279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp218278
                                                    _stx213243_)))
                                               _hd213257213287_
                                               _hd213254213279_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213246213263_
                                                 _g213247213266_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213246213263_ _g213247213266_)))))
                              (let ()
                                (declare (not safe))
                                (_g213246213263_ _g213247213266_)))))
                      (let ()
                        (declare (not safe))
                        (_g213246213263_ _g213247213266_))))))
          (declare (not safe))
          (_g213245213319_ _stx213243_))))
    (define gxc#xform-lambda%
      (lambda (_stx213186_ . _args213187_)
        (let* ((_g213189213203_
                (lambda (_g213190213200_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213190213200_))))
               (_g213188213240_
                (lambda (_g213190213206_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213190213206_))
                      (let ((_e213195213208_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213190213206_))))
                        (let ((_hd213194213211_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213195213208_)))
                              (_tl213193213213_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213195213208_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213193213213_))
                              (let ((_e213198213216_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213193213213_))))
                                (let ((_hd213197213219_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213198213216_)))
                                      (_tl213196213221_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213198213216_))))
                                  ((lambda (_L213224_ _L213225_)
                                     (let* ((_body213238_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args213187_))
                                                  _L213224_))
                                            (__tmp218281
                                             (let ((__tmp218282
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L213225_
                                                            _body213238_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp218282))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp218281
                                        _stx213186_)))
                                   _tl213196213221_
                                   _hd213197213219_)))
                              (let ()
                                (declare (not safe))
                                (_g213189213203_ _g213190213206_)))))
                      (let ()
                        (declare (not safe))
                        (_g213189213203_ _g213190213206_))))))
          (declare (not safe))
          (_g213188213240_ _stx213186_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx213099_ . _args213100_)
        (letrec ((_clause-e213102_
                  (lambda (_clause213143_)
                    (let* ((_g213145213156_
                            (lambda (_g213146213153_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g213146213153_))))
                           (_g213144213183_
                            (lambda (_g213146213159_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g213146213159_))
                                  (let ((_e213151213161_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g213146213159_))))
                                    (let ((_hd213150213164_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e213151213161_)))
                                          (_tl213149213166_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e213151213161_))))
                                      ((lambda (_L213169_ _L213170_)
                                         (let ((_body213181_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args213100_))
                                                     _L213169_)))
                                           (declare (not safe))
                                           (cons _L213170_ _body213181_)))
                                       _tl213149213166_
                                       _hd213150213164_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g213145213156_ _g213146213159_))))))
                      (declare (not safe))
                      (_g213144213183_ _clause213143_)))))
          (let* ((_g213104213114_
                  (lambda (_g213105213111_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g213105213111_))))
                 (_g213103213140_
                  (lambda (_g213105213117_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g213105213117_))
                        (let ((_e213109213119_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g213105213117_))))
                          (let ((_hd213108213122_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e213109213119_)))
                                (_tl213107213124_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e213109213119_))))
                            ((lambda (_L213127_)
                               (let* ((_clauses213138_
                                       (map _clause-e213102_ _L213127_))
                                      (__tmp218283
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses213138_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp218283
                                  _stx213099_)))
                             _tl213107213124_)))
                        (let ()
                          (declare (not safe))
                          (_g213104213114_ _g213105213117_))))))
            (declare (not safe))
            (_g213103213140_ _stx213099_)))))
    (define gxc#xform-let-values%
      (lambda (_stx212893_ . _args212894_)
        (let* ((_g212896212929_
                (lambda (_g212897212926_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212897212926_))))
               (_g212895213096_
                (lambda (_g212897212932_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212897212932_))
                      (let ((_e212904212934_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212897212932_))))
                        (let ((_hd212903212937_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212904212934_)))
                              (_tl212902212939_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212904212934_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212902212939_))
                              (let ((_e212907212942_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212902212939_))))
                                (let ((_hd212906212945_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212907212942_)))
                                      (_tl212905212947_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212907212942_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd212906212945_))
                                      (let ((_g218284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd212906212945_
                                                '0))))
                                        (begin
                                          (let ((_g218285_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218284_)
                                                       (##vector-length
                                                        _g218284_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218285_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218285_)))
                                          (let ((_target212908212950_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g218284_ 0)))
                                                (_tl212910212952_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g218284_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl212910212952_))
                                                (letrec ((_loop212911212955_
                                                          (lambda (_hd212909212958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr212915212960_
                           _hd212916212962_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd212909212958_))
                        (let ((_e212912212965_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd212909212958_))))
                          (let ((_lp-hd212913212968_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e212912212965_)))
                                (_lp-tl212914212970_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e212912212965_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd212913212968_))
                                (let ((_e212921212973_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd212913212968_))))
                                  (let ((_hd212920212976_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e212921212973_)))
                                        (_tl212919212978_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e212921212973_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl212919212978_))
                                        (let ((_e212924212981_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl212919212978_))))
                                          (let ((_hd212923212984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e212924212981_)))
                                                (_tl212922212986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e212924212981_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl212922212986_))
                                                (let ((__tmp218298
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd212923212984_
                                                               _expr212915212960_)))
                                                      (__tmp218297
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd212920212976_
                                                               _hd212916212962_))))
                                                  (declare (not safe))
                                                  (_loop212911212955_
                                                   _lp-tl212914212970_
                                                   __tmp218298
                                                   __tmp218297))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g212896212929_
                                                   _g212897212932_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g212896212929_ _g212897212932_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g212896212929_ _g212897212932_)))))
                        (let ((_expr212917212989_ (reverse _expr212915212960_))
                              (_hd212918212991_ (reverse _hd212916212962_)))
                          ((lambda (_L212994_ _L212995_ _L212996_ _L212997_)
                             (let* ((_g213016213032_
                                     (lambda (_g213017213029_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g213017213029_))))
                                    (_g213015213086_
                                     (lambda (_g213017213035_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g213017213035_))
                                           (let ((_g218286_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g213017213035_
                                                     '0))))
                                             (begin
                                               (let ((_g218287_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g218286_)
                                                            (##vector-length
                                                             _g218286_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g218287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g218287_)))
                                               (let ((_target213019213037_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g218286_
                                                         0)))
                                                     (_tl213021213039_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g218286_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl213021213039_))
                                                     (letrec ((_loop213022213042_
                                                               (lambda (_hd213020213045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr213026213047_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd213020213045_))
                             (let ((_e213023213050_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd213020213045_))))
                               (let ((_lp-hd213024213053_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e213023213050_)))
                                     (_lp-tl213025213055_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e213023213050_))))
                                 (let ((__tmp218294
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd213024213053_
                                                _expr213026213047_))))
                                   (declare (not safe))
                                   (_loop213022213042_
                                    _lp-tl213025213055_
                                    __tmp218294))))
                             (let ((_expr213027213058_
                                    (reverse _expr213026213047_)))
                               ((lambda (_L213061_)
                                  (let ()
                                    (let* ((_body213074_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args212894_))
                                                 _L212994_))
                                           (__tmp218288
                                            (let ((__tmp218289
                                                   (let ((__tmp218290
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L213061_
                                                               _L212996_))
                                                            (let ((__tmp218291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g213075213079_
                                    _g213076213081_
                                    _g213077213083_)
                             (let ((__tmp218292
                                    (let ((__tmp218293
                                           (let ()
                                             (declare (not safe))
                                             (cons _g213075213079_ '()))))
                                      (declare (not safe))
                                      (cons _g213076213081_ __tmp218293))))
                               (declare (not safe))
                               (cons __tmp218292 _g213077213083_)))))
                      (declare (not safe))
                      (foldr2 __tmp218291 '() _L213061_ _L212996_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp218290
                                                           _body213074_))))
                                              (declare (not safe))
                                              (cons _L212997_ __tmp218289))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp218288
                                       _stx212893_))))
                                _expr213027213058_))))))
               (let ()
                 (declare (not safe))
                 (_loop213022213042_ _target213019213037_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g213016213032_
                                                        _g213017213035_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g213016213032_
                                              _g213017213035_)))))
                                    (__tmp218295
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args212894_))
                                          (let ((__tmp218296
                                                 (lambda (_g213088213091_
                                                          _g213089213093_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g213088213091_
                                                           _g213089213093_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp218296
                                                    '()
                                                    _L212995_)))))
                               (declare (not safe))
                               (_g213015213086_ __tmp218295)))
                           _tl212905212947_
                           _expr212917212989_
                           _hd212918212991_
                           _hd212903212937_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop212911212955_
                                                     _target212908212950_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g212896212929_
                                                   _g212897212932_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212896212929_ _g212897212932_)))))
                              (let ()
                                (declare (not safe))
                                (_g212896212929_ _g212897212932_)))))
                      (let ()
                        (declare (not safe))
                        (_g212896212929_ _g212897212932_))))))
          (declare (not safe))
          (_g212895213096_ _stx212893_))))
    (define gxc#xform-operands
      (lambda (_stx212849_ . _args212850_)
        (let* ((_g212852212863_
                (lambda (_g212853212860_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212853212860_))))
               (_g212851212890_
                (lambda (_g212853212866_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212853212866_))
                      (let ((_e212858212868_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212853212866_))))
                        (let ((_hd212857212871_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212858212868_)))
                              (_tl212856212873_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212858212868_))))
                          ((lambda (_L212876_ _L212877_)
                             (let* ((_rands212888_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args212850_))
                                          _L212876_))
                                    (__tmp218299
                                     (let ()
                                       (declare (not safe))
                                       (cons _L212877_ _rands212888_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp218299
                                _stx212849_)))
                           _tl212856212873_
                           _hd212857212871_)))
                      (let ()
                        (declare (not safe))
                        (_g212852212863_ _g212853212866_))))))
          (declare (not safe))
          (_g212851212890_ _stx212849_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx212770_ . _args212771_)
        (let* ((_g212773212790_
                (lambda (_g212774212787_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212774212787_))))
               (_g212772212846_
                (lambda (_g212774212793_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212774212793_))
                      (let ((_e212779212795_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212774212793_))))
                        (let ((_hd212778212798_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212779212795_)))
                              (_tl212777212800_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212779212795_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212777212800_))
                              (let ((_e212782212803_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212777212800_))))
                                (let ((_hd212781212806_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212782212803_)))
                                      (_tl212780212808_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212782212803_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212780212808_))
                                      (let ((_e212785212811_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212780212808_))))
                                        (let ((_hd212784212814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212785212811_)))
                                              (_tl212783212816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212785212811_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212783212816_))
                                              ((lambda (_L212819_ _L212820_)
                                                 (let* ((_expr212844_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args212771_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L212819_))
                     (let ((_arg1212835_ (car _args212771_))
                           (_rest212837_ (cdr _args212771_)))
                       (if (let () (declare (not safe)) (null? _rest212837_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L212819_ _arg1212835_))
                           (let ((_arg2212840_ (car _rest212837_))
                                 (_rest212842_ (cdr _rest212837_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest212842_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L212819_
                                    _arg1212835_
                                    _arg2212840_))
                                 (apply gxc#compile-e
                                        _L212819_
                                        _arg1212835_
                                        _arg2212840_
                                        _rest212842_)))))))
                (__tmp218300
                 (let ((__tmp218301
                        (let ((__tmp218302
                               (let ()
                                 (declare (not safe))
                                 (cons _expr212844_ '()))))
                          (declare (not safe))
                          (cons _L212820_ __tmp218302))))
                   (declare (not safe))
                   (cons '%#set! __tmp218301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp218300
                                                    _stx212770_)))
                                               _hd212784212814_
                                               _hd212781212806_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212773212790_
                                                 _g212774212793_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212773212790_ _g212774212793_)))))
                              (let ()
                                (declare (not safe))
                                (_g212773212790_ _g212774212793_)))))
                      (let ()
                        (declare (not safe))
                        (_g212773212790_ _g212774212793_))))))
          (declare (not safe))
          (_g212772212846_ _stx212770_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx212701_)
        (let* ((_g212703212720_
                (lambda (_g212704212717_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212704212717_))))
               (_g212702212767_
                (lambda (_g212704212723_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212704212723_))
                      (let ((_e212709212725_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212704212723_))))
                        (let ((_hd212708212728_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212709212725_)))
                              (_tl212707212730_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212709212725_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212707212730_))
                              (let ((_e212712212733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212707212730_))))
                                (let ((_hd212711212736_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212712212733_)))
                                      (_tl212710212738_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212712212733_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212710212738_))
                                      (let ((_e212715212741_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212710212738_))))
                                        (let ((_hd212714212744_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212715212741_)))
                                              (_tl212713212746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212715212741_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212713212746_))
                                              ((lambda (_L212749_ _L212750_)
                                                 (let ((_sym212765_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L212750_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym212765_))
                                                   (let ((__tmp218303
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp218303
                                                      _sym212765_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L212749_))))
                                               _hd212714212744_
                                               _hd212711212736_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212703212720_
                                                 _g212704212723_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212703212720_ _g212704212723_)))))
                              (let ()
                                (declare (not safe))
                                (_g212703212720_ _g212704212723_)))))
                      (let ()
                        (declare (not safe))
                        (_g212703212720_ _g212704212723_))))))
          (declare (not safe))
          (_g212702212767_ _stx212701_))))
    (define gxc#collect-methods-call%
      (lambda (_stx212255_)
        (let* ((___stx217993217994_ _stx212255_)
               (_g212259212361_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx217993217994_)))))
          (let ((___kont217995217996_
                 (lambda (_L212651_ _L212652_ _L212653_ _L212654_ _L212655_)
                   (let ((__tmp218304
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L212652_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp218304))))
                (___kont217997217998_
                 (lambda (_L212477_ _L212478_ _L212479_ _L212480_)
                   (let ((__tmp218305
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L212477_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp218305))))
                (___kont217999218000_ (lambda () '#!void)))
            (let ((___match218128218129_
                   (lambda (_e212268212523_
                            _hd212267212526_
                            _tl212266212528_
                            _e212271212531_
                            _hd212270212534_
                            _tl212269212536_
                            _e212274212539_
                            _hd212273212542_
                            _tl212272212544_
                            _e212277212547_
                            _hd212276212550_
                            _tl212275212552_
                            _e212280212555_
                            _hd212279212558_
                            _tl212278212560_
                            _e212283212563_
                            _hd212282212566_
                            _tl212281212568_
                            _e212286212571_
                            _hd212285212574_
                            _tl212284212576_
                            _e212289212579_
                            _hd212288212582_
                            _tl212287212584_
                            _e212292212587_
                            _hd212291212590_
                            _tl212290212592_
                            _e212295212595_
                            _hd212294212598_
                            _tl212293212600_
                            _e212298212603_
                            _hd212297212606_
                            _tl212296212608_
                            _e212301212611_
                            _hd212300212614_
                            _tl212299212616_
                            _e212304212619_
                            _hd212303212622_
                            _tl212302212624_
                            _e212307212627_
                            _hd212306212630_
                            _tl212305212632_
                            _e212310212635_
                            _hd212309212638_
                            _tl212308212640_
                            _e212313212643_
                            _hd212312212646_
                            _tl212311212648_)
                     (let ((_L212651_ _hd212312212646_)
                           (_L212652_ _hd212303212622_)
                           (_L212653_ _hd212294212598_)
                           (_L212654_ _hd212285212574_)
                           (_L212655_ _hd212276212550_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L212655_
                              'bind-method!))
                           (___kont217995217996_
                            _L212651_
                            _L212652_
                            _L212653_
                            _L212654_
                            _L212655_)
                           (___kont217999218000_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx217993217994_))
                  (let ((_e212268212523_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx217993217994_))))
                    (let ((_tl212266212528_
                           (let ()
                             (declare (not safe))
                             (##cdr _e212268212523_)))
                          (_hd212267212526_
                           (let ()
                             (declare (not safe))
                             (##car _e212268212523_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl212266212528_))
                          (let ((_e212271212531_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl212266212528_))))
                            (let ((_tl212269212536_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e212271212531_)))
                                  (_hd212270212534_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e212271212531_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd212270212534_))
                                  (let ((_e212274212539_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd212270212534_))))
                                    (let ((_tl212272212544_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e212274212539_)))
                                          (_hd212273212542_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e212274212539_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd212273212542_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd212273212542_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl212272212544_))
                                                  (let ((_e212277212547_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl212272212544_))))
                                                    (let ((_tl212275212552_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e212277212547_)))
                                                          (_hd212276212550_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e212277212547_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl212275212552_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl212269212536_))
                      (let ((_e212280212555_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl212269212536_))))
                        (let ((_tl212278212560_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212280212555_)))
                              (_hd212279212558_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212280212555_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd212279212558_))
                              (let ((_e212283212563_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd212279212558_))))
                                (let ((_tl212281212568_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212283212563_)))
                                      (_hd212282212566_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212283212563_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd212282212566_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd212282212566_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl212281212568_))
                                              (let ((_e212286212571_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl212281212568_))))
                                                (let ((_tl212284212576_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e212286212571_)))
                                                      (_hd212285212574_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e212286212571_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl212284212576_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl212278212560_))
                                                          (let ((_e212289212579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl212278212560_))))
                    (let ((_tl212287212584_
                           (let ()
                             (declare (not safe))
                             (##cdr _e212289212579_)))
                          (_hd212288212582_
                           (let ()
                             (declare (not safe))
                             (##car _e212289212579_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd212288212582_))
                          (let ((_e212292212587_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd212288212582_))))
                            (let ((_tl212290212592_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e212292212587_)))
                                  (_hd212291212590_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e212292212587_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd212291212590_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd212291212590_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl212290212592_))
                                          (let ((_e212295212595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl212290212592_))))
                                            (let ((_tl212293212600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e212295212595_)))
                                                  (_hd212294212598_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e212295212595_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl212293212600_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl212287212584_))
                                                      (let ((_e212298212603_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl212287212584_))))
                (let ((_tl212296212608_
                       (let () (declare (not safe)) (##cdr _e212298212603_)))
                      (_hd212297212606_
                       (let () (declare (not safe)) (##car _e212298212603_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd212297212606_))
                      (let ((_e212301212611_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd212297212606_))))
                        (let ((_tl212299212616_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212301212611_)))
                              (_hd212300212614_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212301212611_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd212300212614_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd212300212614_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212299212616_))
                                      (let ((_e212304212619_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212299212616_))))
                                        (let ((_tl212302212624_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212304212619_)))
                                              (_hd212303212622_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212304212619_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212302212624_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl212296212608_))
                                                  (let ((_e212307212627_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl212296212608_))))
                                                    (let ((_tl212305212632_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e212307212627_)))
                                                          (_hd212306212630_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e212307212627_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd212306212630_))
                                                          (let ((_e212310212635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd212306212630_))))
                    (let ((_tl212308212640_
                           (let ()
                             (declare (not safe))
                             (##cdr _e212310212635_)))
                          (_hd212309212638_
                           (let ()
                             (declare (not safe))
                             (##car _e212310212635_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd212309212638_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd212309212638_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl212308212640_))
                                  (let ((_e212313212643_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl212308212640_))))
                                    (let ((_tl212311212648_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e212313212643_)))
                                          (_hd212312212646_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e212313212643_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl212311212648_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212305212632_))
                                              (___match218128218129_
                                               _e212268212523_
                                               _hd212267212526_
                                               _tl212266212528_
                                               _e212271212531_
                                               _hd212270212534_
                                               _tl212269212536_
                                               _e212274212539_
                                               _hd212273212542_
                                               _tl212272212544_
                                               _e212277212547_
                                               _hd212276212550_
                                               _tl212275212552_
                                               _e212280212555_
                                               _hd212279212558_
                                               _tl212278212560_
                                               _e212283212563_
                                               _hd212282212566_
                                               _tl212281212568_
                                               _e212286212571_
                                               _hd212285212574_
                                               _tl212284212576_
                                               _e212289212579_
                                               _hd212288212582_
                                               _tl212287212584_
                                               _e212292212587_
                                               _hd212291212590_
                                               _tl212290212592_
                                               _e212295212595_
                                               _hd212294212598_
                                               _tl212293212600_
                                               _e212298212603_
                                               _hd212297212606_
                                               _tl212296212608_
                                               _e212301212611_
                                               _hd212300212614_
                                               _tl212299212616_
                                               _e212304212619_
                                               _hd212303212622_
                                               _tl212302212624_
                                               _e212307212627_
                                               _hd212306212630_
                                               _tl212305212632_
                                               _e212310212635_
                                               _hd212309212638_
                                               _tl212308212640_
                                               _e212313212643_
                                               _hd212312212646_
                                               _tl212311212648_)
                                              (___kont217999218000_))
                                          (___kont217999218000_))))
                                  (___kont217999218000_))
                              (___kont217999218000_))
                          (___kont217999218000_))))
                  (___kont217999218000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl212296212608_))
                                                      (if (let ((__tmp218306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp218306 'bind-method!))
                  (let ((_L212477_ _hd212303212622_)
                        (_L212478_ _hd212294212598_)
                        (_L212479_ _hd212285212574_)
                        (_L212480_ _hd212276212550_))
                    (___kont217997217998_
                     _L212477_
                     _L212478_
                     _L212479_
                     _L212480_))
                  (___kont217999218000_))
              (___kont217999218000_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont217999218000_))))
                                      (___kont217999218000_))
                                  (___kont217999218000_))
                              (___kont217999218000_))))
                      (___kont217999218000_))))
              (___kont217999218000_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont217999218000_))))
                                          (___kont217999218000_))
                                      (___kont217999218000_))
                                  (___kont217999218000_))))
                          (___kont217999218000_))))
                  (___kont217999218000_))
              (___kont217999218000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont217999218000_))
                                          (___kont217999218000_))
                                      (___kont217999218000_))))
                              (___kont217999218000_))))
                      (___kont217999218000_))
                  (___kont217999218000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont217999218000_))
                                              (___kont217999218000_))
                                          (___kont217999218000_))))
                                  (___kont217999218000_))))
                          (___kont217999218000_))))
                  (___kont217999218000_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx212202_ _id212203_ _new-id212204_)
        (let* ((_g212206212219_
                (lambda (_g212207212216_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212207212216_))))
               (_g212205212252_
                (lambda (_g212207212222_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212207212222_))
                      (let ((_e212211212224_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212207212222_))))
                        (let ((_hd212210212227_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212211212224_)))
                              (_tl212209212229_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212211212224_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212209212229_))
                              (let ((_e212214212232_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212209212229_))))
                                (let ((_hd212213212235_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212214212232_)))
                                      (_tl212212212237_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212214212232_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl212212212237_))
                                      ((lambda (_L212240_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L212240_
                                                _id212203_))
                                             (let ((__tmp218307
                                                    (let ((__tmp218308
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id212204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp218308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp218307
                                                _stx212202_))
                                             _stx212202_))
                                       _hd212213212235_)
                                      (let ()
                                        (declare (not safe))
                                        (_g212206212219_ _g212207212222_)))))
                              (let ()
                                (declare (not safe))
                                (_g212206212219_ _g212207212222_)))))
                      (let ()
                        (declare (not safe))
                        (_g212206212219_ _g212207212222_))))))
          (declare (not safe))
          (_g212205212252_ _stx212202_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx212143_ _subst212144_)
        (let* ((_g212146212159_
                (lambda (_g212147212156_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212147212156_))))
               (_g212145212199_
                (lambda (_g212147212162_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212147212162_))
                      (let ((_e212151212164_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212147212162_))))
                        (let ((_hd212150212167_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212151212164_)))
                              (_tl212149212169_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212151212164_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212149212169_))
                              (let ((_e212154212172_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212149212169_))))
                                (let ((_hd212153212175_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212154212172_)))
                                      (_tl212152212177_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212154212172_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl212152212177_))
                                      ((lambda (_L212180_)
                                         (let ((_$e212194_
                                                (let ((__tmp218309
                                                       (lambda (_sub212192_)
                                                         (let ((__tmp218310
                                                                (car _sub212192_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L212180_
                                                            __tmp218310)))))
                                                  (declare (not safe))
                                                  (find __tmp218309
                                                        _subst212144_))))
                                           (if _$e212194_
                                               ((lambda (_sub212197_)
                                                  (let ((__tmp218311
                                                         (let ((__tmp218312
                                                                (let ((__tmp218313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub212197_)))
                          (declare (not safe))
                          (cons __tmp218313 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp218312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp218311
                                                     _stx212143_)))
                                                _$e212194_)
                                               _stx212143_)))
                                       _hd212153212175_)
                                      (let ()
                                        (declare (not safe))
                                        (_g212146212159_ _g212147212162_)))))
                              (let ()
                                (declare (not safe))
                                (_g212146212159_ _g212147212162_)))))
                      (let ()
                        (declare (not safe))
                        (_g212146212159_ _g212147212162_))))))
          (declare (not safe))
          (_g212145212199_ _stx212143_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx212071_ _id212072_ _new-id212073_)
        (let* ((_g212075212092_
                (lambda (_g212076212089_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212076212089_))))
               (_g212074212140_
                (lambda (_g212076212095_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212076212095_))
                      (let ((_e212081212097_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212076212095_))))
                        (let ((_hd212080212100_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212081212097_)))
                              (_tl212079212102_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212081212097_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212079212102_))
                              (let ((_e212084212105_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212079212102_))))
                                (let ((_hd212083212108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212084212105_)))
                                      (_tl212082212110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212084212105_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212082212110_))
                                      (let ((_e212087212113_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212082212110_))))
                                        (let ((_hd212086212116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212087212113_)))
                                              (_tl212085212118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212087212113_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212085212118_))
                                              ((lambda (_L212121_ _L212122_)
                                                 (let ((_new-expr212137_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L212121_
                                                           _id212072_
                                                           _new-id212073_)))
                                                       (_new-xid212138_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L212122_
                                                               _id212072_))
                                                            _new-id212073_
                                                            _L212122_)))
                                                   (let ((__tmp218314
                                                          (let ((__tmp218315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp218316
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr212137_ '()))))
                           (declare (not safe))
                           (cons _new-xid212138_ __tmp218316))))
                    (declare (not safe))
                    (cons '%#set! __tmp218315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp218314
                                                      _stx212071_))))
                                               _hd212086212116_
                                               _hd212083212108_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212075212092_
                                                 _g212076212095_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212075212092_ _g212076212095_)))))
                              (let ()
                                (declare (not safe))
                                (_g212075212092_ _g212076212095_)))))
                      (let ()
                        (declare (not safe))
                        (_g212075212092_ _g212076212095_))))))
          (declare (not safe))
          (_g212074212140_ _stx212071_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx211995_ _subst211996_)
        (let* ((_g211998212015_
                (lambda (_g211999212012_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211999212012_))))
               (_g211997212068_
                (lambda (_g211999212018_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211999212018_))
                      (let ((_e212004212020_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211999212018_))))
                        (let ((_hd212003212023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212004212020_)))
                              (_tl212002212025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212004212020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212002212025_))
                              (let ((_e212007212028_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212002212025_))))
                                (let ((_hd212006212031_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212007212028_)))
                                      (_tl212005212033_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212007212028_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212005212033_))
                                      (let ((_e212010212036_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212005212033_))))
                                        (let ((_hd212009212039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212010212036_)))
                                              (_tl212008212041_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212010212036_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212008212041_))
                                              ((lambda (_L212044_ _L212045_)
                                                 (let ((_new-expr212065_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L212044_
                                                           _subst211996_)))
                                                       (_new-xid212066_
                                                        (let ((_$e212062_
                                                               (let ((__tmp218317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub212060_)
                                (let ((__tmp218318 (car _sub212060_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L212045_
                                   __tmp218318)))))
                         (declare (not safe))
                         (find __tmp218317 _subst211996_))))
                  (if _$e212062_ (cdr _$e212062_) _L212045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp218319
                                                          (let ((__tmp218320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp218321
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr212065_ '()))))
                           (declare (not safe))
                           (cons _new-xid212066_ __tmp218321))))
                    (declare (not safe))
                    (cons '%#set! __tmp218320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp218319
                                                      _stx211995_))))
                                               _hd212009212039_
                                               _hd212006212031_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211998212015_
                                                 _g211999212018_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211998212015_ _g211999212018_)))))
                              (let ()
                                (declare (not safe))
                                (_g211998212015_ _g211999212018_)))))
                      (let ()
                        (declare (not safe))
                        (_g211998212015_ _g211999212018_))))))
          (declare (not safe))
          (_g211997212068_ _stx211995_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx211941_ _ht211942_)
        (let* ((_g211944211957_
                (lambda (_g211945211954_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211945211954_))))
               (_g211943211992_
                (lambda (_g211945211960_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211945211960_))
                      (let ((_e211949211962_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211945211960_))))
                        (let ((_hd211948211965_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211949211962_)))
                              (_tl211947211967_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211949211962_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211947211967_))
                              (let ((_e211952211970_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211947211967_))))
                                (let ((_hd211951211973_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211952211970_)))
                                      (_tl211950211975_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211952211970_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl211950211975_))
                                      ((lambda (_L211978_)
                                         (let ((_eid211990_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L211978_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht211942_
                                            _eid211990_
                                            1+
                                            '0)))
                                       _hd211951211973_)
                                      (let ()
                                        (declare (not safe))
                                        (_g211944211957_ _g211945211960_)))))
                              (let ()
                                (declare (not safe))
                                (_g211944211957_ _g211945211960_)))))
                      (let ()
                        (declare (not safe))
                        (_g211944211957_ _g211945211960_))))))
          (declare (not safe))
          (_g211943211992_ _stx211941_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx211871_ _ht211872_)
        (let* ((_g211874211891_
                (lambda (_g211875211888_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211875211888_))))
               (_g211873211938_
                (lambda (_g211875211894_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211875211894_))
                      (let ((_e211880211896_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211875211894_))))
                        (let ((_hd211879211899_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211880211896_)))
                              (_tl211878211901_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211880211896_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211878211901_))
                              (let ((_e211883211904_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211878211901_))))
                                (let ((_hd211882211907_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211883211904_)))
                                      (_tl211881211909_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211883211904_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211881211909_))
                                      (let ((_e211886211912_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211881211909_))))
                                        (let ((_hd211885211915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211886211912_)))
                                              (_tl211884211917_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211886211912_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211884211917_))
                                              ((lambda (_L211920_ _L211921_)
                                                 (let ((_eid211936_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L211921_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht211872_
                                                      _eid211936_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L211920_
                                                      _ht211872_))))
                                               _hd211885211915_
                                               _hd211882211907_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211874211891_
                                                 _g211875211894_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211874211891_ _g211875211894_)))))
                              (let ()
                                (declare (not safe))
                                (_g211874211891_ _g211875211894_)))))
                      (let ()
                        (declare (not safe))
                        (_g211874211891_ _g211875211894_))))))
          (declare (not safe))
          (_g211873211938_ _stx211871_))))
    (define gxc#find-body%
      (lambda (_stx211784_ _arg211785_)
        (let* ((_g211787211806_
                (lambda (_g211788211803_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211788211803_))))
               (_g211786211868_
                (lambda (_g211788211809_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211788211809_))
                      (let ((_e211792211811_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211788211809_))))
                        (let ((_hd211791211814_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211792211811_)))
                              (_tl211790211816_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211792211811_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl211790211816_))
                              (let ((_g218322_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl211790211816_
                                        '0))))
                                (begin
                                  (let ((_g218323_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g218322_)
                                               (##vector-length _g218322_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g218323_ 2)))
                                        (error "Context expects 2 values"
                                               _g218323_)))
                                  (let ((_target211793211819_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218322_ 0)))
                                        (_tl211795211821_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218322_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl211795211821_))
                                        (letrec ((_loop211796211824_
                                                  (lambda (_hd211794211827_
                                                           _expr211800211829_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd211794211827_))
                                                        (let ((_e211797211832_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd211794211827_))))
                  (let ((_lp-hd211798211835_
                         (let () (declare (not safe)) (##car _e211797211832_)))
                        (_lp-tl211799211837_
                         (let ()
                           (declare (not safe))
                           (##cdr _e211797211832_))))
                    (let ((__tmp218327
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd211798211835_ _expr211800211829_))))
                      (declare (not safe))
                      (_loop211796211824_ _lp-tl211799211837_ __tmp218327))))
                (let ((_expr211801211840_ (reverse _expr211800211829_)))
                  ((lambda (_L211843_)
                     (let ((__tmp218326
                            (lambda (_g211856211858_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g211856211858_
                                 _arg211785_))))
                           (__tmp218324
                            (let ((__tmp218325
                                   (lambda (_g211860211863_ _g211861211865_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g211860211863_
                                             _g211861211865_)))))
                              (declare (not safe))
                              (foldr1 __tmp218325 '() _L211843_))))
                       (declare (not safe))
                       (ormap1 __tmp218326 __tmp218324)))
                   _expr211801211840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop211796211824_
                                             _target211793211819_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g211787211806_
                                           _g211788211809_))))))
                              (let ()
                                (declare (not safe))
                                (_g211787211806_ _g211788211809_)))))
                      (let ()
                        (declare (not safe))
                        (_g211787211806_ _g211788211809_))))))
          (declare (not safe))
          (_g211786211868_ _stx211784_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx211716_ _arg211717_)
        (let* ((_g211719211736_
                (lambda (_g211720211733_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211720211733_))))
               (_g211718211781_
                (lambda (_g211720211739_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211720211739_))
                      (let ((_e211725211741_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211720211739_))))
                        (let ((_hd211724211744_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211725211741_)))
                              (_tl211723211746_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211725211741_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211723211746_))
                              (let ((_e211728211749_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211723211746_))))
                                (let ((_hd211727211752_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211728211749_)))
                                      (_tl211726211754_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211728211749_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211726211754_))
                                      (let ((_e211731211757_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211726211754_))))
                                        (let ((_hd211730211760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211731211757_)))
                                              (_tl211729211762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211731211757_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211729211762_))
                                              ((lambda (_L211765_ _L211766_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L211765_
                                                    _arg211717_)))
                                               _hd211730211760_
                                               _hd211727211752_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211719211736_
                                                 _g211720211739_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211719211736_ _g211720211739_)))))
                              (let ()
                                (declare (not safe))
                                (_g211719211736_ _g211720211739_)))))
                      (let ()
                        (declare (not safe))
                        (_g211719211736_ _g211720211739_))))))
          (declare (not safe))
          (_g211718211781_ _stx211716_))))
    (define gxc#find-lambda%
      (lambda (_stx211648_ _arg211649_)
        (let* ((_g211651211668_
                (lambda (_g211652211665_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211652211665_))))
               (_g211650211713_
                (lambda (_g211652211671_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211652211671_))
                      (let ((_e211657211673_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211652211671_))))
                        (let ((_hd211656211676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211657211673_)))
                              (_tl211655211678_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211657211673_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211655211678_))
                              (let ((_e211660211681_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211655211678_))))
                                (let ((_hd211659211684_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211660211681_)))
                                      (_tl211658211686_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211660211681_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211658211686_))
                                      (let ((_e211663211689_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211658211686_))))
                                        (let ((_hd211662211692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211663211689_)))
                                              (_tl211661211694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211663211689_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211661211694_))
                                              ((lambda (_L211697_ _L211698_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L211697_
                                                    _arg211649_)))
                                               _hd211662211692_
                                               _hd211659211684_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211651211668_
                                                 _g211652211671_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211651211668_ _g211652211671_)))))
                              (let ()
                                (declare (not safe))
                                (_g211651211668_ _g211652211671_)))))
                      (let ()
                        (declare (not safe))
                        (_g211651211668_ _g211652211671_))))))
          (declare (not safe))
          (_g211650211713_ _stx211648_))))
    (define gxc#find-case-lambda%
      (lambda (_stx211530_ _arg211531_)
        (let* ((_g211533211561_
                (lambda (_g211534211558_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211534211558_))))
               (_g211532211645_
                (lambda (_g211534211564_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211534211564_))
                      (let ((_e211539211566_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211534211564_))))
                        (let ((_hd211538211569_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211539211566_)))
                              (_tl211537211571_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211539211566_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl211537211571_))
                              (let ((_g218328_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl211537211571_
                                        '0))))
                                (begin
                                  (let ((_g218329_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g218328_)
                                               (##vector-length _g218328_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g218329_ 2)))
                                        (error "Context expects 2 values"
                                               _g218329_)))
                                  (let ((_target211540211574_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218328_ 0)))
                                        (_tl211542211576_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218328_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl211542211576_))
                                        (letrec ((_loop211543211579_
                                                  (lambda (_hd211541211582_
                                                           _body211547211584_
                                                           _hd211548211586_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd211541211582_))
                                                        (let ((_e211544211589_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd211541211582_))))
                  (let ((_lp-hd211545211592_
                         (let () (declare (not safe)) (##car _e211544211589_)))
                        (_lp-tl211546211594_
                         (let ()
                           (declare (not safe))
                           (##cdr _e211544211589_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd211545211592_))
                        (let ((_e211553211597_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd211545211592_))))
                          (let ((_hd211552211600_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e211553211597_)))
                                (_tl211551211602_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e211553211597_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl211551211602_))
                                (let ((_e211556211605_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl211551211602_))))
                                  (let ((_hd211555211608_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e211556211605_)))
                                        (_tl211554211610_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e211556211605_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl211554211610_))
                                        (let ((__tmp218334
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd211555211608_
                                                       _body211547211584_)))
                                              (__tmp218333
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd211552211600_
                                                       _hd211548211586_))))
                                          (declare (not safe))
                                          (_loop211543211579_
                                           _lp-tl211546211594_
                                           __tmp218334
                                           __tmp218333))
                                        (let ()
                                          (declare (not safe))
                                          (_g211533211561_ _g211534211564_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g211533211561_ _g211534211564_)))))
                        (let ()
                          (declare (not safe))
                          (_g211533211561_ _g211534211564_)))))
                (let ((_body211549211613_ (reverse _body211547211584_))
                      (_hd211550211615_ (reverse _hd211548211586_)))
                  ((lambda (_L211618_ _L211619_)
                     (let ((__tmp218332
                            (lambda (_g211633211635_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g211633211635_
                                 _arg211531_))))
                           (__tmp218330
                            (let ((__tmp218331
                                   (lambda (_g211637211640_ _g211638211642_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g211637211640_
                                             _g211638211642_)))))
                              (declare (not safe))
                              (foldr1 __tmp218331 '() _L211618_))))
                       (declare (not safe))
                       (ormap1 __tmp218332 __tmp218330)))
                   _body211549211613_
                   _hd211550211615_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop211543211579_
                                             _target211540211574_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g211533211561_
                                           _g211534211564_))))))
                              (let ()
                                (declare (not safe))
                                (_g211533211561_ _g211534211564_)))))
                      (let ()
                        (declare (not safe))
                        (_g211533211561_ _g211534211564_))))))
          (declare (not safe))
          (_g211532211645_ _stx211530_))))
    (define gxc#find-let-values%
      (lambda (_stx211380_ _arg211381_)
        (let* ((_g211383211418_
                (lambda (_g211384211415_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211384211415_))))
               (_g211382211527_
                (lambda (_g211384211421_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211384211421_))
                      (let ((_e211390211423_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211384211421_))))
                        (let ((_hd211389211426_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211390211423_)))
                              (_tl211388211428_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211390211423_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211388211428_))
                              (let ((_e211393211431_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211388211428_))))
                                (let ((_hd211392211434_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211393211431_)))
                                      (_tl211391211436_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211393211431_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd211392211434_))
                                      (let ((_g218335_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd211392211434_
                                                '0))))
                                        (begin
                                          (let ((_g218336_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218335_)
                                                       (##vector-length
                                                        _g218335_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218336_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218336_)))
                                          (let ((_target211394211439_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g218335_ 0)))
                                                (_tl211396211441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g218335_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl211396211441_))
                                                (letrec ((_loop211397211444_
                                                          (lambda (_hd211395211447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr211401211449_
                           _bind211402211451_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd211395211447_))
                        (let ((_e211398211454_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd211395211447_))))
                          (let ((_lp-hd211399211457_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e211398211454_)))
                                (_lp-tl211400211459_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e211398211454_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd211399211457_))
                                (let ((_e211407211462_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd211399211457_))))
                                  (let ((_hd211406211465_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e211407211462_)))
                                        (_tl211405211467_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e211407211462_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl211405211467_))
                                        (let ((_e211410211470_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl211405211467_))))
                                          (let ((_hd211409211473_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e211410211470_)))
                                                (_tl211408211475_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e211410211470_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl211408211475_))
                                                (let ((__tmp218341
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd211409211473_
                                                               _expr211401211449_)))
                                                      (__tmp218340
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd211406211465_
                                                               _bind211402211451_))))
                                                  (declare (not safe))
                                                  (_loop211397211444_
                                                   _lp-tl211400211459_
                                                   __tmp218341
                                                   __tmp218340))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g211383211418_
                                                   _g211384211421_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g211383211418_ _g211384211421_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g211383211418_ _g211384211421_)))))
                        (let ((_expr211403211478_ (reverse _expr211401211449_))
                              (_bind211404211480_
                               (reverse _bind211402211451_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211391211436_))
                              (let ((_e211413211483_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211391211436_))))
                                (let ((_hd211412211486_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211413211483_)))
                                      (_tl211411211488_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211413211483_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl211411211488_))
                                      ((lambda (_L211491_ _L211492_ _L211493_)
                                         (let ((_$e211524_
                                                (let ((__tmp218339
                                                       (lambda (_g211512211514_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g211512211514_
                                                            _arg211381_))))
                                                      (__tmp218337
                                                       (let ((__tmp218338
                                                              (lambda (_g211516211519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g211517211521_)
                        (let ()
                          (declare (not safe))
                          (cons _g211516211519_ _g211517211521_)))))
                 (declare (not safe))
                 (foldr1 __tmp218338 '() _L211492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp218339
                                                          __tmp218337))))
                                           (if _$e211524_
                                               _$e211524_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L211491_
                                                  _arg211381_)))))
                                       _hd211412211486_
                                       _expr211403211478_
                                       _bind211404211480_)
                                      (let ()
                                        (declare (not safe))
                                        (_g211383211418_ _g211384211421_)))))
                              (let ()
                                (declare (not safe))
                                (_g211383211418_ _g211384211421_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop211397211444_
                                                     _target211394211439_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g211383211418_
                                                   _g211384211421_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211383211418_ _g211384211421_)))))
                              (let ()
                                (declare (not safe))
                                (_g211383211418_ _g211384211421_)))))
                      (let ()
                        (declare (not safe))
                        (_g211383211418_ _g211384211421_))))))
          (declare (not safe))
          (_g211382211527_ _stx211380_))))
    (define gxc#find-setq%
      (lambda (_stx211312_ _arg211313_)
        (let* ((_g211315211332_
                (lambda (_g211316211329_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211316211329_))))
               (_g211314211377_
                (lambda (_g211316211335_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211316211335_))
                      (let ((_e211321211337_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211316211335_))))
                        (let ((_hd211320211340_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211321211337_)))
                              (_tl211319211342_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211321211337_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211319211342_))
                              (let ((_e211324211345_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211319211342_))))
                                (let ((_hd211323211348_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211324211345_)))
                                      (_tl211322211350_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211324211345_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211322211350_))
                                      (let ((_e211327211353_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211322211350_))))
                                        (let ((_hd211326211356_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211327211353_)))
                                              (_tl211325211358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211327211353_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211325211358_))
                                              ((lambda (_L211361_ _L211362_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L211361_
                                                    _arg211313_)))
                                               _hd211326211356_
                                               _hd211323211348_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211315211332_
                                                 _g211316211335_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211315211332_ _g211316211335_)))))
                              (let ()
                                (declare (not safe))
                                (_g211315211332_ _g211316211335_)))))
                      (let ()
                        (declare (not safe))
                        (_g211315211332_ _g211316211335_))))))
          (declare (not safe))
          (_g211314211377_ _stx211312_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx211256_ _ids211257_)
        (let* ((_g211259211272_
                (lambda (_g211260211269_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211260211269_))))
               (_g211258211309_
                (lambda (_g211260211275_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211260211275_))
                      (let ((_e211264211277_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211260211275_))))
                        (let ((_hd211263211280_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211264211277_)))
                              (_tl211262211282_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211264211277_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211262211282_))
                              (let ((_e211267211285_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211262211282_))))
                                (let ((_hd211266211288_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211267211285_)))
                                      (_tl211265211290_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211267211285_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl211265211290_))
                                      ((lambda (_L211293_)
                                         (let ((__tmp218342
                                                (lambda (_g211304211306_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L211293_
                                                     _g211304211306_)))))
                                           (declare (not safe))
                                           (find __tmp218342 _ids211257_)))
                                       _hd211266211288_)
                                      (let ()
                                        (declare (not safe))
                                        (_g211259211272_ _g211260211275_)))))
                              (let ()
                                (declare (not safe))
                                (_g211259211272_ _g211260211275_)))))
                      (let ()
                        (declare (not safe))
                        (_g211259211272_ _g211260211275_))))))
          (declare (not safe))
          (_g211258211309_ _stx211256_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx211180_ _ids211181_)
        (let* ((_g211183211200_
                (lambda (_g211184211197_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211184211197_))))
               (_g211182211253_
                (lambda (_g211184211203_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211184211203_))
                      (let ((_e211189211205_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211184211203_))))
                        (let ((_hd211188211208_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211189211205_)))
                              (_tl211187211210_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211189211205_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211187211210_))
                              (let ((_e211192211213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211187211210_))))
                                (let ((_hd211191211216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211192211213_)))
                                      (_tl211190211218_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211192211213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211190211218_))
                                      (let ((_e211195211221_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211190211218_))))
                                        (let ((_hd211194211224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211195211221_)))
                                              (_tl211193211226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211195211221_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211193211226_))
                                              ((lambda (_L211229_ _L211230_)
                                                 (let ((_$e211250_
                                                        (let ((__tmp218343
                                                               (lambda (_g211245211247_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L211230_ _g211245211247_)))))
                  (declare (not safe))
                  (find __tmp218343 _ids211181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e211250_
                                                       _$e211250_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L211229_
                                                          _ids211181_)))))
                                               _hd211194211224_
                                               _hd211191211216_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211183211200_
                                                 _g211184211203_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211183211200_ _g211184211203_)))))
                              (let ()
                                (declare (not safe))
                                (_g211183211200_ _g211184211203_)))))
                      (let ()
                        (declare (not safe))
                        (_g211183211200_ _g211184211203_))))))
          (declare (not safe))
          (_g211182211253_ _stx211180_))))))
