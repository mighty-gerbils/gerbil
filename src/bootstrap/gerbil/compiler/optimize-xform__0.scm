(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707657572)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl221031_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221031_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221031_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221031_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221031_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl221031_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl221027_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221027_ '%#declare gxc#xform-identity))
           _tbl221027_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl221023_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225745 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl221023_ __tmp225745))
           (let ((__tmp225746 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl221023_ __tmp225746))
           _tbl221023_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl221019_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221019_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221019_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221019_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221019_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221019_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl221019_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl221015_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225747 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl221015_ __tmp225747))
           (let ((__tmp225748 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl221015_ __tmp225748))
           (let ()
             (declare (not safe))
             (table-set! _tbl221015_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221015_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221015_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221015_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221015_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl221015_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl221011_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225749 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl221011_ __tmp225749))
           (let ()
             (declare (not safe))
             (table-set! _tbl221011_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221011_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221011_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221011_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221011_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221011_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221011_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221011_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221011_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221011_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221011_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl221011_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx220994_ . _args220996_)
        (let ((__tmp225751
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220996_)
                     (gxc#compile-e__0 _stx220994_)
                     (let ((_arg1221001_ (car _args220996_))
                           (_rest221003_ (cdr _args220996_)))
                       (if (null? _rest221003_)
                           (gxc#compile-e__1 _stx220994_ _arg1221001_)
                           (let ((_arg2221006_ (car _rest221003_))
                                 (_rest221008_ (cdr _rest221003_)))
                             (if (null? _rest221008_)
                                 (gxc#compile-e__2
                                  _stx220994_
                                  _arg1221001_
                                  _arg2221006_)
                                 (apply gxc#compile-e
                                        _stx220994_
                                        _arg1221001_
                                        _arg2221006_
                                        _rest221008_))))))))
              (__tmp225750 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp225751
           gxc#current-compile-methods
           __tmp225750))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl220991_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225752 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl220991_ __tmp225752))
           (let ()
             (declare (not safe))
             (table-set! _tbl220991_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220991_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220991_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220991_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220991_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl220991_))))
    (define gxc#apply-collect-methods
      (lambda (_stx220974_ . _args220976_)
        (let ((__tmp225754
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220976_)
                     (gxc#compile-e__0 _stx220974_)
                     (let ((_arg1220981_ (car _args220976_))
                           (_rest220983_ (cdr _args220976_)))
                       (if (null? _rest220983_)
                           (gxc#compile-e__1 _stx220974_ _arg1220981_)
                           (let ((_arg2220986_ (car _rest220983_))
                                 (_rest220988_ (cdr _rest220983_)))
                             (if (null? _rest220988_)
                                 (gxc#compile-e__2
                                  _stx220974_
                                  _arg1220981_
                                  _arg2220986_)
                                 (apply gxc#compile-e
                                        _stx220974_
                                        _arg1220981_
                                        _arg2220986_
                                        _rest220988_))))))))
              (__tmp225753 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp225754
           gxc#current-compile-methods
           __tmp225753))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl220971_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225755 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl220971_ __tmp225755))
           (let ()
             (declare (not safe))
             (table-set! _tbl220971_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220971_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220971_ '%#set! gxc#expression-subst-setq%))
           _tbl220971_))))
    (define gxc#apply-expression-subst
      (lambda (_stx220954_ . _args220956_)
        (let ((__tmp225757
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220956_)
                     (gxc#compile-e__0 _stx220954_)
                     (let ((_arg1220961_ (car _args220956_))
                           (_rest220963_ (cdr _args220956_)))
                       (if (null? _rest220963_)
                           (gxc#compile-e__1 _stx220954_ _arg1220961_)
                           (let ((_arg2220966_ (car _rest220963_))
                                 (_rest220968_ (cdr _rest220963_)))
                             (if (null? _rest220968_)
                                 (gxc#compile-e__2
                                  _stx220954_
                                  _arg1220961_
                                  _arg2220966_)
                                 (apply gxc#compile-e
                                        _stx220954_
                                        _arg1220961_
                                        _arg2220966_
                                        _rest220968_))))))))
              (__tmp225756 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp225757
           gxc#current-compile-methods
           __tmp225756))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl220951_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225758 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl220951_ __tmp225758))
           (let ()
             (declare (not safe))
             (table-set! _tbl220951_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220951_ '%#set! gxc#expression-subst*-setq%))
           _tbl220951_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx220934_ . _args220936_)
        (let ((__tmp225760
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220936_)
                     (gxc#compile-e__0 _stx220934_)
                     (let ((_arg1220941_ (car _args220936_))
                           (_rest220943_ (cdr _args220936_)))
                       (if (null? _rest220943_)
                           (gxc#compile-e__1 _stx220934_ _arg1220941_)
                           (let ((_arg2220946_ (car _rest220943_))
                                 (_rest220948_ (cdr _rest220943_)))
                             (if (null? _rest220948_)
                                 (gxc#compile-e__2
                                  _stx220934_
                                  _arg1220941_
                                  _arg2220946_)
                                 (apply gxc#compile-e
                                        _stx220934_
                                        _arg1220941_
                                        _arg2220946_
                                        _rest220948_))))))))
              (__tmp225759 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp225760
           gxc#current-compile-methods
           __tmp225759))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl220931_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225761 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl220931_ __tmp225761))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220931_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220931_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220931_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl220931_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl220927_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225762 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl220927_ __tmp225762))
           (let ()
             (declare (not safe))
             (table-set! _tbl220927_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220927_ '%#set! gxc#find-var-refs-setq%))
           _tbl220927_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx220910_ . _args220912_)
        (let ((__tmp225764
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220912_)
                     (gxc#compile-e__0 _stx220910_)
                     (let ((_arg1220917_ (car _args220912_))
                           (_rest220919_ (cdr _args220912_)))
                       (if (null? _rest220919_)
                           (gxc#compile-e__1 _stx220910_ _arg1220917_)
                           (let ((_arg2220922_ (car _rest220919_))
                                 (_rest220924_ (cdr _rest220919_)))
                             (if (null? _rest220924_)
                                 (gxc#compile-e__2
                                  _stx220910_
                                  _arg1220917_
                                  _arg2220922_)
                                 (apply gxc#compile-e
                                        _stx220910_
                                        _arg1220917_
                                        _arg2220922_
                                        _rest220924_))))))))
              (__tmp225763 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp225764
           gxc#current-compile-methods
           __tmp225763))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl220907_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225765 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl220907_ __tmp225765))
           (let ()
             (declare (not safe))
             (table-set! _tbl220907_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220907_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl220907_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx220890_ . _args220892_)
        (let ((__tmp225767
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220892_)
                     (gxc#compile-e__0 _stx220890_)
                     (let ((_arg1220897_ (car _args220892_))
                           (_rest220899_ (cdr _args220892_)))
                       (if (null? _rest220899_)
                           (gxc#compile-e__1 _stx220890_ _arg1220897_)
                           (let ((_arg2220902_ (car _rest220899_))
                                 (_rest220904_ (cdr _rest220899_)))
                             (if (null? _rest220904_)
                                 (gxc#compile-e__2
                                  _stx220890_
                                  _arg1220897_
                                  _arg2220902_)
                                 (apply gxc#compile-e
                                        _stx220890_
                                        _arg1220897_
                                        _arg2220902_
                                        _rest220904_))))))))
              (__tmp225766 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp225767
           gxc#current-compile-methods
           __tmp225766))))
    (define gxc#xform-identity
      (lambda (_stx220887_ . _args220888_) _stx220887_))
    (define gxc#xform-wrap-source
      (lambda (_stx220884_ _src-stx220885_)
        (let ((__tmp225768
               (let () (declare (not safe)) (gx#stx-source _src-stx220885_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx220884_ __tmp225768))))
    (define gxc#xform-apply-compile-e
      (lambda (_args220871_)
        (lambda (_stx220873_)
          (if (let () (declare (not safe)) (null? _args220871_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx220873_))
              (let ((_arg1220875_ (car _args220871_))
                    (_rest220877_ (cdr _args220871_)))
                (if (let () (declare (not safe)) (null? _rest220877_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx220873_ _arg1220875_))
                    (let ((_arg2220880_ (car _rest220877_))
                          (_rest220882_ (cdr _rest220877_)))
                      (if (let () (declare (not safe)) (null? _rest220882_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx220873_
                             _arg1220875_
                             _arg2220880_))
                          (apply gxc#compile-e
                                 _stx220873_
                                 _arg1220875_
                                 _arg2220880_
                                 _rest220882_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx220830_ . _args220831_)
        (let* ((_g220833220843_
                (lambda (_g220834220840_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220834220840_))))
               (_g220832220868_
                (lambda (_g220834220846_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220834220846_))
                      (let ((_e220838220848_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220834220846_))))
                        (let ((_hd220837220851_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220838220848_)))
                              (_tl220836220853_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220838220848_))))
                          ((lambda (_L220856_)
                             (let* ((_forms220866_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220831_))
                                          _L220856_))
                                    (__tmp225769
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms220866_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp225769
                                _stx220830_)))
                           _tl220836220853_)))
                      (let ()
                        (declare (not safe))
                        (_g220833220843_ _g220834220846_))))))
          (declare (not safe))
          (_g220832220868_ _stx220830_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx220788_ . _args220789_)
        (let* ((_g220791220801_
                (lambda (_g220792220798_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220792220798_))))
               (_g220790220827_
                (lambda (_g220792220804_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220792220804_))
                      (let ((_e220796220806_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220792220804_))))
                        (let ((_hd220795220809_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220796220806_)))
                              (_tl220794220811_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220796220806_))))
                          ((lambda (_L220814_)
                             (let ((__tmp225772
                                    (lambda ()
                                      (let* ((_forms220825_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args220789_))
                                                   _L220814_))
                                             (__tmp225773
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms220825_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp225773
                                         _stx220788_))))
                                   (__tmp225770
                                    (let ((__tmp225771
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp225771 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp225772
                                gx#current-expander-phi
                                __tmp225770)))
                           _tl220794220811_)))
                      (let ()
                        (declare (not safe))
                        (_g220791220801_ _g220792220804_))))))
          (declare (not safe))
          (_g220790220827_ _stx220788_))))
    (define gxc#xform-module%
      (lambda (_stx220716_ . _args220717_)
        (let* ((_g220719220733_
                (lambda (_g220720220730_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220720220730_))))
               (_g220718220785_
                (lambda (_g220720220736_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220720220736_))
                      (let ((_e220725220738_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220720220736_))))
                        (let ((_hd220724220741_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220725220738_)))
                              (_tl220723220743_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220725220738_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220723220743_))
                              (let ((_e220728220746_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220723220743_))))
                                (let ((_hd220727220749_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220728220746_)))
                                      (_tl220726220751_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220728220746_))))
                                  ((lambda (_L220754_ _L220755_)
                                     (let* ((_ctx220768_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L220755_)))
                                            (_code220770_
                                             (##structure-ref
                                              _ctx220768_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code220782_
                                             (let ((__tmp225774
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args220717_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code220770_))
                                                          (let ((_arg1220773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args220717_))
                        (_rest220775_ (cdr _args220717_)))
                    (if (let () (declare (not safe)) (null? _rest220775_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code220770_ _arg1220773_))
                        (let ((_arg2220778_ (car _rest220775_))
                              (_rest220780_ (cdr _rest220775_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest220780_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code220770_
                                 _arg1220773_
                                 _arg2220778_))
                              (apply gxc#compile-e
                                     _code220770_
                                     _arg1220773_
                                     _arg2220778_
                                     _rest220780_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp225774
                                                gx#current-expander-context
                                                _ctx220768_))))
                                       (##structure-set!
                                        _ctx220768_
                                        _code220782_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp225775
                                              (let ((__tmp225776
                                                     (let ((__tmp225777
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code220782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L220755_ __tmp225777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp225776))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp225775
                                          _stx220716_))))
                                   _tl220726220751_
                                   _hd220727220749_)))
                              (let ()
                                (declare (not safe))
                                (_g220719220733_ _g220720220736_)))))
                      (let ()
                        (declare (not safe))
                        (_g220719220733_ _g220720220736_))))))
          (declare (not safe))
          (_g220718220785_ _stx220716_))))
    (define gxc#xform-define-values%
      (lambda (_stx220637_ . _args220638_)
        (let* ((_g220640220657_
                (lambda (_g220641220654_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220641220654_))))
               (_g220639220713_
                (lambda (_g220641220660_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220641220660_))
                      (let ((_e220646220662_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220641220660_))))
                        (let ((_hd220645220665_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220646220662_)))
                              (_tl220644220667_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220646220662_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220644220667_))
                              (let ((_e220649220670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220644220667_))))
                                (let ((_hd220648220673_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220649220670_)))
                                      (_tl220647220675_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220649220670_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220647220675_))
                                      (let ((_e220652220678_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220647220675_))))
                                        (let ((_hd220651220681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220652220678_)))
                                              (_tl220650220683_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220652220678_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220650220683_))
                                              ((lambda (_L220686_ _L220687_)
                                                 (let* ((_expr220711_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220638_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220686_))
                     (let ((_arg1220702_ (car _args220638_))
                           (_rest220704_ (cdr _args220638_)))
                       (if (let () (declare (not safe)) (null? _rest220704_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220686_ _arg1220702_))
                           (let ((_arg2220707_ (car _rest220704_))
                                 (_rest220709_ (cdr _rest220704_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220709_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220686_
                                    _arg1220702_
                                    _arg2220707_))
                                 (apply gxc#compile-e
                                        _L220686_
                                        _arg1220702_
                                        _arg2220707_
                                        _rest220709_)))))))
                (__tmp225778
                 (let ((__tmp225779
                        (let ((__tmp225780
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220711_ '()))))
                          (declare (not safe))
                          (cons _L220687_ __tmp225780))))
                   (declare (not safe))
                   (cons '%#define-values __tmp225779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225778
                                                    _stx220637_)))
                                               _hd220651220681_
                                               _hd220648220673_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220640220657_
                                                 _g220641220660_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220640220657_ _g220641220660_)))))
                              (let ()
                                (declare (not safe))
                                (_g220640220657_ _g220641220660_)))))
                      (let ()
                        (declare (not safe))
                        (_g220640220657_ _g220641220660_))))))
          (declare (not safe))
          (_g220639220713_ _stx220637_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx220557_ . _args220558_)
        (let* ((_g220560220577_
                (lambda (_g220561220574_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220561220574_))))
               (_g220559220634_
                (lambda (_g220561220580_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220561220580_))
                      (let ((_e220566220582_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220561220580_))))
                        (let ((_hd220565220585_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220566220582_)))
                              (_tl220564220587_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220566220582_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220564220587_))
                              (let ((_e220569220590_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220564220587_))))
                                (let ((_hd220568220593_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220569220590_)))
                                      (_tl220567220595_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220569220590_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220567220595_))
                                      (let ((_e220572220598_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220567220595_))))
                                        (let ((_hd220571220601_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220572220598_)))
                                              (_tl220570220603_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220572220598_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220570220603_))
                                              ((lambda (_L220606_ _L220607_)
                                                 (let ((__tmp225783
                                                        (lambda ()
                                                          (let* ((_expr220632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args220558_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L220606_))
                              (let ((_arg1220623_ (car _args220558_))
                                    (_rest220625_ (cdr _args220558_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest220625_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L220606_
                                       _arg1220623_))
                                    (let ((_arg2220628_ (car _rest220625_))
                                          (_rest220630_ (cdr _rest220625_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest220630_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L220606_
                                             _arg1220623_
                                             _arg2220628_))
                                          (apply gxc#compile-e
                                                 _L220606_
                                                 _arg1220623_
                                                 _arg2220628_
                                                 _rest220630_)))))))
                         (__tmp225784
                          (let ((__tmp225785
                                 (let ((__tmp225786
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr220632_ '()))))
                                   (declare (not safe))
                                   (cons _L220607_ __tmp225786))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp225785))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp225784 _stx220557_))))
               (__tmp225781
                (let ((__tmp225782 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp225782 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp225783
                                                    gx#current-expander-phi
                                                    __tmp225781)))
                                               _hd220571220601_
                                               _hd220568220593_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220560220577_
                                                 _g220561220580_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220560220577_ _g220561220580_)))))
                              (let ()
                                (declare (not safe))
                                (_g220560220577_ _g220561220580_)))))
                      (let ()
                        (declare (not safe))
                        (_g220560220577_ _g220561220580_))))))
          (declare (not safe))
          (_g220559220634_ _stx220557_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx220478_ . _args220479_)
        (let* ((_g220481220498_
                (lambda (_g220482220495_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220482220495_))))
               (_g220480220554_
                (lambda (_g220482220501_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220482220501_))
                      (let ((_e220487220503_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220482220501_))))
                        (let ((_hd220486220506_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220487220503_)))
                              (_tl220485220508_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220487220503_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220485220508_))
                              (let ((_e220490220511_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220485220508_))))
                                (let ((_hd220489220514_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220490220511_)))
                                      (_tl220488220516_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220490220511_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220488220516_))
                                      (let ((_e220493220519_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220488220516_))))
                                        (let ((_hd220492220522_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220493220519_)))
                                              (_tl220491220524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220493220519_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220491220524_))
                                              ((lambda (_L220527_ _L220528_)
                                                 (let* ((_expr220552_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220479_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220527_))
                     (let ((_arg1220543_ (car _args220479_))
                           (_rest220545_ (cdr _args220479_)))
                       (if (let () (declare (not safe)) (null? _rest220545_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220527_ _arg1220543_))
                           (let ((_arg2220548_ (car _rest220545_))
                                 (_rest220550_ (cdr _rest220545_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220550_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220527_
                                    _arg1220543_
                                    _arg2220548_))
                                 (apply gxc#compile-e
                                        _L220527_
                                        _arg1220543_
                                        _arg2220548_
                                        _rest220550_)))))))
                (__tmp225787
                 (let ((__tmp225788
                        (let ((__tmp225789
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220552_ '()))))
                          (declare (not safe))
                          (cons _L220528_ __tmp225789))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp225788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225787
                                                    _stx220478_)))
                                               _hd220492220522_
                                               _hd220489220514_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220481220498_
                                                 _g220482220501_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220481220498_ _g220482220501_)))))
                              (let ()
                                (declare (not safe))
                                (_g220481220498_ _g220482220501_)))))
                      (let ()
                        (declare (not safe))
                        (_g220481220498_ _g220482220501_))))))
          (declare (not safe))
          (_g220480220554_ _stx220478_))))
    (define gxc#xform-lambda%
      (lambda (_stx220421_ . _args220422_)
        (let* ((_g220424220438_
                (lambda (_g220425220435_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220425220435_))))
               (_g220423220475_
                (lambda (_g220425220441_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220425220441_))
                      (let ((_e220430220443_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220425220441_))))
                        (let ((_hd220429220446_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220430220443_)))
                              (_tl220428220448_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220430220443_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220428220448_))
                              (let ((_e220433220451_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220428220448_))))
                                (let ((_hd220432220454_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220433220451_)))
                                      (_tl220431220456_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220433220451_))))
                                  ((lambda (_L220459_ _L220460_)
                                     (let* ((_body220473_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args220422_))
                                                  _L220459_))
                                            (__tmp225790
                                             (let ((__tmp225791
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L220460_
                                                            _body220473_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp225791))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp225790
                                        _stx220421_)))
                                   _tl220431220456_
                                   _hd220432220454_)))
                              (let ()
                                (declare (not safe))
                                (_g220424220438_ _g220425220441_)))))
                      (let ()
                        (declare (not safe))
                        (_g220424220438_ _g220425220441_))))))
          (declare (not safe))
          (_g220423220475_ _stx220421_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx220334_ . _args220335_)
        (letrec ((_clause-e220337_
                  (lambda (_clause220378_)
                    (let* ((_g220380220391_
                            (lambda (_g220381220388_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g220381220388_))))
                           (_g220379220418_
                            (lambda (_g220381220394_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g220381220394_))
                                  (let ((_e220386220396_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g220381220394_))))
                                    (let ((_hd220385220399_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e220386220396_)))
                                          (_tl220384220401_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e220386220396_))))
                                      ((lambda (_L220404_ _L220405_)
                                         (let ((_body220416_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args220335_))
                                                     _L220404_)))
                                           (declare (not safe))
                                           (cons _L220405_ _body220416_)))
                                       _tl220384220401_
                                       _hd220385220399_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g220380220391_ _g220381220394_))))))
                      (declare (not safe))
                      (_g220379220418_ _clause220378_)))))
          (let* ((_g220339220349_
                  (lambda (_g220340220346_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g220340220346_))))
                 (_g220338220375_
                  (lambda (_g220340220352_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g220340220352_))
                        (let ((_e220344220354_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g220340220352_))))
                          (let ((_hd220343220357_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220344220354_)))
                                (_tl220342220359_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220344220354_))))
                            ((lambda (_L220362_)
                               (let* ((_clauses220373_
                                       (map _clause-e220337_ _L220362_))
                                      (__tmp225792
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses220373_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp225792
                                  _stx220334_)))
                             _tl220342220359_)))
                        (let ()
                          (declare (not safe))
                          (_g220339220349_ _g220340220352_))))))
            (declare (not safe))
            (_g220338220375_ _stx220334_)))))
    (define gxc#xform-let-values%
      (lambda (_stx220128_ . _args220129_)
        (let* ((_g220131220164_
                (lambda (_g220132220161_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220132220161_))))
               (_g220130220331_
                (lambda (_g220132220167_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220132220167_))
                      (let ((_e220139220169_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220132220167_))))
                        (let ((_hd220138220172_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220139220169_)))
                              (_tl220137220174_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220139220169_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220137220174_))
                              (let ((_e220142220177_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220137220174_))))
                                (let ((_hd220141220180_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220142220177_)))
                                      (_tl220140220182_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220142220177_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd220141220180_))
                                      (let ((_g225793_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd220141220180_
                                                '0))))
                                        (begin
                                          (let ((_g225794_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g225793_)
                                                       (##vector-length
                                                        _g225793_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g225794_ 2)))
                                                (error "Context expects 2 values"
                                                       _g225794_)))
                                          (let ((_target220143220185_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g225793_ 0)))
                                                (_tl220145220187_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g225793_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220145220187_))
                                                (letrec ((_loop220146220190_
                                                          (lambda (_hd220144220193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr220150220195_
                           _hd220151220197_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd220144220193_))
                        (let ((_e220147220200_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd220144220193_))))
                          (let ((_lp-hd220148220203_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220147220200_)))
                                (_lp-tl220149220205_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220147220200_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd220148220203_))
                                (let ((_e220156220208_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd220148220203_))))
                                  (let ((_hd220155220211_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e220156220208_)))
                                        (_tl220154220213_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e220156220208_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl220154220213_))
                                        (let ((_e220159220216_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl220154220213_))))
                                          (let ((_hd220158220219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e220159220216_)))
                                                (_tl220157220221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e220159220216_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220157220221_))
                                                (let ((__tmp225807
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220158220219_
                                                               _expr220150220195_)))
                                                      (__tmp225806
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220155220211_
                                                               _hd220151220197_))))
                                                  (declare (not safe))
                                                  (_loop220146220190_
                                                   _lp-tl220149220205_
                                                   __tmp225807
                                                   __tmp225806))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220131220164_
                                                   _g220132220167_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g220131220164_ _g220132220167_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g220131220164_ _g220132220167_)))))
                        (let ((_expr220152220224_ (reverse _expr220150220195_))
                              (_hd220153220226_ (reverse _hd220151220197_)))
                          ((lambda (_L220229_ _L220230_ _L220231_ _L220232_)
                             (let* ((_g220251220267_
                                     (lambda (_g220252220264_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g220252220264_))))
                                    (_g220250220321_
                                     (lambda (_g220252220270_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g220252220270_))
                                           (let ((_g225795_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g220252220270_
                                                     '0))))
                                             (begin
                                               (let ((_g225796_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g225795_)
                                                            (##vector-length
                                                             _g225795_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g225796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g225796_)))
                                               (let ((_target220254220272_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g225795_
                                                         0)))
                                                     (_tl220256220274_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g225795_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl220256220274_))
                                                     (letrec ((_loop220257220277_
                                                               (lambda (_hd220255220280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr220261220282_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd220255220280_))
                             (let ((_e220258220285_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd220255220280_))))
                               (let ((_lp-hd220259220288_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e220258220285_)))
                                     (_lp-tl220260220290_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e220258220285_))))
                                 (let ((__tmp225803
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd220259220288_
                                                _expr220261220282_))))
                                   (declare (not safe))
                                   (_loop220257220277_
                                    _lp-tl220260220290_
                                    __tmp225803))))
                             (let ((_expr220262220293_
                                    (reverse _expr220261220282_)))
                               ((lambda (_L220296_)
                                  (let ()
                                    (let* ((_body220309_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args220129_))
                                                 _L220229_))
                                           (__tmp225797
                                            (let ((__tmp225798
                                                   (let ((__tmp225799
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L220296_
                                                               _L220231_))
                                                            (let ((__tmp225800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g220310220314_
                                    _g220311220316_
                                    _g220312220318_)
                             (let ((__tmp225801
                                    (let ((__tmp225802
                                           (let ()
                                             (declare (not safe))
                                             (cons _g220310220314_ '()))))
                                      (declare (not safe))
                                      (cons _g220311220316_ __tmp225802))))
                               (declare (not safe))
                               (cons __tmp225801 _g220312220318_)))))
                      (declare (not safe))
                      (foldr2 __tmp225800 '() _L220296_ _L220231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp225799
                                                           _body220309_))))
                                              (declare (not safe))
                                              (cons _L220232_ __tmp225798))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp225797
                                       _stx220128_))))
                                _expr220262220293_))))))
               (let ()
                 (declare (not safe))
                 (_loop220257220277_ _target220254220272_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g220251220267_
                                                        _g220252220270_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g220251220267_
                                              _g220252220270_)))))
                                    (__tmp225804
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220129_))
                                          (let ((__tmp225805
                                                 (lambda (_g220323220326_
                                                          _g220324220328_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g220323220326_
                                                           _g220324220328_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp225805
                                                    '()
                                                    _L220230_)))))
                               (declare (not safe))
                               (_g220250220321_ __tmp225804)))
                           _tl220140220182_
                           _expr220152220224_
                           _hd220153220226_
                           _hd220138220172_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop220146220190_
                                                     _target220143220185_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220131220164_
                                                   _g220132220167_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220131220164_ _g220132220167_)))))
                              (let ()
                                (declare (not safe))
                                (_g220131220164_ _g220132220167_)))))
                      (let ()
                        (declare (not safe))
                        (_g220131220164_ _g220132220167_))))))
          (declare (not safe))
          (_g220130220331_ _stx220128_))))
    (define gxc#xform-operands
      (lambda (_stx220084_ . _args220085_)
        (let* ((_g220087220098_
                (lambda (_g220088220095_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220088220095_))))
               (_g220086220125_
                (lambda (_g220088220101_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220088220101_))
                      (let ((_e220093220103_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220088220101_))))
                        (let ((_hd220092220106_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220093220103_)))
                              (_tl220091220108_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220093220103_))))
                          ((lambda (_L220111_ _L220112_)
                             (let* ((_rands220123_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220085_))
                                          _L220111_))
                                    (__tmp225808
                                     (let ()
                                       (declare (not safe))
                                       (cons _L220112_ _rands220123_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp225808
                                _stx220084_)))
                           _tl220091220108_
                           _hd220092220106_)))
                      (let ()
                        (declare (not safe))
                        (_g220087220098_ _g220088220101_))))))
          (declare (not safe))
          (_g220086220125_ _stx220084_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx220005_ . _args220006_)
        (let* ((_g220008220025_
                (lambda (_g220009220022_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220009220022_))))
               (_g220007220081_
                (lambda (_g220009220028_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220009220028_))
                      (let ((_e220014220030_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220009220028_))))
                        (let ((_hd220013220033_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220014220030_)))
                              (_tl220012220035_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220014220030_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220012220035_))
                              (let ((_e220017220038_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220012220035_))))
                                (let ((_hd220016220041_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220017220038_)))
                                      (_tl220015220043_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220017220038_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220015220043_))
                                      (let ((_e220020220046_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220015220043_))))
                                        (let ((_hd220019220049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220020220046_)))
                                              (_tl220018220051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220020220046_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220018220051_))
                                              ((lambda (_L220054_ _L220055_)
                                                 (let* ((_expr220079_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220006_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220054_))
                     (let ((_arg1220070_ (car _args220006_))
                           (_rest220072_ (cdr _args220006_)))
                       (if (let () (declare (not safe)) (null? _rest220072_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220054_ _arg1220070_))
                           (let ((_arg2220075_ (car _rest220072_))
                                 (_rest220077_ (cdr _rest220072_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220077_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220054_
                                    _arg1220070_
                                    _arg2220075_))
                                 (apply gxc#compile-e
                                        _L220054_
                                        _arg1220070_
                                        _arg2220075_
                                        _rest220077_)))))))
                (__tmp225809
                 (let ((__tmp225810
                        (let ((__tmp225811
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220079_ '()))))
                          (declare (not safe))
                          (cons _L220055_ __tmp225811))))
                   (declare (not safe))
                   (cons '%#set! __tmp225810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225809
                                                    _stx220005_)))
                                               _hd220019220049_
                                               _hd220016220041_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220008220025_
                                                 _g220009220028_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220008220025_ _g220009220028_)))))
                              (let ()
                                (declare (not safe))
                                (_g220008220025_ _g220009220028_)))))
                      (let ()
                        (declare (not safe))
                        (_g220008220025_ _g220009220028_))))))
          (declare (not safe))
          (_g220007220081_ _stx220005_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx219936_)
        (let* ((_g219938219955_
                (lambda (_g219939219952_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219939219952_))))
               (_g219937220002_
                (lambda (_g219939219958_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219939219958_))
                      (let ((_e219944219960_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219939219958_))))
                        (let ((_hd219943219963_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219944219960_)))
                              (_tl219942219965_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219944219960_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219942219965_))
                              (let ((_e219947219968_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219942219965_))))
                                (let ((_hd219946219971_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219947219968_)))
                                      (_tl219945219973_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219947219968_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219945219973_))
                                      (let ((_e219950219976_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219945219973_))))
                                        (let ((_hd219949219979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219950219976_)))
                                              (_tl219948219981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219950219976_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219948219981_))
                                              ((lambda (_L219984_ _L219985_)
                                                 (let ((_sym220000_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L219985_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym220000_))
                                                   (let ((__tmp225812
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp225812
                                                      _sym220000_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L219984_))))
                                               _hd219949219979_
                                               _hd219946219971_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219938219955_
                                                 _g219939219958_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219938219955_ _g219939219958_)))))
                              (let ()
                                (declare (not safe))
                                (_g219938219955_ _g219939219958_)))))
                      (let ()
                        (declare (not safe))
                        (_g219938219955_ _g219939219958_))))))
          (declare (not safe))
          (_g219937220002_ _stx219936_))))
    (define gxc#collect-methods-call%
      (lambda (_stx219490_)
        (let* ((___stx225502225503_ _stx219490_)
               (_g219494219596_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx225502225503_)))))
          (let ((___kont225504225505_
                 (lambda (_L219886_ _L219887_ _L219888_ _L219889_ _L219890_)
                   (let ((__tmp225813
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L219887_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp225813))))
                (___kont225506225507_
                 (lambda (_L219712_ _L219713_ _L219714_ _L219715_)
                   (let ((__tmp225814
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L219712_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp225814))))
                (___kont225508225509_ (lambda () '#!void)))
            (let ((___match225637225638_
                   (lambda (_e219503219758_
                            _hd219502219761_
                            _tl219501219763_
                            _e219506219766_
                            _hd219505219769_
                            _tl219504219771_
                            _e219509219774_
                            _hd219508219777_
                            _tl219507219779_
                            _e219512219782_
                            _hd219511219785_
                            _tl219510219787_
                            _e219515219790_
                            _hd219514219793_
                            _tl219513219795_
                            _e219518219798_
                            _hd219517219801_
                            _tl219516219803_
                            _e219521219806_
                            _hd219520219809_
                            _tl219519219811_
                            _e219524219814_
                            _hd219523219817_
                            _tl219522219819_
                            _e219527219822_
                            _hd219526219825_
                            _tl219525219827_
                            _e219530219830_
                            _hd219529219833_
                            _tl219528219835_
                            _e219533219838_
                            _hd219532219841_
                            _tl219531219843_
                            _e219536219846_
                            _hd219535219849_
                            _tl219534219851_
                            _e219539219854_
                            _hd219538219857_
                            _tl219537219859_
                            _e219542219862_
                            _hd219541219865_
                            _tl219540219867_
                            _e219545219870_
                            _hd219544219873_
                            _tl219543219875_
                            _e219548219878_
                            _hd219547219881_
                            _tl219546219883_)
                     (let ((_L219886_ _hd219547219881_)
                           (_L219887_ _hd219538219857_)
                           (_L219888_ _hd219529219833_)
                           (_L219889_ _hd219520219809_)
                           (_L219890_ _hd219511219785_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L219890_
                              'bind-method!))
                           (___kont225504225505_
                            _L219886_
                            _L219887_
                            _L219888_
                            _L219889_
                            _L219890_)
                           (___kont225508225509_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx225502225503_))
                  (let ((_e219503219758_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx225502225503_))))
                    (let ((_tl219501219763_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219503219758_)))
                          (_hd219502219761_
                           (let ()
                             (declare (not safe))
                             (##car _e219503219758_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219501219763_))
                          (let ((_e219506219766_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219501219763_))))
                            (let ((_tl219504219771_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219506219766_)))
                                  (_hd219505219769_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219506219766_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219505219769_))
                                  (let ((_e219509219774_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219505219769_))))
                                    (let ((_tl219507219779_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219509219774_)))
                                          (_hd219508219777_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219509219774_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd219508219777_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd219508219777_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219507219779_))
                                                  (let ((_e219512219782_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219507219779_))))
                                                    (let ((_tl219510219787_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219512219782_)))
                                                          (_hd219511219785_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219512219782_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219510219787_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219504219771_))
                      (let ((_e219515219790_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219504219771_))))
                        (let ((_tl219513219795_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219515219790_)))
                              (_hd219514219793_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219515219790_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219514219793_))
                              (let ((_e219518219798_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219514219793_))))
                                (let ((_tl219516219803_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219518219798_)))
                                      (_hd219517219801_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219518219798_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd219517219801_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd219517219801_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl219516219803_))
                                              (let ((_e219521219806_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl219516219803_))))
                                                (let ((_tl219519219811_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219521219806_)))
                                                      (_hd219520219809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219521219806_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219519219811_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl219513219795_))
                                                          (let ((_e219524219814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl219513219795_))))
                    (let ((_tl219522219819_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219524219814_)))
                          (_hd219523219817_
                           (let ()
                             (declare (not safe))
                             (##car _e219524219814_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd219523219817_))
                          (let ((_e219527219822_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd219523219817_))))
                            (let ((_tl219525219827_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219527219822_)))
                                  (_hd219526219825_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219527219822_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd219526219825_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd219526219825_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl219525219827_))
                                          (let ((_e219530219830_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl219525219827_))))
                                            (let ((_tl219528219835_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219530219830_)))
                                                  (_hd219529219833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219530219830_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl219528219835_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl219522219819_))
                                                      (let ((_e219533219838_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl219522219819_))))
                (let ((_tl219531219843_
                       (let () (declare (not safe)) (##cdr _e219533219838_)))
                      (_hd219532219841_
                       (let () (declare (not safe)) (##car _e219533219838_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219532219841_))
                      (let ((_e219536219846_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219532219841_))))
                        (let ((_tl219534219851_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219536219846_)))
                              (_hd219535219849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219536219846_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd219535219849_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd219535219849_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219534219851_))
                                      (let ((_e219539219854_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219534219851_))))
                                        (let ((_tl219537219859_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219539219854_)))
                                              (_hd219538219857_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219539219854_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219537219859_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219531219843_))
                                                  (let ((_e219542219862_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219531219843_))))
                                                    (let ((_tl219540219867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219542219862_)))
                                                          (_hd219541219865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219542219862_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd219541219865_))
                                                          (let ((_e219545219870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd219541219865_))))
                    (let ((_tl219543219875_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219545219870_)))
                          (_hd219544219873_
                           (let ()
                             (declare (not safe))
                             (##car _e219545219870_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd219544219873_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd219544219873_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219543219875_))
                                  (let ((_e219548219878_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219543219875_))))
                                    (let ((_tl219546219883_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219548219878_)))
                                          (_hd219547219881_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219548219878_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219546219883_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219540219867_))
                                              (___match225637225638_
                                               _e219503219758_
                                               _hd219502219761_
                                               _tl219501219763_
                                               _e219506219766_
                                               _hd219505219769_
                                               _tl219504219771_
                                               _e219509219774_
                                               _hd219508219777_
                                               _tl219507219779_
                                               _e219512219782_
                                               _hd219511219785_
                                               _tl219510219787_
                                               _e219515219790_
                                               _hd219514219793_
                                               _tl219513219795_
                                               _e219518219798_
                                               _hd219517219801_
                                               _tl219516219803_
                                               _e219521219806_
                                               _hd219520219809_
                                               _tl219519219811_
                                               _e219524219814_
                                               _hd219523219817_
                                               _tl219522219819_
                                               _e219527219822_
                                               _hd219526219825_
                                               _tl219525219827_
                                               _e219530219830_
                                               _hd219529219833_
                                               _tl219528219835_
                                               _e219533219838_
                                               _hd219532219841_
                                               _tl219531219843_
                                               _e219536219846_
                                               _hd219535219849_
                                               _tl219534219851_
                                               _e219539219854_
                                               _hd219538219857_
                                               _tl219537219859_
                                               _e219542219862_
                                               _hd219541219865_
                                               _tl219540219867_
                                               _e219545219870_
                                               _hd219544219873_
                                               _tl219543219875_
                                               _e219548219878_
                                               _hd219547219881_
                                               _tl219546219883_)
                                              (___kont225508225509_))
                                          (___kont225508225509_))))
                                  (___kont225508225509_))
                              (___kont225508225509_))
                          (___kont225508225509_))))
                  (___kont225508225509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219531219843_))
                                                      (if (let ((__tmp225815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp225815 'bind-method!))
                  (let ((_L219712_ _hd219538219857_)
                        (_L219713_ _hd219529219833_)
                        (_L219714_ _hd219520219809_)
                        (_L219715_ _hd219511219785_))
                    (___kont225506225507_
                     _L219712_
                     _L219713_
                     _L219714_
                     _L219715_))
                  (___kont225508225509_))
              (___kont225508225509_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225508225509_))))
                                      (___kont225508225509_))
                                  (___kont225508225509_))
                              (___kont225508225509_))))
                      (___kont225508225509_))))
              (___kont225508225509_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225508225509_))))
                                          (___kont225508225509_))
                                      (___kont225508225509_))
                                  (___kont225508225509_))))
                          (___kont225508225509_))))
                  (___kont225508225509_))
              (___kont225508225509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225508225509_))
                                          (___kont225508225509_))
                                      (___kont225508225509_))))
                              (___kont225508225509_))))
                      (___kont225508225509_))
                  (___kont225508225509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225508225509_))
                                              (___kont225508225509_))
                                          (___kont225508225509_))))
                                  (___kont225508225509_))))
                          (___kont225508225509_))))
                  (___kont225508225509_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx219437_ _id219438_ _new-id219439_)
        (let* ((_g219441219454_
                (lambda (_g219442219451_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219442219451_))))
               (_g219440219487_
                (lambda (_g219442219457_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219442219457_))
                      (let ((_e219446219459_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219442219457_))))
                        (let ((_hd219445219462_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219446219459_)))
                              (_tl219444219464_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219446219459_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219444219464_))
                              (let ((_e219449219467_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219444219464_))))
                                (let ((_hd219448219470_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219449219467_)))
                                      (_tl219447219472_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219449219467_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219447219472_))
                                      ((lambda (_L219475_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L219475_
                                                _id219438_))
                                             (let ((__tmp225816
                                                    (let ((__tmp225817
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id219439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp225817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp225816
                                                _stx219437_))
                                             _stx219437_))
                                       _hd219448219470_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219441219454_ _g219442219457_)))))
                              (let ()
                                (declare (not safe))
                                (_g219441219454_ _g219442219457_)))))
                      (let ()
                        (declare (not safe))
                        (_g219441219454_ _g219442219457_))))))
          (declare (not safe))
          (_g219440219487_ _stx219437_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx219378_ _subst219379_)
        (let* ((_g219381219394_
                (lambda (_g219382219391_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219382219391_))))
               (_g219380219434_
                (lambda (_g219382219397_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219382219397_))
                      (let ((_e219386219399_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219382219397_))))
                        (let ((_hd219385219402_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219386219399_)))
                              (_tl219384219404_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219386219399_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219384219404_))
                              (let ((_e219389219407_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219384219404_))))
                                (let ((_hd219388219410_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219389219407_)))
                                      (_tl219387219412_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219389219407_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219387219412_))
                                      ((lambda (_L219415_)
                                         (let ((_$e219429_
                                                (let ((__tmp225818
                                                       (lambda (_sub219427_)
                                                         (let ((__tmp225819
                                                                (car _sub219427_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L219415_
                                                            __tmp225819)))))
                                                  (declare (not safe))
                                                  (find __tmp225818
                                                        _subst219379_))))
                                           (if _$e219429_
                                               ((lambda (_sub219432_)
                                                  (let ((__tmp225820
                                                         (let ((__tmp225821
                                                                (let ((__tmp225822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub219432_)))
                          (declare (not safe))
                          (cons __tmp225822 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp225821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp225820
                                                     _stx219378_)))
                                                _$e219429_)
                                               _stx219378_)))
                                       _hd219388219410_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219381219394_ _g219382219397_)))))
                              (let ()
                                (declare (not safe))
                                (_g219381219394_ _g219382219397_)))))
                      (let ()
                        (declare (not safe))
                        (_g219381219394_ _g219382219397_))))))
          (declare (not safe))
          (_g219380219434_ _stx219378_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx219306_ _id219307_ _new-id219308_)
        (let* ((_g219310219327_
                (lambda (_g219311219324_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219311219324_))))
               (_g219309219375_
                (lambda (_g219311219330_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219311219330_))
                      (let ((_e219316219332_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219311219330_))))
                        (let ((_hd219315219335_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219316219332_)))
                              (_tl219314219337_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219316219332_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219314219337_))
                              (let ((_e219319219340_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219314219337_))))
                                (let ((_hd219318219343_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219319219340_)))
                                      (_tl219317219345_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219319219340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219317219345_))
                                      (let ((_e219322219348_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219317219345_))))
                                        (let ((_hd219321219351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219322219348_)))
                                              (_tl219320219353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219322219348_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219320219353_))
                                              ((lambda (_L219356_ _L219357_)
                                                 (let ((_new-expr219372_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L219356_
                                                           _id219307_
                                                           _new-id219308_)))
                                                       (_new-xid219373_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L219357_
                                                               _id219307_))
                                                            _new-id219308_
                                                            _L219357_)))
                                                   (let ((__tmp225823
                                                          (let ((__tmp225824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp225825
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219372_ '()))))
                           (declare (not safe))
                           (cons _new-xid219373_ __tmp225825))))
                    (declare (not safe))
                    (cons '%#set! __tmp225824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp225823
                                                      _stx219306_))))
                                               _hd219321219351_
                                               _hd219318219343_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219310219327_
                                                 _g219311219330_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219310219327_ _g219311219330_)))))
                              (let ()
                                (declare (not safe))
                                (_g219310219327_ _g219311219330_)))))
                      (let ()
                        (declare (not safe))
                        (_g219310219327_ _g219311219330_))))))
          (declare (not safe))
          (_g219309219375_ _stx219306_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx219230_ _subst219231_)
        (let* ((_g219233219250_
                (lambda (_g219234219247_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219234219247_))))
               (_g219232219303_
                (lambda (_g219234219253_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219234219253_))
                      (let ((_e219239219255_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219234219253_))))
                        (let ((_hd219238219258_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219239219255_)))
                              (_tl219237219260_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219239219255_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219237219260_))
                              (let ((_e219242219263_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219237219260_))))
                                (let ((_hd219241219266_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219242219263_)))
                                      (_tl219240219268_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219242219263_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219240219268_))
                                      (let ((_e219245219271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219240219268_))))
                                        (let ((_hd219244219274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219245219271_)))
                                              (_tl219243219276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219245219271_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219243219276_))
                                              ((lambda (_L219279_ _L219280_)
                                                 (let ((_new-expr219300_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L219279_
                                                           _subst219231_)))
                                                       (_new-xid219301_
                                                        (let ((_$e219297_
                                                               (let ((__tmp225826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub219295_)
                                (let ((__tmp225827 (car _sub219295_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L219280_
                                   __tmp225827)))))
                         (declare (not safe))
                         (find __tmp225826 _subst219231_))))
                  (if _$e219297_ (cdr _$e219297_) _L219280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp225828
                                                          (let ((__tmp225829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp225830
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219300_ '()))))
                           (declare (not safe))
                           (cons _new-xid219301_ __tmp225830))))
                    (declare (not safe))
                    (cons '%#set! __tmp225829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp225828
                                                      _stx219230_))))
                                               _hd219244219274_
                                               _hd219241219266_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219233219250_
                                                 _g219234219253_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219233219250_ _g219234219253_)))))
                              (let ()
                                (declare (not safe))
                                (_g219233219250_ _g219234219253_)))))
                      (let ()
                        (declare (not safe))
                        (_g219233219250_ _g219234219253_))))))
          (declare (not safe))
          (_g219232219303_ _stx219230_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx219176_ _ht219177_)
        (let* ((_g219179219192_
                (lambda (_g219180219189_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219180219189_))))
               (_g219178219227_
                (lambda (_g219180219195_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219180219195_))
                      (let ((_e219184219197_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219180219195_))))
                        (let ((_hd219183219200_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219184219197_)))
                              (_tl219182219202_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219184219197_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219182219202_))
                              (let ((_e219187219205_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219182219202_))))
                                (let ((_hd219186219208_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219187219205_)))
                                      (_tl219185219210_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219187219205_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219185219210_))
                                      ((lambda (_L219213_)
                                         (let ((_eid219225_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L219213_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht219177_
                                            _eid219225_
                                            1+
                                            '0)))
                                       _hd219186219208_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219179219192_ _g219180219195_)))))
                              (let ()
                                (declare (not safe))
                                (_g219179219192_ _g219180219195_)))))
                      (let ()
                        (declare (not safe))
                        (_g219179219192_ _g219180219195_))))))
          (declare (not safe))
          (_g219178219227_ _stx219176_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx219106_ _ht219107_)
        (let* ((_g219109219126_
                (lambda (_g219110219123_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219110219123_))))
               (_g219108219173_
                (lambda (_g219110219129_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219110219129_))
                      (let ((_e219115219131_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219110219129_))))
                        (let ((_hd219114219134_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219115219131_)))
                              (_tl219113219136_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219115219131_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219113219136_))
                              (let ((_e219118219139_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219113219136_))))
                                (let ((_hd219117219142_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219118219139_)))
                                      (_tl219116219144_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219118219139_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219116219144_))
                                      (let ((_e219121219147_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219116219144_))))
                                        (let ((_hd219120219150_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219121219147_)))
                                              (_tl219119219152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219121219147_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219119219152_))
                                              ((lambda (_L219155_ _L219156_)
                                                 (let ((_eid219171_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L219156_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht219107_
                                                      _eid219171_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L219155_
                                                      _ht219107_))))
                                               _hd219120219150_
                                               _hd219117219142_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219109219126_
                                                 _g219110219129_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219109219126_ _g219110219129_)))))
                              (let ()
                                (declare (not safe))
                                (_g219109219126_ _g219110219129_)))))
                      (let ()
                        (declare (not safe))
                        (_g219109219126_ _g219110219129_))))))
          (declare (not safe))
          (_g219108219173_ _stx219106_))))
    (define gxc#find-body%
      (lambda (_stx219019_ _arg219020_)
        (let* ((_g219022219041_
                (lambda (_g219023219038_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219023219038_))))
               (_g219021219103_
                (lambda (_g219023219044_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219023219044_))
                      (let ((_e219027219046_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219023219044_))))
                        (let ((_hd219026219049_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219027219046_)))
                              (_tl219025219051_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219027219046_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl219025219051_))
                              (let ((_g225831_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl219025219051_
                                        '0))))
                                (begin
                                  (let ((_g225832_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g225831_)
                                               (##vector-length _g225831_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g225832_ 2)))
                                        (error "Context expects 2 values"
                                               _g225832_)))
                                  (let ((_target219028219054_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225831_ 0)))
                                        (_tl219030219056_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225831_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219030219056_))
                                        (letrec ((_loop219031219059_
                                                  (lambda (_hd219029219062_
                                                           _expr219035219064_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd219029219062_))
                                                        (let ((_e219032219067_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd219029219062_))))
                  (let ((_lp-hd219033219070_
                         (let () (declare (not safe)) (##car _e219032219067_)))
                        (_lp-tl219034219072_
                         (let ()
                           (declare (not safe))
                           (##cdr _e219032219067_))))
                    (let ((__tmp225836
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd219033219070_ _expr219035219064_))))
                      (declare (not safe))
                      (_loop219031219059_ _lp-tl219034219072_ __tmp225836))))
                (let ((_expr219036219075_ (reverse _expr219035219064_)))
                  ((lambda (_L219078_)
                     (let ((__tmp225835
                            (lambda (_g219091219093_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g219091219093_
                                 _arg219020_))))
                           (__tmp225833
                            (let ((__tmp225834
                                   (lambda (_g219095219098_ _g219096219100_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g219095219098_
                                             _g219096219100_)))))
                              (declare (not safe))
                              (foldr1 __tmp225834 '() _L219078_))))
                       (declare (not safe))
                       (ormap1 __tmp225835 __tmp225833)))
                   _expr219036219075_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop219031219059_
                                             _target219028219054_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g219022219041_
                                           _g219023219044_))))))
                              (let ()
                                (declare (not safe))
                                (_g219022219041_ _g219023219044_)))))
                      (let ()
                        (declare (not safe))
                        (_g219022219041_ _g219023219044_))))))
          (declare (not safe))
          (_g219021219103_ _stx219019_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx218951_ _arg218952_)
        (let* ((_g218954218971_
                (lambda (_g218955218968_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218955218968_))))
               (_g218953219016_
                (lambda (_g218955218974_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218955218974_))
                      (let ((_e218960218976_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218955218974_))))
                        (let ((_hd218959218979_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218960218976_)))
                              (_tl218958218981_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218960218976_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218958218981_))
                              (let ((_e218963218984_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218958218981_))))
                                (let ((_hd218962218987_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218963218984_)))
                                      (_tl218961218989_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218963218984_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218961218989_))
                                      (let ((_e218966218992_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218961218989_))))
                                        (let ((_hd218965218995_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218966218992_)))
                                              (_tl218964218997_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218966218992_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218964218997_))
                                              ((lambda (_L219000_ _L219001_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L219000_
                                                    _arg218952_)))
                                               _hd218965218995_
                                               _hd218962218987_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218954218971_
                                                 _g218955218974_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218954218971_ _g218955218974_)))))
                              (let ()
                                (declare (not safe))
                                (_g218954218971_ _g218955218974_)))))
                      (let ()
                        (declare (not safe))
                        (_g218954218971_ _g218955218974_))))))
          (declare (not safe))
          (_g218953219016_ _stx218951_))))
    (define gxc#find-lambda%
      (lambda (_stx218883_ _arg218884_)
        (let* ((_g218886218903_
                (lambda (_g218887218900_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218887218900_))))
               (_g218885218948_
                (lambda (_g218887218906_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218887218906_))
                      (let ((_e218892218908_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218887218906_))))
                        (let ((_hd218891218911_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218892218908_)))
                              (_tl218890218913_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218892218908_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218890218913_))
                              (let ((_e218895218916_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218890218913_))))
                                (let ((_hd218894218919_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218895218916_)))
                                      (_tl218893218921_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218895218916_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218893218921_))
                                      (let ((_e218898218924_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218893218921_))))
                                        (let ((_hd218897218927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218898218924_)))
                                              (_tl218896218929_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218898218924_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218896218929_))
                                              ((lambda (_L218932_ _L218933_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L218932_
                                                    _arg218884_)))
                                               _hd218897218927_
                                               _hd218894218919_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218886218903_
                                                 _g218887218906_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218886218903_ _g218887218906_)))))
                              (let ()
                                (declare (not safe))
                                (_g218886218903_ _g218887218906_)))))
                      (let ()
                        (declare (not safe))
                        (_g218886218903_ _g218887218906_))))))
          (declare (not safe))
          (_g218885218948_ _stx218883_))))
    (define gxc#find-case-lambda%
      (lambda (_stx218765_ _arg218766_)
        (let* ((_g218768218796_
                (lambda (_g218769218793_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218769218793_))))
               (_g218767218880_
                (lambda (_g218769218799_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218769218799_))
                      (let ((_e218774218801_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218769218799_))))
                        (let ((_hd218773218804_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218774218801_)))
                              (_tl218772218806_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218774218801_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl218772218806_))
                              (let ((_g225837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl218772218806_
                                        '0))))
                                (begin
                                  (let ((_g225838_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g225837_)
                                               (##vector-length _g225837_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g225838_ 2)))
                                        (error "Context expects 2 values"
                                               _g225838_)))
                                  (let ((_target218775218809_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225837_ 0)))
                                        (_tl218777218811_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225837_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl218777218811_))
                                        (letrec ((_loop218778218814_
                                                  (lambda (_hd218776218817_
                                                           _body218782218819_
                                                           _hd218783218821_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd218776218817_))
                                                        (let ((_e218779218824_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd218776218817_))))
                  (let ((_lp-hd218780218827_
                         (let () (declare (not safe)) (##car _e218779218824_)))
                        (_lp-tl218781218829_
                         (let ()
                           (declare (not safe))
                           (##cdr _e218779218824_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd218780218827_))
                        (let ((_e218788218832_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd218780218827_))))
                          (let ((_hd218787218835_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218788218832_)))
                                (_tl218786218837_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218788218832_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl218786218837_))
                                (let ((_e218791218840_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl218786218837_))))
                                  (let ((_hd218790218843_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e218791218840_)))
                                        (_tl218789218845_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e218791218840_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl218789218845_))
                                        (let ((__tmp225843
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd218790218843_
                                                       _body218782218819_)))
                                              (__tmp225842
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd218787218835_
                                                       _hd218783218821_))))
                                          (declare (not safe))
                                          (_loop218778218814_
                                           _lp-tl218781218829_
                                           __tmp225843
                                           __tmp225842))
                                        (let ()
                                          (declare (not safe))
                                          (_g218768218796_ _g218769218799_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g218768218796_ _g218769218799_)))))
                        (let ()
                          (declare (not safe))
                          (_g218768218796_ _g218769218799_)))))
                (let ((_body218784218848_ (reverse _body218782218819_))
                      (_hd218785218850_ (reverse _hd218783218821_)))
                  ((lambda (_L218853_ _L218854_)
                     (let ((__tmp225841
                            (lambda (_g218868218870_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g218868218870_
                                 _arg218766_))))
                           (__tmp225839
                            (let ((__tmp225840
                                   (lambda (_g218872218875_ _g218873218877_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g218872218875_
                                             _g218873218877_)))))
                              (declare (not safe))
                              (foldr1 __tmp225840 '() _L218853_))))
                       (declare (not safe))
                       (ormap1 __tmp225841 __tmp225839)))
                   _body218784218848_
                   _hd218785218850_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop218778218814_
                                             _target218775218809_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g218768218796_
                                           _g218769218799_))))))
                              (let ()
                                (declare (not safe))
                                (_g218768218796_ _g218769218799_)))))
                      (let ()
                        (declare (not safe))
                        (_g218768218796_ _g218769218799_))))))
          (declare (not safe))
          (_g218767218880_ _stx218765_))))
    (define gxc#find-let-values%
      (lambda (_stx218615_ _arg218616_)
        (let* ((_g218618218653_
                (lambda (_g218619218650_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218619218650_))))
               (_g218617218762_
                (lambda (_g218619218656_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218619218656_))
                      (let ((_e218625218658_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218619218656_))))
                        (let ((_hd218624218661_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218625218658_)))
                              (_tl218623218663_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218625218658_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218623218663_))
                              (let ((_e218628218666_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218623218663_))))
                                (let ((_hd218627218669_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218628218666_)))
                                      (_tl218626218671_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218628218666_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd218627218669_))
                                      (let ((_g225844_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd218627218669_
                                                '0))))
                                        (begin
                                          (let ((_g225845_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g225844_)
                                                       (##vector-length
                                                        _g225844_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g225845_ 2)))
                                                (error "Context expects 2 values"
                                                       _g225845_)))
                                          (let ((_target218629218674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g225844_ 0)))
                                                (_tl218631218676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g225844_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl218631218676_))
                                                (letrec ((_loop218632218679_
                                                          (lambda (_hd218630218682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr218636218684_
                           _bind218637218686_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd218630218682_))
                        (let ((_e218633218689_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd218630218682_))))
                          (let ((_lp-hd218634218692_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218633218689_)))
                                (_lp-tl218635218694_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218633218689_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd218634218692_))
                                (let ((_e218642218697_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd218634218692_))))
                                  (let ((_hd218641218700_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e218642218697_)))
                                        (_tl218640218702_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e218642218697_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl218640218702_))
                                        (let ((_e218645218705_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl218640218702_))))
                                          (let ((_hd218644218708_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e218645218705_)))
                                                (_tl218643218710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e218645218705_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl218643218710_))
                                                (let ((__tmp225850
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd218644218708_
                                                               _expr218636218684_)))
                                                      (__tmp225849
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd218641218700_
                                                               _bind218637218686_))))
                                                  (declare (not safe))
                                                  (_loop218632218679_
                                                   _lp-tl218635218694_
                                                   __tmp225850
                                                   __tmp225849))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g218618218653_
                                                   _g218619218656_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g218618218653_ _g218619218656_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g218618218653_ _g218619218656_)))))
                        (let ((_expr218638218713_ (reverse _expr218636218684_))
                              (_bind218639218715_
                               (reverse _bind218637218686_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218626218671_))
                              (let ((_e218648218718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218626218671_))))
                                (let ((_hd218647218721_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218648218718_)))
                                      (_tl218646218723_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218648218718_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218646218723_))
                                      ((lambda (_L218726_ _L218727_ _L218728_)
                                         (let ((_$e218759_
                                                (let ((__tmp225848
                                                       (lambda (_g218747218749_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g218747218749_
                                                            _arg218616_))))
                                                      (__tmp225846
                                                       (let ((__tmp225847
                                                              (lambda (_g218751218754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g218752218756_)
                        (let ()
                          (declare (not safe))
                          (cons _g218751218754_ _g218752218756_)))))
                 (declare (not safe))
                 (foldr1 __tmp225847 '() _L218727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp225848
                                                          __tmp225846))))
                                           (if _$e218759_
                                               _$e218759_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L218726_
                                                  _arg218616_)))))
                                       _hd218647218721_
                                       _expr218638218713_
                                       _bind218639218715_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218618218653_ _g218619218656_)))))
                              (let ()
                                (declare (not safe))
                                (_g218618218653_ _g218619218656_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop218632218679_
                                                     _target218629218674_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g218618218653_
                                                   _g218619218656_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218618218653_ _g218619218656_)))))
                              (let ()
                                (declare (not safe))
                                (_g218618218653_ _g218619218656_)))))
                      (let ()
                        (declare (not safe))
                        (_g218618218653_ _g218619218656_))))))
          (declare (not safe))
          (_g218617218762_ _stx218615_))))
    (define gxc#find-setq%
      (lambda (_stx218547_ _arg218548_)
        (let* ((_g218550218567_
                (lambda (_g218551218564_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218551218564_))))
               (_g218549218612_
                (lambda (_g218551218570_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218551218570_))
                      (let ((_e218556218572_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218551218570_))))
                        (let ((_hd218555218575_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218556218572_)))
                              (_tl218554218577_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218556218572_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218554218577_))
                              (let ((_e218559218580_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218554218577_))))
                                (let ((_hd218558218583_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218559218580_)))
                                      (_tl218557218585_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218559218580_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218557218585_))
                                      (let ((_e218562218588_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218557218585_))))
                                        (let ((_hd218561218591_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218562218588_)))
                                              (_tl218560218593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218562218588_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218560218593_))
                                              ((lambda (_L218596_ _L218597_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L218596_
                                                    _arg218548_)))
                                               _hd218561218591_
                                               _hd218558218583_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218550218567_
                                                 _g218551218570_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218550218567_ _g218551218570_)))))
                              (let ()
                                (declare (not safe))
                                (_g218550218567_ _g218551218570_)))))
                      (let ()
                        (declare (not safe))
                        (_g218550218567_ _g218551218570_))))))
          (declare (not safe))
          (_g218549218612_ _stx218547_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx218491_ _ids218492_)
        (let* ((_g218494218507_
                (lambda (_g218495218504_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218495218504_))))
               (_g218493218544_
                (lambda (_g218495218510_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218495218510_))
                      (let ((_e218499218512_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218495218510_))))
                        (let ((_hd218498218515_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218499218512_)))
                              (_tl218497218517_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218499218512_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218497218517_))
                              (let ((_e218502218520_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218497218517_))))
                                (let ((_hd218501218523_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218502218520_)))
                                      (_tl218500218525_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218502218520_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218500218525_))
                                      ((lambda (_L218528_)
                                         (let ((__tmp225851
                                                (lambda (_g218539218541_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L218528_
                                                     _g218539218541_)))))
                                           (declare (not safe))
                                           (find __tmp225851 _ids218492_)))
                                       _hd218501218523_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218494218507_ _g218495218510_)))))
                              (let ()
                                (declare (not safe))
                                (_g218494218507_ _g218495218510_)))))
                      (let ()
                        (declare (not safe))
                        (_g218494218507_ _g218495218510_))))))
          (declare (not safe))
          (_g218493218544_ _stx218491_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx218415_ _ids218416_)
        (let* ((_g218418218435_
                (lambda (_g218419218432_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218419218432_))))
               (_g218417218488_
                (lambda (_g218419218438_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218419218438_))
                      (let ((_e218424218440_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218419218438_))))
                        (let ((_hd218423218443_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218424218440_)))
                              (_tl218422218445_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218424218440_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218422218445_))
                              (let ((_e218427218448_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218422218445_))))
                                (let ((_hd218426218451_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218427218448_)))
                                      (_tl218425218453_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218427218448_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218425218453_))
                                      (let ((_e218430218456_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218425218453_))))
                                        (let ((_hd218429218459_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218430218456_)))
                                              (_tl218428218461_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218430218456_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218428218461_))
                                              ((lambda (_L218464_ _L218465_)
                                                 (let ((_$e218485_
                                                        (let ((__tmp225852
                                                               (lambda (_g218480218482_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L218465_ _g218480218482_)))))
                  (declare (not safe))
                  (find __tmp225852 _ids218416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e218485_
                                                       _$e218485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L218464_
                                                          _ids218416_)))))
                                               _hd218429218459_
                                               _hd218426218451_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218418218435_
                                                 _g218419218438_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218418218435_ _g218419218438_)))))
                              (let ()
                                (declare (not safe))
                                (_g218418218435_ _g218419218438_)))))
                      (let ()
                        (declare (not safe))
                        (_g218418218435_ _g218419218438_))))))
          (declare (not safe))
          (_g218417218488_ _stx218415_))))))
