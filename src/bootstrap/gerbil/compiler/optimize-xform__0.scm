(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708418155)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl116904_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116904_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116904_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116904_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116904_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl116904_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl116900_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116900_ '%#declare gxc#xform-identity))
           _tbl116900_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl116896_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117150 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl116896_ __tmp117150))
           (let ((__tmp117151 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl116896_ __tmp117151))
           _tbl116896_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl116892_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116892_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116892_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116892_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116892_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116892_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl116892_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl116888_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117152 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl116888_ __tmp117152))
           (let ((__tmp117153 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl116888_ __tmp117153))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116888_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116888_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116888_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116888_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116888_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl116888_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl116884_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117154 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl116884_ __tmp117154))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116884_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116884_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116884_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116884_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116884_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116884_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116884_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116884_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116884_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116884_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116884_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116884_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl116884_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx116867_ . _args116869_)
        (let ((__tmp117156
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116869_)
                     (gxc#compile-e__0 _stx116867_)
                     (let ((_arg1116874_ (car _args116869_))
                           (_rest116876_ (cdr _args116869_)))
                       (if (null? _rest116876_)
                           (gxc#compile-e__1 _stx116867_ _arg1116874_)
                           (let ((_arg2116879_ (car _rest116876_))
                                 (_rest116881_ (cdr _rest116876_)))
                             (if (null? _rest116881_)
                                 (gxc#compile-e__2
                                  _stx116867_
                                  _arg1116874_
                                  _arg2116879_)
                                 (apply gxc#compile-e
                                        _stx116867_
                                        _arg1116874_
                                        _arg2116879_
                                        _rest116881_))))))))
              (__tmp117155 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp117156
           gxc#current-compile-methods
           __tmp117155))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl116864_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117157 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl116864_ __tmp117157))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116864_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116864_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116864_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116864_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116864_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl116864_))))
    (define gxc#apply-collect-methods
      (lambda (_stx116847_ . _args116849_)
        (let ((__tmp117159
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116849_)
                     (gxc#compile-e__0 _stx116847_)
                     (let ((_arg1116854_ (car _args116849_))
                           (_rest116856_ (cdr _args116849_)))
                       (if (null? _rest116856_)
                           (gxc#compile-e__1 _stx116847_ _arg1116854_)
                           (let ((_arg2116859_ (car _rest116856_))
                                 (_rest116861_ (cdr _rest116856_)))
                             (if (null? _rest116861_)
                                 (gxc#compile-e__2
                                  _stx116847_
                                  _arg1116854_
                                  _arg2116859_)
                                 (apply gxc#compile-e
                                        _stx116847_
                                        _arg1116854_
                                        _arg2116859_
                                        _rest116861_))))))))
              (__tmp117158 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp117159
           gxc#current-compile-methods
           __tmp117158))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl116844_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117160 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl116844_ __tmp117160))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116844_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116844_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116844_ '%#set! gxc#expression-subst-setq%))
           _tbl116844_))))
    (define gxc#apply-expression-subst
      (lambda (_stx116827_ . _args116829_)
        (let ((__tmp117162
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116829_)
                     (gxc#compile-e__0 _stx116827_)
                     (let ((_arg1116834_ (car _args116829_))
                           (_rest116836_ (cdr _args116829_)))
                       (if (null? _rest116836_)
                           (gxc#compile-e__1 _stx116827_ _arg1116834_)
                           (let ((_arg2116839_ (car _rest116836_))
                                 (_rest116841_ (cdr _rest116836_)))
                             (if (null? _rest116841_)
                                 (gxc#compile-e__2
                                  _stx116827_
                                  _arg1116834_
                                  _arg2116839_)
                                 (apply gxc#compile-e
                                        _stx116827_
                                        _arg1116834_
                                        _arg2116839_
                                        _rest116841_))))))))
              (__tmp117161 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp117162
           gxc#current-compile-methods
           __tmp117161))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl116824_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117163 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl116824_ __tmp117163))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#set! gxc#expression-subst*-setq%))
           _tbl116824_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx116807_ . _args116809_)
        (let ((__tmp117165
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116809_)
                     (gxc#compile-e__0 _stx116807_)
                     (let ((_arg1116814_ (car _args116809_))
                           (_rest116816_ (cdr _args116809_)))
                       (if (null? _rest116816_)
                           (gxc#compile-e__1 _stx116807_ _arg1116814_)
                           (let ((_arg2116819_ (car _rest116816_))
                                 (_rest116821_ (cdr _rest116816_)))
                             (if (null? _rest116821_)
                                 (gxc#compile-e__2
                                  _stx116807_
                                  _arg1116814_
                                  _arg2116819_)
                                 (apply gxc#compile-e
                                        _stx116807_
                                        _arg1116814_
                                        _arg2116819_
                                        _rest116821_))))))))
              (__tmp117164 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp117165
           gxc#current-compile-methods
           __tmp117164))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl116804_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117166 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl116804_ __tmp117166))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl116804_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl116800_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117167 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl116800_ __tmp117167))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116800_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116800_ '%#set! gxc#find-var-refs-setq%))
           _tbl116800_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx116783_ . _args116785_)
        (let ((__tmp117169
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116785_)
                     (gxc#compile-e__0 _stx116783_)
                     (let ((_arg1116790_ (car _args116785_))
                           (_rest116792_ (cdr _args116785_)))
                       (if (null? _rest116792_)
                           (gxc#compile-e__1 _stx116783_ _arg1116790_)
                           (let ((_arg2116795_ (car _rest116792_))
                                 (_rest116797_ (cdr _rest116792_)))
                             (if (null? _rest116797_)
                                 (gxc#compile-e__2
                                  _stx116783_
                                  _arg1116790_
                                  _arg2116795_)
                                 (apply gxc#compile-e
                                        _stx116783_
                                        _arg1116790_
                                        _arg2116795_
                                        _rest116797_))))))))
              (__tmp117168 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117169
           gxc#current-compile-methods
           __tmp117168))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl116780_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117170 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl116780_ __tmp117170))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116780_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116780_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl116780_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx116763_ . _args116765_)
        (let ((__tmp117172
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116765_)
                     (gxc#compile-e__0 _stx116763_)
                     (let ((_arg1116770_ (car _args116765_))
                           (_rest116772_ (cdr _args116765_)))
                       (if (null? _rest116772_)
                           (gxc#compile-e__1 _stx116763_ _arg1116770_)
                           (let ((_arg2116775_ (car _rest116772_))
                                 (_rest116777_ (cdr _rest116772_)))
                             (if (null? _rest116777_)
                                 (gxc#compile-e__2
                                  _stx116763_
                                  _arg1116770_
                                  _arg2116775_)
                                 (apply gxc#compile-e
                                        _stx116763_
                                        _arg1116770_
                                        _arg2116775_
                                        _rest116777_))))))))
              (__tmp117171 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117172
           gxc#current-compile-methods
           __tmp117171))))
    (define gxc#xform-identity
      (lambda (_stx116760_ . _args116761_) _stx116760_))
    (define gxc#xform-wrap-source
      (lambda (_stx116757_ _src-stx116758_)
        (let ((__tmp117173
               (let () (declare (not safe)) (gx#stx-source _src-stx116758_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx116757_ __tmp117173))))
    (define gxc#xform-apply-compile-e
      (lambda (_args116744_)
        (lambda (_stx116746_)
          (if (let () (declare (not safe)) (null? _args116744_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx116746_))
              (let ((_arg1116748_ (car _args116744_))
                    (_rest116750_ (cdr _args116744_)))
                (if (let () (declare (not safe)) (null? _rest116750_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx116746_ _arg1116748_))
                    (let ((_arg2116753_ (car _rest116750_))
                          (_rest116755_ (cdr _rest116750_)))
                      (if (let () (declare (not safe)) (null? _rest116755_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx116746_
                             _arg1116748_
                             _arg2116753_))
                          (apply gxc#compile-e
                                 _stx116746_
                                 _arg1116748_
                                 _arg2116753_
                                 _rest116755_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx116703_ . _args116704_)
        (let* ((_g116706116716_
                (lambda (_g116707116713_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116707116713_))))
               (_g116705116741_
                (lambda (_g116707116719_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116707116719_))
                      (let ((_e116711116721_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116707116719_))))
                        (let ((_hd116710116724_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116711116721_)))
                              (_tl116709116726_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116711116721_))))
                          ((lambda (_L116729_)
                             (let* ((_forms116739_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116704_))
                                          _L116729_))
                                    (__tmp117174
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms116739_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117174
                                _stx116703_)))
                           _tl116709116726_)))
                      (let ()
                        (declare (not safe))
                        (_g116706116716_ _g116707116719_))))))
          (declare (not safe))
          (_g116705116741_ _stx116703_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx116661_ . _args116662_)
        (let* ((_g116664116674_
                (lambda (_g116665116671_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116665116671_))))
               (_g116663116700_
                (lambda (_g116665116677_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116665116677_))
                      (let ((_e116669116679_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116665116677_))))
                        (let ((_hd116668116682_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116669116679_)))
                              (_tl116667116684_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116669116679_))))
                          ((lambda (_L116687_)
                             (let ((__tmp117177
                                    (lambda ()
                                      (let* ((_forms116698_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args116662_))
                                                   _L116687_))
                                             (__tmp117178
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms116698_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp117178
                                         _stx116661_))))
                                   (__tmp117175
                                    (let ((__tmp117176
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp117176 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp117177
                                gx#current-expander-phi
                                __tmp117175)))
                           _tl116667116684_)))
                      (let ()
                        (declare (not safe))
                        (_g116664116674_ _g116665116677_))))))
          (declare (not safe))
          (_g116663116700_ _stx116661_))))
    (define gxc#xform-module%
      (lambda (_stx116589_ . _args116590_)
        (let* ((_g116592116606_
                (lambda (_g116593116603_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116593116603_))))
               (_g116591116658_
                (lambda (_g116593116609_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116593116609_))
                      (let ((_e116598116611_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116593116609_))))
                        (let ((_hd116597116614_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116598116611_)))
                              (_tl116596116616_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116598116611_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116596116616_))
                              (let ((_e116601116619_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116596116616_))))
                                (let ((_hd116600116622_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116601116619_)))
                                      (_tl116599116624_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116601116619_))))
                                  ((lambda (_L116627_ _L116628_)
                                     (let* ((_ctx116641_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L116628_)))
                                            (_code116643_
                                             (##structure-ref
                                              _ctx116641_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code116655_
                                             (let ((__tmp117179
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args116590_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code116643_))
                                                          (let ((_arg1116646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args116590_))
                        (_rest116648_ (cdr _args116590_)))
                    (if (let () (declare (not safe)) (null? _rest116648_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code116643_ _arg1116646_))
                        (let ((_arg2116651_ (car _rest116648_))
                              (_rest116653_ (cdr _rest116648_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest116653_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code116643_
                                 _arg1116646_
                                 _arg2116651_))
                              (apply gxc#compile-e
                                     _code116643_
                                     _arg1116646_
                                     _arg2116651_
                                     _rest116653_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp117179
                                                gx#current-expander-context
                                                _ctx116641_))))
                                       (##structure-set!
                                        _ctx116641_
                                        _code116655_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp117180
                                              (let ((__tmp117181
                                                     (let ((__tmp117182
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code116655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L116628_ __tmp117182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp117181))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp117180
                                          _stx116589_))))
                                   _tl116599116624_
                                   _hd116600116622_)))
                              (let ()
                                (declare (not safe))
                                (_g116592116606_ _g116593116609_)))))
                      (let ()
                        (declare (not safe))
                        (_g116592116606_ _g116593116609_))))))
          (declare (not safe))
          (_g116591116658_ _stx116589_))))
    (define gxc#xform-define-values%
      (lambda (_stx116510_ . _args116511_)
        (let* ((_g116513116530_
                (lambda (_g116514116527_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116514116527_))))
               (_g116512116586_
                (lambda (_g116514116533_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116514116533_))
                      (let ((_e116519116535_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116514116533_))))
                        (let ((_hd116518116538_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116519116535_)))
                              (_tl116517116540_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116519116535_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116517116540_))
                              (let ((_e116522116543_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116517116540_))))
                                (let ((_hd116521116546_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116522116543_)))
                                      (_tl116520116548_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116522116543_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116520116548_))
                                      (let ((_e116525116551_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116520116548_))))
                                        (let ((_hd116524116554_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116525116551_)))
                                              (_tl116523116556_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116525116551_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116523116556_))
                                              ((lambda (_L116559_ _L116560_)
                                                 (let* ((_expr116584_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116511_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116559_))
                     (let ((_arg1116575_ (car _args116511_))
                           (_rest116577_ (cdr _args116511_)))
                       (if (let () (declare (not safe)) (null? _rest116577_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116559_ _arg1116575_))
                           (let ((_arg2116580_ (car _rest116577_))
                                 (_rest116582_ (cdr _rest116577_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116582_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116559_
                                    _arg1116575_
                                    _arg2116580_))
                                 (apply gxc#compile-e
                                        _L116559_
                                        _arg1116575_
                                        _arg2116580_
                                        _rest116582_)))))))
                (__tmp117183
                 (let ((__tmp117184
                        (let ((__tmp117185
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116584_ '()))))
                          (declare (not safe))
                          (cons _L116560_ __tmp117185))))
                   (declare (not safe))
                   (cons '%#define-values __tmp117184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117183
                                                    _stx116510_)))
                                               _hd116524116554_
                                               _hd116521116546_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116513116530_
                                                 _g116514116533_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116513116530_ _g116514116533_)))))
                              (let ()
                                (declare (not safe))
                                (_g116513116530_ _g116514116533_)))))
                      (let ()
                        (declare (not safe))
                        (_g116513116530_ _g116514116533_))))))
          (declare (not safe))
          (_g116512116586_ _stx116510_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx116430_ . _args116431_)
        (let* ((_g116433116450_
                (lambda (_g116434116447_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116434116447_))))
               (_g116432116507_
                (lambda (_g116434116453_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116434116453_))
                      (let ((_e116439116455_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116434116453_))))
                        (let ((_hd116438116458_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116439116455_)))
                              (_tl116437116460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116439116455_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116437116460_))
                              (let ((_e116442116463_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116437116460_))))
                                (let ((_hd116441116466_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116442116463_)))
                                      (_tl116440116468_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116442116463_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116440116468_))
                                      (let ((_e116445116471_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116440116468_))))
                                        (let ((_hd116444116474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116445116471_)))
                                              (_tl116443116476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116445116471_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116443116476_))
                                              ((lambda (_L116479_ _L116480_)
                                                 (let ((__tmp117188
                                                        (lambda ()
                                                          (let* ((_expr116505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args116431_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L116479_))
                              (let ((_arg1116496_ (car _args116431_))
                                    (_rest116498_ (cdr _args116431_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest116498_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L116479_
                                       _arg1116496_))
                                    (let ((_arg2116501_ (car _rest116498_))
                                          (_rest116503_ (cdr _rest116498_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest116503_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L116479_
                                             _arg1116496_
                                             _arg2116501_))
                                          (apply gxc#compile-e
                                                 _L116479_
                                                 _arg1116496_
                                                 _arg2116501_
                                                 _rest116503_)))))))
                         (__tmp117189
                          (let ((__tmp117190
                                 (let ((__tmp117191
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr116505_ '()))))
                                   (declare (not safe))
                                   (cons _L116480_ __tmp117191))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp117190))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp117189 _stx116430_))))
               (__tmp117186
                (let ((__tmp117187 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp117187 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp117188
                                                    gx#current-expander-phi
                                                    __tmp117186)))
                                               _hd116444116474_
                                               _hd116441116466_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116433116450_
                                                 _g116434116453_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116433116450_ _g116434116453_)))))
                              (let ()
                                (declare (not safe))
                                (_g116433116450_ _g116434116453_)))))
                      (let ()
                        (declare (not safe))
                        (_g116433116450_ _g116434116453_))))))
          (declare (not safe))
          (_g116432116507_ _stx116430_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx116351_ . _args116352_)
        (let* ((_g116354116371_
                (lambda (_g116355116368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116355116368_))))
               (_g116353116427_
                (lambda (_g116355116374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116355116374_))
                      (let ((_e116360116376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116355116374_))))
                        (let ((_hd116359116379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116360116376_)))
                              (_tl116358116381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116360116376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116358116381_))
                              (let ((_e116363116384_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116358116381_))))
                                (let ((_hd116362116387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116363116384_)))
                                      (_tl116361116389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116363116384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116361116389_))
                                      (let ((_e116366116392_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116361116389_))))
                                        (let ((_hd116365116395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116366116392_)))
                                              (_tl116364116397_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116366116392_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116364116397_))
                                              ((lambda (_L116400_ _L116401_)
                                                 (let* ((_expr116425_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116352_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116400_))
                     (let ((_arg1116416_ (car _args116352_))
                           (_rest116418_ (cdr _args116352_)))
                       (if (let () (declare (not safe)) (null? _rest116418_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116400_ _arg1116416_))
                           (let ((_arg2116421_ (car _rest116418_))
                                 (_rest116423_ (cdr _rest116418_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116423_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116400_
                                    _arg1116416_
                                    _arg2116421_))
                                 (apply gxc#compile-e
                                        _L116400_
                                        _arg1116416_
                                        _arg2116421_
                                        _rest116423_)))))))
                (__tmp117192
                 (let ((__tmp117193
                        (let ((__tmp117194
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116425_ '()))))
                          (declare (not safe))
                          (cons _L116401_ __tmp117194))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp117193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117192
                                                    _stx116351_)))
                                               _hd116365116395_
                                               _hd116362116387_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116354116371_
                                                 _g116355116374_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116354116371_ _g116355116374_)))))
                              (let ()
                                (declare (not safe))
                                (_g116354116371_ _g116355116374_)))))
                      (let ()
                        (declare (not safe))
                        (_g116354116371_ _g116355116374_))))))
          (declare (not safe))
          (_g116353116427_ _stx116351_))))
    (define gxc#xform-lambda%
      (lambda (_stx116294_ . _args116295_)
        (let* ((_g116297116311_
                (lambda (_g116298116308_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116298116308_))))
               (_g116296116348_
                (lambda (_g116298116314_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116298116314_))
                      (let ((_e116303116316_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116298116314_))))
                        (let ((_hd116302116319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116303116316_)))
                              (_tl116301116321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116303116316_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116301116321_))
                              (let ((_e116306116324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116301116321_))))
                                (let ((_hd116305116327_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116306116324_)))
                                      (_tl116304116329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116306116324_))))
                                  ((lambda (_L116332_ _L116333_)
                                     (let* ((_body116346_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args116295_))
                                                  _L116332_))
                                            (__tmp117195
                                             (let ((__tmp117196
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L116333_
                                                            _body116346_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp117196))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp117195
                                        _stx116294_)))
                                   _tl116304116329_
                                   _hd116305116327_)))
                              (let ()
                                (declare (not safe))
                                (_g116297116311_ _g116298116314_)))))
                      (let ()
                        (declare (not safe))
                        (_g116297116311_ _g116298116314_))))))
          (declare (not safe))
          (_g116296116348_ _stx116294_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx116207_ . _args116208_)
        (letrec ((_clause-e116210_
                  (lambda (_clause116251_)
                    (let* ((_g116253116264_
                            (lambda (_g116254116261_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g116254116261_))))
                           (_g116252116291_
                            (lambda (_g116254116267_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g116254116267_))
                                  (let ((_e116259116269_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g116254116267_))))
                                    (let ((_hd116258116272_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116259116269_)))
                                          (_tl116257116274_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116259116269_))))
                                      ((lambda (_L116277_ _L116278_)
                                         (let ((_body116289_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args116208_))
                                                     _L116277_)))
                                           (declare (not safe))
                                           (cons _L116278_ _body116289_)))
                                       _tl116257116274_
                                       _hd116258116272_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g116253116264_ _g116254116267_))))))
                      (declare (not safe))
                      (_g116252116291_ _clause116251_)))))
          (let* ((_g116212116222_
                  (lambda (_g116213116219_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g116213116219_))))
                 (_g116211116248_
                  (lambda (_g116213116225_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g116213116225_))
                        (let ((_e116217116227_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g116213116225_))))
                          (let ((_hd116216116230_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116217116227_)))
                                (_tl116215116232_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116217116227_))))
                            ((lambda (_L116235_)
                               (let* ((_clauses116246_
                                       (map _clause-e116210_ _L116235_))
                                      (__tmp117197
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses116246_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp117197
                                  _stx116207_)))
                             _tl116215116232_)))
                        (let ()
                          (declare (not safe))
                          (_g116212116222_ _g116213116225_))))))
            (declare (not safe))
            (_g116211116248_ _stx116207_)))))
    (define gxc#xform-let-values%
      (lambda (_stx116001_ . _args116002_)
        (let* ((_g116004116037_
                (lambda (_g116005116034_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116005116034_))))
               (_g116003116204_
                (lambda (_g116005116040_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116005116040_))
                      (let ((_e116012116042_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116005116040_))))
                        (let ((_hd116011116045_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116012116042_)))
                              (_tl116010116047_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116012116042_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116010116047_))
                              (let ((_e116015116050_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116010116047_))))
                                (let ((_hd116014116053_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116015116050_)))
                                      (_tl116013116055_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116015116050_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd116014116053_))
                                      (let ((_g117198_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd116014116053_
                                                '0))))
                                        (begin
                                          (let ((_g117199_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117198_)
                                                       (##vector-length
                                                        _g117198_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117199_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117199_)))
                                          (let ((_target116016116058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117198_ 0)))
                                                (_tl116018116060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117198_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116018116060_))
                                                (letrec ((_loop116019116063_
                                                          (lambda (_hd116017116066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr116023116068_
                           _hd116024116070_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd116017116066_))
                        (let ((_e116020116073_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd116017116066_))))
                          (let ((_lp-hd116021116076_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116020116073_)))
                                (_lp-tl116022116078_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116020116073_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd116021116076_))
                                (let ((_e116029116081_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd116021116076_))))
                                  (let ((_hd116028116084_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e116029116081_)))
                                        (_tl116027116086_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e116029116081_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl116027116086_))
                                        (let ((_e116032116089_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl116027116086_))))
                                          (let ((_hd116031116092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e116032116089_)))
                                                (_tl116030116094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e116032116089_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116030116094_))
                                                (let ((__tmp117212
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116031116092_
                                                               _expr116023116068_)))
                                                      (__tmp117211
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116028116084_
                                                               _hd116024116070_))))
                                                  (declare (not safe))
                                                  (_loop116019116063_
                                                   _lp-tl116022116078_
                                                   __tmp117212
                                                   __tmp117211))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116004116037_
                                                   _g116005116040_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g116004116037_ _g116005116040_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116004116037_ _g116005116040_)))))
                        (let ((_expr116025116097_ (reverse _expr116023116068_))
                              (_hd116026116099_ (reverse _hd116024116070_)))
                          ((lambda (_L116102_ _L116103_ _L116104_ _L116105_)
                             (let* ((_g116124116140_
                                     (lambda (_g116125116137_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g116125116137_))))
                                    (_g116123116194_
                                     (lambda (_g116125116143_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g116125116143_))
                                           (let ((_g117200_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g116125116143_
                                                     '0))))
                                             (begin
                                               (let ((_g117201_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g117200_)
                                                            (##vector-length
                                                             _g117200_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g117201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g117201_)))
                                               (let ((_target116127116145_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117200_
                                                         0)))
                                                     (_tl116129116147_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117200_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl116129116147_))
                                                     (letrec ((_loop116130116150_
                                                               (lambda (_hd116128116153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr116134116155_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd116128116153_))
                             (let ((_e116131116158_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd116128116153_))))
                               (let ((_lp-hd116132116161_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e116131116158_)))
                                     (_lp-tl116133116163_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e116131116158_))))
                                 (let ((__tmp117208
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd116132116161_
                                                _expr116134116155_))))
                                   (declare (not safe))
                                   (_loop116130116150_
                                    _lp-tl116133116163_
                                    __tmp117208))))
                             (let ((_expr116135116166_
                                    (reverse _expr116134116155_)))
                               ((lambda (_L116169_)
                                  (let ()
                                    (let* ((_body116182_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args116002_))
                                                 _L116102_))
                                           (__tmp117202
                                            (let ((__tmp117203
                                                   (let ((__tmp117204
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L116169_
                                                               _L116104_))
                                                            (let ((__tmp117205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g116183116187_
                                    _g116184116189_
                                    _g116185116191_)
                             (let ((__tmp117206
                                    (let ((__tmp117207
                                           (let ()
                                             (declare (not safe))
                                             (cons _g116183116187_ '()))))
                                      (declare (not safe))
                                      (cons _g116184116189_ __tmp117207))))
                               (declare (not safe))
                               (cons __tmp117206 _g116185116191_)))))
                      (declare (not safe))
                      (foldr2 __tmp117205 '() _L116169_ _L116104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp117204
                                                           _body116182_))))
                                              (declare (not safe))
                                              (cons _L116105_ __tmp117203))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp117202
                                       _stx116001_))))
                                _expr116135116166_))))))
               (let ()
                 (declare (not safe))
                 (_loop116130116150_ _target116127116145_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g116124116140_
                                                        _g116125116143_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g116124116140_
                                              _g116125116143_)))))
                                    (__tmp117209
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116002_))
                                          (let ((__tmp117210
                                                 (lambda (_g116196116199_
                                                          _g116197116201_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g116196116199_
                                                           _g116197116201_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp117210
                                                    '()
                                                    _L116103_)))))
                               (declare (not safe))
                               (_g116123116194_ __tmp117209)))
                           _tl116013116055_
                           _expr116025116097_
                           _hd116026116099_
                           _hd116011116045_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop116019116063_
                                                     _target116016116058_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116004116037_
                                                   _g116005116040_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116004116037_ _g116005116040_)))))
                              (let ()
                                (declare (not safe))
                                (_g116004116037_ _g116005116040_)))))
                      (let ()
                        (declare (not safe))
                        (_g116004116037_ _g116005116040_))))))
          (declare (not safe))
          (_g116003116204_ _stx116001_))))
    (define gxc#xform-operands
      (lambda (_stx115957_ . _args115958_)
        (let* ((_g115960115971_
                (lambda (_g115961115968_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115961115968_))))
               (_g115959115998_
                (lambda (_g115961115974_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115961115974_))
                      (let ((_e115966115976_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115961115974_))))
                        (let ((_hd115965115979_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115966115976_)))
                              (_tl115964115981_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115966115976_))))
                          ((lambda (_L115984_ _L115985_)
                             (let* ((_rands115996_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args115958_))
                                          _L115984_))
                                    (__tmp117213
                                     (let ()
                                       (declare (not safe))
                                       (cons _L115985_ _rands115996_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117213
                                _stx115957_)))
                           _tl115964115981_
                           _hd115965115979_)))
                      (let ()
                        (declare (not safe))
                        (_g115960115971_ _g115961115974_))))))
          (declare (not safe))
          (_g115959115998_ _stx115957_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx115878_ . _args115879_)
        (let* ((_g115881115898_
                (lambda (_g115882115895_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115882115895_))))
               (_g115880115954_
                (lambda (_g115882115901_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115882115901_))
                      (let ((_e115887115903_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115882115901_))))
                        (let ((_hd115886115906_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115887115903_)))
                              (_tl115885115908_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115887115903_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115885115908_))
                              (let ((_e115890115911_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115885115908_))))
                                (let ((_hd115889115914_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115890115911_)))
                                      (_tl115888115916_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115890115911_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115888115916_))
                                      (let ((_e115893115919_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115888115916_))))
                                        (let ((_hd115892115922_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115893115919_)))
                                              (_tl115891115924_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115893115919_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115891115924_))
                                              ((lambda (_L115927_ _L115928_)
                                                 (let* ((_expr115952_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args115879_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L115927_))
                     (let ((_arg1115943_ (car _args115879_))
                           (_rest115945_ (cdr _args115879_)))
                       (if (let () (declare (not safe)) (null? _rest115945_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L115927_ _arg1115943_))
                           (let ((_arg2115948_ (car _rest115945_))
                                 (_rest115950_ (cdr _rest115945_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest115950_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L115927_
                                    _arg1115943_
                                    _arg2115948_))
                                 (apply gxc#compile-e
                                        _L115927_
                                        _arg1115943_
                                        _arg2115948_
                                        _rest115950_)))))))
                (__tmp117214
                 (let ((__tmp117215
                        (let ((__tmp117216
                               (let ()
                                 (declare (not safe))
                                 (cons _expr115952_ '()))))
                          (declare (not safe))
                          (cons _L115928_ __tmp117216))))
                   (declare (not safe))
                   (cons '%#set! __tmp117215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117214
                                                    _stx115878_)))
                                               _hd115892115922_
                                               _hd115889115914_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115881115898_
                                                 _g115882115901_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115881115898_ _g115882115901_)))))
                              (let ()
                                (declare (not safe))
                                (_g115881115898_ _g115882115901_)))))
                      (let ()
                        (declare (not safe))
                        (_g115881115898_ _g115882115901_))))))
          (declare (not safe))
          (_g115880115954_ _stx115878_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx115809_)
        (let* ((_g115811115828_
                (lambda (_g115812115825_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115812115825_))))
               (_g115810115875_
                (lambda (_g115812115831_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115812115831_))
                      (let ((_e115817115833_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115812115831_))))
                        (let ((_hd115816115836_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115817115833_)))
                              (_tl115815115838_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115817115833_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115815115838_))
                              (let ((_e115820115841_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115815115838_))))
                                (let ((_hd115819115844_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115820115841_)))
                                      (_tl115818115846_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115820115841_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115818115846_))
                                      (let ((_e115823115849_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115818115846_))))
                                        (let ((_hd115822115852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115823115849_)))
                                              (_tl115821115854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115823115849_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115821115854_))
                                              ((lambda (_L115857_ _L115858_)
                                                 (let ((_sym115873_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L115858_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym115873_))
                                                   (let ((__tmp117217
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp117217
                                                      _sym115873_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L115857_))))
                                               _hd115822115852_
                                               _hd115819115844_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115811115828_
                                                 _g115812115831_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115811115828_ _g115812115831_)))))
                              (let ()
                                (declare (not safe))
                                (_g115811115828_ _g115812115831_)))))
                      (let ()
                        (declare (not safe))
                        (_g115811115828_ _g115812115831_))))))
          (declare (not safe))
          (_g115810115875_ _stx115809_))))
    (define gxc#collect-methods-call%
      (lambda (_stx115363_)
        (let* ((___stx116907116908_ _stx115363_)
               (_g115367115469_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx116907116908_)))))
          (let ((___kont116909116910_
                 (lambda (_L115759_ _L115760_ _L115761_ _L115762_ _L115763_)
                   (let ((__tmp117218
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L115760_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117218))))
                (___kont116911116912_
                 (lambda (_L115585_ _L115586_ _L115587_ _L115588_)
                   (let ((__tmp117219
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L115585_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117219))))
                (___kont116913116914_ (lambda () '#!void)))
            (let ((___match117042117043_
                   (lambda (_e115376115631_
                            _hd115375115634_
                            _tl115374115636_
                            _e115379115639_
                            _hd115378115642_
                            _tl115377115644_
                            _e115382115647_
                            _hd115381115650_
                            _tl115380115652_
                            _e115385115655_
                            _hd115384115658_
                            _tl115383115660_
                            _e115388115663_
                            _hd115387115666_
                            _tl115386115668_
                            _e115391115671_
                            _hd115390115674_
                            _tl115389115676_
                            _e115394115679_
                            _hd115393115682_
                            _tl115392115684_
                            _e115397115687_
                            _hd115396115690_
                            _tl115395115692_
                            _e115400115695_
                            _hd115399115698_
                            _tl115398115700_
                            _e115403115703_
                            _hd115402115706_
                            _tl115401115708_
                            _e115406115711_
                            _hd115405115714_
                            _tl115404115716_
                            _e115409115719_
                            _hd115408115722_
                            _tl115407115724_
                            _e115412115727_
                            _hd115411115730_
                            _tl115410115732_
                            _e115415115735_
                            _hd115414115738_
                            _tl115413115740_
                            _e115418115743_
                            _hd115417115746_
                            _tl115416115748_
                            _e115421115751_
                            _hd115420115754_
                            _tl115419115756_)
                     (let ((_L115759_ _hd115420115754_)
                           (_L115760_ _hd115411115730_)
                           (_L115761_ _hd115402115706_)
                           (_L115762_ _hd115393115682_)
                           (_L115763_ _hd115384115658_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L115763_
                              'bind-method!))
                           (___kont116909116910_
                            _L115759_
                            _L115760_
                            _L115761_
                            _L115762_
                            _L115763_)
                           (___kont116913116914_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx116907116908_))
                  (let ((_e115376115631_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx116907116908_))))
                    (let ((_tl115374115636_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115376115631_)))
                          (_hd115375115634_
                           (let ()
                             (declare (not safe))
                             (##car _e115376115631_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115374115636_))
                          (let ((_e115379115639_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115374115636_))))
                            (let ((_tl115377115644_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115379115639_)))
                                  (_hd115378115642_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115379115639_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115378115642_))
                                  (let ((_e115382115647_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115378115642_))))
                                    (let ((_tl115380115652_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115382115647_)))
                                          (_hd115381115650_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115382115647_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd115381115650_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd115381115650_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115380115652_))
                                                  (let ((_e115385115655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115380115652_))))
                                                    (let ((_tl115383115660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115385115655_)))
                                                          (_hd115384115658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115385115655_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115383115660_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115377115644_))
                      (let ((_e115388115663_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115377115644_))))
                        (let ((_tl115386115668_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115388115663_)))
                              (_hd115387115666_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115388115663_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd115387115666_))
                              (let ((_e115391115671_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd115387115666_))))
                                (let ((_tl115389115676_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115391115671_)))
                                      (_hd115390115674_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115391115671_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd115390115674_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd115390115674_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl115389115676_))
                                              (let ((_e115394115679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl115389115676_))))
                                                (let ((_tl115392115684_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e115394115679_)))
                                                      (_hd115393115682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e115394115679_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115392115684_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl115386115668_))
                                                          (let ((_e115397115687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl115386115668_))))
                    (let ((_tl115395115692_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115397115687_)))
                          (_hd115396115690_
                           (let ()
                             (declare (not safe))
                             (##car _e115397115687_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd115396115690_))
                          (let ((_e115400115695_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd115396115690_))))
                            (let ((_tl115398115700_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115400115695_)))
                                  (_hd115399115698_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115400115695_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd115399115698_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd115399115698_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl115398115700_))
                                          (let ((_e115403115703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl115398115700_))))
                                            (let ((_tl115401115708_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115403115703_)))
                                                  (_hd115402115706_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115403115703_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl115401115708_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl115395115692_))
                                                      (let ((_e115406115711_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl115395115692_))))
                (let ((_tl115404115716_
                       (let () (declare (not safe)) (##cdr _e115406115711_)))
                      (_hd115405115714_
                       (let () (declare (not safe)) (##car _e115406115711_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd115405115714_))
                      (let ((_e115409115719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd115405115714_))))
                        (let ((_tl115407115724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115409115719_)))
                              (_hd115408115722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115409115719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd115408115722_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd115408115722_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115407115724_))
                                      (let ((_e115412115727_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115407115724_))))
                                        (let ((_tl115410115732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115412115727_)))
                                              (_hd115411115730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115412115727_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115410115732_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115404115716_))
                                                  (let ((_e115415115735_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115404115716_))))
                                                    (let ((_tl115413115740_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115415115735_)))
                                                          (_hd115414115738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115415115735_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd115414115738_))
                                                          (let ((_e115418115743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd115414115738_))))
                    (let ((_tl115416115748_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115418115743_)))
                          (_hd115417115746_
                           (let ()
                             (declare (not safe))
                             (##car _e115418115743_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd115417115746_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd115417115746_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl115416115748_))
                                  (let ((_e115421115751_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl115416115748_))))
                                    (let ((_tl115419115756_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115421115751_)))
                                          (_hd115420115754_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115421115751_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl115419115756_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115413115740_))
                                              (___match117042117043_
                                               _e115376115631_
                                               _hd115375115634_
                                               _tl115374115636_
                                               _e115379115639_
                                               _hd115378115642_
                                               _tl115377115644_
                                               _e115382115647_
                                               _hd115381115650_
                                               _tl115380115652_
                                               _e115385115655_
                                               _hd115384115658_
                                               _tl115383115660_
                                               _e115388115663_
                                               _hd115387115666_
                                               _tl115386115668_
                                               _e115391115671_
                                               _hd115390115674_
                                               _tl115389115676_
                                               _e115394115679_
                                               _hd115393115682_
                                               _tl115392115684_
                                               _e115397115687_
                                               _hd115396115690_
                                               _tl115395115692_
                                               _e115400115695_
                                               _hd115399115698_
                                               _tl115398115700_
                                               _e115403115703_
                                               _hd115402115706_
                                               _tl115401115708_
                                               _e115406115711_
                                               _hd115405115714_
                                               _tl115404115716_
                                               _e115409115719_
                                               _hd115408115722_
                                               _tl115407115724_
                                               _e115412115727_
                                               _hd115411115730_
                                               _tl115410115732_
                                               _e115415115735_
                                               _hd115414115738_
                                               _tl115413115740_
                                               _e115418115743_
                                               _hd115417115746_
                                               _tl115416115748_
                                               _e115421115751_
                                               _hd115420115754_
                                               _tl115419115756_)
                                              (___kont116913116914_))
                                          (___kont116913116914_))))
                                  (___kont116913116914_))
                              (___kont116913116914_))
                          (___kont116913116914_))))
                  (___kont116913116914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115404115716_))
                                                      (if (let ((__tmp117220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp117220 'bind-method!))
                  (let ((_L115585_ _hd115411115730_)
                        (_L115586_ _hd115402115706_)
                        (_L115587_ _hd115393115682_)
                        (_L115588_ _hd115384115658_))
                    (___kont116911116912_
                     _L115585_
                     _L115586_
                     _L115587_
                     _L115588_))
                  (___kont116913116914_))
              (___kont116913116914_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116913116914_))))
                                      (___kont116913116914_))
                                  (___kont116913116914_))
                              (___kont116913116914_))))
                      (___kont116913116914_))))
              (___kont116913116914_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116913116914_))))
                                          (___kont116913116914_))
                                      (___kont116913116914_))
                                  (___kont116913116914_))))
                          (___kont116913116914_))))
                  (___kont116913116914_))
              (___kont116913116914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116913116914_))
                                          (___kont116913116914_))
                                      (___kont116913116914_))))
                              (___kont116913116914_))))
                      (___kont116913116914_))
                  (___kont116913116914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116913116914_))
                                              (___kont116913116914_))
                                          (___kont116913116914_))))
                                  (___kont116913116914_))))
                          (___kont116913116914_))))
                  (___kont116913116914_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx115310_ _id115311_ _new-id115312_)
        (let* ((_g115314115327_
                (lambda (_g115315115324_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115315115324_))))
               (_g115313115360_
                (lambda (_g115315115330_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115315115330_))
                      (let ((_e115319115332_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115315115330_))))
                        (let ((_hd115318115335_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115319115332_)))
                              (_tl115317115337_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115319115332_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115317115337_))
                              (let ((_e115322115340_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115317115337_))))
                                (let ((_hd115321115343_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115322115340_)))
                                      (_tl115320115345_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115322115340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115320115345_))
                                      ((lambda (_L115348_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L115348_
                                                _id115311_))
                                             (let ((__tmp117221
                                                    (let ((__tmp117222
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id115312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp117222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp117221
                                                _stx115310_))
                                             _stx115310_))
                                       _hd115321115343_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115314115327_ _g115315115330_)))))
                              (let ()
                                (declare (not safe))
                                (_g115314115327_ _g115315115330_)))))
                      (let ()
                        (declare (not safe))
                        (_g115314115327_ _g115315115330_))))))
          (declare (not safe))
          (_g115313115360_ _stx115310_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx115251_ _subst115252_)
        (let* ((_g115254115267_
                (lambda (_g115255115264_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115255115264_))))
               (_g115253115307_
                (lambda (_g115255115270_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115255115270_))
                      (let ((_e115259115272_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115255115270_))))
                        (let ((_hd115258115275_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115259115272_)))
                              (_tl115257115277_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115259115272_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115257115277_))
                              (let ((_e115262115280_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115257115277_))))
                                (let ((_hd115261115283_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115262115280_)))
                                      (_tl115260115285_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115262115280_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115260115285_))
                                      ((lambda (_L115288_)
                                         (let ((_$e115302_
                                                (let ((__tmp117223
                                                       (lambda (_sub115300_)
                                                         (let ((__tmp117224
                                                                (car _sub115300_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L115288_
                                                            __tmp117224)))))
                                                  (declare (not safe))
                                                  (find __tmp117223
                                                        _subst115252_))))
                                           (if _$e115302_
                                               ((lambda (_sub115305_)
                                                  (let ((__tmp117225
                                                         (let ((__tmp117226
                                                                (let ((__tmp117227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub115305_)))
                          (declare (not safe))
                          (cons __tmp117227 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp117226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp117225
                                                     _stx115251_)))
                                                _$e115302_)
                                               _stx115251_)))
                                       _hd115261115283_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115254115267_ _g115255115270_)))))
                              (let ()
                                (declare (not safe))
                                (_g115254115267_ _g115255115270_)))))
                      (let ()
                        (declare (not safe))
                        (_g115254115267_ _g115255115270_))))))
          (declare (not safe))
          (_g115253115307_ _stx115251_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx115179_ _id115180_ _new-id115181_)
        (let* ((_g115183115200_
                (lambda (_g115184115197_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115184115197_))))
               (_g115182115248_
                (lambda (_g115184115203_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115184115203_))
                      (let ((_e115189115205_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115184115203_))))
                        (let ((_hd115188115208_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115189115205_)))
                              (_tl115187115210_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115189115205_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115187115210_))
                              (let ((_e115192115213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115187115210_))))
                                (let ((_hd115191115216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115192115213_)))
                                      (_tl115190115218_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115192115213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115190115218_))
                                      (let ((_e115195115221_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115190115218_))))
                                        (let ((_hd115194115224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115195115221_)))
                                              (_tl115193115226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115195115221_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115193115226_))
                                              ((lambda (_L115229_ _L115230_)
                                                 (let ((_new-expr115245_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L115229_
                                                           _id115180_
                                                           _new-id115181_)))
                                                       (_new-xid115246_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L115230_
                                                               _id115180_))
                                                            _new-id115181_
                                                            _L115230_)))
                                                   (let ((__tmp117228
                                                          (let ((__tmp117229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117230
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115245_ '()))))
                           (declare (not safe))
                           (cons _new-xid115246_ __tmp117230))))
                    (declare (not safe))
                    (cons '%#set! __tmp117229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117228
                                                      _stx115179_))))
                                               _hd115194115224_
                                               _hd115191115216_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115183115200_
                                                 _g115184115203_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115183115200_ _g115184115203_)))))
                              (let ()
                                (declare (not safe))
                                (_g115183115200_ _g115184115203_)))))
                      (let ()
                        (declare (not safe))
                        (_g115183115200_ _g115184115203_))))))
          (declare (not safe))
          (_g115182115248_ _stx115179_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx115103_ _subst115104_)
        (let* ((_g115106115123_
                (lambda (_g115107115120_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115107115120_))))
               (_g115105115176_
                (lambda (_g115107115126_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115107115126_))
                      (let ((_e115112115128_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115107115126_))))
                        (let ((_hd115111115131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115112115128_)))
                              (_tl115110115133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115112115128_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115110115133_))
                              (let ((_e115115115136_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115110115133_))))
                                (let ((_hd115114115139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115115115136_)))
                                      (_tl115113115141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115115115136_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115113115141_))
                                      (let ((_e115118115144_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115113115141_))))
                                        (let ((_hd115117115147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115118115144_)))
                                              (_tl115116115149_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115118115144_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115116115149_))
                                              ((lambda (_L115152_ _L115153_)
                                                 (let ((_new-expr115173_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L115152_
                                                           _subst115104_)))
                                                       (_new-xid115174_
                                                        (let ((_$e115170_
                                                               (let ((__tmp117231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub115168_)
                                (let ((__tmp117232 (car _sub115168_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L115153_
                                   __tmp117232)))))
                         (declare (not safe))
                         (find __tmp117231 _subst115104_))))
                  (if _$e115170_ (cdr _$e115170_) _L115153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp117233
                                                          (let ((__tmp117234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117235
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115173_ '()))))
                           (declare (not safe))
                           (cons _new-xid115174_ __tmp117235))))
                    (declare (not safe))
                    (cons '%#set! __tmp117234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117233
                                                      _stx115103_))))
                                               _hd115117115147_
                                               _hd115114115139_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115106115123_
                                                 _g115107115126_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115106115123_ _g115107115126_)))))
                              (let ()
                                (declare (not safe))
                                (_g115106115123_ _g115107115126_)))))
                      (let ()
                        (declare (not safe))
                        (_g115106115123_ _g115107115126_))))))
          (declare (not safe))
          (_g115105115176_ _stx115103_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx115049_ _ht115050_)
        (let* ((_g115052115065_
                (lambda (_g115053115062_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115053115062_))))
               (_g115051115100_
                (lambda (_g115053115068_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115053115068_))
                      (let ((_e115057115070_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115053115068_))))
                        (let ((_hd115056115073_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115057115070_)))
                              (_tl115055115075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115057115070_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115055115075_))
                              (let ((_e115060115078_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115055115075_))))
                                (let ((_hd115059115081_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115060115078_)))
                                      (_tl115058115083_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115060115078_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115058115083_))
                                      ((lambda (_L115086_)
                                         (let ((_eid115098_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L115086_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht115050_
                                            _eid115098_
                                            1+
                                            '0)))
                                       _hd115059115081_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115052115065_ _g115053115068_)))))
                              (let ()
                                (declare (not safe))
                                (_g115052115065_ _g115053115068_)))))
                      (let ()
                        (declare (not safe))
                        (_g115052115065_ _g115053115068_))))))
          (declare (not safe))
          (_g115051115100_ _stx115049_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx114979_ _ht114980_)
        (let* ((_g114982114999_
                (lambda (_g114983114996_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114983114996_))))
               (_g114981115046_
                (lambda (_g114983115002_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114983115002_))
                      (let ((_e114988115004_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114983115002_))))
                        (let ((_hd114987115007_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114988115004_)))
                              (_tl114986115009_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114988115004_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114986115009_))
                              (let ((_e114991115012_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114986115009_))))
                                (let ((_hd114990115015_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114991115012_)))
                                      (_tl114989115017_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114991115012_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114989115017_))
                                      (let ((_e114994115020_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114989115017_))))
                                        (let ((_hd114993115023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114994115020_)))
                                              (_tl114992115025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114994115020_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114992115025_))
                                              ((lambda (_L115028_ _L115029_)
                                                 (let ((_eid115044_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L115029_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht114980_
                                                      _eid115044_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L115028_
                                                      _ht114980_))))
                                               _hd114993115023_
                                               _hd114990115015_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114982114999_
                                                 _g114983115002_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114982114999_ _g114983115002_)))))
                              (let ()
                                (declare (not safe))
                                (_g114982114999_ _g114983115002_)))))
                      (let ()
                        (declare (not safe))
                        (_g114982114999_ _g114983115002_))))))
          (declare (not safe))
          (_g114981115046_ _stx114979_))))
    (define gxc#find-body%
      (lambda (_stx114892_ _arg114893_)
        (let* ((_g114895114914_
                (lambda (_g114896114911_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114896114911_))))
               (_g114894114976_
                (lambda (_g114896114917_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114896114917_))
                      (let ((_e114900114919_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114896114917_))))
                        (let ((_hd114899114922_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114900114919_)))
                              (_tl114898114924_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114900114919_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl114898114924_))
                              (let ((_g117236_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl114898114924_
                                        '0))))
                                (begin
                                  (let ((_g117237_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117236_)
                                               (##vector-length _g117236_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117237_ 2)))
                                        (error "Context expects 2 values"
                                               _g117237_)))
                                  (let ((_target114901114927_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117236_ 0)))
                                        (_tl114903114929_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117236_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114903114929_))
                                        (letrec ((_loop114904114932_
                                                  (lambda (_hd114902114935_
                                                           _expr114908114937_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd114902114935_))
                                                        (let ((_e114905114940_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd114902114935_))))
                  (let ((_lp-hd114906114943_
                         (let () (declare (not safe)) (##car _e114905114940_)))
                        (_lp-tl114907114945_
                         (let ()
                           (declare (not safe))
                           (##cdr _e114905114940_))))
                    (let ((__tmp117241
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd114906114943_ _expr114908114937_))))
                      (declare (not safe))
                      (_loop114904114932_ _lp-tl114907114945_ __tmp117241))))
                (let ((_expr114909114948_ (reverse _expr114908114937_)))
                  ((lambda (_L114951_)
                     (let ((__tmp117240
                            (lambda (_g114964114966_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g114964114966_
                                 _arg114893_))))
                           (__tmp117238
                            (let ((__tmp117239
                                   (lambda (_g114968114971_ _g114969114973_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g114968114971_
                                             _g114969114973_)))))
                              (declare (not safe))
                              (foldr1 __tmp117239 '() _L114951_))))
                       (declare (not safe))
                       (ormap1 __tmp117240 __tmp117238)))
                   _expr114909114948_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop114904114932_
                                             _target114901114927_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g114895114914_
                                           _g114896114917_))))))
                              (let ()
                                (declare (not safe))
                                (_g114895114914_ _g114896114917_)))))
                      (let ()
                        (declare (not safe))
                        (_g114895114914_ _g114896114917_))))))
          (declare (not safe))
          (_g114894114976_ _stx114892_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx114824_ _arg114825_)
        (let* ((_g114827114844_
                (lambda (_g114828114841_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114828114841_))))
               (_g114826114889_
                (lambda (_g114828114847_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114828114847_))
                      (let ((_e114833114849_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114828114847_))))
                        (let ((_hd114832114852_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114833114849_)))
                              (_tl114831114854_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114833114849_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114831114854_))
                              (let ((_e114836114857_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114831114854_))))
                                (let ((_hd114835114860_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114836114857_)))
                                      (_tl114834114862_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114836114857_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114834114862_))
                                      (let ((_e114839114865_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114834114862_))))
                                        (let ((_hd114838114868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114839114865_)))
                                              (_tl114837114870_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114839114865_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114837114870_))
                                              ((lambda (_L114873_ _L114874_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114873_
                                                    _arg114825_)))
                                               _hd114838114868_
                                               _hd114835114860_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114827114844_
                                                 _g114828114847_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114827114844_ _g114828114847_)))))
                              (let ()
                                (declare (not safe))
                                (_g114827114844_ _g114828114847_)))))
                      (let ()
                        (declare (not safe))
                        (_g114827114844_ _g114828114847_))))))
          (declare (not safe))
          (_g114826114889_ _stx114824_))))
    (define gxc#find-lambda%
      (lambda (_stx114756_ _arg114757_)
        (let* ((_g114759114776_
                (lambda (_g114760114773_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114760114773_))))
               (_g114758114821_
                (lambda (_g114760114779_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114760114779_))
                      (let ((_e114765114781_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114760114779_))))
                        (let ((_hd114764114784_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114765114781_)))
                              (_tl114763114786_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114765114781_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114763114786_))
                              (let ((_e114768114789_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114763114786_))))
                                (let ((_hd114767114792_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114768114789_)))
                                      (_tl114766114794_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114768114789_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114766114794_))
                                      (let ((_e114771114797_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114766114794_))))
                                        (let ((_hd114770114800_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114771114797_)))
                                              (_tl114769114802_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114771114797_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114769114802_))
                                              ((lambda (_L114805_ _L114806_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114805_
                                                    _arg114757_)))
                                               _hd114770114800_
                                               _hd114767114792_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114759114776_
                                                 _g114760114779_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114759114776_ _g114760114779_)))))
                              (let ()
                                (declare (not safe))
                                (_g114759114776_ _g114760114779_)))))
                      (let ()
                        (declare (not safe))
                        (_g114759114776_ _g114760114779_))))))
          (declare (not safe))
          (_g114758114821_ _stx114756_))))
    (define gxc#find-case-lambda%
      (lambda (_stx114638_ _arg114639_)
        (let* ((_g114641114669_
                (lambda (_g114642114666_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114642114666_))))
               (_g114640114753_
                (lambda (_g114642114672_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114642114672_))
                      (let ((_e114647114674_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114642114672_))))
                        (let ((_hd114646114677_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114647114674_)))
                              (_tl114645114679_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114647114674_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl114645114679_))
                              (let ((_g117242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl114645114679_
                                        '0))))
                                (begin
                                  (let ((_g117243_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117242_)
                                               (##vector-length _g117242_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117243_ 2)))
                                        (error "Context expects 2 values"
                                               _g117243_)))
                                  (let ((_target114648114682_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117242_ 0)))
                                        (_tl114650114684_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117242_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114650114684_))
                                        (letrec ((_loop114651114687_
                                                  (lambda (_hd114649114690_
                                                           _body114655114692_
                                                           _hd114656114694_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd114649114690_))
                                                        (let ((_e114652114697_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd114649114690_))))
                  (let ((_lp-hd114653114700_
                         (let () (declare (not safe)) (##car _e114652114697_)))
                        (_lp-tl114654114702_
                         (let ()
                           (declare (not safe))
                           (##cdr _e114652114697_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd114653114700_))
                        (let ((_e114661114705_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd114653114700_))))
                          (let ((_hd114660114708_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114661114705_)))
                                (_tl114659114710_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114661114705_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl114659114710_))
                                (let ((_e114664114713_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl114659114710_))))
                                  (let ((_hd114663114716_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e114664114713_)))
                                        (_tl114662114718_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e114664114713_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114662114718_))
                                        (let ((__tmp117248
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd114663114716_
                                                       _body114655114692_)))
                                              (__tmp117247
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd114660114708_
                                                       _hd114656114694_))))
                                          (declare (not safe))
                                          (_loop114651114687_
                                           _lp-tl114654114702_
                                           __tmp117248
                                           __tmp117247))
                                        (let ()
                                          (declare (not safe))
                                          (_g114641114669_ _g114642114672_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g114641114669_ _g114642114672_)))))
                        (let ()
                          (declare (not safe))
                          (_g114641114669_ _g114642114672_)))))
                (let ((_body114657114721_ (reverse _body114655114692_))
                      (_hd114658114723_ (reverse _hd114656114694_)))
                  ((lambda (_L114726_ _L114727_)
                     (let ((__tmp117246
                            (lambda (_g114741114743_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g114741114743_
                                 _arg114639_))))
                           (__tmp117244
                            (let ((__tmp117245
                                   (lambda (_g114745114748_ _g114746114750_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g114745114748_
                                             _g114746114750_)))))
                              (declare (not safe))
                              (foldr1 __tmp117245 '() _L114726_))))
                       (declare (not safe))
                       (ormap1 __tmp117246 __tmp117244)))
                   _body114657114721_
                   _hd114658114723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop114651114687_
                                             _target114648114682_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g114641114669_
                                           _g114642114672_))))))
                              (let ()
                                (declare (not safe))
                                (_g114641114669_ _g114642114672_)))))
                      (let ()
                        (declare (not safe))
                        (_g114641114669_ _g114642114672_))))))
          (declare (not safe))
          (_g114640114753_ _stx114638_))))
    (define gxc#find-let-values%
      (lambda (_stx114488_ _arg114489_)
        (let* ((_g114491114526_
                (lambda (_g114492114523_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114492114523_))))
               (_g114490114635_
                (lambda (_g114492114529_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114492114529_))
                      (let ((_e114498114531_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114492114529_))))
                        (let ((_hd114497114534_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114498114531_)))
                              (_tl114496114536_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114498114531_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114496114536_))
                              (let ((_e114501114539_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114496114536_))))
                                (let ((_hd114500114542_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114501114539_)))
                                      (_tl114499114544_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114501114539_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd114500114542_))
                                      (let ((_g117249_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd114500114542_
                                                '0))))
                                        (begin
                                          (let ((_g117250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117249_)
                                                       (##vector-length
                                                        _g117249_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117250_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117250_)))
                                          (let ((_target114502114547_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117249_ 0)))
                                                (_tl114504114549_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117249_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114504114549_))
                                                (letrec ((_loop114505114552_
                                                          (lambda (_hd114503114555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr114509114557_
                           _bind114510114559_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd114503114555_))
                        (let ((_e114506114562_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd114503114555_))))
                          (let ((_lp-hd114507114565_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114506114562_)))
                                (_lp-tl114508114567_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114506114562_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd114507114565_))
                                (let ((_e114515114570_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd114507114565_))))
                                  (let ((_hd114514114573_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e114515114570_)))
                                        (_tl114513114575_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e114515114570_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl114513114575_))
                                        (let ((_e114518114578_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl114513114575_))))
                                          (let ((_hd114517114581_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e114518114578_)))
                                                (_tl114516114583_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e114518114578_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114516114583_))
                                                (let ((__tmp117255
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd114517114581_
                                                               _expr114509114557_)))
                                                      (__tmp117254
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd114514114573_
                                                               _bind114510114559_))))
                                                  (declare (not safe))
                                                  (_loop114505114552_
                                                   _lp-tl114508114567_
                                                   __tmp117255
                                                   __tmp117254))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114491114526_
                                                   _g114492114529_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g114491114526_ _g114492114529_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g114491114526_ _g114492114529_)))))
                        (let ((_expr114511114586_ (reverse _expr114509114557_))
                              (_bind114512114588_
                               (reverse _bind114510114559_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114499114544_))
                              (let ((_e114521114591_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114499114544_))))
                                (let ((_hd114520114594_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114521114591_)))
                                      (_tl114519114596_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114521114591_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114519114596_))
                                      ((lambda (_L114599_ _L114600_ _L114601_)
                                         (let ((_$e114632_
                                                (let ((__tmp117253
                                                       (lambda (_g114620114622_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g114620114622_
                                                            _arg114489_))))
                                                      (__tmp117251
                                                       (let ((__tmp117252
                                                              (lambda (_g114624114627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g114625114629_)
                        (let ()
                          (declare (not safe))
                          (cons _g114624114627_ _g114625114629_)))))
                 (declare (not safe))
                 (foldr1 __tmp117252 '() _L114600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp117253
                                                          __tmp117251))))
                                           (if _$e114632_
                                               _$e114632_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L114599_
                                                  _arg114489_)))))
                                       _hd114520114594_
                                       _expr114511114586_
                                       _bind114512114588_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114491114526_ _g114492114529_)))))
                              (let ()
                                (declare (not safe))
                                (_g114491114526_ _g114492114529_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop114505114552_
                                                     _target114502114547_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114491114526_
                                                   _g114492114529_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114491114526_ _g114492114529_)))))
                              (let ()
                                (declare (not safe))
                                (_g114491114526_ _g114492114529_)))))
                      (let ()
                        (declare (not safe))
                        (_g114491114526_ _g114492114529_))))))
          (declare (not safe))
          (_g114490114635_ _stx114488_))))
    (define gxc#find-setq%
      (lambda (_stx114420_ _arg114421_)
        (let* ((_g114423114440_
                (lambda (_g114424114437_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114424114437_))))
               (_g114422114485_
                (lambda (_g114424114443_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114424114443_))
                      (let ((_e114429114445_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114424114443_))))
                        (let ((_hd114428114448_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114429114445_)))
                              (_tl114427114450_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114429114445_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114427114450_))
                              (let ((_e114432114453_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114427114450_))))
                                (let ((_hd114431114456_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114432114453_)))
                                      (_tl114430114458_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114432114453_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114430114458_))
                                      (let ((_e114435114461_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114430114458_))))
                                        (let ((_hd114434114464_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114435114461_)))
                                              (_tl114433114466_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114435114461_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114433114466_))
                                              ((lambda (_L114469_ _L114470_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114469_
                                                    _arg114421_)))
                                               _hd114434114464_
                                               _hd114431114456_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114423114440_
                                                 _g114424114443_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114423114440_ _g114424114443_)))))
                              (let ()
                                (declare (not safe))
                                (_g114423114440_ _g114424114443_)))))
                      (let ()
                        (declare (not safe))
                        (_g114423114440_ _g114424114443_))))))
          (declare (not safe))
          (_g114422114485_ _stx114420_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx114364_ _ids114365_)
        (let* ((_g114367114380_
                (lambda (_g114368114377_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114368114377_))))
               (_g114366114417_
                (lambda (_g114368114383_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114368114383_))
                      (let ((_e114372114385_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114368114383_))))
                        (let ((_hd114371114388_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114372114385_)))
                              (_tl114370114390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114372114385_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114370114390_))
                              (let ((_e114375114393_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114370114390_))))
                                (let ((_hd114374114396_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114375114393_)))
                                      (_tl114373114398_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114375114393_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114373114398_))
                                      ((lambda (_L114401_)
                                         (let ((__tmp117256
                                                (lambda (_g114412114414_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L114401_
                                                     _g114412114414_)))))
                                           (declare (not safe))
                                           (find __tmp117256 _ids114365_)))
                                       _hd114374114396_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114367114380_ _g114368114383_)))))
                              (let ()
                                (declare (not safe))
                                (_g114367114380_ _g114368114383_)))))
                      (let ()
                        (declare (not safe))
                        (_g114367114380_ _g114368114383_))))))
          (declare (not safe))
          (_g114366114417_ _stx114364_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx114288_ _ids114289_)
        (let* ((_g114291114308_
                (lambda (_g114292114305_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114292114305_))))
               (_g114290114361_
                (lambda (_g114292114311_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114292114311_))
                      (let ((_e114297114313_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114292114311_))))
                        (let ((_hd114296114316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114297114313_)))
                              (_tl114295114318_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114297114313_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114295114318_))
                              (let ((_e114300114321_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114295114318_))))
                                (let ((_hd114299114324_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114300114321_)))
                                      (_tl114298114326_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114300114321_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114298114326_))
                                      (let ((_e114303114329_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114298114326_))))
                                        (let ((_hd114302114332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114303114329_)))
                                              (_tl114301114334_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114303114329_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114301114334_))
                                              ((lambda (_L114337_ _L114338_)
                                                 (let ((_$e114358_
                                                        (let ((__tmp117257
                                                               (lambda (_g114353114355_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L114338_ _g114353114355_)))))
                  (declare (not safe))
                  (find __tmp117257 _ids114289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e114358_
                                                       _$e114358_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L114337_
                                                          _ids114289_)))))
                                               _hd114302114332_
                                               _hd114299114324_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114291114308_
                                                 _g114292114311_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114291114308_ _g114292114311_)))))
                              (let ()
                                (declare (not safe))
                                (_g114291114308_ _g114292114311_)))))
                      (let ()
                        (declare (not safe))
                        (_g114291114308_ _g114292114311_))))))
          (declare (not safe))
          (_g114290114361_ _stx114288_))))))
