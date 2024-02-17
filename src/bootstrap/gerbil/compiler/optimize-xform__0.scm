(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708202849)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl217754_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217754_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217754_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217754_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217754_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl217754_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl217750_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217750_ '%#declare gxc#xform-identity))
           _tbl217750_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl217746_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222067 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl217746_ __tmp222067))
           (let ((__tmp222068 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl217746_ __tmp222068))
           _tbl217746_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl217742_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217742_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217742_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217742_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217742_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217742_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl217742_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl217738_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222069 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl217738_ __tmp222069))
           (let ((__tmp222070 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl217738_ __tmp222070))
           (let ()
             (declare (not safe))
             (table-set! _tbl217738_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217738_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217738_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217738_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217738_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl217738_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl217734_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222071 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl217734_ __tmp222071))
           (let ()
             (declare (not safe))
             (table-set! _tbl217734_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217734_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217734_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217734_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217734_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217734_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217734_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217734_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217734_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217734_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217734_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl217734_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx217717_ . _args217719_)
        (let ((__tmp222073
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217719_)
                     (gxc#compile-e__0 _stx217717_)
                     (let ((_arg1217724_ (car _args217719_))
                           (_rest217726_ (cdr _args217719_)))
                       (if (null? _rest217726_)
                           (gxc#compile-e__1 _stx217717_ _arg1217724_)
                           (let ((_arg2217729_ (car _rest217726_))
                                 (_rest217731_ (cdr _rest217726_)))
                             (if (null? _rest217731_)
                                 (gxc#compile-e__2
                                  _stx217717_
                                  _arg1217724_
                                  _arg2217729_)
                                 (apply gxc#compile-e
                                        _stx217717_
                                        _arg1217724_
                                        _arg2217729_
                                        _rest217731_))))))))
              (__tmp222072 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp222073
           gxc#current-compile-methods
           __tmp222072))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl217714_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222074 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl217714_ __tmp222074))
           (let ()
             (declare (not safe))
             (table-set! _tbl217714_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217714_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217714_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217714_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217714_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl217714_))))
    (define gxc#apply-collect-methods
      (lambda (_stx217697_ . _args217699_)
        (let ((__tmp222076
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217699_)
                     (gxc#compile-e__0 _stx217697_)
                     (let ((_arg1217704_ (car _args217699_))
                           (_rest217706_ (cdr _args217699_)))
                       (if (null? _rest217706_)
                           (gxc#compile-e__1 _stx217697_ _arg1217704_)
                           (let ((_arg2217709_ (car _rest217706_))
                                 (_rest217711_ (cdr _rest217706_)))
                             (if (null? _rest217711_)
                                 (gxc#compile-e__2
                                  _stx217697_
                                  _arg1217704_
                                  _arg2217709_)
                                 (apply gxc#compile-e
                                        _stx217697_
                                        _arg1217704_
                                        _arg2217709_
                                        _rest217711_))))))))
              (__tmp222075 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp222076
           gxc#current-compile-methods
           __tmp222075))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl217694_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222077 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl217694_ __tmp222077))
           (let ()
             (declare (not safe))
             (table-set! _tbl217694_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217694_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217694_ '%#set! gxc#expression-subst-setq%))
           _tbl217694_))))
    (define gxc#apply-expression-subst
      (lambda (_stx217677_ . _args217679_)
        (let ((__tmp222079
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217679_)
                     (gxc#compile-e__0 _stx217677_)
                     (let ((_arg1217684_ (car _args217679_))
                           (_rest217686_ (cdr _args217679_)))
                       (if (null? _rest217686_)
                           (gxc#compile-e__1 _stx217677_ _arg1217684_)
                           (let ((_arg2217689_ (car _rest217686_))
                                 (_rest217691_ (cdr _rest217686_)))
                             (if (null? _rest217691_)
                                 (gxc#compile-e__2
                                  _stx217677_
                                  _arg1217684_
                                  _arg2217689_)
                                 (apply gxc#compile-e
                                        _stx217677_
                                        _arg1217684_
                                        _arg2217689_
                                        _rest217691_))))))))
              (__tmp222078 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp222079
           gxc#current-compile-methods
           __tmp222078))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl217674_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222080 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl217674_ __tmp222080))
           (let ()
             (declare (not safe))
             (table-set! _tbl217674_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217674_ '%#set! gxc#expression-subst*-setq%))
           _tbl217674_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx217657_ . _args217659_)
        (let ((__tmp222082
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217659_)
                     (gxc#compile-e__0 _stx217657_)
                     (let ((_arg1217664_ (car _args217659_))
                           (_rest217666_ (cdr _args217659_)))
                       (if (null? _rest217666_)
                           (gxc#compile-e__1 _stx217657_ _arg1217664_)
                           (let ((_arg2217669_ (car _rest217666_))
                                 (_rest217671_ (cdr _rest217666_)))
                             (if (null? _rest217671_)
                                 (gxc#compile-e__2
                                  _stx217657_
                                  _arg1217664_
                                  _arg2217669_)
                                 (apply gxc#compile-e
                                        _stx217657_
                                        _arg1217664_
                                        _arg2217669_
                                        _rest217671_))))))))
              (__tmp222081 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp222082
           gxc#current-compile-methods
           __tmp222081))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl217654_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222083 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl217654_ __tmp222083))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217654_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217654_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217654_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl217654_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl217650_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222084 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl217650_ __tmp222084))
           (let ()
             (declare (not safe))
             (table-set! _tbl217650_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217650_ '%#set! gxc#find-var-refs-setq%))
           _tbl217650_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx217633_ . _args217635_)
        (let ((__tmp222086
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217635_)
                     (gxc#compile-e__0 _stx217633_)
                     (let ((_arg1217640_ (car _args217635_))
                           (_rest217642_ (cdr _args217635_)))
                       (if (null? _rest217642_)
                           (gxc#compile-e__1 _stx217633_ _arg1217640_)
                           (let ((_arg2217645_ (car _rest217642_))
                                 (_rest217647_ (cdr _rest217642_)))
                             (if (null? _rest217647_)
                                 (gxc#compile-e__2
                                  _stx217633_
                                  _arg1217640_
                                  _arg2217645_)
                                 (apply gxc#compile-e
                                        _stx217633_
                                        _arg1217640_
                                        _arg2217645_
                                        _rest217647_))))))))
              (__tmp222085 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp222086
           gxc#current-compile-methods
           __tmp222085))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl217630_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222087 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl217630_ __tmp222087))
           (let ()
             (declare (not safe))
             (table-set! _tbl217630_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217630_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl217630_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx217613_ . _args217615_)
        (let ((__tmp222089
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217615_)
                     (gxc#compile-e__0 _stx217613_)
                     (let ((_arg1217620_ (car _args217615_))
                           (_rest217622_ (cdr _args217615_)))
                       (if (null? _rest217622_)
                           (gxc#compile-e__1 _stx217613_ _arg1217620_)
                           (let ((_arg2217625_ (car _rest217622_))
                                 (_rest217627_ (cdr _rest217622_)))
                             (if (null? _rest217627_)
                                 (gxc#compile-e__2
                                  _stx217613_
                                  _arg1217620_
                                  _arg2217625_)
                                 (apply gxc#compile-e
                                        _stx217613_
                                        _arg1217620_
                                        _arg2217625_
                                        _rest217627_))))))))
              (__tmp222088 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp222089
           gxc#current-compile-methods
           __tmp222088))))
    (define gxc#xform-identity
      (lambda (_stx217610_ . _args217611_) _stx217610_))
    (define gxc#xform-wrap-source
      (lambda (_stx217607_ _src-stx217608_)
        (let ((__tmp222090
               (let () (declare (not safe)) (gx#stx-source _src-stx217608_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx217607_ __tmp222090))))
    (define gxc#xform-apply-compile-e
      (lambda (_args217594_)
        (lambda (_stx217596_)
          (if (let () (declare (not safe)) (null? _args217594_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx217596_))
              (let ((_arg1217598_ (car _args217594_))
                    (_rest217600_ (cdr _args217594_)))
                (if (let () (declare (not safe)) (null? _rest217600_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx217596_ _arg1217598_))
                    (let ((_arg2217603_ (car _rest217600_))
                          (_rest217605_ (cdr _rest217600_)))
                      (if (let () (declare (not safe)) (null? _rest217605_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx217596_
                             _arg1217598_
                             _arg2217603_))
                          (apply gxc#compile-e
                                 _stx217596_
                                 _arg1217598_
                                 _arg2217603_
                                 _rest217605_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx217553_ . _args217554_)
        (let* ((_g217556217566_
                (lambda (_g217557217563_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217557217563_))))
               (_g217555217591_
                (lambda (_g217557217569_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217557217569_))
                      (let ((_e217561217571_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217557217569_))))
                        (let ((_hd217560217574_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217561217571_)))
                              (_tl217559217576_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217561217571_))))
                          ((lambda (_L217579_)
                             (let* ((_forms217589_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args217554_))
                                          _L217579_))
                                    (__tmp222091
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms217589_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp222091
                                _stx217553_)))
                           _tl217559217576_)))
                      (let ()
                        (declare (not safe))
                        (_g217556217566_ _g217557217569_))))))
          (declare (not safe))
          (_g217555217591_ _stx217553_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx217511_ . _args217512_)
        (let* ((_g217514217524_
                (lambda (_g217515217521_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217515217521_))))
               (_g217513217550_
                (lambda (_g217515217527_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217515217527_))
                      (let ((_e217519217529_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217515217527_))))
                        (let ((_hd217518217532_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217519217529_)))
                              (_tl217517217534_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217519217529_))))
                          ((lambda (_L217537_)
                             (let ((__tmp222094
                                    (lambda ()
                                      (let* ((_forms217548_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args217512_))
                                                   _L217537_))
                                             (__tmp222095
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms217548_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp222095
                                         _stx217511_))))
                                   (__tmp222092
                                    (let ((__tmp222093
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp222093 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp222094
                                gx#current-expander-phi
                                __tmp222092)))
                           _tl217517217534_)))
                      (let ()
                        (declare (not safe))
                        (_g217514217524_ _g217515217527_))))))
          (declare (not safe))
          (_g217513217550_ _stx217511_))))
    (define gxc#xform-module%
      (lambda (_stx217439_ . _args217440_)
        (let* ((_g217442217456_
                (lambda (_g217443217453_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217443217453_))))
               (_g217441217508_
                (lambda (_g217443217459_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217443217459_))
                      (let ((_e217448217461_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217443217459_))))
                        (let ((_hd217447217464_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217448217461_)))
                              (_tl217446217466_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217448217461_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217446217466_))
                              (let ((_e217451217469_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217446217466_))))
                                (let ((_hd217450217472_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217451217469_)))
                                      (_tl217449217474_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217451217469_))))
                                  ((lambda (_L217477_ _L217478_)
                                     (let* ((_ctx217491_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L217478_)))
                                            (_code217493_
                                             (##structure-ref
                                              _ctx217491_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code217505_
                                             (let ((__tmp222096
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args217440_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code217493_))
                                                          (let ((_arg1217496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args217440_))
                        (_rest217498_ (cdr _args217440_)))
                    (if (let () (declare (not safe)) (null? _rest217498_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code217493_ _arg1217496_))
                        (let ((_arg2217501_ (car _rest217498_))
                              (_rest217503_ (cdr _rest217498_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest217503_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code217493_
                                 _arg1217496_
                                 _arg2217501_))
                              (apply gxc#compile-e
                                     _code217493_
                                     _arg1217496_
                                     _arg2217501_
                                     _rest217503_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp222096
                                                gx#current-expander-context
                                                _ctx217491_))))
                                       (##structure-set!
                                        _ctx217491_
                                        _code217505_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp222097
                                              (let ((__tmp222098
                                                     (let ((__tmp222099
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code217505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L217478_ __tmp222099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp222098))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp222097
                                          _stx217439_))))
                                   _tl217449217474_
                                   _hd217450217472_)))
                              (let ()
                                (declare (not safe))
                                (_g217442217456_ _g217443217459_)))))
                      (let ()
                        (declare (not safe))
                        (_g217442217456_ _g217443217459_))))))
          (declare (not safe))
          (_g217441217508_ _stx217439_))))
    (define gxc#xform-define-values%
      (lambda (_stx217360_ . _args217361_)
        (let* ((_g217363217380_
                (lambda (_g217364217377_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217364217377_))))
               (_g217362217436_
                (lambda (_g217364217383_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217364217383_))
                      (let ((_e217369217385_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217364217383_))))
                        (let ((_hd217368217388_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217369217385_)))
                              (_tl217367217390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217369217385_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217367217390_))
                              (let ((_e217372217393_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217367217390_))))
                                (let ((_hd217371217396_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217372217393_)))
                                      (_tl217370217398_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217372217393_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl217370217398_))
                                      (let ((_e217375217401_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl217370217398_))))
                                        (let ((_hd217374217404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e217375217401_)))
                                              (_tl217373217406_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e217375217401_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl217373217406_))
                                              ((lambda (_L217409_ _L217410_)
                                                 (let* ((_expr217434_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args217361_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L217409_))
                     (let ((_arg1217425_ (car _args217361_))
                           (_rest217427_ (cdr _args217361_)))
                       (if (let () (declare (not safe)) (null? _rest217427_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L217409_ _arg1217425_))
                           (let ((_arg2217430_ (car _rest217427_))
                                 (_rest217432_ (cdr _rest217427_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest217432_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L217409_
                                    _arg1217425_
                                    _arg2217430_))
                                 (apply gxc#compile-e
                                        _L217409_
                                        _arg1217425_
                                        _arg2217430_
                                        _rest217432_)))))))
                (__tmp222100
                 (let ((__tmp222101
                        (let ((__tmp222102
                               (let ()
                                 (declare (not safe))
                                 (cons _expr217434_ '()))))
                          (declare (not safe))
                          (cons _L217410_ __tmp222102))))
                   (declare (not safe))
                   (cons '%#define-values __tmp222101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp222100
                                                    _stx217360_)))
                                               _hd217374217404_
                                               _hd217371217396_)
                                              (let ()
                                                (declare (not safe))
                                                (_g217363217380_
                                                 _g217364217383_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g217363217380_ _g217364217383_)))))
                              (let ()
                                (declare (not safe))
                                (_g217363217380_ _g217364217383_)))))
                      (let ()
                        (declare (not safe))
                        (_g217363217380_ _g217364217383_))))))
          (declare (not safe))
          (_g217362217436_ _stx217360_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx217280_ . _args217281_)
        (let* ((_g217283217300_
                (lambda (_g217284217297_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217284217297_))))
               (_g217282217357_
                (lambda (_g217284217303_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217284217303_))
                      (let ((_e217289217305_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217284217303_))))
                        (let ((_hd217288217308_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217289217305_)))
                              (_tl217287217310_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217289217305_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217287217310_))
                              (let ((_e217292217313_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217287217310_))))
                                (let ((_hd217291217316_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217292217313_)))
                                      (_tl217290217318_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217292217313_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl217290217318_))
                                      (let ((_e217295217321_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl217290217318_))))
                                        (let ((_hd217294217324_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e217295217321_)))
                                              (_tl217293217326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e217295217321_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl217293217326_))
                                              ((lambda (_L217329_ _L217330_)
                                                 (let ((__tmp222105
                                                        (lambda ()
                                                          (let* ((_expr217355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args217281_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L217329_))
                              (let ((_arg1217346_ (car _args217281_))
                                    (_rest217348_ (cdr _args217281_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest217348_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L217329_
                                       _arg1217346_))
                                    (let ((_arg2217351_ (car _rest217348_))
                                          (_rest217353_ (cdr _rest217348_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest217353_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L217329_
                                             _arg1217346_
                                             _arg2217351_))
                                          (apply gxc#compile-e
                                                 _L217329_
                                                 _arg1217346_
                                                 _arg2217351_
                                                 _rest217353_)))))))
                         (__tmp222106
                          (let ((__tmp222107
                                 (let ((__tmp222108
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr217355_ '()))))
                                   (declare (not safe))
                                   (cons _L217330_ __tmp222108))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp222107))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp222106 _stx217280_))))
               (__tmp222103
                (let ((__tmp222104 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp222104 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp222105
                                                    gx#current-expander-phi
                                                    __tmp222103)))
                                               _hd217294217324_
                                               _hd217291217316_)
                                              (let ()
                                                (declare (not safe))
                                                (_g217283217300_
                                                 _g217284217303_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g217283217300_ _g217284217303_)))))
                              (let ()
                                (declare (not safe))
                                (_g217283217300_ _g217284217303_)))))
                      (let ()
                        (declare (not safe))
                        (_g217283217300_ _g217284217303_))))))
          (declare (not safe))
          (_g217282217357_ _stx217280_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx217201_ . _args217202_)
        (let* ((_g217204217221_
                (lambda (_g217205217218_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217205217218_))))
               (_g217203217277_
                (lambda (_g217205217224_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217205217224_))
                      (let ((_e217210217226_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217205217224_))))
                        (let ((_hd217209217229_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217210217226_)))
                              (_tl217208217231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217210217226_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217208217231_))
                              (let ((_e217213217234_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217208217231_))))
                                (let ((_hd217212217237_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217213217234_)))
                                      (_tl217211217239_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217213217234_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl217211217239_))
                                      (let ((_e217216217242_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl217211217239_))))
                                        (let ((_hd217215217245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e217216217242_)))
                                              (_tl217214217247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e217216217242_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl217214217247_))
                                              ((lambda (_L217250_ _L217251_)
                                                 (let* ((_expr217275_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args217202_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L217250_))
                     (let ((_arg1217266_ (car _args217202_))
                           (_rest217268_ (cdr _args217202_)))
                       (if (let () (declare (not safe)) (null? _rest217268_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L217250_ _arg1217266_))
                           (let ((_arg2217271_ (car _rest217268_))
                                 (_rest217273_ (cdr _rest217268_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest217273_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L217250_
                                    _arg1217266_
                                    _arg2217271_))
                                 (apply gxc#compile-e
                                        _L217250_
                                        _arg1217266_
                                        _arg2217271_
                                        _rest217273_)))))))
                (__tmp222109
                 (let ((__tmp222110
                        (let ((__tmp222111
                               (let ()
                                 (declare (not safe))
                                 (cons _expr217275_ '()))))
                          (declare (not safe))
                          (cons _L217251_ __tmp222111))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp222110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp222109
                                                    _stx217201_)))
                                               _hd217215217245_
                                               _hd217212217237_)
                                              (let ()
                                                (declare (not safe))
                                                (_g217204217221_
                                                 _g217205217224_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g217204217221_ _g217205217224_)))))
                              (let ()
                                (declare (not safe))
                                (_g217204217221_ _g217205217224_)))))
                      (let ()
                        (declare (not safe))
                        (_g217204217221_ _g217205217224_))))))
          (declare (not safe))
          (_g217203217277_ _stx217201_))))
    (define gxc#xform-lambda%
      (lambda (_stx217144_ . _args217145_)
        (let* ((_g217147217161_
                (lambda (_g217148217158_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217148217158_))))
               (_g217146217198_
                (lambda (_g217148217164_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217148217164_))
                      (let ((_e217153217166_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217148217164_))))
                        (let ((_hd217152217169_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217153217166_)))
                              (_tl217151217171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217153217166_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217151217171_))
                              (let ((_e217156217174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217151217171_))))
                                (let ((_hd217155217177_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217156217174_)))
                                      (_tl217154217179_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217156217174_))))
                                  ((lambda (_L217182_ _L217183_)
                                     (let* ((_body217196_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args217145_))
                                                  _L217182_))
                                            (__tmp222112
                                             (let ((__tmp222113
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L217183_
                                                            _body217196_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp222113))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp222112
                                        _stx217144_)))
                                   _tl217154217179_
                                   _hd217155217177_)))
                              (let ()
                                (declare (not safe))
                                (_g217147217161_ _g217148217164_)))))
                      (let ()
                        (declare (not safe))
                        (_g217147217161_ _g217148217164_))))))
          (declare (not safe))
          (_g217146217198_ _stx217144_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx217057_ . _args217058_)
        (letrec ((_clause-e217060_
                  (lambda (_clause217101_)
                    (let* ((_g217103217114_
                            (lambda (_g217104217111_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g217104217111_))))
                           (_g217102217141_
                            (lambda (_g217104217117_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g217104217117_))
                                  (let ((_e217109217119_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g217104217117_))))
                                    (let ((_hd217108217122_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e217109217119_)))
                                          (_tl217107217124_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e217109217119_))))
                                      ((lambda (_L217127_ _L217128_)
                                         (let ((_body217139_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args217058_))
                                                     _L217127_)))
                                           (declare (not safe))
                                           (cons _L217128_ _body217139_)))
                                       _tl217107217124_
                                       _hd217108217122_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g217103217114_ _g217104217117_))))))
                      (declare (not safe))
                      (_g217102217141_ _clause217101_)))))
          (let* ((_g217062217072_
                  (lambda (_g217063217069_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g217063217069_))))
                 (_g217061217098_
                  (lambda (_g217063217075_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g217063217075_))
                        (let ((_e217067217077_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g217063217075_))))
                          (let ((_hd217066217080_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e217067217077_)))
                                (_tl217065217082_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e217067217077_))))
                            ((lambda (_L217085_)
                               (let* ((_clauses217096_
                                       (map _clause-e217060_ _L217085_))
                                      (__tmp222114
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses217096_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp222114
                                  _stx217057_)))
                             _tl217065217082_)))
                        (let ()
                          (declare (not safe))
                          (_g217062217072_ _g217063217075_))))))
            (declare (not safe))
            (_g217061217098_ _stx217057_)))))
    (define gxc#xform-let-values%
      (lambda (_stx216851_ . _args216852_)
        (let* ((_g216854216887_
                (lambda (_g216855216884_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216855216884_))))
               (_g216853217054_
                (lambda (_g216855216890_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216855216890_))
                      (let ((_e216862216892_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216855216890_))))
                        (let ((_hd216861216895_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216862216892_)))
                              (_tl216860216897_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216862216892_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216860216897_))
                              (let ((_e216865216900_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216860216897_))))
                                (let ((_hd216864216903_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216865216900_)))
                                      (_tl216863216905_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216865216900_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd216864216903_))
                                      (let ((_g222115_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd216864216903_
                                                '0))))
                                        (begin
                                          (let ((_g222116_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g222115_)
                                                       (##vector-length
                                                        _g222115_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g222116_ 2)))
                                                (error "Context expects 2 values"
                                                       _g222116_)))
                                          (let ((_target216866216908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g222115_ 0)))
                                                (_tl216868216910_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g222115_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl216868216910_))
                                                (letrec ((_loop216869216913_
                                                          (lambda (_hd216867216916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr216873216918_
                           _hd216874216920_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd216867216916_))
                        (let ((_e216870216923_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd216867216916_))))
                          (let ((_lp-hd216871216926_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e216870216923_)))
                                (_lp-tl216872216928_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e216870216923_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd216871216926_))
                                (let ((_e216879216931_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd216871216926_))))
                                  (let ((_hd216878216934_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e216879216931_)))
                                        (_tl216877216936_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e216879216931_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl216877216936_))
                                        (let ((_e216882216939_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl216877216936_))))
                                          (let ((_hd216881216942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e216882216939_)))
                                                (_tl216880216944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e216882216939_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl216880216944_))
                                                (let ((__tmp222129
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd216881216942_
                                                               _expr216873216918_)))
                                                      (__tmp222128
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd216878216934_
                                                               _hd216874216920_))))
                                                  (declare (not safe))
                                                  (_loop216869216913_
                                                   _lp-tl216872216928_
                                                   __tmp222129
                                                   __tmp222128))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g216854216887_
                                                   _g216855216890_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g216854216887_ _g216855216890_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g216854216887_ _g216855216890_)))))
                        (let ((_expr216875216947_ (reverse _expr216873216918_))
                              (_hd216876216949_ (reverse _hd216874216920_)))
                          ((lambda (_L216952_ _L216953_ _L216954_ _L216955_)
                             (let* ((_g216974216990_
                                     (lambda (_g216975216987_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g216975216987_))))
                                    (_g216973217044_
                                     (lambda (_g216975216993_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g216975216993_))
                                           (let ((_g222117_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g216975216993_
                                                     '0))))
                                             (begin
                                               (let ((_g222118_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g222117_)
                                                            (##vector-length
                                                             _g222117_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g222118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g222118_)))
                                               (let ((_target216977216995_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g222117_
                                                         0)))
                                                     (_tl216979216997_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g222117_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl216979216997_))
                                                     (letrec ((_loop216980217000_
                                                               (lambda (_hd216978217003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr216984217005_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd216978217003_))
                             (let ((_e216981217008_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd216978217003_))))
                               (let ((_lp-hd216982217011_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e216981217008_)))
                                     (_lp-tl216983217013_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e216981217008_))))
                                 (let ((__tmp222125
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd216982217011_
                                                _expr216984217005_))))
                                   (declare (not safe))
                                   (_loop216980217000_
                                    _lp-tl216983217013_
                                    __tmp222125))))
                             (let ((_expr216985217016_
                                    (reverse _expr216984217005_)))
                               ((lambda (_L217019_)
                                  (let ()
                                    (let* ((_body217032_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args216852_))
                                                 _L216952_))
                                           (__tmp222119
                                            (let ((__tmp222120
                                                   (let ((__tmp222121
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L217019_
                                                               _L216954_))
                                                            (let ((__tmp222122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g217033217037_
                                    _g217034217039_
                                    _g217035217041_)
                             (let ((__tmp222123
                                    (let ((__tmp222124
                                           (let ()
                                             (declare (not safe))
                                             (cons _g217033217037_ '()))))
                                      (declare (not safe))
                                      (cons _g217034217039_ __tmp222124))))
                               (declare (not safe))
                               (cons __tmp222123 _g217035217041_)))))
                      (declare (not safe))
                      (foldr2 __tmp222122 '() _L217019_ _L216954_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp222121
                                                           _body217032_))))
                                              (declare (not safe))
                                              (cons _L216955_ __tmp222120))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp222119
                                       _stx216851_))))
                                _expr216985217016_))))))
               (let ()
                 (declare (not safe))
                 (_loop216980217000_ _target216977216995_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g216974216990_
                                                        _g216975216993_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g216974216990_
                                              _g216975216993_)))))
                                    (__tmp222126
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args216852_))
                                          (let ((__tmp222127
                                                 (lambda (_g217046217049_
                                                          _g217047217051_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g217046217049_
                                                           _g217047217051_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp222127
                                                    '()
                                                    _L216953_)))))
                               (declare (not safe))
                               (_g216973217044_ __tmp222126)))
                           _tl216863216905_
                           _expr216875216947_
                           _hd216876216949_
                           _hd216861216895_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop216869216913_
                                                     _target216866216908_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g216854216887_
                                                   _g216855216890_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g216854216887_ _g216855216890_)))))
                              (let ()
                                (declare (not safe))
                                (_g216854216887_ _g216855216890_)))))
                      (let ()
                        (declare (not safe))
                        (_g216854216887_ _g216855216890_))))))
          (declare (not safe))
          (_g216853217054_ _stx216851_))))
    (define gxc#xform-operands
      (lambda (_stx216807_ . _args216808_)
        (let* ((_g216810216821_
                (lambda (_g216811216818_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216811216818_))))
               (_g216809216848_
                (lambda (_g216811216824_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216811216824_))
                      (let ((_e216816216826_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216811216824_))))
                        (let ((_hd216815216829_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216816216826_)))
                              (_tl216814216831_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216816216826_))))
                          ((lambda (_L216834_ _L216835_)
                             (let* ((_rands216846_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args216808_))
                                          _L216834_))
                                    (__tmp222130
                                     (let ()
                                       (declare (not safe))
                                       (cons _L216835_ _rands216846_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp222130
                                _stx216807_)))
                           _tl216814216831_
                           _hd216815216829_)))
                      (let ()
                        (declare (not safe))
                        (_g216810216821_ _g216811216824_))))))
          (declare (not safe))
          (_g216809216848_ _stx216807_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx216728_ . _args216729_)
        (let* ((_g216731216748_
                (lambda (_g216732216745_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216732216745_))))
               (_g216730216804_
                (lambda (_g216732216751_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216732216751_))
                      (let ((_e216737216753_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216732216751_))))
                        (let ((_hd216736216756_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216737216753_)))
                              (_tl216735216758_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216737216753_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216735216758_))
                              (let ((_e216740216761_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216735216758_))))
                                (let ((_hd216739216764_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216740216761_)))
                                      (_tl216738216766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216740216761_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl216738216766_))
                                      (let ((_e216743216769_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl216738216766_))))
                                        (let ((_hd216742216772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e216743216769_)))
                                              (_tl216741216774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e216743216769_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216741216774_))
                                              ((lambda (_L216777_ _L216778_)
                                                 (let* ((_expr216802_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args216729_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L216777_))
                     (let ((_arg1216793_ (car _args216729_))
                           (_rest216795_ (cdr _args216729_)))
                       (if (let () (declare (not safe)) (null? _rest216795_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L216777_ _arg1216793_))
                           (let ((_arg2216798_ (car _rest216795_))
                                 (_rest216800_ (cdr _rest216795_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest216800_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L216777_
                                    _arg1216793_
                                    _arg2216798_))
                                 (apply gxc#compile-e
                                        _L216777_
                                        _arg1216793_
                                        _arg2216798_
                                        _rest216800_)))))))
                (__tmp222131
                 (let ((__tmp222132
                        (let ((__tmp222133
                               (let ()
                                 (declare (not safe))
                                 (cons _expr216802_ '()))))
                          (declare (not safe))
                          (cons _L216778_ __tmp222133))))
                   (declare (not safe))
                   (cons '%#set! __tmp222132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp222131
                                                    _stx216728_)))
                                               _hd216742216772_
                                               _hd216739216764_)
                                              (let ()
                                                (declare (not safe))
                                                (_g216731216748_
                                                 _g216732216751_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g216731216748_ _g216732216751_)))))
                              (let ()
                                (declare (not safe))
                                (_g216731216748_ _g216732216751_)))))
                      (let ()
                        (declare (not safe))
                        (_g216731216748_ _g216732216751_))))))
          (declare (not safe))
          (_g216730216804_ _stx216728_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx216659_)
        (let* ((_g216661216678_
                (lambda (_g216662216675_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216662216675_))))
               (_g216660216725_
                (lambda (_g216662216681_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216662216681_))
                      (let ((_e216667216683_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216662216681_))))
                        (let ((_hd216666216686_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216667216683_)))
                              (_tl216665216688_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216667216683_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216665216688_))
                              (let ((_e216670216691_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216665216688_))))
                                (let ((_hd216669216694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216670216691_)))
                                      (_tl216668216696_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216670216691_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl216668216696_))
                                      (let ((_e216673216699_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl216668216696_))))
                                        (let ((_hd216672216702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e216673216699_)))
                                              (_tl216671216704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e216673216699_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216671216704_))
                                              ((lambda (_L216707_ _L216708_)
                                                 (let ((_sym216723_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L216708_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym216723_))
                                                   (let ((__tmp222134
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp222134
                                                      _sym216723_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L216707_))))
                                               _hd216672216702_
                                               _hd216669216694_)
                                              (let ()
                                                (declare (not safe))
                                                (_g216661216678_
                                                 _g216662216681_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g216661216678_ _g216662216681_)))))
                              (let ()
                                (declare (not safe))
                                (_g216661216678_ _g216662216681_)))))
                      (let ()
                        (declare (not safe))
                        (_g216661216678_ _g216662216681_))))))
          (declare (not safe))
          (_g216660216725_ _stx216659_))))
    (define gxc#collect-methods-call%
      (lambda (_stx216213_)
        (let* ((___stx221824221825_ _stx216213_)
               (_g216217216319_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx221824221825_)))))
          (let ((___kont221826221827_
                 (lambda (_L216609_ _L216610_ _L216611_ _L216612_ _L216613_)
                   (let ((__tmp222135
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L216610_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp222135))))
                (___kont221828221829_
                 (lambda (_L216435_ _L216436_ _L216437_ _L216438_)
                   (let ((__tmp222136
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L216435_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp222136))))
                (___kont221830221831_ (lambda () '#!void)))
            (let ((___match221959221960_
                   (lambda (_e216226216481_
                            _hd216225216484_
                            _tl216224216486_
                            _e216229216489_
                            _hd216228216492_
                            _tl216227216494_
                            _e216232216497_
                            _hd216231216500_
                            _tl216230216502_
                            _e216235216505_
                            _hd216234216508_
                            _tl216233216510_
                            _e216238216513_
                            _hd216237216516_
                            _tl216236216518_
                            _e216241216521_
                            _hd216240216524_
                            _tl216239216526_
                            _e216244216529_
                            _hd216243216532_
                            _tl216242216534_
                            _e216247216537_
                            _hd216246216540_
                            _tl216245216542_
                            _e216250216545_
                            _hd216249216548_
                            _tl216248216550_
                            _e216253216553_
                            _hd216252216556_
                            _tl216251216558_
                            _e216256216561_
                            _hd216255216564_
                            _tl216254216566_
                            _e216259216569_
                            _hd216258216572_
                            _tl216257216574_
                            _e216262216577_
                            _hd216261216580_
                            _tl216260216582_
                            _e216265216585_
                            _hd216264216588_
                            _tl216263216590_
                            _e216268216593_
                            _hd216267216596_
                            _tl216266216598_
                            _e216271216601_
                            _hd216270216604_
                            _tl216269216606_)
                     (let ((_L216609_ _hd216270216604_)
                           (_L216610_ _hd216261216580_)
                           (_L216611_ _hd216252216556_)
                           (_L216612_ _hd216243216532_)
                           (_L216613_ _hd216234216508_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L216613_
                              'bind-method!))
                           (___kont221826221827_
                            _L216609_
                            _L216610_
                            _L216611_
                            _L216612_
                            _L216613_)
                           (___kont221830221831_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx221824221825_))
                  (let ((_e216226216481_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx221824221825_))))
                    (let ((_tl216224216486_
                           (let ()
                             (declare (not safe))
                             (##cdr _e216226216481_)))
                          (_hd216225216484_
                           (let ()
                             (declare (not safe))
                             (##car _e216226216481_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl216224216486_))
                          (let ((_e216229216489_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl216224216486_))))
                            (let ((_tl216227216494_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e216229216489_)))
                                  (_hd216228216492_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e216229216489_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd216228216492_))
                                  (let ((_e216232216497_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd216228216492_))))
                                    (let ((_tl216230216502_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e216232216497_)))
                                          (_hd216231216500_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e216232216497_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd216231216500_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd216231216500_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl216230216502_))
                                                  (let ((_e216235216505_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl216230216502_))))
                                                    (let ((_tl216233216510_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e216235216505_)))
                                                          (_hd216234216508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e216235216505_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl216233216510_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl216227216494_))
                      (let ((_e216238216513_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl216227216494_))))
                        (let ((_tl216236216518_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216238216513_)))
                              (_hd216237216516_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216238216513_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd216237216516_))
                              (let ((_e216241216521_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd216237216516_))))
                                (let ((_tl216239216526_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216241216521_)))
                                      (_hd216240216524_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216241216521_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd216240216524_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd216240216524_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl216239216526_))
                                              (let ((_e216244216529_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl216239216526_))))
                                                (let ((_tl216242216534_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e216244216529_)))
                                                      (_hd216243216532_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e216244216529_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl216242216534_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl216236216518_))
                                                          (let ((_e216247216537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl216236216518_))))
                    (let ((_tl216245216542_
                           (let ()
                             (declare (not safe))
                             (##cdr _e216247216537_)))
                          (_hd216246216540_
                           (let ()
                             (declare (not safe))
                             (##car _e216247216537_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd216246216540_))
                          (let ((_e216250216545_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd216246216540_))))
                            (let ((_tl216248216550_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e216250216545_)))
                                  (_hd216249216548_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e216250216545_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd216249216548_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd216249216548_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl216248216550_))
                                          (let ((_e216253216553_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl216248216550_))))
                                            (let ((_tl216251216558_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e216253216553_)))
                                                  (_hd216252216556_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e216253216553_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl216251216558_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl216245216542_))
                                                      (let ((_e216256216561_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl216245216542_))))
                (let ((_tl216254216566_
                       (let () (declare (not safe)) (##cdr _e216256216561_)))
                      (_hd216255216564_
                       (let () (declare (not safe)) (##car _e216256216561_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd216255216564_))
                      (let ((_e216259216569_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd216255216564_))))
                        (let ((_tl216257216574_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216259216569_)))
                              (_hd216258216572_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216259216569_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd216258216572_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd216258216572_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl216257216574_))
                                      (let ((_e216262216577_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl216257216574_))))
                                        (let ((_tl216260216582_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e216262216577_)))
                                              (_hd216261216580_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e216262216577_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216260216582_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl216254216566_))
                                                  (let ((_e216265216585_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl216254216566_))))
                                                    (let ((_tl216263216590_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e216265216585_)))
                                                          (_hd216264216588_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e216265216585_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd216264216588_))
                                                          (let ((_e216268216593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd216264216588_))))
                    (let ((_tl216266216598_
                           (let ()
                             (declare (not safe))
                             (##cdr _e216268216593_)))
                          (_hd216267216596_
                           (let ()
                             (declare (not safe))
                             (##car _e216268216593_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd216267216596_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd216267216596_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl216266216598_))
                                  (let ((_e216271216601_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl216266216598_))))
                                    (let ((_tl216269216606_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e216271216601_)))
                                          (_hd216270216604_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e216271216601_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl216269216606_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216263216590_))
                                              (___match221959221960_
                                               _e216226216481_
                                               _hd216225216484_
                                               _tl216224216486_
                                               _e216229216489_
                                               _hd216228216492_
                                               _tl216227216494_
                                               _e216232216497_
                                               _hd216231216500_
                                               _tl216230216502_
                                               _e216235216505_
                                               _hd216234216508_
                                               _tl216233216510_
                                               _e216238216513_
                                               _hd216237216516_
                                               _tl216236216518_
                                               _e216241216521_
                                               _hd216240216524_
                                               _tl216239216526_
                                               _e216244216529_
                                               _hd216243216532_
                                               _tl216242216534_
                                               _e216247216537_
                                               _hd216246216540_
                                               _tl216245216542_
                                               _e216250216545_
                                               _hd216249216548_
                                               _tl216248216550_
                                               _e216253216553_
                                               _hd216252216556_
                                               _tl216251216558_
                                               _e216256216561_
                                               _hd216255216564_
                                               _tl216254216566_
                                               _e216259216569_
                                               _hd216258216572_
                                               _tl216257216574_
                                               _e216262216577_
                                               _hd216261216580_
                                               _tl216260216582_
                                               _e216265216585_
                                               _hd216264216588_
                                               _tl216263216590_
                                               _e216268216593_
                                               _hd216267216596_
                                               _tl216266216598_
                                               _e216271216601_
                                               _hd216270216604_
                                               _tl216269216606_)
                                              (___kont221830221831_))
                                          (___kont221830221831_))))
                                  (___kont221830221831_))
                              (___kont221830221831_))
                          (___kont221830221831_))))
                  (___kont221830221831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl216254216566_))
                                                      (if (let ((__tmp222137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp222137 'bind-method!))
                  (let ((_L216435_ _hd216261216580_)
                        (_L216436_ _hd216252216556_)
                        (_L216437_ _hd216243216532_)
                        (_L216438_ _hd216234216508_))
                    (___kont221828221829_
                     _L216435_
                     _L216436_
                     _L216437_
                     _L216438_))
                  (___kont221830221831_))
              (___kont221830221831_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont221830221831_))))
                                      (___kont221830221831_))
                                  (___kont221830221831_))
                              (___kont221830221831_))))
                      (___kont221830221831_))))
              (___kont221830221831_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont221830221831_))))
                                          (___kont221830221831_))
                                      (___kont221830221831_))
                                  (___kont221830221831_))))
                          (___kont221830221831_))))
                  (___kont221830221831_))
              (___kont221830221831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont221830221831_))
                                          (___kont221830221831_))
                                      (___kont221830221831_))))
                              (___kont221830221831_))))
                      (___kont221830221831_))
                  (___kont221830221831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont221830221831_))
                                              (___kont221830221831_))
                                          (___kont221830221831_))))
                                  (___kont221830221831_))))
                          (___kont221830221831_))))
                  (___kont221830221831_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx216160_ _id216161_ _new-id216162_)
        (let* ((_g216164216177_
                (lambda (_g216165216174_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216165216174_))))
               (_g216163216210_
                (lambda (_g216165216180_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216165216180_))
                      (let ((_e216169216182_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216165216180_))))
                        (let ((_hd216168216185_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216169216182_)))
                              (_tl216167216187_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216169216182_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216167216187_))
                              (let ((_e216172216190_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216167216187_))))
                                (let ((_hd216171216193_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216172216190_)))
                                      (_tl216170216195_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216172216190_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl216170216195_))
                                      ((lambda (_L216198_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L216198_
                                                _id216161_))
                                             (let ((__tmp222138
                                                    (let ((__tmp222139
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id216162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp222139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp222138
                                                _stx216160_))
                                             _stx216160_))
                                       _hd216171216193_)
                                      (let ()
                                        (declare (not safe))
                                        (_g216164216177_ _g216165216180_)))))
                              (let ()
                                (declare (not safe))
                                (_g216164216177_ _g216165216180_)))))
                      (let ()
                        (declare (not safe))
                        (_g216164216177_ _g216165216180_))))))
          (declare (not safe))
          (_g216163216210_ _stx216160_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx216101_ _subst216102_)
        (let* ((_g216104216117_
                (lambda (_g216105216114_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216105216114_))))
               (_g216103216157_
                (lambda (_g216105216120_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216105216120_))
                      (let ((_e216109216122_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216105216120_))))
                        (let ((_hd216108216125_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216109216122_)))
                              (_tl216107216127_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216109216122_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216107216127_))
                              (let ((_e216112216130_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216107216127_))))
                                (let ((_hd216111216133_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216112216130_)))
                                      (_tl216110216135_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216112216130_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl216110216135_))
                                      ((lambda (_L216138_)
                                         (let ((_$e216152_
                                                (let ((__tmp222140
                                                       (lambda (_sub216150_)
                                                         (let ((__tmp222141
                                                                (car _sub216150_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L216138_
                                                            __tmp222141)))))
                                                  (declare (not safe))
                                                  (find __tmp222140
                                                        _subst216102_))))
                                           (if _$e216152_
                                               ((lambda (_sub216155_)
                                                  (let ((__tmp222142
                                                         (let ((__tmp222143
                                                                (let ((__tmp222144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub216155_)))
                          (declare (not safe))
                          (cons __tmp222144 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp222143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp222142
                                                     _stx216101_)))
                                                _$e216152_)
                                               _stx216101_)))
                                       _hd216111216133_)
                                      (let ()
                                        (declare (not safe))
                                        (_g216104216117_ _g216105216120_)))))
                              (let ()
                                (declare (not safe))
                                (_g216104216117_ _g216105216120_)))))
                      (let ()
                        (declare (not safe))
                        (_g216104216117_ _g216105216120_))))))
          (declare (not safe))
          (_g216103216157_ _stx216101_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx216029_ _id216030_ _new-id216031_)
        (let* ((_g216033216050_
                (lambda (_g216034216047_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216034216047_))))
               (_g216032216098_
                (lambda (_g216034216053_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216034216053_))
                      (let ((_e216039216055_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216034216053_))))
                        (let ((_hd216038216058_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216039216055_)))
                              (_tl216037216060_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216039216055_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216037216060_))
                              (let ((_e216042216063_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216037216060_))))
                                (let ((_hd216041216066_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216042216063_)))
                                      (_tl216040216068_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216042216063_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl216040216068_))
                                      (let ((_e216045216071_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl216040216068_))))
                                        (let ((_hd216044216074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e216045216071_)))
                                              (_tl216043216076_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e216045216071_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216043216076_))
                                              ((lambda (_L216079_ _L216080_)
                                                 (let ((_new-expr216095_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L216079_
                                                           _id216030_
                                                           _new-id216031_)))
                                                       (_new-xid216096_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L216080_
                                                               _id216030_))
                                                            _new-id216031_
                                                            _L216080_)))
                                                   (let ((__tmp222145
                                                          (let ((__tmp222146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp222147
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr216095_ '()))))
                           (declare (not safe))
                           (cons _new-xid216096_ __tmp222147))))
                    (declare (not safe))
                    (cons '%#set! __tmp222146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp222145
                                                      _stx216029_))))
                                               _hd216044216074_
                                               _hd216041216066_)
                                              (let ()
                                                (declare (not safe))
                                                (_g216033216050_
                                                 _g216034216053_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g216033216050_ _g216034216053_)))))
                              (let ()
                                (declare (not safe))
                                (_g216033216050_ _g216034216053_)))))
                      (let ()
                        (declare (not safe))
                        (_g216033216050_ _g216034216053_))))))
          (declare (not safe))
          (_g216032216098_ _stx216029_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx215953_ _subst215954_)
        (let* ((_g215956215973_
                (lambda (_g215957215970_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215957215970_))))
               (_g215955216026_
                (lambda (_g215957215976_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215957215976_))
                      (let ((_e215962215978_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215957215976_))))
                        (let ((_hd215961215981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215962215978_)))
                              (_tl215960215983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215962215978_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215960215983_))
                              (let ((_e215965215986_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215960215983_))))
                                (let ((_hd215964215989_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215965215986_)))
                                      (_tl215963215991_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215965215986_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215963215991_))
                                      (let ((_e215968215994_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215963215991_))))
                                        (let ((_hd215967215997_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215968215994_)))
                                              (_tl215966215999_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215968215994_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215966215999_))
                                              ((lambda (_L216002_ _L216003_)
                                                 (let ((_new-expr216023_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L216002_
                                                           _subst215954_)))
                                                       (_new-xid216024_
                                                        (let ((_$e216020_
                                                               (let ((__tmp222148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub216018_)
                                (let ((__tmp222149 (car _sub216018_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L216003_
                                   __tmp222149)))))
                         (declare (not safe))
                         (find __tmp222148 _subst215954_))))
                  (if _$e216020_ (cdr _$e216020_) _L216003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp222150
                                                          (let ((__tmp222151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp222152
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr216023_ '()))))
                           (declare (not safe))
                           (cons _new-xid216024_ __tmp222152))))
                    (declare (not safe))
                    (cons '%#set! __tmp222151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp222150
                                                      _stx215953_))))
                                               _hd215967215997_
                                               _hd215964215989_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215956215973_
                                                 _g215957215976_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215956215973_ _g215957215976_)))))
                              (let ()
                                (declare (not safe))
                                (_g215956215973_ _g215957215976_)))))
                      (let ()
                        (declare (not safe))
                        (_g215956215973_ _g215957215976_))))))
          (declare (not safe))
          (_g215955216026_ _stx215953_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx215899_ _ht215900_)
        (let* ((_g215902215915_
                (lambda (_g215903215912_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215903215912_))))
               (_g215901215950_
                (lambda (_g215903215918_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215903215918_))
                      (let ((_e215907215920_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215903215918_))))
                        (let ((_hd215906215923_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215907215920_)))
                              (_tl215905215925_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215907215920_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215905215925_))
                              (let ((_e215910215928_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215905215925_))))
                                (let ((_hd215909215931_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215910215928_)))
                                      (_tl215908215933_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215910215928_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl215908215933_))
                                      ((lambda (_L215936_)
                                         (let ((_eid215948_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L215936_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht215900_
                                            _eid215948_
                                            1+
                                            '0)))
                                       _hd215909215931_)
                                      (let ()
                                        (declare (not safe))
                                        (_g215902215915_ _g215903215918_)))))
                              (let ()
                                (declare (not safe))
                                (_g215902215915_ _g215903215918_)))))
                      (let ()
                        (declare (not safe))
                        (_g215902215915_ _g215903215918_))))))
          (declare (not safe))
          (_g215901215950_ _stx215899_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx215829_ _ht215830_)
        (let* ((_g215832215849_
                (lambda (_g215833215846_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215833215846_))))
               (_g215831215896_
                (lambda (_g215833215852_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215833215852_))
                      (let ((_e215838215854_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215833215852_))))
                        (let ((_hd215837215857_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215838215854_)))
                              (_tl215836215859_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215838215854_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215836215859_))
                              (let ((_e215841215862_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215836215859_))))
                                (let ((_hd215840215865_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215841215862_)))
                                      (_tl215839215867_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215841215862_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215839215867_))
                                      (let ((_e215844215870_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215839215867_))))
                                        (let ((_hd215843215873_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215844215870_)))
                                              (_tl215842215875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215844215870_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215842215875_))
                                              ((lambda (_L215878_ _L215879_)
                                                 (let ((_eid215894_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L215879_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht215830_
                                                      _eid215894_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L215878_
                                                      _ht215830_))))
                                               _hd215843215873_
                                               _hd215840215865_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215832215849_
                                                 _g215833215852_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215832215849_ _g215833215852_)))))
                              (let ()
                                (declare (not safe))
                                (_g215832215849_ _g215833215852_)))))
                      (let ()
                        (declare (not safe))
                        (_g215832215849_ _g215833215852_))))))
          (declare (not safe))
          (_g215831215896_ _stx215829_))))
    (define gxc#find-body%
      (lambda (_stx215742_ _arg215743_)
        (let* ((_g215745215764_
                (lambda (_g215746215761_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215746215761_))))
               (_g215744215826_
                (lambda (_g215746215767_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215746215767_))
                      (let ((_e215750215769_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215746215767_))))
                        (let ((_hd215749215772_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215750215769_)))
                              (_tl215748215774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215750215769_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl215748215774_))
                              (let ((_g222153_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl215748215774_
                                        '0))))
                                (begin
                                  (let ((_g222154_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g222153_)
                                               (##vector-length _g222153_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g222154_ 2)))
                                        (error "Context expects 2 values"
                                               _g222154_)))
                                  (let ((_target215751215777_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g222153_ 0)))
                                        (_tl215753215779_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g222153_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl215753215779_))
                                        (letrec ((_loop215754215782_
                                                  (lambda (_hd215752215785_
                                                           _expr215758215787_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd215752215785_))
                                                        (let ((_e215755215790_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd215752215785_))))
                  (let ((_lp-hd215756215793_
                         (let () (declare (not safe)) (##car _e215755215790_)))
                        (_lp-tl215757215795_
                         (let ()
                           (declare (not safe))
                           (##cdr _e215755215790_))))
                    (let ((__tmp222158
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd215756215793_ _expr215758215787_))))
                      (declare (not safe))
                      (_loop215754215782_ _lp-tl215757215795_ __tmp222158))))
                (let ((_expr215759215798_ (reverse _expr215758215787_)))
                  ((lambda (_L215801_)
                     (let ((__tmp222157
                            (lambda (_g215814215816_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g215814215816_
                                 _arg215743_))))
                           (__tmp222155
                            (let ((__tmp222156
                                   (lambda (_g215818215821_ _g215819215823_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g215818215821_
                                             _g215819215823_)))))
                              (declare (not safe))
                              (foldr1 __tmp222156 '() _L215801_))))
                       (declare (not safe))
                       (ormap1 __tmp222157 __tmp222155)))
                   _expr215759215798_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop215754215782_
                                             _target215751215777_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g215745215764_
                                           _g215746215767_))))))
                              (let ()
                                (declare (not safe))
                                (_g215745215764_ _g215746215767_)))))
                      (let ()
                        (declare (not safe))
                        (_g215745215764_ _g215746215767_))))))
          (declare (not safe))
          (_g215744215826_ _stx215742_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx215674_ _arg215675_)
        (let* ((_g215677215694_
                (lambda (_g215678215691_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215678215691_))))
               (_g215676215739_
                (lambda (_g215678215697_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215678215697_))
                      (let ((_e215683215699_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215678215697_))))
                        (let ((_hd215682215702_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215683215699_)))
                              (_tl215681215704_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215683215699_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215681215704_))
                              (let ((_e215686215707_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215681215704_))))
                                (let ((_hd215685215710_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215686215707_)))
                                      (_tl215684215712_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215686215707_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215684215712_))
                                      (let ((_e215689215715_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215684215712_))))
                                        (let ((_hd215688215718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215689215715_)))
                                              (_tl215687215720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215689215715_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215687215720_))
                                              ((lambda (_L215723_ _L215724_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L215723_
                                                    _arg215675_)))
                                               _hd215688215718_
                                               _hd215685215710_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215677215694_
                                                 _g215678215697_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215677215694_ _g215678215697_)))))
                              (let ()
                                (declare (not safe))
                                (_g215677215694_ _g215678215697_)))))
                      (let ()
                        (declare (not safe))
                        (_g215677215694_ _g215678215697_))))))
          (declare (not safe))
          (_g215676215739_ _stx215674_))))
    (define gxc#find-lambda%
      (lambda (_stx215606_ _arg215607_)
        (let* ((_g215609215626_
                (lambda (_g215610215623_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215610215623_))))
               (_g215608215671_
                (lambda (_g215610215629_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215610215629_))
                      (let ((_e215615215631_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215610215629_))))
                        (let ((_hd215614215634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215615215631_)))
                              (_tl215613215636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215615215631_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215613215636_))
                              (let ((_e215618215639_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215613215636_))))
                                (let ((_hd215617215642_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215618215639_)))
                                      (_tl215616215644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215618215639_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215616215644_))
                                      (let ((_e215621215647_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215616215644_))))
                                        (let ((_hd215620215650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215621215647_)))
                                              (_tl215619215652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215621215647_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215619215652_))
                                              ((lambda (_L215655_ _L215656_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L215655_
                                                    _arg215607_)))
                                               _hd215620215650_
                                               _hd215617215642_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215609215626_
                                                 _g215610215629_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215609215626_ _g215610215629_)))))
                              (let ()
                                (declare (not safe))
                                (_g215609215626_ _g215610215629_)))))
                      (let ()
                        (declare (not safe))
                        (_g215609215626_ _g215610215629_))))))
          (declare (not safe))
          (_g215608215671_ _stx215606_))))
    (define gxc#find-case-lambda%
      (lambda (_stx215488_ _arg215489_)
        (let* ((_g215491215519_
                (lambda (_g215492215516_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215492215516_))))
               (_g215490215603_
                (lambda (_g215492215522_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215492215522_))
                      (let ((_e215497215524_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215492215522_))))
                        (let ((_hd215496215527_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215497215524_)))
                              (_tl215495215529_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215497215524_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl215495215529_))
                              (let ((_g222159_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl215495215529_
                                        '0))))
                                (begin
                                  (let ((_g222160_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g222159_)
                                               (##vector-length _g222159_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g222160_ 2)))
                                        (error "Context expects 2 values"
                                               _g222160_)))
                                  (let ((_target215498215532_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g222159_ 0)))
                                        (_tl215500215534_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g222159_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl215500215534_))
                                        (letrec ((_loop215501215537_
                                                  (lambda (_hd215499215540_
                                                           _body215505215542_
                                                           _hd215506215544_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd215499215540_))
                                                        (let ((_e215502215547_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd215499215540_))))
                  (let ((_lp-hd215503215550_
                         (let () (declare (not safe)) (##car _e215502215547_)))
                        (_lp-tl215504215552_
                         (let ()
                           (declare (not safe))
                           (##cdr _e215502215547_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd215503215550_))
                        (let ((_e215511215555_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd215503215550_))))
                          (let ((_hd215510215558_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e215511215555_)))
                                (_tl215509215560_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e215511215555_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl215509215560_))
                                (let ((_e215514215563_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl215509215560_))))
                                  (let ((_hd215513215566_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e215514215563_)))
                                        (_tl215512215568_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e215514215563_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl215512215568_))
                                        (let ((__tmp222165
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd215513215566_
                                                       _body215505215542_)))
                                              (__tmp222164
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd215510215558_
                                                       _hd215506215544_))))
                                          (declare (not safe))
                                          (_loop215501215537_
                                           _lp-tl215504215552_
                                           __tmp222165
                                           __tmp222164))
                                        (let ()
                                          (declare (not safe))
                                          (_g215491215519_ _g215492215522_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g215491215519_ _g215492215522_)))))
                        (let ()
                          (declare (not safe))
                          (_g215491215519_ _g215492215522_)))))
                (let ((_body215507215571_ (reverse _body215505215542_))
                      (_hd215508215573_ (reverse _hd215506215544_)))
                  ((lambda (_L215576_ _L215577_)
                     (let ((__tmp222163
                            (lambda (_g215591215593_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g215591215593_
                                 _arg215489_))))
                           (__tmp222161
                            (let ((__tmp222162
                                   (lambda (_g215595215598_ _g215596215600_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g215595215598_
                                             _g215596215600_)))))
                              (declare (not safe))
                              (foldr1 __tmp222162 '() _L215576_))))
                       (declare (not safe))
                       (ormap1 __tmp222163 __tmp222161)))
                   _body215507215571_
                   _hd215508215573_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop215501215537_
                                             _target215498215532_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g215491215519_
                                           _g215492215522_))))))
                              (let ()
                                (declare (not safe))
                                (_g215491215519_ _g215492215522_)))))
                      (let ()
                        (declare (not safe))
                        (_g215491215519_ _g215492215522_))))))
          (declare (not safe))
          (_g215490215603_ _stx215488_))))
    (define gxc#find-let-values%
      (lambda (_stx215338_ _arg215339_)
        (let* ((_g215341215376_
                (lambda (_g215342215373_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215342215373_))))
               (_g215340215485_
                (lambda (_g215342215379_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215342215379_))
                      (let ((_e215348215381_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215342215379_))))
                        (let ((_hd215347215384_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215348215381_)))
                              (_tl215346215386_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215348215381_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215346215386_))
                              (let ((_e215351215389_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215346215386_))))
                                (let ((_hd215350215392_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215351215389_)))
                                      (_tl215349215394_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215351215389_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd215350215392_))
                                      (let ((_g222166_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd215350215392_
                                                '0))))
                                        (begin
                                          (let ((_g222167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g222166_)
                                                       (##vector-length
                                                        _g222166_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g222167_ 2)))
                                                (error "Context expects 2 values"
                                                       _g222167_)))
                                          (let ((_target215352215397_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g222166_ 0)))
                                                (_tl215354215399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g222166_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl215354215399_))
                                                (letrec ((_loop215355215402_
                                                          (lambda (_hd215353215405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr215359215407_
                           _bind215360215409_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd215353215405_))
                        (let ((_e215356215412_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd215353215405_))))
                          (let ((_lp-hd215357215415_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e215356215412_)))
                                (_lp-tl215358215417_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e215356215412_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd215357215415_))
                                (let ((_e215365215420_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd215357215415_))))
                                  (let ((_hd215364215423_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e215365215420_)))
                                        (_tl215363215425_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e215365215420_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl215363215425_))
                                        (let ((_e215368215428_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl215363215425_))))
                                          (let ((_hd215367215431_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e215368215428_)))
                                                (_tl215366215433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e215368215428_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl215366215433_))
                                                (let ((__tmp222172
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd215367215431_
                                                               _expr215359215407_)))
                                                      (__tmp222171
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd215364215423_
                                                               _bind215360215409_))))
                                                  (declare (not safe))
                                                  (_loop215355215402_
                                                   _lp-tl215358215417_
                                                   __tmp222172
                                                   __tmp222171))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g215341215376_
                                                   _g215342215379_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g215341215376_ _g215342215379_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g215341215376_ _g215342215379_)))))
                        (let ((_expr215361215436_ (reverse _expr215359215407_))
                              (_bind215362215438_
                               (reverse _bind215360215409_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215349215394_))
                              (let ((_e215371215441_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215349215394_))))
                                (let ((_hd215370215444_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215371215441_)))
                                      (_tl215369215446_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215371215441_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl215369215446_))
                                      ((lambda (_L215449_ _L215450_ _L215451_)
                                         (let ((_$e215482_
                                                (let ((__tmp222170
                                                       (lambda (_g215470215472_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g215470215472_
                                                            _arg215339_))))
                                                      (__tmp222168
                                                       (let ((__tmp222169
                                                              (lambda (_g215474215477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g215475215479_)
                        (let ()
                          (declare (not safe))
                          (cons _g215474215477_ _g215475215479_)))))
                 (declare (not safe))
                 (foldr1 __tmp222169 '() _L215450_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp222170
                                                          __tmp222168))))
                                           (if _$e215482_
                                               _$e215482_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L215449_
                                                  _arg215339_)))))
                                       _hd215370215444_
                                       _expr215361215436_
                                       _bind215362215438_)
                                      (let ()
                                        (declare (not safe))
                                        (_g215341215376_ _g215342215379_)))))
                              (let ()
                                (declare (not safe))
                                (_g215341215376_ _g215342215379_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop215355215402_
                                                     _target215352215397_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g215341215376_
                                                   _g215342215379_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215341215376_ _g215342215379_)))))
                              (let ()
                                (declare (not safe))
                                (_g215341215376_ _g215342215379_)))))
                      (let ()
                        (declare (not safe))
                        (_g215341215376_ _g215342215379_))))))
          (declare (not safe))
          (_g215340215485_ _stx215338_))))
    (define gxc#find-setq%
      (lambda (_stx215270_ _arg215271_)
        (let* ((_g215273215290_
                (lambda (_g215274215287_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215274215287_))))
               (_g215272215335_
                (lambda (_g215274215293_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215274215293_))
                      (let ((_e215279215295_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215274215293_))))
                        (let ((_hd215278215298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215279215295_)))
                              (_tl215277215300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215279215295_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215277215300_))
                              (let ((_e215282215303_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215277215300_))))
                                (let ((_hd215281215306_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215282215303_)))
                                      (_tl215280215308_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215282215303_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215280215308_))
                                      (let ((_e215285215311_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215280215308_))))
                                        (let ((_hd215284215314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215285215311_)))
                                              (_tl215283215316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215285215311_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215283215316_))
                                              ((lambda (_L215319_ _L215320_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L215319_
                                                    _arg215271_)))
                                               _hd215284215314_
                                               _hd215281215306_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215273215290_
                                                 _g215274215293_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215273215290_ _g215274215293_)))))
                              (let ()
                                (declare (not safe))
                                (_g215273215290_ _g215274215293_)))))
                      (let ()
                        (declare (not safe))
                        (_g215273215290_ _g215274215293_))))))
          (declare (not safe))
          (_g215272215335_ _stx215270_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx215214_ _ids215215_)
        (let* ((_g215217215230_
                (lambda (_g215218215227_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215218215227_))))
               (_g215216215267_
                (lambda (_g215218215233_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215218215233_))
                      (let ((_e215222215235_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215218215233_))))
                        (let ((_hd215221215238_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215222215235_)))
                              (_tl215220215240_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215222215235_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215220215240_))
                              (let ((_e215225215243_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215220215240_))))
                                (let ((_hd215224215246_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215225215243_)))
                                      (_tl215223215248_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215225215243_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl215223215248_))
                                      ((lambda (_L215251_)
                                         (let ((__tmp222173
                                                (lambda (_g215262215264_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L215251_
                                                     _g215262215264_)))))
                                           (declare (not safe))
                                           (find __tmp222173 _ids215215_)))
                                       _hd215224215246_)
                                      (let ()
                                        (declare (not safe))
                                        (_g215217215230_ _g215218215233_)))))
                              (let ()
                                (declare (not safe))
                                (_g215217215230_ _g215218215233_)))))
                      (let ()
                        (declare (not safe))
                        (_g215217215230_ _g215218215233_))))))
          (declare (not safe))
          (_g215216215267_ _stx215214_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx215138_ _ids215139_)
        (let* ((_g215141215158_
                (lambda (_g215142215155_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215142215155_))))
               (_g215140215211_
                (lambda (_g215142215161_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215142215161_))
                      (let ((_e215147215163_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215142215161_))))
                        (let ((_hd215146215166_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215147215163_)))
                              (_tl215145215168_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215147215163_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215145215168_))
                              (let ((_e215150215171_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215145215168_))))
                                (let ((_hd215149215174_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215150215171_)))
                                      (_tl215148215176_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215150215171_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215148215176_))
                                      (let ((_e215153215179_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215148215176_))))
                                        (let ((_hd215152215182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215153215179_)))
                                              (_tl215151215184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215153215179_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215151215184_))
                                              ((lambda (_L215187_ _L215188_)
                                                 (let ((_$e215208_
                                                        (let ((__tmp222174
                                                               (lambda (_g215203215205_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L215188_ _g215203215205_)))))
                  (declare (not safe))
                  (find __tmp222174 _ids215139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e215208_
                                                       _$e215208_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L215187_
                                                          _ids215139_)))))
                                               _hd215152215182_
                                               _hd215149215174_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215141215158_
                                                 _g215142215161_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215141215158_ _g215142215161_)))))
                              (let ()
                                (declare (not safe))
                                (_g215141215158_ _g215142215161_)))))
                      (let ()
                        (declare (not safe))
                        (_g215141215158_ _g215142215161_))))))
          (declare (not safe))
          (_g215140215211_ _stx215138_))))))
