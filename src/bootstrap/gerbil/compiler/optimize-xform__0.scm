(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708165432)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl231263_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231263_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231263_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231263_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231263_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl231263_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl231259_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231259_ '%#declare gxc#xform-identity))
           _tbl231259_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl231255_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236077 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl231255_ __tmp236077))
           (let ((__tmp236078 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl231255_ __tmp236078))
           _tbl231255_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl231251_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231251_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231251_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231251_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231251_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231251_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl231251_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl231247_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236079 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl231247_ __tmp236079))
           (let ((__tmp236080 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl231247_ __tmp236080))
           (let ()
             (declare (not safe))
             (table-set! _tbl231247_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231247_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231247_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231247_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231247_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl231247_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl231243_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236081 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl231243_ __tmp236081))
           (let ()
             (declare (not safe))
             (table-set! _tbl231243_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231243_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231243_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231243_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231243_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231243_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231243_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231243_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231243_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231243_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231243_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl231243_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx231226_ . _args231228_)
        (let ((__tmp236083
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231228_)
                     (gxc#compile-e__0 _stx231226_)
                     (let ((_arg1231233_ (car _args231228_))
                           (_rest231235_ (cdr _args231228_)))
                       (if (null? _rest231235_)
                           (gxc#compile-e__1 _stx231226_ _arg1231233_)
                           (let ((_arg2231238_ (car _rest231235_))
                                 (_rest231240_ (cdr _rest231235_)))
                             (if (null? _rest231240_)
                                 (gxc#compile-e__2
                                  _stx231226_
                                  _arg1231233_
                                  _arg2231238_)
                                 (apply gxc#compile-e
                                        _stx231226_
                                        _arg1231233_
                                        _arg2231238_
                                        _rest231240_))))))))
              (__tmp236082 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp236083
           gxc#current-compile-methods
           __tmp236082))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl231223_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236084 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl231223_ __tmp236084))
           (let ()
             (declare (not safe))
             (table-set! _tbl231223_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231223_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231223_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231223_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231223_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl231223_))))
    (define gxc#apply-collect-methods
      (lambda (_stx231206_ . _args231208_)
        (let ((__tmp236086
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231208_)
                     (gxc#compile-e__0 _stx231206_)
                     (let ((_arg1231213_ (car _args231208_))
                           (_rest231215_ (cdr _args231208_)))
                       (if (null? _rest231215_)
                           (gxc#compile-e__1 _stx231206_ _arg1231213_)
                           (let ((_arg2231218_ (car _rest231215_))
                                 (_rest231220_ (cdr _rest231215_)))
                             (if (null? _rest231220_)
                                 (gxc#compile-e__2
                                  _stx231206_
                                  _arg1231213_
                                  _arg2231218_)
                                 (apply gxc#compile-e
                                        _stx231206_
                                        _arg1231213_
                                        _arg2231218_
                                        _rest231220_))))))))
              (__tmp236085 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp236086
           gxc#current-compile-methods
           __tmp236085))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl231203_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236087 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl231203_ __tmp236087))
           (let ()
             (declare (not safe))
             (table-set! _tbl231203_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231203_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231203_ '%#set! gxc#expression-subst-setq%))
           _tbl231203_))))
    (define gxc#apply-expression-subst
      (lambda (_stx231186_ . _args231188_)
        (let ((__tmp236089
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231188_)
                     (gxc#compile-e__0 _stx231186_)
                     (let ((_arg1231193_ (car _args231188_))
                           (_rest231195_ (cdr _args231188_)))
                       (if (null? _rest231195_)
                           (gxc#compile-e__1 _stx231186_ _arg1231193_)
                           (let ((_arg2231198_ (car _rest231195_))
                                 (_rest231200_ (cdr _rest231195_)))
                             (if (null? _rest231200_)
                                 (gxc#compile-e__2
                                  _stx231186_
                                  _arg1231193_
                                  _arg2231198_)
                                 (apply gxc#compile-e
                                        _stx231186_
                                        _arg1231193_
                                        _arg2231198_
                                        _rest231200_))))))))
              (__tmp236088 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp236089
           gxc#current-compile-methods
           __tmp236088))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl231183_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236090 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl231183_ __tmp236090))
           (let ()
             (declare (not safe))
             (table-set! _tbl231183_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231183_ '%#set! gxc#expression-subst*-setq%))
           _tbl231183_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx231166_ . _args231168_)
        (let ((__tmp236092
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231168_)
                     (gxc#compile-e__0 _stx231166_)
                     (let ((_arg1231173_ (car _args231168_))
                           (_rest231175_ (cdr _args231168_)))
                       (if (null? _rest231175_)
                           (gxc#compile-e__1 _stx231166_ _arg1231173_)
                           (let ((_arg2231178_ (car _rest231175_))
                                 (_rest231180_ (cdr _rest231175_)))
                             (if (null? _rest231180_)
                                 (gxc#compile-e__2
                                  _stx231166_
                                  _arg1231173_
                                  _arg2231178_)
                                 (apply gxc#compile-e
                                        _stx231166_
                                        _arg1231173_
                                        _arg2231178_
                                        _rest231180_))))))))
              (__tmp236091 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp236092
           gxc#current-compile-methods
           __tmp236091))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl231163_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236093 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl231163_ __tmp236093))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231163_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231163_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231163_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl231163_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl231159_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236094 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl231159_ __tmp236094))
           (let ()
             (declare (not safe))
             (table-set! _tbl231159_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231159_ '%#set! gxc#find-var-refs-setq%))
           _tbl231159_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx231142_ . _args231144_)
        (let ((__tmp236096
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231144_)
                     (gxc#compile-e__0 _stx231142_)
                     (let ((_arg1231149_ (car _args231144_))
                           (_rest231151_ (cdr _args231144_)))
                       (if (null? _rest231151_)
                           (gxc#compile-e__1 _stx231142_ _arg1231149_)
                           (let ((_arg2231154_ (car _rest231151_))
                                 (_rest231156_ (cdr _rest231151_)))
                             (if (null? _rest231156_)
                                 (gxc#compile-e__2
                                  _stx231142_
                                  _arg1231149_
                                  _arg2231154_)
                                 (apply gxc#compile-e
                                        _stx231142_
                                        _arg1231149_
                                        _arg2231154_
                                        _rest231156_))))))))
              (__tmp236095 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp236096
           gxc#current-compile-methods
           __tmp236095))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl231139_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236097 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl231139_ __tmp236097))
           (let ()
             (declare (not safe))
             (table-set! _tbl231139_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231139_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl231139_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx231122_ . _args231124_)
        (let ((__tmp236099
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231124_)
                     (gxc#compile-e__0 _stx231122_)
                     (let ((_arg1231129_ (car _args231124_))
                           (_rest231131_ (cdr _args231124_)))
                       (if (null? _rest231131_)
                           (gxc#compile-e__1 _stx231122_ _arg1231129_)
                           (let ((_arg2231134_ (car _rest231131_))
                                 (_rest231136_ (cdr _rest231131_)))
                             (if (null? _rest231136_)
                                 (gxc#compile-e__2
                                  _stx231122_
                                  _arg1231129_
                                  _arg2231134_)
                                 (apply gxc#compile-e
                                        _stx231122_
                                        _arg1231129_
                                        _arg2231134_
                                        _rest231136_))))))))
              (__tmp236098 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp236099
           gxc#current-compile-methods
           __tmp236098))))
    (define gxc#xform-identity
      (lambda (_stx231119_ . _args231120_) _stx231119_))
    (define gxc#xform-wrap-source
      (lambda (_stx231116_ _src-stx231117_)
        (let ((__tmp236100
               (let () (declare (not safe)) (gx#stx-source _src-stx231117_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx231116_ __tmp236100))))
    (define gxc#xform-apply-compile-e
      (lambda (_args231103_)
        (lambda (_stx231105_)
          (if (let () (declare (not safe)) (null? _args231103_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx231105_))
              (let ((_arg1231107_ (car _args231103_))
                    (_rest231109_ (cdr _args231103_)))
                (if (let () (declare (not safe)) (null? _rest231109_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx231105_ _arg1231107_))
                    (let ((_arg2231112_ (car _rest231109_))
                          (_rest231114_ (cdr _rest231109_)))
                      (if (let () (declare (not safe)) (null? _rest231114_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx231105_
                             _arg1231107_
                             _arg2231112_))
                          (apply gxc#compile-e
                                 _stx231105_
                                 _arg1231107_
                                 _arg2231112_
                                 _rest231114_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx231062_ . _args231063_)
        (let* ((_g231065231075_
                (lambda (_g231066231072_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231066231072_))))
               (_g231064231100_
                (lambda (_g231066231078_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231066231078_))
                      (let ((_e231070231080_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231066231078_))))
                        (let ((_hd231069231083_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231070231080_)))
                              (_tl231068231085_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231070231080_))))
                          ((lambda (_L231088_)
                             (let* ((_forms231098_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args231063_))
                                          _L231088_))
                                    (__tmp236101
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms231098_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp236101
                                _stx231062_)))
                           _tl231068231085_)))
                      (let ()
                        (declare (not safe))
                        (_g231065231075_ _g231066231078_))))))
          (declare (not safe))
          (_g231064231100_ _stx231062_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx231020_ . _args231021_)
        (let* ((_g231023231033_
                (lambda (_g231024231030_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231024231030_))))
               (_g231022231059_
                (lambda (_g231024231036_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231024231036_))
                      (let ((_e231028231038_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231024231036_))))
                        (let ((_hd231027231041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231028231038_)))
                              (_tl231026231043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231028231038_))))
                          ((lambda (_L231046_)
                             (let ((__tmp236104
                                    (lambda ()
                                      (let* ((_forms231057_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args231021_))
                                                   _L231046_))
                                             (__tmp236105
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms231057_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236105
                                         _stx231020_))))
                                   (__tmp236102
                                    (let ((__tmp236103
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp236103 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp236104
                                gx#current-expander-phi
                                __tmp236102)))
                           _tl231026231043_)))
                      (let ()
                        (declare (not safe))
                        (_g231023231033_ _g231024231036_))))))
          (declare (not safe))
          (_g231022231059_ _stx231020_))))
    (define gxc#xform-module%
      (lambda (_stx230948_ . _args230949_)
        (let* ((_g230951230965_
                (lambda (_g230952230962_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230952230962_))))
               (_g230950231017_
                (lambda (_g230952230968_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230952230968_))
                      (let ((_e230957230970_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230952230968_))))
                        (let ((_hd230956230973_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230957230970_)))
                              (_tl230955230975_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230957230970_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230955230975_))
                              (let ((_e230960230978_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230955230975_))))
                                (let ((_hd230959230981_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230960230978_)))
                                      (_tl230958230983_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230960230978_))))
                                  ((lambda (_L230986_ _L230987_)
                                     (let* ((_ctx231000_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L230987_)))
                                            (_code231002_
                                             (##structure-ref
                                              _ctx231000_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code231014_
                                             (let ((__tmp236106
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args230949_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code231002_))
                                                          (let ((_arg1231005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args230949_))
                        (_rest231007_ (cdr _args230949_)))
                    (if (let () (declare (not safe)) (null? _rest231007_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code231002_ _arg1231005_))
                        (let ((_arg2231010_ (car _rest231007_))
                              (_rest231012_ (cdr _rest231007_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest231012_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code231002_
                                 _arg1231005_
                                 _arg2231010_))
                              (apply gxc#compile-e
                                     _code231002_
                                     _arg1231005_
                                     _arg2231010_
                                     _rest231012_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp236106
                                                gx#current-expander-context
                                                _ctx231000_))))
                                       (##structure-set!
                                        _ctx231000_
                                        _code231014_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp236107
                                              (let ((__tmp236108
                                                     (let ((__tmp236109
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code231014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L230987_ __tmp236109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp236108))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp236107
                                          _stx230948_))))
                                   _tl230958230983_
                                   _hd230959230981_)))
                              (let ()
                                (declare (not safe))
                                (_g230951230965_ _g230952230968_)))))
                      (let ()
                        (declare (not safe))
                        (_g230951230965_ _g230952230968_))))))
          (declare (not safe))
          (_g230950231017_ _stx230948_))))
    (define gxc#xform-define-values%
      (lambda (_stx230869_ . _args230870_)
        (let* ((_g230872230889_
                (lambda (_g230873230886_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230873230886_))))
               (_g230871230945_
                (lambda (_g230873230892_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230873230892_))
                      (let ((_e230878230894_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230873230892_))))
                        (let ((_hd230877230897_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230878230894_)))
                              (_tl230876230899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230878230894_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230876230899_))
                              (let ((_e230881230902_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230876230899_))))
                                (let ((_hd230880230905_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230881230902_)))
                                      (_tl230879230907_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230881230902_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230879230907_))
                                      (let ((_e230884230910_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230879230907_))))
                                        (let ((_hd230883230913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230884230910_)))
                                              (_tl230882230915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230884230910_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230882230915_))
                                              ((lambda (_L230918_ _L230919_)
                                                 (let* ((_expr230943_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args230870_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L230918_))
                     (let ((_arg1230934_ (car _args230870_))
                           (_rest230936_ (cdr _args230870_)))
                       (if (let () (declare (not safe)) (null? _rest230936_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L230918_ _arg1230934_))
                           (let ((_arg2230939_ (car _rest230936_))
                                 (_rest230941_ (cdr _rest230936_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest230941_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L230918_
                                    _arg1230934_
                                    _arg2230939_))
                                 (apply gxc#compile-e
                                        _L230918_
                                        _arg1230934_
                                        _arg2230939_
                                        _rest230941_)))))))
                (__tmp236110
                 (let ((__tmp236111
                        (let ((__tmp236112
                               (let ()
                                 (declare (not safe))
                                 (cons _expr230943_ '()))))
                          (declare (not safe))
                          (cons _L230919_ __tmp236112))))
                   (declare (not safe))
                   (cons '%#define-values __tmp236111))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236110
                                                    _stx230869_)))
                                               _hd230883230913_
                                               _hd230880230905_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230872230889_
                                                 _g230873230892_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230872230889_ _g230873230892_)))))
                              (let ()
                                (declare (not safe))
                                (_g230872230889_ _g230873230892_)))))
                      (let ()
                        (declare (not safe))
                        (_g230872230889_ _g230873230892_))))))
          (declare (not safe))
          (_g230871230945_ _stx230869_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx230789_ . _args230790_)
        (let* ((_g230792230809_
                (lambda (_g230793230806_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230793230806_))))
               (_g230791230866_
                (lambda (_g230793230812_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230793230812_))
                      (let ((_e230798230814_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230793230812_))))
                        (let ((_hd230797230817_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230798230814_)))
                              (_tl230796230819_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230798230814_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230796230819_))
                              (let ((_e230801230822_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230796230819_))))
                                (let ((_hd230800230825_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230801230822_)))
                                      (_tl230799230827_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230801230822_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230799230827_))
                                      (let ((_e230804230830_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230799230827_))))
                                        (let ((_hd230803230833_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230804230830_)))
                                              (_tl230802230835_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230804230830_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230802230835_))
                                              ((lambda (_L230838_ _L230839_)
                                                 (let ((__tmp236115
                                                        (lambda ()
                                                          (let* ((_expr230864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args230790_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L230838_))
                              (let ((_arg1230855_ (car _args230790_))
                                    (_rest230857_ (cdr _args230790_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest230857_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L230838_
                                       _arg1230855_))
                                    (let ((_arg2230860_ (car _rest230857_))
                                          (_rest230862_ (cdr _rest230857_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest230862_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L230838_
                                             _arg1230855_
                                             _arg2230860_))
                                          (apply gxc#compile-e
                                                 _L230838_
                                                 _arg1230855_
                                                 _arg2230860_
                                                 _rest230862_)))))))
                         (__tmp236116
                          (let ((__tmp236117
                                 (let ((__tmp236118
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr230864_ '()))))
                                   (declare (not safe))
                                   (cons _L230839_ __tmp236118))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp236117))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp236116 _stx230789_))))
               (__tmp236113
                (let ((__tmp236114 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp236114 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp236115
                                                    gx#current-expander-phi
                                                    __tmp236113)))
                                               _hd230803230833_
                                               _hd230800230825_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230792230809_
                                                 _g230793230812_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230792230809_ _g230793230812_)))))
                              (let ()
                                (declare (not safe))
                                (_g230792230809_ _g230793230812_)))))
                      (let ()
                        (declare (not safe))
                        (_g230792230809_ _g230793230812_))))))
          (declare (not safe))
          (_g230791230866_ _stx230789_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx230710_ . _args230711_)
        (let* ((_g230713230730_
                (lambda (_g230714230727_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230714230727_))))
               (_g230712230786_
                (lambda (_g230714230733_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230714230733_))
                      (let ((_e230719230735_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230714230733_))))
                        (let ((_hd230718230738_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230719230735_)))
                              (_tl230717230740_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230719230735_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230717230740_))
                              (let ((_e230722230743_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230717230740_))))
                                (let ((_hd230721230746_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230722230743_)))
                                      (_tl230720230748_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230722230743_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230720230748_))
                                      (let ((_e230725230751_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230720230748_))))
                                        (let ((_hd230724230754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230725230751_)))
                                              (_tl230723230756_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230725230751_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230723230756_))
                                              ((lambda (_L230759_ _L230760_)
                                                 (let* ((_expr230784_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args230711_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L230759_))
                     (let ((_arg1230775_ (car _args230711_))
                           (_rest230777_ (cdr _args230711_)))
                       (if (let () (declare (not safe)) (null? _rest230777_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L230759_ _arg1230775_))
                           (let ((_arg2230780_ (car _rest230777_))
                                 (_rest230782_ (cdr _rest230777_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest230782_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L230759_
                                    _arg1230775_
                                    _arg2230780_))
                                 (apply gxc#compile-e
                                        _L230759_
                                        _arg1230775_
                                        _arg2230780_
                                        _rest230782_)))))))
                (__tmp236119
                 (let ((__tmp236120
                        (let ((__tmp236121
                               (let ()
                                 (declare (not safe))
                                 (cons _expr230784_ '()))))
                          (declare (not safe))
                          (cons _L230760_ __tmp236121))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp236120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236119
                                                    _stx230710_)))
                                               _hd230724230754_
                                               _hd230721230746_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230713230730_
                                                 _g230714230733_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230713230730_ _g230714230733_)))))
                              (let ()
                                (declare (not safe))
                                (_g230713230730_ _g230714230733_)))))
                      (let ()
                        (declare (not safe))
                        (_g230713230730_ _g230714230733_))))))
          (declare (not safe))
          (_g230712230786_ _stx230710_))))
    (define gxc#xform-lambda%
      (lambda (_stx230653_ . _args230654_)
        (let* ((_g230656230670_
                (lambda (_g230657230667_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230657230667_))))
               (_g230655230707_
                (lambda (_g230657230673_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230657230673_))
                      (let ((_e230662230675_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230657230673_))))
                        (let ((_hd230661230678_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230662230675_)))
                              (_tl230660230680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230662230675_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230660230680_))
                              (let ((_e230665230683_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230660230680_))))
                                (let ((_hd230664230686_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230665230683_)))
                                      (_tl230663230688_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230665230683_))))
                                  ((lambda (_L230691_ _L230692_)
                                     (let* ((_body230705_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args230654_))
                                                  _L230691_))
                                            (__tmp236122
                                             (let ((__tmp236123
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L230692_
                                                            _body230705_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp236123))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp236122
                                        _stx230653_)))
                                   _tl230663230688_
                                   _hd230664230686_)))
                              (let ()
                                (declare (not safe))
                                (_g230656230670_ _g230657230673_)))))
                      (let ()
                        (declare (not safe))
                        (_g230656230670_ _g230657230673_))))))
          (declare (not safe))
          (_g230655230707_ _stx230653_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx230566_ . _args230567_)
        (letrec ((_clause-e230569_
                  (lambda (_clause230610_)
                    (let* ((_g230612230623_
                            (lambda (_g230613230620_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g230613230620_))))
                           (_g230611230650_
                            (lambda (_g230613230626_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g230613230626_))
                                  (let ((_e230618230628_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g230613230626_))))
                                    (let ((_hd230617230631_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230618230628_)))
                                          (_tl230616230633_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230618230628_))))
                                      ((lambda (_L230636_ _L230637_)
                                         (let ((_body230648_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args230567_))
                                                     _L230636_)))
                                           (declare (not safe))
                                           (cons _L230637_ _body230648_)))
                                       _tl230616230633_
                                       _hd230617230631_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230612230623_ _g230613230626_))))))
                      (declare (not safe))
                      (_g230611230650_ _clause230610_)))))
          (let* ((_g230571230581_
                  (lambda (_g230572230578_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g230572230578_))))
                 (_g230570230607_
                  (lambda (_g230572230584_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g230572230584_))
                        (let ((_e230576230586_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g230572230584_))))
                          (let ((_hd230575230589_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230576230586_)))
                                (_tl230574230591_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230576230586_))))
                            ((lambda (_L230594_)
                               (let* ((_clauses230605_
                                       (map _clause-e230569_ _L230594_))
                                      (__tmp236124
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses230605_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp236124
                                  _stx230566_)))
                             _tl230574230591_)))
                        (let ()
                          (declare (not safe))
                          (_g230571230581_ _g230572230584_))))))
            (declare (not safe))
            (_g230570230607_ _stx230566_)))))
    (define gxc#xform-let-values%
      (lambda (_stx230360_ . _args230361_)
        (let* ((_g230363230396_
                (lambda (_g230364230393_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230364230393_))))
               (_g230362230563_
                (lambda (_g230364230399_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230364230399_))
                      (let ((_e230371230401_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230364230399_))))
                        (let ((_hd230370230404_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230371230401_)))
                              (_tl230369230406_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230371230401_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230369230406_))
                              (let ((_e230374230409_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230369230406_))))
                                (let ((_hd230373230412_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230374230409_)))
                                      (_tl230372230414_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230374230409_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd230373230412_))
                                      (let ((_g236125_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd230373230412_
                                                '0))))
                                        (begin
                                          (let ((_g236126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g236125_)
                                                       (##vector-length
                                                        _g236125_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g236126_ 2)))
                                                (error "Context expects 2 values"
                                                       _g236126_)))
                                          (let ((_target230375230417_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g236125_ 0)))
                                                (_tl230377230419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g236125_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl230377230419_))
                                                (letrec ((_loop230378230422_
                                                          (lambda (_hd230376230425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr230382230427_
                           _hd230383230429_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd230376230425_))
                        (let ((_e230379230432_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd230376230425_))))
                          (let ((_lp-hd230380230435_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230379230432_)))
                                (_lp-tl230381230437_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230379230432_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd230380230435_))
                                (let ((_e230388230440_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd230380230435_))))
                                  (let ((_hd230387230443_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230388230440_)))
                                        (_tl230386230445_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230388230440_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl230386230445_))
                                        (let ((_e230391230448_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl230386230445_))))
                                          (let ((_hd230390230451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230391230448_)))
                                                (_tl230389230453_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230391230448_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl230389230453_))
                                                (let ((__tmp236139
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd230390230451_
                                                               _expr230382230427_)))
                                                      (__tmp236138
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd230387230443_
                                                               _hd230383230429_))))
                                                  (declare (not safe))
                                                  (_loop230378230422_
                                                   _lp-tl230381230437_
                                                   __tmp236139
                                                   __tmp236138))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230363230396_
                                                   _g230364230399_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g230363230396_ _g230364230399_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230363230396_ _g230364230399_)))))
                        (let ((_expr230384230456_ (reverse _expr230382230427_))
                              (_hd230385230458_ (reverse _hd230383230429_)))
                          ((lambda (_L230461_ _L230462_ _L230463_ _L230464_)
                             (let* ((_g230483230499_
                                     (lambda (_g230484230496_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g230484230496_))))
                                    (_g230482230553_
                                     (lambda (_g230484230502_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g230484230502_))
                                           (let ((_g236127_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g230484230502_
                                                     '0))))
                                             (begin
                                               (let ((_g236128_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g236127_)
                                                            (##vector-length
                                                             _g236127_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g236128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g236128_)))
                                               (let ((_target230486230504_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g236127_
                                                         0)))
                                                     (_tl230488230506_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g236127_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl230488230506_))
                                                     (letrec ((_loop230489230509_
                                                               (lambda (_hd230487230512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr230493230514_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd230487230512_))
                             (let ((_e230490230517_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd230487230512_))))
                               (let ((_lp-hd230491230520_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e230490230517_)))
                                     (_lp-tl230492230522_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e230490230517_))))
                                 (let ((__tmp236135
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd230491230520_
                                                _expr230493230514_))))
                                   (declare (not safe))
                                   (_loop230489230509_
                                    _lp-tl230492230522_
                                    __tmp236135))))
                             (let ((_expr230494230525_
                                    (reverse _expr230493230514_)))
                               ((lambda (_L230528_)
                                  (let ()
                                    (let* ((_body230541_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args230361_))
                                                 _L230461_))
                                           (__tmp236129
                                            (let ((__tmp236130
                                                   (let ((__tmp236131
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L230528_
                                                               _L230463_))
                                                            (let ((__tmp236132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g230542230546_
                                    _g230543230548_
                                    _g230544230550_)
                             (let ((__tmp236133
                                    (let ((__tmp236134
                                           (let ()
                                             (declare (not safe))
                                             (cons _g230542230546_ '()))))
                                      (declare (not safe))
                                      (cons _g230543230548_ __tmp236134))))
                               (declare (not safe))
                               (cons __tmp236133 _g230544230550_)))))
                      (declare (not safe))
                      (foldr2 __tmp236132 '() _L230528_ _L230463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp236131
                                                           _body230541_))))
                                              (declare (not safe))
                                              (cons _L230464_ __tmp236130))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp236129
                                       _stx230360_))))
                                _expr230494230525_))))))
               (let ()
                 (declare (not safe))
                 (_loop230489230509_ _target230486230504_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g230483230499_
                                                        _g230484230502_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g230483230499_
                                              _g230484230502_)))))
                                    (__tmp236136
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args230361_))
                                          (let ((__tmp236137
                                                 (lambda (_g230555230558_
                                                          _g230556230560_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g230555230558_
                                                           _g230556230560_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp236137
                                                    '()
                                                    _L230462_)))))
                               (declare (not safe))
                               (_g230482230553_ __tmp236136)))
                           _tl230372230414_
                           _expr230384230456_
                           _hd230385230458_
                           _hd230370230404_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop230378230422_
                                                     _target230375230417_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230363230396_
                                                   _g230364230399_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230363230396_ _g230364230399_)))))
                              (let ()
                                (declare (not safe))
                                (_g230363230396_ _g230364230399_)))))
                      (let ()
                        (declare (not safe))
                        (_g230363230396_ _g230364230399_))))))
          (declare (not safe))
          (_g230362230563_ _stx230360_))))
    (define gxc#xform-operands
      (lambda (_stx230316_ . _args230317_)
        (let* ((_g230319230330_
                (lambda (_g230320230327_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230320230327_))))
               (_g230318230357_
                (lambda (_g230320230333_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230320230333_))
                      (let ((_e230325230335_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230320230333_))))
                        (let ((_hd230324230338_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230325230335_)))
                              (_tl230323230340_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230325230335_))))
                          ((lambda (_L230343_ _L230344_)
                             (let* ((_rands230355_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args230317_))
                                          _L230343_))
                                    (__tmp236140
                                     (let ()
                                       (declare (not safe))
                                       (cons _L230344_ _rands230355_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp236140
                                _stx230316_)))
                           _tl230323230340_
                           _hd230324230338_)))
                      (let ()
                        (declare (not safe))
                        (_g230319230330_ _g230320230333_))))))
          (declare (not safe))
          (_g230318230357_ _stx230316_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx230237_ . _args230238_)
        (let* ((_g230240230257_
                (lambda (_g230241230254_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230241230254_))))
               (_g230239230313_
                (lambda (_g230241230260_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230241230260_))
                      (let ((_e230246230262_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230241230260_))))
                        (let ((_hd230245230265_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230246230262_)))
                              (_tl230244230267_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230246230262_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230244230267_))
                              (let ((_e230249230270_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230244230267_))))
                                (let ((_hd230248230273_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230249230270_)))
                                      (_tl230247230275_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230249230270_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230247230275_))
                                      (let ((_e230252230278_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230247230275_))))
                                        (let ((_hd230251230281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230252230278_)))
                                              (_tl230250230283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230252230278_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230250230283_))
                                              ((lambda (_L230286_ _L230287_)
                                                 (let* ((_expr230311_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args230238_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L230286_))
                     (let ((_arg1230302_ (car _args230238_))
                           (_rest230304_ (cdr _args230238_)))
                       (if (let () (declare (not safe)) (null? _rest230304_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L230286_ _arg1230302_))
                           (let ((_arg2230307_ (car _rest230304_))
                                 (_rest230309_ (cdr _rest230304_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest230309_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L230286_
                                    _arg1230302_
                                    _arg2230307_))
                                 (apply gxc#compile-e
                                        _L230286_
                                        _arg1230302_
                                        _arg2230307_
                                        _rest230309_)))))))
                (__tmp236141
                 (let ((__tmp236142
                        (let ((__tmp236143
                               (let ()
                                 (declare (not safe))
                                 (cons _expr230311_ '()))))
                          (declare (not safe))
                          (cons _L230287_ __tmp236143))))
                   (declare (not safe))
                   (cons '%#set! __tmp236142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236141
                                                    _stx230237_)))
                                               _hd230251230281_
                                               _hd230248230273_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230240230257_
                                                 _g230241230260_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230240230257_ _g230241230260_)))))
                              (let ()
                                (declare (not safe))
                                (_g230240230257_ _g230241230260_)))))
                      (let ()
                        (declare (not safe))
                        (_g230240230257_ _g230241230260_))))))
          (declare (not safe))
          (_g230239230313_ _stx230237_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx230168_)
        (let* ((_g230170230187_
                (lambda (_g230171230184_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230171230184_))))
               (_g230169230234_
                (lambda (_g230171230190_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230171230190_))
                      (let ((_e230176230192_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230171230190_))))
                        (let ((_hd230175230195_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230176230192_)))
                              (_tl230174230197_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230176230192_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230174230197_))
                              (let ((_e230179230200_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230174230197_))))
                                (let ((_hd230178230203_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230179230200_)))
                                      (_tl230177230205_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230179230200_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230177230205_))
                                      (let ((_e230182230208_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230177230205_))))
                                        (let ((_hd230181230211_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230182230208_)))
                                              (_tl230180230213_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230182230208_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230180230213_))
                                              ((lambda (_L230216_ _L230217_)
                                                 (let ((_sym230232_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L230217_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym230232_))
                                                   (let ((__tmp236144
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp236144
                                                      _sym230232_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L230216_))))
                                               _hd230181230211_
                                               _hd230178230203_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230170230187_
                                                 _g230171230190_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230170230187_ _g230171230190_)))))
                              (let ()
                                (declare (not safe))
                                (_g230170230187_ _g230171230190_)))))
                      (let ()
                        (declare (not safe))
                        (_g230170230187_ _g230171230190_))))))
          (declare (not safe))
          (_g230169230234_ _stx230168_))))
    (define gxc#collect-methods-call%
      (lambda (_stx229722_)
        (let* ((___stx235834235835_ _stx229722_)
               (_g229726229828_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235834235835_)))))
          (let ((___kont235836235837_
                 (lambda (_L230118_ _L230119_ _L230120_ _L230121_ _L230122_)
                   (let ((__tmp236145
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230119_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp236145))))
                (___kont235838235839_
                 (lambda (_L229944_ _L229945_ _L229946_ _L229947_)
                   (let ((__tmp236146
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229944_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp236146))))
                (___kont235840235841_ (lambda () '#!void)))
            (let ((___match235969235970_
                   (lambda (_e229735229990_
                            _hd229734229993_
                            _tl229733229995_
                            _e229738229998_
                            _hd229737230001_
                            _tl229736230003_
                            _e229741230006_
                            _hd229740230009_
                            _tl229739230011_
                            _e229744230014_
                            _hd229743230017_
                            _tl229742230019_
                            _e229747230022_
                            _hd229746230025_
                            _tl229745230027_
                            _e229750230030_
                            _hd229749230033_
                            _tl229748230035_
                            _e229753230038_
                            _hd229752230041_
                            _tl229751230043_
                            _e229756230046_
                            _hd229755230049_
                            _tl229754230051_
                            _e229759230054_
                            _hd229758230057_
                            _tl229757230059_
                            _e229762230062_
                            _hd229761230065_
                            _tl229760230067_
                            _e229765230070_
                            _hd229764230073_
                            _tl229763230075_
                            _e229768230078_
                            _hd229767230081_
                            _tl229766230083_
                            _e229771230086_
                            _hd229770230089_
                            _tl229769230091_
                            _e229774230094_
                            _hd229773230097_
                            _tl229772230099_
                            _e229777230102_
                            _hd229776230105_
                            _tl229775230107_
                            _e229780230110_
                            _hd229779230113_
                            _tl229778230115_)
                     (let ((_L230118_ _hd229779230113_)
                           (_L230119_ _hd229770230089_)
                           (_L230120_ _hd229761230065_)
                           (_L230121_ _hd229752230041_)
                           (_L230122_ _hd229743230017_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L230122_
                              'bind-method!))
                           (___kont235836235837_
                            _L230118_
                            _L230119_
                            _L230120_
                            _L230121_
                            _L230122_)
                           (___kont235840235841_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx235834235835_))
                  (let ((_e229735229990_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx235834235835_))))
                    (let ((_tl229733229995_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229735229990_)))
                          (_hd229734229993_
                           (let ()
                             (declare (not safe))
                             (##car _e229735229990_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229733229995_))
                          (let ((_e229738229998_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229733229995_))))
                            (let ((_tl229736230003_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229738229998_)))
                                  (_hd229737230001_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229738229998_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229737230001_))
                                  (let ((_e229741230006_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229737230001_))))
                                    (let ((_tl229739230011_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229741230006_)))
                                          (_hd229740230009_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229741230006_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd229740230009_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd229740230009_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229739230011_))
                                                  (let ((_e229744230014_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229739230011_))))
                                                    (let ((_tl229742230019_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229744230014_)))
                                                          (_hd229743230017_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229744230014_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229742230019_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229736230003_))
                      (let ((_e229747230022_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229736230003_))))
                        (let ((_tl229745230027_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229747230022_)))
                              (_hd229746230025_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229747230022_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229746230025_))
                              (let ((_e229750230030_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229746230025_))))
                                (let ((_tl229748230035_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229750230030_)))
                                      (_hd229749230033_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229750230030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd229749230033_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd229749230033_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl229748230035_))
                                              (let ((_e229753230038_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl229748230035_))))
                                                (let ((_tl229751230043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229753230038_)))
                                                      (_hd229752230041_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229753230038_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229751230043_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl229745230027_))
                                                          (let ((_e229756230046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl229745230027_))))
                    (let ((_tl229754230051_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229756230046_)))
                          (_hd229755230049_
                           (let ()
                             (declare (not safe))
                             (##car _e229756230046_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd229755230049_))
                          (let ((_e229759230054_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd229755230049_))))
                            (let ((_tl229757230059_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229759230054_)))
                                  (_hd229758230057_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229759230054_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd229758230057_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd229758230057_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl229757230059_))
                                          (let ((_e229762230062_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl229757230059_))))
                                            (let ((_tl229760230067_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229762230062_)))
                                                  (_hd229761230065_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229762230062_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229760230067_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl229754230051_))
                                                      (let ((_e229765230070_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl229754230051_))))
                (let ((_tl229763230075_
                       (let () (declare (not safe)) (##cdr _e229765230070_)))
                      (_hd229764230073_
                       (let () (declare (not safe)) (##car _e229765230070_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229764230073_))
                      (let ((_e229768230078_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229764230073_))))
                        (let ((_tl229766230083_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229768230078_)))
                              (_hd229767230081_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229768230078_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd229767230081_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd229767230081_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229766230083_))
                                      (let ((_e229771230086_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229766230083_))))
                                        (let ((_tl229769230091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229771230086_)))
                                              (_hd229770230089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229771230086_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229769230091_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229763230075_))
                                                  (let ((_e229774230094_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229763230075_))))
                                                    (let ((_tl229772230099_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229774230094_)))
                                                          (_hd229773230097_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229774230094_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd229773230097_))
                                                          (let ((_e229777230102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd229773230097_))))
                    (let ((_tl229775230107_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229777230102_)))
                          (_hd229776230105_
                           (let ()
                             (declare (not safe))
                             (##car _e229777230102_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd229776230105_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd229776230105_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229775230107_))
                                  (let ((_e229780230110_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229775230107_))))
                                    (let ((_tl229778230115_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229780230110_)))
                                          (_hd229779230113_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229780230110_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229778230115_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229772230099_))
                                              (___match235969235970_
                                               _e229735229990_
                                               _hd229734229993_
                                               _tl229733229995_
                                               _e229738229998_
                                               _hd229737230001_
                                               _tl229736230003_
                                               _e229741230006_
                                               _hd229740230009_
                                               _tl229739230011_
                                               _e229744230014_
                                               _hd229743230017_
                                               _tl229742230019_
                                               _e229747230022_
                                               _hd229746230025_
                                               _tl229745230027_
                                               _e229750230030_
                                               _hd229749230033_
                                               _tl229748230035_
                                               _e229753230038_
                                               _hd229752230041_
                                               _tl229751230043_
                                               _e229756230046_
                                               _hd229755230049_
                                               _tl229754230051_
                                               _e229759230054_
                                               _hd229758230057_
                                               _tl229757230059_
                                               _e229762230062_
                                               _hd229761230065_
                                               _tl229760230067_
                                               _e229765230070_
                                               _hd229764230073_
                                               _tl229763230075_
                                               _e229768230078_
                                               _hd229767230081_
                                               _tl229766230083_
                                               _e229771230086_
                                               _hd229770230089_
                                               _tl229769230091_
                                               _e229774230094_
                                               _hd229773230097_
                                               _tl229772230099_
                                               _e229777230102_
                                               _hd229776230105_
                                               _tl229775230107_
                                               _e229780230110_
                                               _hd229779230113_
                                               _tl229778230115_)
                                              (___kont235840235841_))
                                          (___kont235840235841_))))
                                  (___kont235840235841_))
                              (___kont235840235841_))
                          (___kont235840235841_))))
                  (___kont235840235841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229763230075_))
                                                      (if (let ((__tmp236147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp236147 'bind-method!))
                  (let ((_L229944_ _hd229770230089_)
                        (_L229945_ _hd229761230065_)
                        (_L229946_ _hd229752230041_)
                        (_L229947_ _hd229743230017_))
                    (___kont235838235839_
                     _L229944_
                     _L229945_
                     _L229946_
                     _L229947_))
                  (___kont235840235841_))
              (___kont235840235841_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont235840235841_))))
                                      (___kont235840235841_))
                                  (___kont235840235841_))
                              (___kont235840235841_))))
                      (___kont235840235841_))))
              (___kont235840235841_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235840235841_))))
                                          (___kont235840235841_))
                                      (___kont235840235841_))
                                  (___kont235840235841_))))
                          (___kont235840235841_))))
                  (___kont235840235841_))
              (___kont235840235841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont235840235841_))
                                          (___kont235840235841_))
                                      (___kont235840235841_))))
                              (___kont235840235841_))))
                      (___kont235840235841_))
                  (___kont235840235841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235840235841_))
                                              (___kont235840235841_))
                                          (___kont235840235841_))))
                                  (___kont235840235841_))))
                          (___kont235840235841_))))
                  (___kont235840235841_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx229669_ _id229670_ _new-id229671_)
        (let* ((_g229673229686_
                (lambda (_g229674229683_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229674229683_))))
               (_g229672229719_
                (lambda (_g229674229689_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229674229689_))
                      (let ((_e229678229691_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229674229689_))))
                        (let ((_hd229677229694_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229678229691_)))
                              (_tl229676229696_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229678229691_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229676229696_))
                              (let ((_e229681229699_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229676229696_))))
                                (let ((_hd229680229702_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229681229699_)))
                                      (_tl229679229704_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229681229699_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229679229704_))
                                      ((lambda (_L229707_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L229707_
                                                _id229670_))
                                             (let ((__tmp236148
                                                    (let ((__tmp236149
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id229671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp236149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp236148
                                                _stx229669_))
                                             _stx229669_))
                                       _hd229680229702_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229673229686_ _g229674229689_)))))
                              (let ()
                                (declare (not safe))
                                (_g229673229686_ _g229674229689_)))))
                      (let ()
                        (declare (not safe))
                        (_g229673229686_ _g229674229689_))))))
          (declare (not safe))
          (_g229672229719_ _stx229669_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx229610_ _subst229611_)
        (let* ((_g229613229626_
                (lambda (_g229614229623_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229614229623_))))
               (_g229612229666_
                (lambda (_g229614229629_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229614229629_))
                      (let ((_e229618229631_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229614229629_))))
                        (let ((_hd229617229634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229618229631_)))
                              (_tl229616229636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229618229631_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229616229636_))
                              (let ((_e229621229639_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229616229636_))))
                                (let ((_hd229620229642_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229621229639_)))
                                      (_tl229619229644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229621229639_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229619229644_))
                                      ((lambda (_L229647_)
                                         (let ((_$e229661_
                                                (let ((__tmp236150
                                                       (lambda (_sub229659_)
                                                         (let ((__tmp236151
                                                                (car _sub229659_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L229647_
                                                            __tmp236151)))))
                                                  (declare (not safe))
                                                  (find __tmp236150
                                                        _subst229611_))))
                                           (if _$e229661_
                                               ((lambda (_sub229664_)
                                                  (let ((__tmp236152
                                                         (let ((__tmp236153
                                                                (let ((__tmp236154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub229664_)))
                          (declare (not safe))
                          (cons __tmp236154 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp236153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp236152
                                                     _stx229610_)))
                                                _$e229661_)
                                               _stx229610_)))
                                       _hd229620229642_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229613229626_ _g229614229629_)))))
                              (let ()
                                (declare (not safe))
                                (_g229613229626_ _g229614229629_)))))
                      (let ()
                        (declare (not safe))
                        (_g229613229626_ _g229614229629_))))))
          (declare (not safe))
          (_g229612229666_ _stx229610_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx229538_ _id229539_ _new-id229540_)
        (let* ((_g229542229559_
                (lambda (_g229543229556_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229543229556_))))
               (_g229541229607_
                (lambda (_g229543229562_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229543229562_))
                      (let ((_e229548229564_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229543229562_))))
                        (let ((_hd229547229567_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229548229564_)))
                              (_tl229546229569_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229548229564_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229546229569_))
                              (let ((_e229551229572_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229546229569_))))
                                (let ((_hd229550229575_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229551229572_)))
                                      (_tl229549229577_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229551229572_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229549229577_))
                                      (let ((_e229554229580_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229549229577_))))
                                        (let ((_hd229553229583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229554229580_)))
                                              (_tl229552229585_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229554229580_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229552229585_))
                                              ((lambda (_L229588_ _L229589_)
                                                 (let ((_new-expr229604_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L229588_
                                                           _id229539_
                                                           _new-id229540_)))
                                                       (_new-xid229605_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L229589_
                                                               _id229539_))
                                                            _new-id229540_
                                                            _L229589_)))
                                                   (let ((__tmp236155
                                                          (let ((__tmp236156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp236157
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr229604_ '()))))
                           (declare (not safe))
                           (cons _new-xid229605_ __tmp236157))))
                    (declare (not safe))
                    (cons '%#set! __tmp236156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236155
                                                      _stx229538_))))
                                               _hd229553229583_
                                               _hd229550229575_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229542229559_
                                                 _g229543229562_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229542229559_ _g229543229562_)))))
                              (let ()
                                (declare (not safe))
                                (_g229542229559_ _g229543229562_)))))
                      (let ()
                        (declare (not safe))
                        (_g229542229559_ _g229543229562_))))))
          (declare (not safe))
          (_g229541229607_ _stx229538_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx229462_ _subst229463_)
        (let* ((_g229465229482_
                (lambda (_g229466229479_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229466229479_))))
               (_g229464229535_
                (lambda (_g229466229485_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229466229485_))
                      (let ((_e229471229487_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229466229485_))))
                        (let ((_hd229470229490_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229471229487_)))
                              (_tl229469229492_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229471229487_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229469229492_))
                              (let ((_e229474229495_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229469229492_))))
                                (let ((_hd229473229498_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229474229495_)))
                                      (_tl229472229500_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229474229495_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229472229500_))
                                      (let ((_e229477229503_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229472229500_))))
                                        (let ((_hd229476229506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229477229503_)))
                                              (_tl229475229508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229477229503_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229475229508_))
                                              ((lambda (_L229511_ _L229512_)
                                                 (let ((_new-expr229532_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L229511_
                                                           _subst229463_)))
                                                       (_new-xid229533_
                                                        (let ((_$e229529_
                                                               (let ((__tmp236158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub229527_)
                                (let ((__tmp236159 (car _sub229527_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L229512_
                                   __tmp236159)))))
                         (declare (not safe))
                         (find __tmp236158 _subst229463_))))
                  (if _$e229529_ (cdr _$e229529_) _L229512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp236160
                                                          (let ((__tmp236161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp236162
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr229532_ '()))))
                           (declare (not safe))
                           (cons _new-xid229533_ __tmp236162))))
                    (declare (not safe))
                    (cons '%#set! __tmp236161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236160
                                                      _stx229462_))))
                                               _hd229476229506_
                                               _hd229473229498_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229465229482_
                                                 _g229466229485_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229465229482_ _g229466229485_)))))
                              (let ()
                                (declare (not safe))
                                (_g229465229482_ _g229466229485_)))))
                      (let ()
                        (declare (not safe))
                        (_g229465229482_ _g229466229485_))))))
          (declare (not safe))
          (_g229464229535_ _stx229462_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx229408_ _ht229409_)
        (let* ((_g229411229424_
                (lambda (_g229412229421_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229412229421_))))
               (_g229410229459_
                (lambda (_g229412229427_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229412229427_))
                      (let ((_e229416229429_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229412229427_))))
                        (let ((_hd229415229432_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229416229429_)))
                              (_tl229414229434_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229416229429_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229414229434_))
                              (let ((_e229419229437_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229414229434_))))
                                (let ((_hd229418229440_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229419229437_)))
                                      (_tl229417229442_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229419229437_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229417229442_))
                                      ((lambda (_L229445_)
                                         (let ((_eid229457_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L229445_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht229409_
                                            _eid229457_
                                            1+
                                            '0)))
                                       _hd229418229440_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229411229424_ _g229412229427_)))))
                              (let ()
                                (declare (not safe))
                                (_g229411229424_ _g229412229427_)))))
                      (let ()
                        (declare (not safe))
                        (_g229411229424_ _g229412229427_))))))
          (declare (not safe))
          (_g229410229459_ _stx229408_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx229338_ _ht229339_)
        (let* ((_g229341229358_
                (lambda (_g229342229355_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229342229355_))))
               (_g229340229405_
                (lambda (_g229342229361_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229342229361_))
                      (let ((_e229347229363_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229342229361_))))
                        (let ((_hd229346229366_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229347229363_)))
                              (_tl229345229368_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229347229363_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229345229368_))
                              (let ((_e229350229371_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229345229368_))))
                                (let ((_hd229349229374_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229350229371_)))
                                      (_tl229348229376_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229350229371_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229348229376_))
                                      (let ((_e229353229379_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229348229376_))))
                                        (let ((_hd229352229382_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229353229379_)))
                                              (_tl229351229384_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229353229379_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229351229384_))
                                              ((lambda (_L229387_ _L229388_)
                                                 (let ((_eid229403_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L229388_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht229339_
                                                      _eid229403_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L229387_
                                                      _ht229339_))))
                                               _hd229352229382_
                                               _hd229349229374_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229341229358_
                                                 _g229342229361_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229341229358_ _g229342229361_)))))
                              (let ()
                                (declare (not safe))
                                (_g229341229358_ _g229342229361_)))))
                      (let ()
                        (declare (not safe))
                        (_g229341229358_ _g229342229361_))))))
          (declare (not safe))
          (_g229340229405_ _stx229338_))))
    (define gxc#find-body%
      (lambda (_stx229251_ _arg229252_)
        (let* ((_g229254229273_
                (lambda (_g229255229270_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229255229270_))))
               (_g229253229335_
                (lambda (_g229255229276_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229255229276_))
                      (let ((_e229259229278_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229255229276_))))
                        (let ((_hd229258229281_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229259229278_)))
                              (_tl229257229283_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229259229278_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229257229283_))
                              (let ((_g236163_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229257229283_
                                        '0))))
                                (begin
                                  (let ((_g236164_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g236163_)
                                               (##vector-length _g236163_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g236164_ 2)))
                                        (error "Context expects 2 values"
                                               _g236164_)))
                                  (let ((_target229260229286_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236163_ 0)))
                                        (_tl229262229288_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236163_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229262229288_))
                                        (letrec ((_loop229263229291_
                                                  (lambda (_hd229261229294_
                                                           _expr229267229296_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229261229294_))
                                                        (let ((_e229264229299_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229261229294_))))
                  (let ((_lp-hd229265229302_
                         (let () (declare (not safe)) (##car _e229264229299_)))
                        (_lp-tl229266229304_
                         (let ()
                           (declare (not safe))
                           (##cdr _e229264229299_))))
                    (let ((__tmp236168
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd229265229302_ _expr229267229296_))))
                      (declare (not safe))
                      (_loop229263229291_ _lp-tl229266229304_ __tmp236168))))
                (let ((_expr229268229307_ (reverse _expr229267229296_)))
                  ((lambda (_L229310_)
                     (let ((__tmp236167
                            (lambda (_g229323229325_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g229323229325_
                                 _arg229252_))))
                           (__tmp236165
                            (let ((__tmp236166
                                   (lambda (_g229327229330_ _g229328229332_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g229327229330_
                                             _g229328229332_)))))
                              (declare (not safe))
                              (foldr1 __tmp236166 '() _L229310_))))
                       (declare (not safe))
                       (ormap1 __tmp236167 __tmp236165)))
                   _expr229268229307_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop229263229291_
                                             _target229260229286_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g229254229273_
                                           _g229255229276_))))))
                              (let ()
                                (declare (not safe))
                                (_g229254229273_ _g229255229276_)))))
                      (let ()
                        (declare (not safe))
                        (_g229254229273_ _g229255229276_))))))
          (declare (not safe))
          (_g229253229335_ _stx229251_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx229183_ _arg229184_)
        (let* ((_g229186229203_
                (lambda (_g229187229200_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229187229200_))))
               (_g229185229248_
                (lambda (_g229187229206_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229187229206_))
                      (let ((_e229192229208_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229187229206_))))
                        (let ((_hd229191229211_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229192229208_)))
                              (_tl229190229213_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229192229208_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229190229213_))
                              (let ((_e229195229216_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229190229213_))))
                                (let ((_hd229194229219_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229195229216_)))
                                      (_tl229193229221_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229195229216_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229193229221_))
                                      (let ((_e229198229224_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229193229221_))))
                                        (let ((_hd229197229227_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229198229224_)))
                                              (_tl229196229229_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229198229224_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229196229229_))
                                              ((lambda (_L229232_ _L229233_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L229232_
                                                    _arg229184_)))
                                               _hd229197229227_
                                               _hd229194229219_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229186229203_
                                                 _g229187229206_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229186229203_ _g229187229206_)))))
                              (let ()
                                (declare (not safe))
                                (_g229186229203_ _g229187229206_)))))
                      (let ()
                        (declare (not safe))
                        (_g229186229203_ _g229187229206_))))))
          (declare (not safe))
          (_g229185229248_ _stx229183_))))
    (define gxc#find-lambda%
      (lambda (_stx229115_ _arg229116_)
        (let* ((_g229118229135_
                (lambda (_g229119229132_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229119229132_))))
               (_g229117229180_
                (lambda (_g229119229138_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229119229138_))
                      (let ((_e229124229140_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229119229138_))))
                        (let ((_hd229123229143_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229124229140_)))
                              (_tl229122229145_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229124229140_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229122229145_))
                              (let ((_e229127229148_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229122229145_))))
                                (let ((_hd229126229151_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229127229148_)))
                                      (_tl229125229153_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229127229148_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229125229153_))
                                      (let ((_e229130229156_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229125229153_))))
                                        (let ((_hd229129229159_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229130229156_)))
                                              (_tl229128229161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229130229156_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229128229161_))
                                              ((lambda (_L229164_ _L229165_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L229164_
                                                    _arg229116_)))
                                               _hd229129229159_
                                               _hd229126229151_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229118229135_
                                                 _g229119229138_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229118229135_ _g229119229138_)))))
                              (let ()
                                (declare (not safe))
                                (_g229118229135_ _g229119229138_)))))
                      (let ()
                        (declare (not safe))
                        (_g229118229135_ _g229119229138_))))))
          (declare (not safe))
          (_g229117229180_ _stx229115_))))
    (define gxc#find-case-lambda%
      (lambda (_stx228997_ _arg228998_)
        (let* ((_g229000229028_
                (lambda (_g229001229025_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229001229025_))))
               (_g228999229112_
                (lambda (_g229001229031_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229001229031_))
                      (let ((_e229006229033_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229001229031_))))
                        (let ((_hd229005229036_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229006229033_)))
                              (_tl229004229038_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229006229033_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229004229038_))
                              (let ((_g236169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229004229038_
                                        '0))))
                                (begin
                                  (let ((_g236170_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g236169_)
                                               (##vector-length _g236169_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g236170_ 2)))
                                        (error "Context expects 2 values"
                                               _g236170_)))
                                  (let ((_target229007229041_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236169_ 0)))
                                        (_tl229009229043_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236169_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229009229043_))
                                        (letrec ((_loop229010229046_
                                                  (lambda (_hd229008229049_
                                                           _body229014229051_
                                                           _hd229015229053_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229008229049_))
                                                        (let ((_e229011229056_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229008229049_))))
                  (let ((_lp-hd229012229059_
                         (let () (declare (not safe)) (##car _e229011229056_)))
                        (_lp-tl229013229061_
                         (let ()
                           (declare (not safe))
                           (##cdr _e229011229056_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd229012229059_))
                        (let ((_e229020229064_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd229012229059_))))
                          (let ((_hd229019229067_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229020229064_)))
                                (_tl229018229069_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229020229064_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229018229069_))
                                (let ((_e229023229072_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229018229069_))))
                                  (let ((_hd229022229075_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229023229072_)))
                                        (_tl229021229077_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229023229072_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229021229077_))
                                        (let ((__tmp236175
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd229022229075_
                                                       _body229014229051_)))
                                              (__tmp236174
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd229019229067_
                                                       _hd229015229053_))))
                                          (declare (not safe))
                                          (_loop229010229046_
                                           _lp-tl229013229061_
                                           __tmp236175
                                           __tmp236174))
                                        (let ()
                                          (declare (not safe))
                                          (_g229000229028_ _g229001229031_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229000229028_ _g229001229031_)))))
                        (let ()
                          (declare (not safe))
                          (_g229000229028_ _g229001229031_)))))
                (let ((_body229016229080_ (reverse _body229014229051_))
                      (_hd229017229082_ (reverse _hd229015229053_)))
                  ((lambda (_L229085_ _L229086_)
                     (let ((__tmp236173
                            (lambda (_g229100229102_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g229100229102_
                                 _arg228998_))))
                           (__tmp236171
                            (let ((__tmp236172
                                   (lambda (_g229104229107_ _g229105229109_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g229104229107_
                                             _g229105229109_)))))
                              (declare (not safe))
                              (foldr1 __tmp236172 '() _L229085_))))
                       (declare (not safe))
                       (ormap1 __tmp236173 __tmp236171)))
                   _body229016229080_
                   _hd229017229082_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop229010229046_
                                             _target229007229041_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g229000229028_
                                           _g229001229031_))))))
                              (let ()
                                (declare (not safe))
                                (_g229000229028_ _g229001229031_)))))
                      (let ()
                        (declare (not safe))
                        (_g229000229028_ _g229001229031_))))))
          (declare (not safe))
          (_g228999229112_ _stx228997_))))
    (define gxc#find-let-values%
      (lambda (_stx228847_ _arg228848_)
        (let* ((_g228850228885_
                (lambda (_g228851228882_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228851228882_))))
               (_g228849228994_
                (lambda (_g228851228888_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228851228888_))
                      (let ((_e228857228890_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228851228888_))))
                        (let ((_hd228856228893_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228857228890_)))
                              (_tl228855228895_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228857228890_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228855228895_))
                              (let ((_e228860228898_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228855228895_))))
                                (let ((_hd228859228901_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228860228898_)))
                                      (_tl228858228903_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228860228898_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd228859228901_))
                                      (let ((_g236176_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd228859228901_
                                                '0))))
                                        (begin
                                          (let ((_g236177_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g236176_)
                                                       (##vector-length
                                                        _g236176_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g236177_ 2)))
                                                (error "Context expects 2 values"
                                                       _g236177_)))
                                          (let ((_target228861228906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g236176_ 0)))
                                                (_tl228863228908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g236176_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228863228908_))
                                                (letrec ((_loop228864228911_
                                                          (lambda (_hd228862228914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr228868228916_
                           _bind228869228918_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd228862228914_))
                        (let ((_e228865228921_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd228862228914_))))
                          (let ((_lp-hd228866228924_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228865228921_)))
                                (_lp-tl228867228926_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228865228921_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd228866228924_))
                                (let ((_e228874228929_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd228866228924_))))
                                  (let ((_hd228873228932_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e228874228929_)))
                                        (_tl228872228934_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e228874228929_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl228872228934_))
                                        (let ((_e228877228937_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl228872228934_))))
                                          (let ((_hd228876228940_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e228877228937_)))
                                                (_tl228875228942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e228877228937_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228875228942_))
                                                (let ((__tmp236182
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd228876228940_
                                                               _expr228868228916_)))
                                                      (__tmp236181
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd228873228932_
                                                               _bind228869228918_))))
                                                  (declare (not safe))
                                                  (_loop228864228911_
                                                   _lp-tl228867228926_
                                                   __tmp236182
                                                   __tmp236181))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228850228885_
                                                   _g228851228888_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g228850228885_ _g228851228888_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g228850228885_ _g228851228888_)))))
                        (let ((_expr228870228945_ (reverse _expr228868228916_))
                              (_bind228871228947_
                               (reverse _bind228869228918_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228858228903_))
                              (let ((_e228880228950_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228858228903_))))
                                (let ((_hd228879228953_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228880228950_)))
                                      (_tl228878228955_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228880228950_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228878228955_))
                                      ((lambda (_L228958_ _L228959_ _L228960_)
                                         (let ((_$e228991_
                                                (let ((__tmp236180
                                                       (lambda (_g228979228981_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g228979228981_
                                                            _arg228848_))))
                                                      (__tmp236178
                                                       (let ((__tmp236179
                                                              (lambda (_g228983228986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g228984228988_)
                        (let ()
                          (declare (not safe))
                          (cons _g228983228986_ _g228984228988_)))))
                 (declare (not safe))
                 (foldr1 __tmp236179 '() _L228959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp236180
                                                          __tmp236178))))
                                           (if _$e228991_
                                               _$e228991_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L228958_
                                                  _arg228848_)))))
                                       _hd228879228953_
                                       _expr228870228945_
                                       _bind228871228947_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228850228885_ _g228851228888_)))))
                              (let ()
                                (declare (not safe))
                                (_g228850228885_ _g228851228888_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop228864228911_
                                                     _target228861228906_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228850228885_
                                                   _g228851228888_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228850228885_ _g228851228888_)))))
                              (let ()
                                (declare (not safe))
                                (_g228850228885_ _g228851228888_)))))
                      (let ()
                        (declare (not safe))
                        (_g228850228885_ _g228851228888_))))))
          (declare (not safe))
          (_g228849228994_ _stx228847_))))
    (define gxc#find-setq%
      (lambda (_stx228779_ _arg228780_)
        (let* ((_g228782228799_
                (lambda (_g228783228796_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228783228796_))))
               (_g228781228844_
                (lambda (_g228783228802_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228783228802_))
                      (let ((_e228788228804_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228783228802_))))
                        (let ((_hd228787228807_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228788228804_)))
                              (_tl228786228809_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228788228804_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228786228809_))
                              (let ((_e228791228812_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228786228809_))))
                                (let ((_hd228790228815_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228791228812_)))
                                      (_tl228789228817_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228791228812_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228789228817_))
                                      (let ((_e228794228820_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228789228817_))))
                                        (let ((_hd228793228823_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228794228820_)))
                                              (_tl228792228825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228794228820_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228792228825_))
                                              ((lambda (_L228828_ _L228829_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L228828_
                                                    _arg228780_)))
                                               _hd228793228823_
                                               _hd228790228815_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228782228799_
                                                 _g228783228802_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228782228799_ _g228783228802_)))))
                              (let ()
                                (declare (not safe))
                                (_g228782228799_ _g228783228802_)))))
                      (let ()
                        (declare (not safe))
                        (_g228782228799_ _g228783228802_))))))
          (declare (not safe))
          (_g228781228844_ _stx228779_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx228723_ _ids228724_)
        (let* ((_g228726228739_
                (lambda (_g228727228736_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228727228736_))))
               (_g228725228776_
                (lambda (_g228727228742_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228727228742_))
                      (let ((_e228731228744_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228727228742_))))
                        (let ((_hd228730228747_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228731228744_)))
                              (_tl228729228749_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228731228744_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228729228749_))
                              (let ((_e228734228752_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228729228749_))))
                                (let ((_hd228733228755_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228734228752_)))
                                      (_tl228732228757_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228734228752_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228732228757_))
                                      ((lambda (_L228760_)
                                         (let ((__tmp236183
                                                (lambda (_g228771228773_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L228760_
                                                     _g228771228773_)))))
                                           (declare (not safe))
                                           (find __tmp236183 _ids228724_)))
                                       _hd228733228755_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228726228739_ _g228727228742_)))))
                              (let ()
                                (declare (not safe))
                                (_g228726228739_ _g228727228742_)))))
                      (let ()
                        (declare (not safe))
                        (_g228726228739_ _g228727228742_))))))
          (declare (not safe))
          (_g228725228776_ _stx228723_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx228647_ _ids228648_)
        (let* ((_g228650228667_
                (lambda (_g228651228664_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228651228664_))))
               (_g228649228720_
                (lambda (_g228651228670_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228651228670_))
                      (let ((_e228656228672_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228651228670_))))
                        (let ((_hd228655228675_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228656228672_)))
                              (_tl228654228677_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228656228672_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228654228677_))
                              (let ((_e228659228680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228654228677_))))
                                (let ((_hd228658228683_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228659228680_)))
                                      (_tl228657228685_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228659228680_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228657228685_))
                                      (let ((_e228662228688_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228657228685_))))
                                        (let ((_hd228661228691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228662228688_)))
                                              (_tl228660228693_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228662228688_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228660228693_))
                                              ((lambda (_L228696_ _L228697_)
                                                 (let ((_$e228717_
                                                        (let ((__tmp236184
                                                               (lambda (_g228712228714_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L228697_ _g228712228714_)))))
                  (declare (not safe))
                  (find __tmp236184 _ids228648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e228717_
                                                       _$e228717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L228696_
                                                          _ids228648_)))))
                                               _hd228661228691_
                                               _hd228658228683_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228650228667_
                                                 _g228651228670_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228650228667_ _g228651228670_)))))
                              (let ()
                                (declare (not safe))
                                (_g228650228667_ _g228651228670_)))))
                      (let ()
                        (declare (not safe))
                        (_g228650228667_ _g228651228670_))))))
          (declare (not safe))
          (_g228649228720_ _stx228647_))))))
