(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708194429)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl217582_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217582_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217582_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217582_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217582_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl217582_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl217578_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217578_ '%#declare gxc#xform-identity))
           _tbl217578_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl217574_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp221895 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl217574_ __tmp221895))
           (let ((__tmp221896 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl217574_ __tmp221896))
           _tbl217574_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl217570_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217570_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217570_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217570_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217570_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217570_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl217570_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl217566_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp221897 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl217566_ __tmp221897))
           (let ((__tmp221898 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl217566_ __tmp221898))
           (let ()
             (declare (not safe))
             (table-set! _tbl217566_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217566_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217566_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217566_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217566_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl217566_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl217562_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp221899 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl217562_ __tmp221899))
           (let ()
             (declare (not safe))
             (table-set! _tbl217562_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217562_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217562_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217562_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217562_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217562_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217562_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217562_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217562_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217562_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217562_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl217562_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx217545_ . _args217547_)
        (let ((__tmp221901
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217547_)
                     (gxc#compile-e__0 _stx217545_)
                     (let ((_arg1217552_ (car _args217547_))
                           (_rest217554_ (cdr _args217547_)))
                       (if (null? _rest217554_)
                           (gxc#compile-e__1 _stx217545_ _arg1217552_)
                           (let ((_arg2217557_ (car _rest217554_))
                                 (_rest217559_ (cdr _rest217554_)))
                             (if (null? _rest217559_)
                                 (gxc#compile-e__2
                                  _stx217545_
                                  _arg1217552_
                                  _arg2217557_)
                                 (apply gxc#compile-e
                                        _stx217545_
                                        _arg1217552_
                                        _arg2217557_
                                        _rest217559_))))))))
              (__tmp221900 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp221901
           gxc#current-compile-methods
           __tmp221900))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl217542_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp221902 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl217542_ __tmp221902))
           (let ()
             (declare (not safe))
             (table-set! _tbl217542_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217542_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217542_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217542_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217542_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl217542_))))
    (define gxc#apply-collect-methods
      (lambda (_stx217525_ . _args217527_)
        (let ((__tmp221904
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217527_)
                     (gxc#compile-e__0 _stx217525_)
                     (let ((_arg1217532_ (car _args217527_))
                           (_rest217534_ (cdr _args217527_)))
                       (if (null? _rest217534_)
                           (gxc#compile-e__1 _stx217525_ _arg1217532_)
                           (let ((_arg2217537_ (car _rest217534_))
                                 (_rest217539_ (cdr _rest217534_)))
                             (if (null? _rest217539_)
                                 (gxc#compile-e__2
                                  _stx217525_
                                  _arg1217532_
                                  _arg2217537_)
                                 (apply gxc#compile-e
                                        _stx217525_
                                        _arg1217532_
                                        _arg2217537_
                                        _rest217539_))))))))
              (__tmp221903 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp221904
           gxc#current-compile-methods
           __tmp221903))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl217522_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp221905 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl217522_ __tmp221905))
           (let ()
             (declare (not safe))
             (table-set! _tbl217522_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217522_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217522_ '%#set! gxc#expression-subst-setq%))
           _tbl217522_))))
    (define gxc#apply-expression-subst
      (lambda (_stx217505_ . _args217507_)
        (let ((__tmp221907
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217507_)
                     (gxc#compile-e__0 _stx217505_)
                     (let ((_arg1217512_ (car _args217507_))
                           (_rest217514_ (cdr _args217507_)))
                       (if (null? _rest217514_)
                           (gxc#compile-e__1 _stx217505_ _arg1217512_)
                           (let ((_arg2217517_ (car _rest217514_))
                                 (_rest217519_ (cdr _rest217514_)))
                             (if (null? _rest217519_)
                                 (gxc#compile-e__2
                                  _stx217505_
                                  _arg1217512_
                                  _arg2217517_)
                                 (apply gxc#compile-e
                                        _stx217505_
                                        _arg1217512_
                                        _arg2217517_
                                        _rest217519_))))))))
              (__tmp221906 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp221907
           gxc#current-compile-methods
           __tmp221906))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl217502_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp221908 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl217502_ __tmp221908))
           (let ()
             (declare (not safe))
             (table-set! _tbl217502_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217502_ '%#set! gxc#expression-subst*-setq%))
           _tbl217502_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx217485_ . _args217487_)
        (let ((__tmp221910
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217487_)
                     (gxc#compile-e__0 _stx217485_)
                     (let ((_arg1217492_ (car _args217487_))
                           (_rest217494_ (cdr _args217487_)))
                       (if (null? _rest217494_)
                           (gxc#compile-e__1 _stx217485_ _arg1217492_)
                           (let ((_arg2217497_ (car _rest217494_))
                                 (_rest217499_ (cdr _rest217494_)))
                             (if (null? _rest217499_)
                                 (gxc#compile-e__2
                                  _stx217485_
                                  _arg1217492_
                                  _arg2217497_)
                                 (apply gxc#compile-e
                                        _stx217485_
                                        _arg1217492_
                                        _arg2217497_
                                        _rest217499_))))))))
              (__tmp221909 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp221910
           gxc#current-compile-methods
           __tmp221909))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl217482_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp221911 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl217482_ __tmp221911))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217482_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217482_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217482_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl217482_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl217478_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp221912 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl217478_ __tmp221912))
           (let ()
             (declare (not safe))
             (table-set! _tbl217478_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217478_ '%#set! gxc#find-var-refs-setq%))
           _tbl217478_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx217461_ . _args217463_)
        (let ((__tmp221914
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217463_)
                     (gxc#compile-e__0 _stx217461_)
                     (let ((_arg1217468_ (car _args217463_))
                           (_rest217470_ (cdr _args217463_)))
                       (if (null? _rest217470_)
                           (gxc#compile-e__1 _stx217461_ _arg1217468_)
                           (let ((_arg2217473_ (car _rest217470_))
                                 (_rest217475_ (cdr _rest217470_)))
                             (if (null? _rest217475_)
                                 (gxc#compile-e__2
                                  _stx217461_
                                  _arg1217468_
                                  _arg2217473_)
                                 (apply gxc#compile-e
                                        _stx217461_
                                        _arg1217468_
                                        _arg2217473_
                                        _rest217475_))))))))
              (__tmp221913 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp221914
           gxc#current-compile-methods
           __tmp221913))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl217458_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp221915 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl217458_ __tmp221915))
           (let ()
             (declare (not safe))
             (table-set! _tbl217458_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217458_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl217458_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx217441_ . _args217443_)
        (let ((__tmp221917
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217443_)
                     (gxc#compile-e__0 _stx217441_)
                     (let ((_arg1217448_ (car _args217443_))
                           (_rest217450_ (cdr _args217443_)))
                       (if (null? _rest217450_)
                           (gxc#compile-e__1 _stx217441_ _arg1217448_)
                           (let ((_arg2217453_ (car _rest217450_))
                                 (_rest217455_ (cdr _rest217450_)))
                             (if (null? _rest217455_)
                                 (gxc#compile-e__2
                                  _stx217441_
                                  _arg1217448_
                                  _arg2217453_)
                                 (apply gxc#compile-e
                                        _stx217441_
                                        _arg1217448_
                                        _arg2217453_
                                        _rest217455_))))))))
              (__tmp221916 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp221917
           gxc#current-compile-methods
           __tmp221916))))
    (define gxc#xform-identity
      (lambda (_stx217438_ . _args217439_) _stx217438_))
    (define gxc#xform-wrap-source
      (lambda (_stx217435_ _src-stx217436_)
        (let ((__tmp221918
               (let () (declare (not safe)) (gx#stx-source _src-stx217436_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx217435_ __tmp221918))))
    (define gxc#xform-apply-compile-e
      (lambda (_args217422_)
        (lambda (_stx217424_)
          (if (let () (declare (not safe)) (null? _args217422_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx217424_))
              (let ((_arg1217426_ (car _args217422_))
                    (_rest217428_ (cdr _args217422_)))
                (if (let () (declare (not safe)) (null? _rest217428_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx217424_ _arg1217426_))
                    (let ((_arg2217431_ (car _rest217428_))
                          (_rest217433_ (cdr _rest217428_)))
                      (if (let () (declare (not safe)) (null? _rest217433_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx217424_
                             _arg1217426_
                             _arg2217431_))
                          (apply gxc#compile-e
                                 _stx217424_
                                 _arg1217426_
                                 _arg2217431_
                                 _rest217433_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx217381_ . _args217382_)
        (let* ((_g217384217394_
                (lambda (_g217385217391_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217385217391_))))
               (_g217383217419_
                (lambda (_g217385217397_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217385217397_))
                      (let ((_e217387217399_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217385217397_))))
                        (let ((_hd217388217402_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217387217399_)))
                              (_tl217389217404_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217387217399_))))
                          ((lambda (_L217407_)
                             (let* ((_forms217417_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args217382_))
                                          _L217407_))
                                    (__tmp221919
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms217417_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp221919
                                _stx217381_)))
                           _tl217389217404_)))
                      (let ()
                        (declare (not safe))
                        (_g217384217394_ _g217385217397_))))))
          (declare (not safe))
          (_g217383217419_ _stx217381_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx217339_ . _args217340_)
        (let* ((_g217342217352_
                (lambda (_g217343217349_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217343217349_))))
               (_g217341217378_
                (lambda (_g217343217355_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217343217355_))
                      (let ((_e217345217357_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217343217355_))))
                        (let ((_hd217346217360_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217345217357_)))
                              (_tl217347217362_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217345217357_))))
                          ((lambda (_L217365_)
                             (let ((__tmp221922
                                    (lambda ()
                                      (let* ((_forms217376_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args217340_))
                                                   _L217365_))
                                             (__tmp221923
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms217376_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp221923
                                         _stx217339_))))
                                   (__tmp221920
                                    (let ((__tmp221921
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp221921 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp221922
                                gx#current-expander-phi
                                __tmp221920)))
                           _tl217347217362_)))
                      (let ()
                        (declare (not safe))
                        (_g217342217352_ _g217343217355_))))))
          (declare (not safe))
          (_g217341217378_ _stx217339_))))
    (define gxc#xform-module%
      (lambda (_stx217267_ . _args217268_)
        (let* ((_g217270217284_
                (lambda (_g217271217281_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217271217281_))))
               (_g217269217336_
                (lambda (_g217271217287_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217271217287_))
                      (let ((_e217274217289_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217271217287_))))
                        (let ((_hd217275217292_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217274217289_)))
                              (_tl217276217294_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217274217289_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217276217294_))
                              (let ((_e217277217297_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217276217294_))))
                                (let ((_hd217278217300_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217277217297_)))
                                      (_tl217279217302_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217277217297_))))
                                  ((lambda (_L217305_ _L217306_)
                                     (let* ((_ctx217319_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L217306_)))
                                            (_code217321_
                                             (##structure-ref
                                              _ctx217319_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code217333_
                                             (let ((__tmp221924
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args217268_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code217321_))
                                                          (let ((_arg1217324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args217268_))
                        (_rest217326_ (cdr _args217268_)))
                    (if (let () (declare (not safe)) (null? _rest217326_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code217321_ _arg1217324_))
                        (let ((_arg2217329_ (car _rest217326_))
                              (_rest217331_ (cdr _rest217326_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest217331_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code217321_
                                 _arg1217324_
                                 _arg2217329_))
                              (apply gxc#compile-e
                                     _code217321_
                                     _arg1217324_
                                     _arg2217329_
                                     _rest217331_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp221924
                                                gx#current-expander-context
                                                _ctx217319_))))
                                       (##structure-set!
                                        _ctx217319_
                                        _code217333_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp221925
                                              (let ((__tmp221926
                                                     (let ((__tmp221927
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code217333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L217306_ __tmp221927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp221926))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp221925
                                          _stx217267_))))
                                   _tl217279217302_
                                   _hd217278217300_)))
                              (let ()
                                (declare (not safe))
                                (_g217270217284_ _g217271217287_)))))
                      (let ()
                        (declare (not safe))
                        (_g217270217284_ _g217271217287_))))))
          (declare (not safe))
          (_g217269217336_ _stx217267_))))
    (define gxc#xform-define-values%
      (lambda (_stx217188_ . _args217189_)
        (let* ((_g217191217208_
                (lambda (_g217192217205_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217192217205_))))
               (_g217190217264_
                (lambda (_g217192217211_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217192217211_))
                      (let ((_e217195217213_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217192217211_))))
                        (let ((_hd217196217216_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217195217213_)))
                              (_tl217197217218_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217195217213_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217197217218_))
                              (let ((_e217198217221_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217197217218_))))
                                (let ((_hd217199217224_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217198217221_)))
                                      (_tl217200217226_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217198217221_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl217200217226_))
                                      (let ((_e217201217229_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl217200217226_))))
                                        (let ((_hd217202217232_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e217201217229_)))
                                              (_tl217203217234_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e217201217229_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl217203217234_))
                                              ((lambda (_L217237_ _L217238_)
                                                 (let* ((_expr217262_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args217189_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L217237_))
                     (let ((_arg1217253_ (car _args217189_))
                           (_rest217255_ (cdr _args217189_)))
                       (if (let () (declare (not safe)) (null? _rest217255_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L217237_ _arg1217253_))
                           (let ((_arg2217258_ (car _rest217255_))
                                 (_rest217260_ (cdr _rest217255_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest217260_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L217237_
                                    _arg1217253_
                                    _arg2217258_))
                                 (apply gxc#compile-e
                                        _L217237_
                                        _arg1217253_
                                        _arg2217258_
                                        _rest217260_)))))))
                (__tmp221928
                 (let ((__tmp221929
                        (let ((__tmp221930
                               (let ()
                                 (declare (not safe))
                                 (cons _expr217262_ '()))))
                          (declare (not safe))
                          (cons _L217238_ __tmp221930))))
                   (declare (not safe))
                   (cons '%#define-values __tmp221929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp221928
                                                    _stx217188_)))
                                               _hd217202217232_
                                               _hd217199217224_)
                                              (let ()
                                                (declare (not safe))
                                                (_g217191217208_
                                                 _g217192217211_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g217191217208_ _g217192217211_)))))
                              (let ()
                                (declare (not safe))
                                (_g217191217208_ _g217192217211_)))))
                      (let ()
                        (declare (not safe))
                        (_g217191217208_ _g217192217211_))))))
          (declare (not safe))
          (_g217190217264_ _stx217188_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx217108_ . _args217109_)
        (let* ((_g217111217128_
                (lambda (_g217112217125_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217112217125_))))
               (_g217110217185_
                (lambda (_g217112217131_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217112217131_))
                      (let ((_e217115217133_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217112217131_))))
                        (let ((_hd217116217136_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217115217133_)))
                              (_tl217117217138_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217115217133_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217117217138_))
                              (let ((_e217118217141_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217117217138_))))
                                (let ((_hd217119217144_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217118217141_)))
                                      (_tl217120217146_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217118217141_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl217120217146_))
                                      (let ((_e217121217149_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl217120217146_))))
                                        (let ((_hd217122217152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e217121217149_)))
                                              (_tl217123217154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e217121217149_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl217123217154_))
                                              ((lambda (_L217157_ _L217158_)
                                                 (let ((__tmp221933
                                                        (lambda ()
                                                          (let* ((_expr217183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args217109_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L217157_))
                              (let ((_arg1217174_ (car _args217109_))
                                    (_rest217176_ (cdr _args217109_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest217176_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L217157_
                                       _arg1217174_))
                                    (let ((_arg2217179_ (car _rest217176_))
                                          (_rest217181_ (cdr _rest217176_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest217181_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L217157_
                                             _arg1217174_
                                             _arg2217179_))
                                          (apply gxc#compile-e
                                                 _L217157_
                                                 _arg1217174_
                                                 _arg2217179_
                                                 _rest217181_)))))))
                         (__tmp221934
                          (let ((__tmp221935
                                 (let ((__tmp221936
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr217183_ '()))))
                                   (declare (not safe))
                                   (cons _L217158_ __tmp221936))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp221935))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp221934 _stx217108_))))
               (__tmp221931
                (let ((__tmp221932 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp221932 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp221933
                                                    gx#current-expander-phi
                                                    __tmp221931)))
                                               _hd217122217152_
                                               _hd217119217144_)
                                              (let ()
                                                (declare (not safe))
                                                (_g217111217128_
                                                 _g217112217131_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g217111217128_ _g217112217131_)))))
                              (let ()
                                (declare (not safe))
                                (_g217111217128_ _g217112217131_)))))
                      (let ()
                        (declare (not safe))
                        (_g217111217128_ _g217112217131_))))))
          (declare (not safe))
          (_g217110217185_ _stx217108_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx217029_ . _args217030_)
        (let* ((_g217032217049_
                (lambda (_g217033217046_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217033217046_))))
               (_g217031217105_
                (lambda (_g217033217052_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217033217052_))
                      (let ((_e217036217054_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217033217052_))))
                        (let ((_hd217037217057_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217036217054_)))
                              (_tl217038217059_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217036217054_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217038217059_))
                              (let ((_e217039217062_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217038217059_))))
                                (let ((_hd217040217065_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217039217062_)))
                                      (_tl217041217067_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217039217062_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl217041217067_))
                                      (let ((_e217042217070_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl217041217067_))))
                                        (let ((_hd217043217073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e217042217070_)))
                                              (_tl217044217075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e217042217070_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl217044217075_))
                                              ((lambda (_L217078_ _L217079_)
                                                 (let* ((_expr217103_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args217030_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L217078_))
                     (let ((_arg1217094_ (car _args217030_))
                           (_rest217096_ (cdr _args217030_)))
                       (if (let () (declare (not safe)) (null? _rest217096_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L217078_ _arg1217094_))
                           (let ((_arg2217099_ (car _rest217096_))
                                 (_rest217101_ (cdr _rest217096_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest217101_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L217078_
                                    _arg1217094_
                                    _arg2217099_))
                                 (apply gxc#compile-e
                                        _L217078_
                                        _arg1217094_
                                        _arg2217099_
                                        _rest217101_)))))))
                (__tmp221937
                 (let ((__tmp221938
                        (let ((__tmp221939
                               (let ()
                                 (declare (not safe))
                                 (cons _expr217103_ '()))))
                          (declare (not safe))
                          (cons _L217079_ __tmp221939))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp221938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp221937
                                                    _stx217029_)))
                                               _hd217043217073_
                                               _hd217040217065_)
                                              (let ()
                                                (declare (not safe))
                                                (_g217032217049_
                                                 _g217033217052_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g217032217049_ _g217033217052_)))))
                              (let ()
                                (declare (not safe))
                                (_g217032217049_ _g217033217052_)))))
                      (let ()
                        (declare (not safe))
                        (_g217032217049_ _g217033217052_))))))
          (declare (not safe))
          (_g217031217105_ _stx217029_))))
    (define gxc#xform-lambda%
      (lambda (_stx216972_ . _args216973_)
        (let* ((_g216975216989_
                (lambda (_g216976216986_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216976216986_))))
               (_g216974217026_
                (lambda (_g216976216992_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216976216992_))
                      (let ((_e216979216994_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216976216992_))))
                        (let ((_hd216980216997_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216979216994_)))
                              (_tl216981216999_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216979216994_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216981216999_))
                              (let ((_e216982217002_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216981216999_))))
                                (let ((_hd216983217005_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216982217002_)))
                                      (_tl216984217007_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216982217002_))))
                                  ((lambda (_L217010_ _L217011_)
                                     (let* ((_body217024_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args216973_))
                                                  _L217010_))
                                            (__tmp221940
                                             (let ((__tmp221941
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L217011_
                                                            _body217024_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp221941))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp221940
                                        _stx216972_)))
                                   _tl216984217007_
                                   _hd216983217005_)))
                              (let ()
                                (declare (not safe))
                                (_g216975216989_ _g216976216992_)))))
                      (let ()
                        (declare (not safe))
                        (_g216975216989_ _g216976216992_))))))
          (declare (not safe))
          (_g216974217026_ _stx216972_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx216885_ . _args216886_)
        (letrec ((_clause-e216888_
                  (lambda (_clause216929_)
                    (let* ((_g216931216942_
                            (lambda (_g216932216939_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g216932216939_))))
                           (_g216930216969_
                            (lambda (_g216932216945_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g216932216945_))
                                  (let ((_e216935216947_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g216932216945_))))
                                    (let ((_hd216936216950_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e216935216947_)))
                                          (_tl216937216952_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e216935216947_))))
                                      ((lambda (_L216955_ _L216956_)
                                         (let ((_body216967_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args216886_))
                                                     _L216955_)))
                                           (declare (not safe))
                                           (cons _L216956_ _body216967_)))
                                       _tl216937216952_
                                       _hd216936216950_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g216931216942_ _g216932216945_))))))
                      (declare (not safe))
                      (_g216930216969_ _clause216929_)))))
          (let* ((_g216890216900_
                  (lambda (_g216891216897_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g216891216897_))))
                 (_g216889216926_
                  (lambda (_g216891216903_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g216891216903_))
                        (let ((_e216893216905_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g216891216903_))))
                          (let ((_hd216894216908_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e216893216905_)))
                                (_tl216895216910_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e216893216905_))))
                            ((lambda (_L216913_)
                               (let* ((_clauses216924_
                                       (map _clause-e216888_ _L216913_))
                                      (__tmp221942
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses216924_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp221942
                                  _stx216885_)))
                             _tl216895216910_)))
                        (let ()
                          (declare (not safe))
                          (_g216890216900_ _g216891216903_))))))
            (declare (not safe))
            (_g216889216926_ _stx216885_)))))
    (define gxc#xform-let-values%
      (lambda (_stx216679_ . _args216680_)
        (let* ((_g216682216715_
                (lambda (_g216683216712_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216683216712_))))
               (_g216681216882_
                (lambda (_g216683216718_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216683216718_))
                      (let ((_e216688216720_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216683216718_))))
                        (let ((_hd216689216723_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216688216720_)))
                              (_tl216690216725_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216688216720_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216690216725_))
                              (let ((_e216691216728_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216690216725_))))
                                (let ((_hd216692216731_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216691216728_)))
                                      (_tl216693216733_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216691216728_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd216692216731_))
                                      (let ((_g221943_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd216692216731_
                                                '0))))
                                        (begin
                                          (let ((_g221944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221943_)
                                                       (##vector-length
                                                        _g221943_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221944_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221944_)))
                                          (let ((_target216694216736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g221943_ 0)))
                                                (_tl216696216738_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g221943_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl216696216738_))
                                                (letrec ((_loop216697216741_
                                                          (lambda (_hd216695216744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr216701216746_
                           _hd216702216748_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd216695216744_))
                        (let ((_e216698216751_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd216695216744_))))
                          (let ((_lp-hd216699216754_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e216698216751_)))
                                (_lp-tl216700216756_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e216698216751_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd216699216754_))
                                (let ((_e216705216759_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd216699216754_))))
                                  (let ((_hd216706216762_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e216705216759_)))
                                        (_tl216707216764_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e216705216759_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl216707216764_))
                                        (let ((_e216708216767_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl216707216764_))))
                                          (let ((_hd216709216770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e216708216767_)))
                                                (_tl216710216772_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e216708216767_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl216710216772_))
                                                (let ((__tmp221946
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd216709216770_
                                                               _expr216701216746_)))
                                                      (__tmp221945
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd216706216762_
                                                               _hd216702216748_))))
                                                  (declare (not safe))
                                                  (_loop216697216741_
                                                   _lp-tl216700216756_
                                                   __tmp221946
                                                   __tmp221945))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g216682216715_
                                                   _g216683216718_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g216682216715_ _g216683216718_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g216682216715_ _g216683216718_)))))
                        (let ((_expr216703216775_ (reverse _expr216701216746_))
                              (_hd216704216777_ (reverse _hd216702216748_)))
                          ((lambda (_L216780_ _L216781_ _L216782_ _L216783_)
                             (let* ((_g216802216818_
                                     (lambda (_g216803216815_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g216803216815_))))
                                    (_g216801216872_
                                     (lambda (_g216803216821_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g216803216821_))
                                           (let ((_g221947_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g216803216821_
                                                     '0))))
                                             (begin
                                               (let ((_g221948_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g221947_)
                                                            (##vector-length
                                                             _g221947_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g221948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g221948_)))
                                               (let ((_target216805216823_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g221947_
                                                         0)))
                                                     (_tl216807216825_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g221947_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl216807216825_))
                                                     (letrec ((_loop216808216828_
                                                               (lambda (_hd216806216831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr216812216833_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd216806216831_))
                             (let ((_e216809216836_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd216806216831_))))
                               (let ((_lp-hd216810216839_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e216809216836_)))
                                     (_lp-tl216811216841_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e216809216836_))))
                                 (let ((__tmp221949
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd216810216839_
                                                _expr216812216833_))))
                                   (declare (not safe))
                                   (_loop216808216828_
                                    _lp-tl216811216841_
                                    __tmp221949))))
                             (let ((_expr216813216844_
                                    (reverse _expr216812216833_)))
                               ((lambda (_L216847_)
                                  (let ()
                                    (let* ((_body216860_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args216680_))
                                                 _L216780_))
                                           (__tmp221950
                                            (let ((__tmp221951
                                                   (let ((__tmp221952
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L216847_
                                                               _L216782_))
                                                            (let ((__tmp221953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g216861216865_
                                    _g216862216867_
                                    _g216863216869_)
                             (let ((__tmp221954
                                    (let ((__tmp221955
                                           (let ()
                                             (declare (not safe))
                                             (cons _g216861216865_ '()))))
                                      (declare (not safe))
                                      (cons _g216862216867_ __tmp221955))))
                               (declare (not safe))
                               (cons __tmp221954 _g216863216869_)))))
                      (declare (not safe))
                      (foldr2 __tmp221953 '() _L216847_ _L216782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp221952
                                                           _body216860_))))
                                              (declare (not safe))
                                              (cons _L216783_ __tmp221951))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp221950
                                       _stx216679_))))
                                _expr216813216844_))))))
               (let ()
                 (declare (not safe))
                 (_loop216808216828_ _target216805216823_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g216802216818_
                                                        _g216803216821_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g216802216818_
                                              _g216803216821_)))))
                                    (__tmp221956
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args216680_))
                                          (let ((__tmp221957
                                                 (lambda (_g216874216877_
                                                          _g216875216879_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g216874216877_
                                                           _g216875216879_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp221957
                                                    '()
                                                    _L216781_)))))
                               (declare (not safe))
                               (_g216801216872_ __tmp221956)))
                           _tl216693216733_
                           _expr216703216775_
                           _hd216704216777_
                           _hd216689216723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop216697216741_
                                                     _target216694216736_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g216682216715_
                                                   _g216683216718_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g216682216715_ _g216683216718_)))))
                              (let ()
                                (declare (not safe))
                                (_g216682216715_ _g216683216718_)))))
                      (let ()
                        (declare (not safe))
                        (_g216682216715_ _g216683216718_))))))
          (declare (not safe))
          (_g216681216882_ _stx216679_))))
    (define gxc#xform-operands
      (lambda (_stx216635_ . _args216636_)
        (let* ((_g216638216649_
                (lambda (_g216639216646_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216639216646_))))
               (_g216637216676_
                (lambda (_g216639216652_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216639216652_))
                      (let ((_e216642216654_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216639216652_))))
                        (let ((_hd216643216657_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216642216654_)))
                              (_tl216644216659_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216642216654_))))
                          ((lambda (_L216662_ _L216663_)
                             (let* ((_rands216674_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args216636_))
                                          _L216662_))
                                    (__tmp221958
                                     (let ()
                                       (declare (not safe))
                                       (cons _L216663_ _rands216674_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp221958
                                _stx216635_)))
                           _tl216644216659_
                           _hd216643216657_)))
                      (let ()
                        (declare (not safe))
                        (_g216638216649_ _g216639216652_))))))
          (declare (not safe))
          (_g216637216676_ _stx216635_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx216556_ . _args216557_)
        (let* ((_g216559216576_
                (lambda (_g216560216573_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216560216573_))))
               (_g216558216632_
                (lambda (_g216560216579_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216560216579_))
                      (let ((_e216563216581_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216560216579_))))
                        (let ((_hd216564216584_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216563216581_)))
                              (_tl216565216586_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216563216581_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216565216586_))
                              (let ((_e216566216589_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216565216586_))))
                                (let ((_hd216567216592_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216566216589_)))
                                      (_tl216568216594_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216566216589_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl216568216594_))
                                      (let ((_e216569216597_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl216568216594_))))
                                        (let ((_hd216570216600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e216569216597_)))
                                              (_tl216571216602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e216569216597_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216571216602_))
                                              ((lambda (_L216605_ _L216606_)
                                                 (let* ((_expr216630_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args216557_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L216605_))
                     (let ((_arg1216621_ (car _args216557_))
                           (_rest216623_ (cdr _args216557_)))
                       (if (let () (declare (not safe)) (null? _rest216623_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L216605_ _arg1216621_))
                           (let ((_arg2216626_ (car _rest216623_))
                                 (_rest216628_ (cdr _rest216623_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest216628_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L216605_
                                    _arg1216621_
                                    _arg2216626_))
                                 (apply gxc#compile-e
                                        _L216605_
                                        _arg1216621_
                                        _arg2216626_
                                        _rest216628_)))))))
                (__tmp221959
                 (let ((__tmp221960
                        (let ((__tmp221961
                               (let ()
                                 (declare (not safe))
                                 (cons _expr216630_ '()))))
                          (declare (not safe))
                          (cons _L216606_ __tmp221961))))
                   (declare (not safe))
                   (cons '%#set! __tmp221960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp221959
                                                    _stx216556_)))
                                               _hd216570216600_
                                               _hd216567216592_)
                                              (let ()
                                                (declare (not safe))
                                                (_g216559216576_
                                                 _g216560216579_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g216559216576_ _g216560216579_)))))
                              (let ()
                                (declare (not safe))
                                (_g216559216576_ _g216560216579_)))))
                      (let ()
                        (declare (not safe))
                        (_g216559216576_ _g216560216579_))))))
          (declare (not safe))
          (_g216558216632_ _stx216556_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx216487_)
        (let* ((_g216489216506_
                (lambda (_g216490216503_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216490216503_))))
               (_g216488216553_
                (lambda (_g216490216509_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216490216509_))
                      (let ((_e216493216511_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216490216509_))))
                        (let ((_hd216494216514_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216493216511_)))
                              (_tl216495216516_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216493216511_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216495216516_))
                              (let ((_e216496216519_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216495216516_))))
                                (let ((_hd216497216522_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216496216519_)))
                                      (_tl216498216524_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216496216519_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl216498216524_))
                                      (let ((_e216499216527_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl216498216524_))))
                                        (let ((_hd216500216530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e216499216527_)))
                                              (_tl216501216532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e216499216527_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216501216532_))
                                              ((lambda (_L216535_ _L216536_)
                                                 (let ((_sym216551_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L216536_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym216551_))
                                                   (let ((__tmp221962
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp221962
                                                      _sym216551_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L216535_))))
                                               _hd216500216530_
                                               _hd216497216522_)
                                              (let ()
                                                (declare (not safe))
                                                (_g216489216506_
                                                 _g216490216509_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g216489216506_ _g216490216509_)))))
                              (let ()
                                (declare (not safe))
                                (_g216489216506_ _g216490216509_)))))
                      (let ()
                        (declare (not safe))
                        (_g216489216506_ _g216490216509_))))))
          (declare (not safe))
          (_g216488216553_ _stx216487_))))
    (define gxc#collect-methods-call%
      (lambda (_stx216041_)
        (let* ((___stx221652221653_ _stx216041_)
               (_g216045216147_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx221652221653_)))))
          (let ((___kont221654221655_
                 (lambda (_L216437_ _L216438_ _L216439_ _L216440_ _L216441_)
                   (let ((__tmp221963
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L216438_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp221963))))
                (___kont221656221657_
                 (lambda (_L216263_ _L216264_ _L216265_ _L216266_)
                   (let ((__tmp221964
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L216263_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp221964))))
                (___kont221658221659_ (lambda () '#!void)))
            (let ((___match221787221788_
                   (lambda (_e216052216309_
                            _hd216053216312_
                            _tl216054216314_
                            _e216055216317_
                            _hd216056216320_
                            _tl216057216322_
                            _e216058216325_
                            _hd216059216328_
                            _tl216060216330_
                            _e216061216333_
                            _hd216062216336_
                            _tl216063216338_
                            _e216064216341_
                            _hd216065216344_
                            _tl216066216346_
                            _e216067216349_
                            _hd216068216352_
                            _tl216069216354_
                            _e216070216357_
                            _hd216071216360_
                            _tl216072216362_
                            _e216073216365_
                            _hd216074216368_
                            _tl216075216370_
                            _e216076216373_
                            _hd216077216376_
                            _tl216078216378_
                            _e216079216381_
                            _hd216080216384_
                            _tl216081216386_
                            _e216082216389_
                            _hd216083216392_
                            _tl216084216394_
                            _e216085216397_
                            _hd216086216400_
                            _tl216087216402_
                            _e216088216405_
                            _hd216089216408_
                            _tl216090216410_
                            _e216091216413_
                            _hd216092216416_
                            _tl216093216418_
                            _e216094216421_
                            _hd216095216424_
                            _tl216096216426_
                            _e216097216429_
                            _hd216098216432_
                            _tl216099216434_)
                     (let ((_L216437_ _hd216098216432_)
                           (_L216438_ _hd216089216408_)
                           (_L216439_ _hd216080216384_)
                           (_L216440_ _hd216071216360_)
                           (_L216441_ _hd216062216336_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L216441_
                              'bind-method!))
                           (___kont221654221655_
                            _L216437_
                            _L216438_
                            _L216439_
                            _L216440_
                            _L216441_)
                           (___kont221658221659_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx221652221653_))
                  (let ((_e216052216309_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx221652221653_))))
                    (let ((_tl216054216314_
                           (let ()
                             (declare (not safe))
                             (##cdr _e216052216309_)))
                          (_hd216053216312_
                           (let ()
                             (declare (not safe))
                             (##car _e216052216309_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl216054216314_))
                          (let ((_e216055216317_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl216054216314_))))
                            (let ((_tl216057216322_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e216055216317_)))
                                  (_hd216056216320_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e216055216317_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd216056216320_))
                                  (let ((_e216058216325_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd216056216320_))))
                                    (let ((_tl216060216330_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e216058216325_)))
                                          (_hd216059216328_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e216058216325_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd216059216328_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd216059216328_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl216060216330_))
                                                  (let ((_e216061216333_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl216060216330_))))
                                                    (let ((_tl216063216338_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e216061216333_)))
                                                          (_hd216062216336_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e216061216333_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl216063216338_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl216057216322_))
                      (let ((_e216064216341_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl216057216322_))))
                        (let ((_tl216066216346_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216064216341_)))
                              (_hd216065216344_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216064216341_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd216065216344_))
                              (let ((_e216067216349_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd216065216344_))))
                                (let ((_tl216069216354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216067216349_)))
                                      (_hd216068216352_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216067216349_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd216068216352_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd216068216352_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl216069216354_))
                                              (let ((_e216070216357_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl216069216354_))))
                                                (let ((_tl216072216362_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e216070216357_)))
                                                      (_hd216071216360_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e216070216357_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl216072216362_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl216066216346_))
                                                          (let ((_e216073216365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl216066216346_))))
                    (let ((_tl216075216370_
                           (let ()
                             (declare (not safe))
                             (##cdr _e216073216365_)))
                          (_hd216074216368_
                           (let ()
                             (declare (not safe))
                             (##car _e216073216365_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd216074216368_))
                          (let ((_e216076216373_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd216074216368_))))
                            (let ((_tl216078216378_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e216076216373_)))
                                  (_hd216077216376_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e216076216373_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd216077216376_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd216077216376_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl216078216378_))
                                          (let ((_e216079216381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl216078216378_))))
                                            (let ((_tl216081216386_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e216079216381_)))
                                                  (_hd216080216384_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e216079216381_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl216081216386_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl216075216370_))
                                                      (let ((_e216082216389_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl216075216370_))))
                (let ((_tl216084216394_
                       (let () (declare (not safe)) (##cdr _e216082216389_)))
                      (_hd216083216392_
                       (let () (declare (not safe)) (##car _e216082216389_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd216083216392_))
                      (let ((_e216085216397_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd216083216392_))))
                        (let ((_tl216087216402_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216085216397_)))
                              (_hd216086216400_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216085216397_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd216086216400_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd216086216400_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl216087216402_))
                                      (let ((_e216088216405_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl216087216402_))))
                                        (let ((_tl216090216410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e216088216405_)))
                                              (_hd216089216408_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e216088216405_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216090216410_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl216084216394_))
                                                  (let ((_e216091216413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl216084216394_))))
                                                    (let ((_tl216093216418_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e216091216413_)))
                                                          (_hd216092216416_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e216091216413_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd216092216416_))
                                                          (let ((_e216094216421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd216092216416_))))
                    (let ((_tl216096216426_
                           (let ()
                             (declare (not safe))
                             (##cdr _e216094216421_)))
                          (_hd216095216424_
                           (let ()
                             (declare (not safe))
                             (##car _e216094216421_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd216095216424_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd216095216424_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl216096216426_))
                                  (let ((_e216097216429_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl216096216426_))))
                                    (let ((_tl216099216434_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e216097216429_)))
                                          (_hd216098216432_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e216097216429_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl216099216434_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216093216418_))
                                              (___match221787221788_
                                               _e216052216309_
                                               _hd216053216312_
                                               _tl216054216314_
                                               _e216055216317_
                                               _hd216056216320_
                                               _tl216057216322_
                                               _e216058216325_
                                               _hd216059216328_
                                               _tl216060216330_
                                               _e216061216333_
                                               _hd216062216336_
                                               _tl216063216338_
                                               _e216064216341_
                                               _hd216065216344_
                                               _tl216066216346_
                                               _e216067216349_
                                               _hd216068216352_
                                               _tl216069216354_
                                               _e216070216357_
                                               _hd216071216360_
                                               _tl216072216362_
                                               _e216073216365_
                                               _hd216074216368_
                                               _tl216075216370_
                                               _e216076216373_
                                               _hd216077216376_
                                               _tl216078216378_
                                               _e216079216381_
                                               _hd216080216384_
                                               _tl216081216386_
                                               _e216082216389_
                                               _hd216083216392_
                                               _tl216084216394_
                                               _e216085216397_
                                               _hd216086216400_
                                               _tl216087216402_
                                               _e216088216405_
                                               _hd216089216408_
                                               _tl216090216410_
                                               _e216091216413_
                                               _hd216092216416_
                                               _tl216093216418_
                                               _e216094216421_
                                               _hd216095216424_
                                               _tl216096216426_
                                               _e216097216429_
                                               _hd216098216432_
                                               _tl216099216434_)
                                              (___kont221658221659_))
                                          (___kont221658221659_))))
                                  (___kont221658221659_))
                              (___kont221658221659_))
                          (___kont221658221659_))))
                  (___kont221658221659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl216084216394_))
                                                      (if (let ((__tmp221965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp221965 'bind-method!))
                  (let ((_L216263_ _hd216089216408_)
                        (_L216264_ _hd216080216384_)
                        (_L216265_ _hd216071216360_)
                        (_L216266_ _hd216062216336_))
                    (___kont221656221657_
                     _L216263_
                     _L216264_
                     _L216265_
                     _L216266_))
                  (___kont221658221659_))
              (___kont221658221659_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont221658221659_))))
                                      (___kont221658221659_))
                                  (___kont221658221659_))
                              (___kont221658221659_))))
                      (___kont221658221659_))))
              (___kont221658221659_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont221658221659_))))
                                          (___kont221658221659_))
                                      (___kont221658221659_))
                                  (___kont221658221659_))))
                          (___kont221658221659_))))
                  (___kont221658221659_))
              (___kont221658221659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont221658221659_))
                                          (___kont221658221659_))
                                      (___kont221658221659_))))
                              (___kont221658221659_))))
                      (___kont221658221659_))
                  (___kont221658221659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont221658221659_))
                                              (___kont221658221659_))
                                          (___kont221658221659_))))
                                  (___kont221658221659_))))
                          (___kont221658221659_))))
                  (___kont221658221659_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx215988_ _id215989_ _new-id215990_)
        (let* ((_g215992216005_
                (lambda (_g215993216002_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215993216002_))))
               (_g215991216038_
                (lambda (_g215993216008_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215993216008_))
                      (let ((_e215995216010_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215993216008_))))
                        (let ((_hd215996216013_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215995216010_)))
                              (_tl215997216015_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215995216010_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215997216015_))
                              (let ((_e215998216018_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215997216015_))))
                                (let ((_hd215999216021_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215998216018_)))
                                      (_tl216000216023_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215998216018_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl216000216023_))
                                      ((lambda (_L216026_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L216026_
                                                _id215989_))
                                             (let ((__tmp221966
                                                    (let ((__tmp221967
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id215990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp221967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp221966
                                                _stx215988_))
                                             _stx215988_))
                                       _hd215999216021_)
                                      (let ()
                                        (declare (not safe))
                                        (_g215992216005_ _g215993216008_)))))
                              (let ()
                                (declare (not safe))
                                (_g215992216005_ _g215993216008_)))))
                      (let ()
                        (declare (not safe))
                        (_g215992216005_ _g215993216008_))))))
          (declare (not safe))
          (_g215991216038_ _stx215988_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx215929_ _subst215930_)
        (let* ((_g215932215945_
                (lambda (_g215933215942_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215933215942_))))
               (_g215931215985_
                (lambda (_g215933215948_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215933215948_))
                      (let ((_e215935215950_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215933215948_))))
                        (let ((_hd215936215953_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215935215950_)))
                              (_tl215937215955_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215935215950_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215937215955_))
                              (let ((_e215938215958_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215937215955_))))
                                (let ((_hd215939215961_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215938215958_)))
                                      (_tl215940215963_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215938215958_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl215940215963_))
                                      ((lambda (_L215966_)
                                         (let ((_$e215980_
                                                (let ((__tmp221968
                                                       (lambda (_sub215978_)
                                                         (let ((__tmp221969
                                                                (car _sub215978_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L215966_
                                                            __tmp221969)))))
                                                  (declare (not safe))
                                                  (find __tmp221968
                                                        _subst215930_))))
                                           (if _$e215980_
                                               ((lambda (_sub215983_)
                                                  (let ((__tmp221970
                                                         (let ((__tmp221971
                                                                (let ((__tmp221972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub215983_)))
                          (declare (not safe))
                          (cons __tmp221972 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp221971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp221970
                                                     _stx215929_)))
                                                _$e215980_)
                                               _stx215929_)))
                                       _hd215939215961_)
                                      (let ()
                                        (declare (not safe))
                                        (_g215932215945_ _g215933215948_)))))
                              (let ()
                                (declare (not safe))
                                (_g215932215945_ _g215933215948_)))))
                      (let ()
                        (declare (not safe))
                        (_g215932215945_ _g215933215948_))))))
          (declare (not safe))
          (_g215931215985_ _stx215929_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx215857_ _id215858_ _new-id215859_)
        (let* ((_g215861215878_
                (lambda (_g215862215875_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215862215875_))))
               (_g215860215926_
                (lambda (_g215862215881_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215862215881_))
                      (let ((_e215865215883_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215862215881_))))
                        (let ((_hd215866215886_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215865215883_)))
                              (_tl215867215888_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215865215883_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215867215888_))
                              (let ((_e215868215891_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215867215888_))))
                                (let ((_hd215869215894_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215868215891_)))
                                      (_tl215870215896_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215868215891_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215870215896_))
                                      (let ((_e215871215899_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215870215896_))))
                                        (let ((_hd215872215902_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215871215899_)))
                                              (_tl215873215904_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215871215899_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215873215904_))
                                              ((lambda (_L215907_ _L215908_)
                                                 (let ((_new-expr215923_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L215907_
                                                           _id215858_
                                                           _new-id215859_)))
                                                       (_new-xid215924_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L215908_
                                                               _id215858_))
                                                            _new-id215859_
                                                            _L215908_)))
                                                   (let ((__tmp221973
                                                          (let ((__tmp221974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp221975
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr215923_ '()))))
                           (declare (not safe))
                           (cons _new-xid215924_ __tmp221975))))
                    (declare (not safe))
                    (cons '%#set! __tmp221974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221973
                                                      _stx215857_))))
                                               _hd215872215902_
                                               _hd215869215894_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215861215878_
                                                 _g215862215881_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215861215878_ _g215862215881_)))))
                              (let ()
                                (declare (not safe))
                                (_g215861215878_ _g215862215881_)))))
                      (let ()
                        (declare (not safe))
                        (_g215861215878_ _g215862215881_))))))
          (declare (not safe))
          (_g215860215926_ _stx215857_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx215781_ _subst215782_)
        (let* ((_g215784215801_
                (lambda (_g215785215798_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215785215798_))))
               (_g215783215854_
                (lambda (_g215785215804_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215785215804_))
                      (let ((_e215788215806_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215785215804_))))
                        (let ((_hd215789215809_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215788215806_)))
                              (_tl215790215811_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215788215806_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215790215811_))
                              (let ((_e215791215814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215790215811_))))
                                (let ((_hd215792215817_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215791215814_)))
                                      (_tl215793215819_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215791215814_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215793215819_))
                                      (let ((_e215794215822_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215793215819_))))
                                        (let ((_hd215795215825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215794215822_)))
                                              (_tl215796215827_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215794215822_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215796215827_))
                                              ((lambda (_L215830_ _L215831_)
                                                 (let ((_new-expr215851_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L215830_
                                                           _subst215782_)))
                                                       (_new-xid215852_
                                                        (let ((_$e215848_
                                                               (let ((__tmp221976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub215846_)
                                (let ((__tmp221977 (car _sub215846_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L215831_
                                   __tmp221977)))))
                         (declare (not safe))
                         (find __tmp221976 _subst215782_))))
                  (if _$e215848_ (cdr _$e215848_) _L215831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp221978
                                                          (let ((__tmp221979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp221980
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr215851_ '()))))
                           (declare (not safe))
                           (cons _new-xid215852_ __tmp221980))))
                    (declare (not safe))
                    (cons '%#set! __tmp221979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp221978
                                                      _stx215781_))))
                                               _hd215795215825_
                                               _hd215792215817_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215784215801_
                                                 _g215785215804_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215784215801_ _g215785215804_)))))
                              (let ()
                                (declare (not safe))
                                (_g215784215801_ _g215785215804_)))))
                      (let ()
                        (declare (not safe))
                        (_g215784215801_ _g215785215804_))))))
          (declare (not safe))
          (_g215783215854_ _stx215781_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx215727_ _ht215728_)
        (let* ((_g215730215743_
                (lambda (_g215731215740_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215731215740_))))
               (_g215729215778_
                (lambda (_g215731215746_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215731215746_))
                      (let ((_e215733215748_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215731215746_))))
                        (let ((_hd215734215751_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215733215748_)))
                              (_tl215735215753_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215733215748_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215735215753_))
                              (let ((_e215736215756_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215735215753_))))
                                (let ((_hd215737215759_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215736215756_)))
                                      (_tl215738215761_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215736215756_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl215738215761_))
                                      ((lambda (_L215764_)
                                         (let ((_eid215776_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L215764_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht215728_
                                            _eid215776_
                                            1+
                                            '0)))
                                       _hd215737215759_)
                                      (let ()
                                        (declare (not safe))
                                        (_g215730215743_ _g215731215746_)))))
                              (let ()
                                (declare (not safe))
                                (_g215730215743_ _g215731215746_)))))
                      (let ()
                        (declare (not safe))
                        (_g215730215743_ _g215731215746_))))))
          (declare (not safe))
          (_g215729215778_ _stx215727_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx215657_ _ht215658_)
        (let* ((_g215660215677_
                (lambda (_g215661215674_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215661215674_))))
               (_g215659215724_
                (lambda (_g215661215680_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215661215680_))
                      (let ((_e215664215682_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215661215680_))))
                        (let ((_hd215665215685_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215664215682_)))
                              (_tl215666215687_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215664215682_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215666215687_))
                              (let ((_e215667215690_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215666215687_))))
                                (let ((_hd215668215693_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215667215690_)))
                                      (_tl215669215695_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215667215690_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215669215695_))
                                      (let ((_e215670215698_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215669215695_))))
                                        (let ((_hd215671215701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215670215698_)))
                                              (_tl215672215703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215670215698_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215672215703_))
                                              ((lambda (_L215706_ _L215707_)
                                                 (let ((_eid215722_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L215707_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht215658_
                                                      _eid215722_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L215706_
                                                      _ht215658_))))
                                               _hd215671215701_
                                               _hd215668215693_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215660215677_
                                                 _g215661215680_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215660215677_ _g215661215680_)))))
                              (let ()
                                (declare (not safe))
                                (_g215660215677_ _g215661215680_)))))
                      (let ()
                        (declare (not safe))
                        (_g215660215677_ _g215661215680_))))))
          (declare (not safe))
          (_g215659215724_ _stx215657_))))
    (define gxc#find-body%
      (lambda (_stx215570_ _arg215571_)
        (let* ((_g215573215592_
                (lambda (_g215574215589_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215574215589_))))
               (_g215572215654_
                (lambda (_g215574215595_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215574215595_))
                      (let ((_e215576215597_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215574215595_))))
                        (let ((_hd215577215600_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215576215597_)))
                              (_tl215578215602_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215576215597_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl215578215602_))
                              (let ((_g221981_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl215578215602_
                                        '0))))
                                (begin
                                  (let ((_g221982_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221981_)
                                               (##vector-length _g221981_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221982_ 2)))
                                        (error "Context expects 2 values"
                                               _g221982_)))
                                  (let ((_target215579215605_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221981_ 0)))
                                        (_tl215581215607_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221981_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl215581215607_))
                                        (letrec ((_loop215582215610_
                                                  (lambda (_hd215580215613_
                                                           _expr215586215615_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd215580215613_))
                                                        (let ((_e215583215618_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd215580215613_))))
                  (let ((_lp-hd215584215621_
                         (let () (declare (not safe)) (##car _e215583215618_)))
                        (_lp-tl215585215623_
                         (let ()
                           (declare (not safe))
                           (##cdr _e215583215618_))))
                    (let ((__tmp221983
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd215584215621_ _expr215586215615_))))
                      (declare (not safe))
                      (_loop215582215610_ _lp-tl215585215623_ __tmp221983))))
                (let ((_expr215587215626_ (reverse _expr215586215615_)))
                  ((lambda (_L215629_)
                     (let ((__tmp221986
                            (lambda (_g215642215644_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g215642215644_
                                 _arg215571_))))
                           (__tmp221984
                            (let ((__tmp221985
                                   (lambda (_g215646215649_ _g215647215651_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g215646215649_
                                             _g215647215651_)))))
                              (declare (not safe))
                              (foldr1 __tmp221985 '() _L215629_))))
                       (declare (not safe))
                       (ormap1 __tmp221986 __tmp221984)))
                   _expr215587215626_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop215582215610_
                                             _target215579215605_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g215573215592_
                                           _g215574215595_))))))
                              (let ()
                                (declare (not safe))
                                (_g215573215592_ _g215574215595_)))))
                      (let ()
                        (declare (not safe))
                        (_g215573215592_ _g215574215595_))))))
          (declare (not safe))
          (_g215572215654_ _stx215570_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx215502_ _arg215503_)
        (let* ((_g215505215522_
                (lambda (_g215506215519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215506215519_))))
               (_g215504215567_
                (lambda (_g215506215525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215506215525_))
                      (let ((_e215509215527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215506215525_))))
                        (let ((_hd215510215530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215509215527_)))
                              (_tl215511215532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215509215527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215511215532_))
                              (let ((_e215512215535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215511215532_))))
                                (let ((_hd215513215538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215512215535_)))
                                      (_tl215514215540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215512215535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215514215540_))
                                      (let ((_e215515215543_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215514215540_))))
                                        (let ((_hd215516215546_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215515215543_)))
                                              (_tl215517215548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215515215543_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215517215548_))
                                              ((lambda (_L215551_ _L215552_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L215551_
                                                    _arg215503_)))
                                               _hd215516215546_
                                               _hd215513215538_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215505215522_
                                                 _g215506215525_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215505215522_ _g215506215525_)))))
                              (let ()
                                (declare (not safe))
                                (_g215505215522_ _g215506215525_)))))
                      (let ()
                        (declare (not safe))
                        (_g215505215522_ _g215506215525_))))))
          (declare (not safe))
          (_g215504215567_ _stx215502_))))
    (define gxc#find-lambda%
      (lambda (_stx215434_ _arg215435_)
        (let* ((_g215437215454_
                (lambda (_g215438215451_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215438215451_))))
               (_g215436215499_
                (lambda (_g215438215457_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215438215457_))
                      (let ((_e215441215459_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215438215457_))))
                        (let ((_hd215442215462_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215441215459_)))
                              (_tl215443215464_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215441215459_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215443215464_))
                              (let ((_e215444215467_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215443215464_))))
                                (let ((_hd215445215470_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215444215467_)))
                                      (_tl215446215472_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215444215467_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215446215472_))
                                      (let ((_e215447215475_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215446215472_))))
                                        (let ((_hd215448215478_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215447215475_)))
                                              (_tl215449215480_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215447215475_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215449215480_))
                                              ((lambda (_L215483_ _L215484_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L215483_
                                                    _arg215435_)))
                                               _hd215448215478_
                                               _hd215445215470_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215437215454_
                                                 _g215438215457_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215437215454_ _g215438215457_)))))
                              (let ()
                                (declare (not safe))
                                (_g215437215454_ _g215438215457_)))))
                      (let ()
                        (declare (not safe))
                        (_g215437215454_ _g215438215457_))))))
          (declare (not safe))
          (_g215436215499_ _stx215434_))))
    (define gxc#find-case-lambda%
      (lambda (_stx215316_ _arg215317_)
        (let* ((_g215319215347_
                (lambda (_g215320215344_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215320215344_))))
               (_g215318215431_
                (lambda (_g215320215350_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215320215350_))
                      (let ((_e215323215352_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215320215350_))))
                        (let ((_hd215324215355_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215323215352_)))
                              (_tl215325215357_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215323215352_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl215325215357_))
                              (let ((_g221987_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl215325215357_
                                        '0))))
                                (begin
                                  (let ((_g221988_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221987_)
                                               (##vector-length _g221987_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221988_ 2)))
                                        (error "Context expects 2 values"
                                               _g221988_)))
                                  (let ((_target215326215360_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221987_ 0)))
                                        (_tl215328215362_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221987_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl215328215362_))
                                        (letrec ((_loop215329215365_
                                                  (lambda (_hd215327215368_
                                                           _body215333215370_
                                                           _hd215334215372_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd215327215368_))
                                                        (let ((_e215330215375_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd215327215368_))))
                  (let ((_lp-hd215331215378_
                         (let () (declare (not safe)) (##car _e215330215375_)))
                        (_lp-tl215332215380_
                         (let ()
                           (declare (not safe))
                           (##cdr _e215330215375_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd215331215378_))
                        (let ((_e215337215383_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd215331215378_))))
                          (let ((_hd215338215386_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e215337215383_)))
                                (_tl215339215388_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e215337215383_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl215339215388_))
                                (let ((_e215340215391_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl215339215388_))))
                                  (let ((_hd215341215394_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e215340215391_)))
                                        (_tl215342215396_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e215340215391_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl215342215396_))
                                        (let ((__tmp221990
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd215341215394_
                                                       _body215333215370_)))
                                              (__tmp221989
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd215338215386_
                                                       _hd215334215372_))))
                                          (declare (not safe))
                                          (_loop215329215365_
                                           _lp-tl215332215380_
                                           __tmp221990
                                           __tmp221989))
                                        (let ()
                                          (declare (not safe))
                                          (_g215319215347_ _g215320215350_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g215319215347_ _g215320215350_)))))
                        (let ()
                          (declare (not safe))
                          (_g215319215347_ _g215320215350_)))))
                (let ((_body215335215399_ (reverse _body215333215370_))
                      (_hd215336215401_ (reverse _hd215334215372_)))
                  ((lambda (_L215404_ _L215405_)
                     (let ((__tmp221993
                            (lambda (_g215419215421_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g215419215421_
                                 _arg215317_))))
                           (__tmp221991
                            (let ((__tmp221992
                                   (lambda (_g215423215426_ _g215424215428_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g215423215426_
                                             _g215424215428_)))))
                              (declare (not safe))
                              (foldr1 __tmp221992 '() _L215404_))))
                       (declare (not safe))
                       (ormap1 __tmp221993 __tmp221991)))
                   _body215335215399_
                   _hd215336215401_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop215329215365_
                                             _target215326215360_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g215319215347_
                                           _g215320215350_))))))
                              (let ()
                                (declare (not safe))
                                (_g215319215347_ _g215320215350_)))))
                      (let ()
                        (declare (not safe))
                        (_g215319215347_ _g215320215350_))))))
          (declare (not safe))
          (_g215318215431_ _stx215316_))))
    (define gxc#find-let-values%
      (lambda (_stx215166_ _arg215167_)
        (let* ((_g215169215204_
                (lambda (_g215170215201_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215170215201_))))
               (_g215168215313_
                (lambda (_g215170215207_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215170215207_))
                      (let ((_e215174215209_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215170215207_))))
                        (let ((_hd215175215212_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215174215209_)))
                              (_tl215176215214_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215174215209_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215176215214_))
                              (let ((_e215177215217_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215176215214_))))
                                (let ((_hd215178215220_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215177215217_)))
                                      (_tl215179215222_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215177215217_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd215178215220_))
                                      (let ((_g221994_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd215178215220_
                                                '0))))
                                        (begin
                                          (let ((_g221995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221994_)
                                                       (##vector-length
                                                        _g221994_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221995_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221995_)))
                                          (let ((_target215180215225_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g221994_ 0)))
                                                (_tl215182215227_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g221994_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl215182215227_))
                                                (letrec ((_loop215183215230_
                                                          (lambda (_hd215181215233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr215187215235_
                           _bind215188215237_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd215181215233_))
                        (let ((_e215184215240_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd215181215233_))))
                          (let ((_lp-hd215185215243_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e215184215240_)))
                                (_lp-tl215186215245_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e215184215240_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd215185215243_))
                                (let ((_e215191215248_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd215185215243_))))
                                  (let ((_hd215192215251_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e215191215248_)))
                                        (_tl215193215253_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e215191215248_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl215193215253_))
                                        (let ((_e215194215256_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl215193215253_))))
                                          (let ((_hd215195215259_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e215194215256_)))
                                                (_tl215196215261_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e215194215256_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl215196215261_))
                                                (let ((__tmp221997
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd215195215259_
                                                               _expr215187215235_)))
                                                      (__tmp221996
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd215192215251_
                                                               _bind215188215237_))))
                                                  (declare (not safe))
                                                  (_loop215183215230_
                                                   _lp-tl215186215245_
                                                   __tmp221997
                                                   __tmp221996))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g215169215204_
                                                   _g215170215207_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g215169215204_ _g215170215207_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g215169215204_ _g215170215207_)))))
                        (let ((_expr215189215264_ (reverse _expr215187215235_))
                              (_bind215190215266_
                               (reverse _bind215188215237_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215179215222_))
                              (let ((_e215197215269_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215179215222_))))
                                (let ((_hd215198215272_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215197215269_)))
                                      (_tl215199215274_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215197215269_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl215199215274_))
                                      ((lambda (_L215277_ _L215278_ _L215279_)
                                         (let ((_$e215310_
                                                (let ((__tmp222000
                                                       (lambda (_g215298215300_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g215298215300_
                                                            _arg215167_))))
                                                      (__tmp221998
                                                       (let ((__tmp221999
                                                              (lambda (_g215302215305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g215303215307_)
                        (let ()
                          (declare (not safe))
                          (cons _g215302215305_ _g215303215307_)))))
                 (declare (not safe))
                 (foldr1 __tmp221999 '() _L215278_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp222000
                                                          __tmp221998))))
                                           (if _$e215310_
                                               _$e215310_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L215277_
                                                  _arg215167_)))))
                                       _hd215198215272_
                                       _expr215189215264_
                                       _bind215190215266_)
                                      (let ()
                                        (declare (not safe))
                                        (_g215169215204_ _g215170215207_)))))
                              (let ()
                                (declare (not safe))
                                (_g215169215204_ _g215170215207_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop215183215230_
                                                     _target215180215225_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g215169215204_
                                                   _g215170215207_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215169215204_ _g215170215207_)))))
                              (let ()
                                (declare (not safe))
                                (_g215169215204_ _g215170215207_)))))
                      (let ()
                        (declare (not safe))
                        (_g215169215204_ _g215170215207_))))))
          (declare (not safe))
          (_g215168215313_ _stx215166_))))
    (define gxc#find-setq%
      (lambda (_stx215098_ _arg215099_)
        (let* ((_g215101215118_
                (lambda (_g215102215115_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215102215115_))))
               (_g215100215163_
                (lambda (_g215102215121_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215102215121_))
                      (let ((_e215105215123_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215102215121_))))
                        (let ((_hd215106215126_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215105215123_)))
                              (_tl215107215128_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215105215123_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215107215128_))
                              (let ((_e215108215131_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215107215128_))))
                                (let ((_hd215109215134_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215108215131_)))
                                      (_tl215110215136_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215108215131_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215110215136_))
                                      (let ((_e215111215139_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215110215136_))))
                                        (let ((_hd215112215142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215111215139_)))
                                              (_tl215113215144_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215111215139_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215113215144_))
                                              ((lambda (_L215147_ _L215148_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L215147_
                                                    _arg215099_)))
                                               _hd215112215142_
                                               _hd215109215134_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215101215118_
                                                 _g215102215121_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215101215118_ _g215102215121_)))))
                              (let ()
                                (declare (not safe))
                                (_g215101215118_ _g215102215121_)))))
                      (let ()
                        (declare (not safe))
                        (_g215101215118_ _g215102215121_))))))
          (declare (not safe))
          (_g215100215163_ _stx215098_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx215042_ _ids215043_)
        (let* ((_g215045215058_
                (lambda (_g215046215055_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215046215055_))))
               (_g215044215095_
                (lambda (_g215046215061_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215046215061_))
                      (let ((_e215048215063_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215046215061_))))
                        (let ((_hd215049215066_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215048215063_)))
                              (_tl215050215068_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215048215063_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215050215068_))
                              (let ((_e215051215071_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215050215068_))))
                                (let ((_hd215052215074_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215051215071_)))
                                      (_tl215053215076_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215051215071_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl215053215076_))
                                      ((lambda (_L215079_)
                                         (let ((__tmp222001
                                                (lambda (_g215090215092_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L215079_
                                                     _g215090215092_)))))
                                           (declare (not safe))
                                           (find __tmp222001 _ids215043_)))
                                       _hd215052215074_)
                                      (let ()
                                        (declare (not safe))
                                        (_g215045215058_ _g215046215061_)))))
                              (let ()
                                (declare (not safe))
                                (_g215045215058_ _g215046215061_)))))
                      (let ()
                        (declare (not safe))
                        (_g215045215058_ _g215046215061_))))))
          (declare (not safe))
          (_g215044215095_ _stx215042_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx214966_ _ids214967_)
        (let* ((_g214969214986_
                (lambda (_g214970214983_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g214970214983_))))
               (_g214968215039_
                (lambda (_g214970214989_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g214970214989_))
                      (let ((_e214973214991_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g214970214989_))))
                        (let ((_hd214974214994_
                               (let ()
                                 (declare (not safe))
                                 (##car _e214973214991_)))
                              (_tl214975214996_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e214973214991_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl214975214996_))
                              (let ((_e214976214999_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl214975214996_))))
                                (let ((_hd214977215002_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e214976214999_)))
                                      (_tl214978215004_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e214976214999_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl214978215004_))
                                      (let ((_e214979215007_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl214978215004_))))
                                        (let ((_hd214980215010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e214979215007_)))
                                              (_tl214981215012_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e214979215007_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl214981215012_))
                                              ((lambda (_L215015_ _L215016_)
                                                 (let ((_$e215036_
                                                        (let ((__tmp222002
                                                               (lambda (_g215031215033_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L215016_ _g215031215033_)))))
                  (declare (not safe))
                  (find __tmp222002 _ids214967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e215036_
                                                       _$e215036_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L215015_
                                                          _ids214967_)))))
                                               _hd214980215010_
                                               _hd214977215002_)
                                              (let ()
                                                (declare (not safe))
                                                (_g214969214986_
                                                 _g214970214989_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g214969214986_ _g214970214989_)))))
                              (let ()
                                (declare (not safe))
                                (_g214969214986_ _g214970214989_)))))
                      (let ()
                        (declare (not safe))
                        (_g214969214986_ _g214970214989_))))))
          (declare (not safe))
          (_g214968215039_ _stx214966_))))))
