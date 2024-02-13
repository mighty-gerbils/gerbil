(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707840757)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl225114_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225114_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225114_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225114_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225114_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl225114_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl225110_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225110_ '%#declare gxc#xform-identity))
           _tbl225110_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl225106_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229928 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl225106_ __tmp229928))
           (let ((__tmp229929 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl225106_ __tmp229929))
           _tbl225106_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl225102_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225102_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225102_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225102_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225102_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225102_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl225102_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl225098_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229930 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl225098_ __tmp229930))
           (let ((__tmp229931 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl225098_ __tmp229931))
           (let ()
             (declare (not safe))
             (table-set! _tbl225098_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225098_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225098_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225098_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225098_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl225098_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl225094_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229932 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl225094_ __tmp229932))
           (let ()
             (declare (not safe))
             (table-set! _tbl225094_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225094_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225094_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225094_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225094_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225094_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225094_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225094_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225094_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225094_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225094_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl225094_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx225077_ . _args225079_)
        (let ((__tmp229934
               (lambda ()
                 (declare (not safe))
                 (if (null? _args225079_)
                     (gxc#compile-e__0 _stx225077_)
                     (let ((_arg1225084_ (car _args225079_))
                           (_rest225086_ (cdr _args225079_)))
                       (if (null? _rest225086_)
                           (gxc#compile-e__1 _stx225077_ _arg1225084_)
                           (let ((_arg2225089_ (car _rest225086_))
                                 (_rest225091_ (cdr _rest225086_)))
                             (if (null? _rest225091_)
                                 (gxc#compile-e__2
                                  _stx225077_
                                  _arg1225084_
                                  _arg2225089_)
                                 (apply gxc#compile-e
                                        _stx225077_
                                        _arg1225084_
                                        _arg2225089_
                                        _rest225091_))))))))
              (__tmp229933 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp229934
           gxc#current-compile-methods
           __tmp229933))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl225074_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229935 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl225074_ __tmp229935))
           (let ()
             (declare (not safe))
             (table-set! _tbl225074_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225074_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225074_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225074_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225074_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl225074_))))
    (define gxc#apply-collect-methods
      (lambda (_stx225057_ . _args225059_)
        (let ((__tmp229937
               (lambda ()
                 (declare (not safe))
                 (if (null? _args225059_)
                     (gxc#compile-e__0 _stx225057_)
                     (let ((_arg1225064_ (car _args225059_))
                           (_rest225066_ (cdr _args225059_)))
                       (if (null? _rest225066_)
                           (gxc#compile-e__1 _stx225057_ _arg1225064_)
                           (let ((_arg2225069_ (car _rest225066_))
                                 (_rest225071_ (cdr _rest225066_)))
                             (if (null? _rest225071_)
                                 (gxc#compile-e__2
                                  _stx225057_
                                  _arg1225064_
                                  _arg2225069_)
                                 (apply gxc#compile-e
                                        _stx225057_
                                        _arg1225064_
                                        _arg2225069_
                                        _rest225071_))))))))
              (__tmp229936 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp229937
           gxc#current-compile-methods
           __tmp229936))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl225054_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229938 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl225054_ __tmp229938))
           (let ()
             (declare (not safe))
             (table-set! _tbl225054_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225054_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225054_ '%#set! gxc#expression-subst-setq%))
           _tbl225054_))))
    (define gxc#apply-expression-subst
      (lambda (_stx225037_ . _args225039_)
        (let ((__tmp229940
               (lambda ()
                 (declare (not safe))
                 (if (null? _args225039_)
                     (gxc#compile-e__0 _stx225037_)
                     (let ((_arg1225044_ (car _args225039_))
                           (_rest225046_ (cdr _args225039_)))
                       (if (null? _rest225046_)
                           (gxc#compile-e__1 _stx225037_ _arg1225044_)
                           (let ((_arg2225049_ (car _rest225046_))
                                 (_rest225051_ (cdr _rest225046_)))
                             (if (null? _rest225051_)
                                 (gxc#compile-e__2
                                  _stx225037_
                                  _arg1225044_
                                  _arg2225049_)
                                 (apply gxc#compile-e
                                        _stx225037_
                                        _arg1225044_
                                        _arg2225049_
                                        _rest225051_))))))))
              (__tmp229939 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp229940
           gxc#current-compile-methods
           __tmp229939))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl225034_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229941 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl225034_ __tmp229941))
           (let ()
             (declare (not safe))
             (table-set! _tbl225034_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225034_ '%#set! gxc#expression-subst*-setq%))
           _tbl225034_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx225017_ . _args225019_)
        (let ((__tmp229943
               (lambda ()
                 (declare (not safe))
                 (if (null? _args225019_)
                     (gxc#compile-e__0 _stx225017_)
                     (let ((_arg1225024_ (car _args225019_))
                           (_rest225026_ (cdr _args225019_)))
                       (if (null? _rest225026_)
                           (gxc#compile-e__1 _stx225017_ _arg1225024_)
                           (let ((_arg2225029_ (car _rest225026_))
                                 (_rest225031_ (cdr _rest225026_)))
                             (if (null? _rest225031_)
                                 (gxc#compile-e__2
                                  _stx225017_
                                  _arg1225024_
                                  _arg2225029_)
                                 (apply gxc#compile-e
                                        _stx225017_
                                        _arg1225024_
                                        _arg2225029_
                                        _rest225031_))))))))
              (__tmp229942 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp229943
           gxc#current-compile-methods
           __tmp229942))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl225014_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229944 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl225014_ __tmp229944))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225014_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225014_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225014_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl225014_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl225010_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229945 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl225010_ __tmp229945))
           (let ()
             (declare (not safe))
             (table-set! _tbl225010_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225010_ '%#set! gxc#find-var-refs-setq%))
           _tbl225010_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx224993_ . _args224995_)
        (let ((__tmp229947
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224995_)
                     (gxc#compile-e__0 _stx224993_)
                     (let ((_arg1225000_ (car _args224995_))
                           (_rest225002_ (cdr _args224995_)))
                       (if (null? _rest225002_)
                           (gxc#compile-e__1 _stx224993_ _arg1225000_)
                           (let ((_arg2225005_ (car _rest225002_))
                                 (_rest225007_ (cdr _rest225002_)))
                             (if (null? _rest225007_)
                                 (gxc#compile-e__2
                                  _stx224993_
                                  _arg1225000_
                                  _arg2225005_)
                                 (apply gxc#compile-e
                                        _stx224993_
                                        _arg1225000_
                                        _arg2225005_
                                        _rest225007_))))))))
              (__tmp229946 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp229947
           gxc#current-compile-methods
           __tmp229946))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl224990_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229948 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl224990_ __tmp229948))
           (let ()
             (declare (not safe))
             (table-set! _tbl224990_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224990_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl224990_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx224973_ . _args224975_)
        (let ((__tmp229950
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224975_)
                     (gxc#compile-e__0 _stx224973_)
                     (let ((_arg1224980_ (car _args224975_))
                           (_rest224982_ (cdr _args224975_)))
                       (if (null? _rest224982_)
                           (gxc#compile-e__1 _stx224973_ _arg1224980_)
                           (let ((_arg2224985_ (car _rest224982_))
                                 (_rest224987_ (cdr _rest224982_)))
                             (if (null? _rest224987_)
                                 (gxc#compile-e__2
                                  _stx224973_
                                  _arg1224980_
                                  _arg2224985_)
                                 (apply gxc#compile-e
                                        _stx224973_
                                        _arg1224980_
                                        _arg2224985_
                                        _rest224987_))))))))
              (__tmp229949 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp229950
           gxc#current-compile-methods
           __tmp229949))))
    (define gxc#xform-identity
      (lambda (_stx224970_ . _args224971_) _stx224970_))
    (define gxc#xform-wrap-source
      (lambda (_stx224967_ _src-stx224968_)
        (let ((__tmp229951
               (let () (declare (not safe)) (gx#stx-source _src-stx224968_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx224967_ __tmp229951))))
    (define gxc#xform-apply-compile-e
      (lambda (_args224954_)
        (lambda (_stx224956_)
          (if (let () (declare (not safe)) (null? _args224954_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx224956_))
              (let ((_arg1224958_ (car _args224954_))
                    (_rest224960_ (cdr _args224954_)))
                (if (let () (declare (not safe)) (null? _rest224960_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx224956_ _arg1224958_))
                    (let ((_arg2224963_ (car _rest224960_))
                          (_rest224965_ (cdr _rest224960_)))
                      (if (let () (declare (not safe)) (null? _rest224965_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx224956_
                             _arg1224958_
                             _arg2224963_))
                          (apply gxc#compile-e
                                 _stx224956_
                                 _arg1224958_
                                 _arg2224963_
                                 _rest224965_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx224913_ . _args224914_)
        (let* ((_g224916224926_
                (lambda (_g224917224923_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224917224923_))))
               (_g224915224951_
                (lambda (_g224917224929_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224917224929_))
                      (let ((_e224921224931_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224917224929_))))
                        (let ((_hd224920224934_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224921224931_)))
                              (_tl224919224936_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224921224931_))))
                          ((lambda (_L224939_)
                             (let* ((_forms224949_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224914_))
                                          _L224939_))
                                    (__tmp229952
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms224949_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp229952
                                _stx224913_)))
                           _tl224919224936_)))
                      (let ()
                        (declare (not safe))
                        (_g224916224926_ _g224917224929_))))))
          (declare (not safe))
          (_g224915224951_ _stx224913_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx224871_ . _args224872_)
        (let* ((_g224874224884_
                (lambda (_g224875224881_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224875224881_))))
               (_g224873224910_
                (lambda (_g224875224887_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224875224887_))
                      (let ((_e224879224889_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224875224887_))))
                        (let ((_hd224878224892_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224879224889_)))
                              (_tl224877224894_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224879224889_))))
                          ((lambda (_L224897_)
                             (let ((__tmp229955
                                    (lambda ()
                                      (let* ((_forms224908_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args224872_))
                                                   _L224897_))
                                             (__tmp229956
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms224908_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp229956
                                         _stx224871_))))
                                   (__tmp229953
                                    (let ((__tmp229954
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp229954 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp229955
                                gx#current-expander-phi
                                __tmp229953)))
                           _tl224877224894_)))
                      (let ()
                        (declare (not safe))
                        (_g224874224884_ _g224875224887_))))))
          (declare (not safe))
          (_g224873224910_ _stx224871_))))
    (define gxc#xform-module%
      (lambda (_stx224799_ . _args224800_)
        (let* ((_g224802224816_
                (lambda (_g224803224813_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224803224813_))))
               (_g224801224868_
                (lambda (_g224803224819_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224803224819_))
                      (let ((_e224808224821_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224803224819_))))
                        (let ((_hd224807224824_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224808224821_)))
                              (_tl224806224826_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224808224821_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224806224826_))
                              (let ((_e224811224829_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224806224826_))))
                                (let ((_hd224810224832_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224811224829_)))
                                      (_tl224809224834_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224811224829_))))
                                  ((lambda (_L224837_ _L224838_)
                                     (let* ((_ctx224851_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L224838_)))
                                            (_code224853_
                                             (##structure-ref
                                              _ctx224851_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code224865_
                                             (let ((__tmp229957
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args224800_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code224853_))
                                                          (let ((_arg1224856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args224800_))
                        (_rest224858_ (cdr _args224800_)))
                    (if (let () (declare (not safe)) (null? _rest224858_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code224853_ _arg1224856_))
                        (let ((_arg2224861_ (car _rest224858_))
                              (_rest224863_ (cdr _rest224858_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest224863_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code224853_
                                 _arg1224856_
                                 _arg2224861_))
                              (apply gxc#compile-e
                                     _code224853_
                                     _arg1224856_
                                     _arg2224861_
                                     _rest224863_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp229957
                                                gx#current-expander-context
                                                _ctx224851_))))
                                       (##structure-set!
                                        _ctx224851_
                                        _code224865_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp229958
                                              (let ((__tmp229959
                                                     (let ((__tmp229960
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code224865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L224838_ __tmp229960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp229959))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp229958
                                          _stx224799_))))
                                   _tl224809224834_
                                   _hd224810224832_)))
                              (let ()
                                (declare (not safe))
                                (_g224802224816_ _g224803224819_)))))
                      (let ()
                        (declare (not safe))
                        (_g224802224816_ _g224803224819_))))))
          (declare (not safe))
          (_g224801224868_ _stx224799_))))
    (define gxc#xform-define-values%
      (lambda (_stx224720_ . _args224721_)
        (let* ((_g224723224740_
                (lambda (_g224724224737_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224724224737_))))
               (_g224722224796_
                (lambda (_g224724224743_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224724224743_))
                      (let ((_e224729224745_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224724224743_))))
                        (let ((_hd224728224748_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224729224745_)))
                              (_tl224727224750_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224729224745_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224727224750_))
                              (let ((_e224732224753_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224727224750_))))
                                (let ((_hd224731224756_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224732224753_)))
                                      (_tl224730224758_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224732224753_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224730224758_))
                                      (let ((_e224735224761_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224730224758_))))
                                        (let ((_hd224734224764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224735224761_)))
                                              (_tl224733224766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224735224761_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224733224766_))
                                              ((lambda (_L224769_ _L224770_)
                                                 (let* ((_expr224794_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args224721_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224769_))
                     (let ((_arg1224785_ (car _args224721_))
                           (_rest224787_ (cdr _args224721_)))
                       (if (let () (declare (not safe)) (null? _rest224787_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224769_ _arg1224785_))
                           (let ((_arg2224790_ (car _rest224787_))
                                 (_rest224792_ (cdr _rest224787_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224792_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224769_
                                    _arg1224785_
                                    _arg2224790_))
                                 (apply gxc#compile-e
                                        _L224769_
                                        _arg1224785_
                                        _arg2224790_
                                        _rest224792_)))))))
                (__tmp229961
                 (let ((__tmp229962
                        (let ((__tmp229963
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224794_ '()))))
                          (declare (not safe))
                          (cons _L224770_ __tmp229963))))
                   (declare (not safe))
                   (cons '%#define-values __tmp229962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229961
                                                    _stx224720_)))
                                               _hd224734224764_
                                               _hd224731224756_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224723224740_
                                                 _g224724224743_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224723224740_ _g224724224743_)))))
                              (let ()
                                (declare (not safe))
                                (_g224723224740_ _g224724224743_)))))
                      (let ()
                        (declare (not safe))
                        (_g224723224740_ _g224724224743_))))))
          (declare (not safe))
          (_g224722224796_ _stx224720_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx224640_ . _args224641_)
        (let* ((_g224643224660_
                (lambda (_g224644224657_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224644224657_))))
               (_g224642224717_
                (lambda (_g224644224663_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224644224663_))
                      (let ((_e224649224665_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224644224663_))))
                        (let ((_hd224648224668_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224649224665_)))
                              (_tl224647224670_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224649224665_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224647224670_))
                              (let ((_e224652224673_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224647224670_))))
                                (let ((_hd224651224676_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224652224673_)))
                                      (_tl224650224678_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224652224673_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224650224678_))
                                      (let ((_e224655224681_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224650224678_))))
                                        (let ((_hd224654224684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224655224681_)))
                                              (_tl224653224686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224655224681_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224653224686_))
                                              ((lambda (_L224689_ _L224690_)
                                                 (let ((__tmp229966
                                                        (lambda ()
                                                          (let* ((_expr224715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args224641_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L224689_))
                              (let ((_arg1224706_ (car _args224641_))
                                    (_rest224708_ (cdr _args224641_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest224708_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L224689_
                                       _arg1224706_))
                                    (let ((_arg2224711_ (car _rest224708_))
                                          (_rest224713_ (cdr _rest224708_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest224713_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L224689_
                                             _arg1224706_
                                             _arg2224711_))
                                          (apply gxc#compile-e
                                                 _L224689_
                                                 _arg1224706_
                                                 _arg2224711_
                                                 _rest224713_)))))))
                         (__tmp229967
                          (let ((__tmp229968
                                 (let ((__tmp229969
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr224715_ '()))))
                                   (declare (not safe))
                                   (cons _L224690_ __tmp229969))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp229968))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp229967 _stx224640_))))
               (__tmp229964
                (let ((__tmp229965 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp229965 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp229966
                                                    gx#current-expander-phi
                                                    __tmp229964)))
                                               _hd224654224684_
                                               _hd224651224676_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224643224660_
                                                 _g224644224663_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224643224660_ _g224644224663_)))))
                              (let ()
                                (declare (not safe))
                                (_g224643224660_ _g224644224663_)))))
                      (let ()
                        (declare (not safe))
                        (_g224643224660_ _g224644224663_))))))
          (declare (not safe))
          (_g224642224717_ _stx224640_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx224561_ . _args224562_)
        (let* ((_g224564224581_
                (lambda (_g224565224578_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224565224578_))))
               (_g224563224637_
                (lambda (_g224565224584_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224565224584_))
                      (let ((_e224570224586_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224565224584_))))
                        (let ((_hd224569224589_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224570224586_)))
                              (_tl224568224591_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224570224586_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224568224591_))
                              (let ((_e224573224594_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224568224591_))))
                                (let ((_hd224572224597_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224573224594_)))
                                      (_tl224571224599_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224573224594_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224571224599_))
                                      (let ((_e224576224602_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224571224599_))))
                                        (let ((_hd224575224605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224576224602_)))
                                              (_tl224574224607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224576224602_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224574224607_))
                                              ((lambda (_L224610_ _L224611_)
                                                 (let* ((_expr224635_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args224562_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224610_))
                     (let ((_arg1224626_ (car _args224562_))
                           (_rest224628_ (cdr _args224562_)))
                       (if (let () (declare (not safe)) (null? _rest224628_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224610_ _arg1224626_))
                           (let ((_arg2224631_ (car _rest224628_))
                                 (_rest224633_ (cdr _rest224628_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224633_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224610_
                                    _arg1224626_
                                    _arg2224631_))
                                 (apply gxc#compile-e
                                        _L224610_
                                        _arg1224626_
                                        _arg2224631_
                                        _rest224633_)))))))
                (__tmp229970
                 (let ((__tmp229971
                        (let ((__tmp229972
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224635_ '()))))
                          (declare (not safe))
                          (cons _L224611_ __tmp229972))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp229971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229970
                                                    _stx224561_)))
                                               _hd224575224605_
                                               _hd224572224597_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224564224581_
                                                 _g224565224584_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224564224581_ _g224565224584_)))))
                              (let ()
                                (declare (not safe))
                                (_g224564224581_ _g224565224584_)))))
                      (let ()
                        (declare (not safe))
                        (_g224564224581_ _g224565224584_))))))
          (declare (not safe))
          (_g224563224637_ _stx224561_))))
    (define gxc#xform-lambda%
      (lambda (_stx224504_ . _args224505_)
        (let* ((_g224507224521_
                (lambda (_g224508224518_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224508224518_))))
               (_g224506224558_
                (lambda (_g224508224524_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224508224524_))
                      (let ((_e224513224526_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224508224524_))))
                        (let ((_hd224512224529_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224513224526_)))
                              (_tl224511224531_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224513224526_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224511224531_))
                              (let ((_e224516224534_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224511224531_))))
                                (let ((_hd224515224537_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224516224534_)))
                                      (_tl224514224539_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224516224534_))))
                                  ((lambda (_L224542_ _L224543_)
                                     (let* ((_body224556_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args224505_))
                                                  _L224542_))
                                            (__tmp229973
                                             (let ((__tmp229974
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L224543_
                                                            _body224556_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp229974))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp229973
                                        _stx224504_)))
                                   _tl224514224539_
                                   _hd224515224537_)))
                              (let ()
                                (declare (not safe))
                                (_g224507224521_ _g224508224524_)))))
                      (let ()
                        (declare (not safe))
                        (_g224507224521_ _g224508224524_))))))
          (declare (not safe))
          (_g224506224558_ _stx224504_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx224417_ . _args224418_)
        (letrec ((_clause-e224420_
                  (lambda (_clause224461_)
                    (let* ((_g224463224474_
                            (lambda (_g224464224471_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g224464224471_))))
                           (_g224462224501_
                            (lambda (_g224464224477_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g224464224477_))
                                  (let ((_e224469224479_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g224464224477_))))
                                    (let ((_hd224468224482_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224469224479_)))
                                          (_tl224467224484_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224469224479_))))
                                      ((lambda (_L224487_ _L224488_)
                                         (let ((_body224499_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args224418_))
                                                     _L224487_)))
                                           (declare (not safe))
                                           (cons _L224488_ _body224499_)))
                                       _tl224467224484_
                                       _hd224468224482_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g224463224474_ _g224464224477_))))))
                      (declare (not safe))
                      (_g224462224501_ _clause224461_)))))
          (let* ((_g224422224432_
                  (lambda (_g224423224429_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g224423224429_))))
                 (_g224421224458_
                  (lambda (_g224423224435_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g224423224435_))
                        (let ((_e224427224437_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g224423224435_))))
                          (let ((_hd224426224440_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224427224437_)))
                                (_tl224425224442_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224427224437_))))
                            ((lambda (_L224445_)
                               (let* ((_clauses224456_
                                       (map _clause-e224420_ _L224445_))
                                      (__tmp229975
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses224456_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp229975
                                  _stx224417_)))
                             _tl224425224442_)))
                        (let ()
                          (declare (not safe))
                          (_g224422224432_ _g224423224435_))))))
            (declare (not safe))
            (_g224421224458_ _stx224417_)))))
    (define gxc#xform-let-values%
      (lambda (_stx224211_ . _args224212_)
        (let* ((_g224214224247_
                (lambda (_g224215224244_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224215224244_))))
               (_g224213224414_
                (lambda (_g224215224250_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224215224250_))
                      (let ((_e224222224252_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224215224250_))))
                        (let ((_hd224221224255_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224222224252_)))
                              (_tl224220224257_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224222224252_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224220224257_))
                              (let ((_e224225224260_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224220224257_))))
                                (let ((_hd224224224263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224225224260_)))
                                      (_tl224223224265_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224225224260_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd224224224263_))
                                      (let ((_g229976_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd224224224263_
                                                '0))))
                                        (begin
                                          (let ((_g229977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g229976_)
                                                       (##vector-length
                                                        _g229976_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g229977_ 2)))
                                                (error "Context expects 2 values"
                                                       _g229977_)))
                                          (let ((_target224226224268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g229976_ 0)))
                                                (_tl224228224270_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g229976_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl224228224270_))
                                                (letrec ((_loop224229224273_
                                                          (lambda (_hd224227224276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr224233224278_
                           _hd224234224280_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd224227224276_))
                        (let ((_e224230224283_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd224227224276_))))
                          (let ((_lp-hd224231224286_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224230224283_)))
                                (_lp-tl224232224288_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224230224283_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd224231224286_))
                                (let ((_e224239224291_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd224231224286_))))
                                  (let ((_hd224238224294_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e224239224291_)))
                                        (_tl224237224296_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e224239224291_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl224237224296_))
                                        (let ((_e224242224299_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl224237224296_))))
                                          (let ((_hd224241224302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e224242224299_)))
                                                (_tl224240224304_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e224242224299_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl224240224304_))
                                                (let ((__tmp229990
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd224241224302_
                                                               _expr224233224278_)))
                                                      (__tmp229989
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd224238224294_
                                                               _hd224234224280_))))
                                                  (declare (not safe))
                                                  (_loop224229224273_
                                                   _lp-tl224232224288_
                                                   __tmp229990
                                                   __tmp229989))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224214224247_
                                                   _g224215224250_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g224214224247_ _g224215224250_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g224214224247_ _g224215224250_)))))
                        (let ((_expr224235224307_ (reverse _expr224233224278_))
                              (_hd224236224309_ (reverse _hd224234224280_)))
                          ((lambda (_L224312_ _L224313_ _L224314_ _L224315_)
                             (let* ((_g224334224350_
                                     (lambda (_g224335224347_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g224335224347_))))
                                    (_g224333224404_
                                     (lambda (_g224335224353_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g224335224353_))
                                           (let ((_g229978_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g224335224353_
                                                     '0))))
                                             (begin
                                               (let ((_g229979_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g229978_)
                                                            (##vector-length
                                                             _g229978_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g229979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g229979_)))
                                               (let ((_target224337224355_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g229978_
                                                         0)))
                                                     (_tl224339224357_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g229978_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl224339224357_))
                                                     (letrec ((_loop224340224360_
                                                               (lambda (_hd224338224363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr224344224365_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd224338224363_))
                             (let ((_e224341224368_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd224338224363_))))
                               (let ((_lp-hd224342224371_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e224341224368_)))
                                     (_lp-tl224343224373_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e224341224368_))))
                                 (let ((__tmp229986
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd224342224371_
                                                _expr224344224365_))))
                                   (declare (not safe))
                                   (_loop224340224360_
                                    _lp-tl224343224373_
                                    __tmp229986))))
                             (let ((_expr224345224376_
                                    (reverse _expr224344224365_)))
                               ((lambda (_L224379_)
                                  (let ()
                                    (let* ((_body224392_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args224212_))
                                                 _L224312_))
                                           (__tmp229980
                                            (let ((__tmp229981
                                                   (let ((__tmp229982
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L224379_
                                                               _L224314_))
                                                            (let ((__tmp229983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g224393224397_
                                    _g224394224399_
                                    _g224395224401_)
                             (let ((__tmp229984
                                    (let ((__tmp229985
                                           (let ()
                                             (declare (not safe))
                                             (cons _g224393224397_ '()))))
                                      (declare (not safe))
                                      (cons _g224394224399_ __tmp229985))))
                               (declare (not safe))
                               (cons __tmp229984 _g224395224401_)))))
                      (declare (not safe))
                      (foldr2 __tmp229983 '() _L224379_ _L224314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp229982
                                                           _body224392_))))
                                              (declare (not safe))
                                              (cons _L224315_ __tmp229981))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp229980
                                       _stx224211_))))
                                _expr224345224376_))))))
               (let ()
                 (declare (not safe))
                 (_loop224340224360_ _target224337224355_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g224334224350_
                                                        _g224335224353_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g224334224350_
                                              _g224335224353_)))))
                                    (__tmp229987
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224212_))
                                          (let ((__tmp229988
                                                 (lambda (_g224406224409_
                                                          _g224407224411_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g224406224409_
                                                           _g224407224411_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp229988
                                                    '()
                                                    _L224313_)))))
                               (declare (not safe))
                               (_g224333224404_ __tmp229987)))
                           _tl224223224265_
                           _expr224235224307_
                           _hd224236224309_
                           _hd224221224255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop224229224273_
                                                     _target224226224268_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224214224247_
                                                   _g224215224250_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224214224247_ _g224215224250_)))))
                              (let ()
                                (declare (not safe))
                                (_g224214224247_ _g224215224250_)))))
                      (let ()
                        (declare (not safe))
                        (_g224214224247_ _g224215224250_))))))
          (declare (not safe))
          (_g224213224414_ _stx224211_))))
    (define gxc#xform-operands
      (lambda (_stx224167_ . _args224168_)
        (let* ((_g224170224181_
                (lambda (_g224171224178_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224171224178_))))
               (_g224169224208_
                (lambda (_g224171224184_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224171224184_))
                      (let ((_e224176224186_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224171224184_))))
                        (let ((_hd224175224189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224176224186_)))
                              (_tl224174224191_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224176224186_))))
                          ((lambda (_L224194_ _L224195_)
                             (let* ((_rands224206_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224168_))
                                          _L224194_))
                                    (__tmp229991
                                     (let ()
                                       (declare (not safe))
                                       (cons _L224195_ _rands224206_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp229991
                                _stx224167_)))
                           _tl224174224191_
                           _hd224175224189_)))
                      (let ()
                        (declare (not safe))
                        (_g224170224181_ _g224171224184_))))))
          (declare (not safe))
          (_g224169224208_ _stx224167_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx224088_ . _args224089_)
        (let* ((_g224091224108_
                (lambda (_g224092224105_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224092224105_))))
               (_g224090224164_
                (lambda (_g224092224111_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224092224111_))
                      (let ((_e224097224113_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224092224111_))))
                        (let ((_hd224096224116_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224097224113_)))
                              (_tl224095224118_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224097224113_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224095224118_))
                              (let ((_e224100224121_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224095224118_))))
                                (let ((_hd224099224124_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224100224121_)))
                                      (_tl224098224126_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224100224121_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224098224126_))
                                      (let ((_e224103224129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224098224126_))))
                                        (let ((_hd224102224132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224103224129_)))
                                              (_tl224101224134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224103224129_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224101224134_))
                                              ((lambda (_L224137_ _L224138_)
                                                 (let* ((_expr224162_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args224089_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224137_))
                     (let ((_arg1224153_ (car _args224089_))
                           (_rest224155_ (cdr _args224089_)))
                       (if (let () (declare (not safe)) (null? _rest224155_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224137_ _arg1224153_))
                           (let ((_arg2224158_ (car _rest224155_))
                                 (_rest224160_ (cdr _rest224155_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224160_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224137_
                                    _arg1224153_
                                    _arg2224158_))
                                 (apply gxc#compile-e
                                        _L224137_
                                        _arg1224153_
                                        _arg2224158_
                                        _rest224160_)))))))
                (__tmp229992
                 (let ((__tmp229993
                        (let ((__tmp229994
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224162_ '()))))
                          (declare (not safe))
                          (cons _L224138_ __tmp229994))))
                   (declare (not safe))
                   (cons '%#set! __tmp229993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229992
                                                    _stx224088_)))
                                               _hd224102224132_
                                               _hd224099224124_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224091224108_
                                                 _g224092224111_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224091224108_ _g224092224111_)))))
                              (let ()
                                (declare (not safe))
                                (_g224091224108_ _g224092224111_)))))
                      (let ()
                        (declare (not safe))
                        (_g224091224108_ _g224092224111_))))))
          (declare (not safe))
          (_g224090224164_ _stx224088_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx224019_)
        (let* ((_g224021224038_
                (lambda (_g224022224035_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224022224035_))))
               (_g224020224085_
                (lambda (_g224022224041_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224022224041_))
                      (let ((_e224027224043_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224022224041_))))
                        (let ((_hd224026224046_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224027224043_)))
                              (_tl224025224048_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224027224043_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224025224048_))
                              (let ((_e224030224051_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224025224048_))))
                                (let ((_hd224029224054_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224030224051_)))
                                      (_tl224028224056_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224030224051_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224028224056_))
                                      (let ((_e224033224059_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224028224056_))))
                                        (let ((_hd224032224062_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224033224059_)))
                                              (_tl224031224064_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224033224059_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224031224064_))
                                              ((lambda (_L224067_ _L224068_)
                                                 (let ((_sym224083_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L224068_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym224083_))
                                                   (let ((__tmp229995
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp229995
                                                      _sym224083_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L224067_))))
                                               _hd224032224062_
                                               _hd224029224054_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224021224038_
                                                 _g224022224041_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224021224038_ _g224022224041_)))))
                              (let ()
                                (declare (not safe))
                                (_g224021224038_ _g224022224041_)))))
                      (let ()
                        (declare (not safe))
                        (_g224021224038_ _g224022224041_))))))
          (declare (not safe))
          (_g224020224085_ _stx224019_))))
    (define gxc#collect-methods-call%
      (lambda (_stx223573_)
        (let* ((___stx229685229686_ _stx223573_)
               (_g223577223679_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx229685229686_)))))
          (let ((___kont229687229688_
                 (lambda (_L223969_ _L223970_ _L223971_ _L223972_ _L223973_)
                   (let ((__tmp229996
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L223970_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp229996))))
                (___kont229689229690_
                 (lambda (_L223795_ _L223796_ _L223797_ _L223798_)
                   (let ((__tmp229997
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L223795_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp229997))))
                (___kont229691229692_ (lambda () '#!void)))
            (let ((___match229820229821_
                   (lambda (_e223586223841_
                            _hd223585223844_
                            _tl223584223846_
                            _e223589223849_
                            _hd223588223852_
                            _tl223587223854_
                            _e223592223857_
                            _hd223591223860_
                            _tl223590223862_
                            _e223595223865_
                            _hd223594223868_
                            _tl223593223870_
                            _e223598223873_
                            _hd223597223876_
                            _tl223596223878_
                            _e223601223881_
                            _hd223600223884_
                            _tl223599223886_
                            _e223604223889_
                            _hd223603223892_
                            _tl223602223894_
                            _e223607223897_
                            _hd223606223900_
                            _tl223605223902_
                            _e223610223905_
                            _hd223609223908_
                            _tl223608223910_
                            _e223613223913_
                            _hd223612223916_
                            _tl223611223918_
                            _e223616223921_
                            _hd223615223924_
                            _tl223614223926_
                            _e223619223929_
                            _hd223618223932_
                            _tl223617223934_
                            _e223622223937_
                            _hd223621223940_
                            _tl223620223942_
                            _e223625223945_
                            _hd223624223948_
                            _tl223623223950_
                            _e223628223953_
                            _hd223627223956_
                            _tl223626223958_
                            _e223631223961_
                            _hd223630223964_
                            _tl223629223966_)
                     (let ((_L223969_ _hd223630223964_)
                           (_L223970_ _hd223621223940_)
                           (_L223971_ _hd223612223916_)
                           (_L223972_ _hd223603223892_)
                           (_L223973_ _hd223594223868_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L223973_
                              'bind-method!))
                           (___kont229687229688_
                            _L223969_
                            _L223970_
                            _L223971_
                            _L223972_
                            _L223973_)
                           (___kont229691229692_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx229685229686_))
                  (let ((_e223586223841_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx229685229686_))))
                    (let ((_tl223584223846_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223586223841_)))
                          (_hd223585223844_
                           (let ()
                             (declare (not safe))
                             (##car _e223586223841_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223584223846_))
                          (let ((_e223589223849_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223584223846_))))
                            (let ((_tl223587223854_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223589223849_)))
                                  (_hd223588223852_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223589223849_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223588223852_))
                                  (let ((_e223592223857_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223588223852_))))
                                    (let ((_tl223590223862_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223592223857_)))
                                          (_hd223591223860_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223592223857_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd223591223860_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd223591223860_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223590223862_))
                                                  (let ((_e223595223865_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223590223862_))))
                                                    (let ((_tl223593223870_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223595223865_)))
                                                          (_hd223594223868_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223595223865_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223593223870_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl223587223854_))
                      (let ((_e223598223873_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl223587223854_))))
                        (let ((_tl223596223878_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223598223873_)))
                              (_hd223597223876_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223598223873_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd223597223876_))
                              (let ((_e223601223881_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd223597223876_))))
                                (let ((_tl223599223886_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223601223881_)))
                                      (_hd223600223884_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223601223881_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd223600223884_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd223600223884_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl223599223886_))
                                              (let ((_e223604223889_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl223599223886_))))
                                                (let ((_tl223602223894_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e223604223889_)))
                                                      (_hd223603223892_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e223604223889_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl223602223894_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl223596223878_))
                                                          (let ((_e223607223897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl223596223878_))))
                    (let ((_tl223605223902_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223607223897_)))
                          (_hd223606223900_
                           (let ()
                             (declare (not safe))
                             (##car _e223607223897_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd223606223900_))
                          (let ((_e223610223905_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd223606223900_))))
                            (let ((_tl223608223910_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223610223905_)))
                                  (_hd223609223908_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223610223905_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd223609223908_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd223609223908_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl223608223910_))
                                          (let ((_e223613223913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl223608223910_))))
                                            (let ((_tl223611223918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e223613223913_)))
                                                  (_hd223612223916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e223613223913_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl223611223918_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl223605223902_))
                                                      (let ((_e223616223921_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl223605223902_))))
                (let ((_tl223614223926_
                       (let () (declare (not safe)) (##cdr _e223616223921_)))
                      (_hd223615223924_
                       (let () (declare (not safe)) (##car _e223616223921_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd223615223924_))
                      (let ((_e223619223929_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd223615223924_))))
                        (let ((_tl223617223934_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223619223929_)))
                              (_hd223618223932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223619223929_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd223618223932_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd223618223932_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223617223934_))
                                      (let ((_e223622223937_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223617223934_))))
                                        (let ((_tl223620223942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223622223937_)))
                                              (_hd223621223940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223622223937_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223620223942_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223614223926_))
                                                  (let ((_e223625223945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223614223926_))))
                                                    (let ((_tl223623223950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223625223945_)))
                                                          (_hd223624223948_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223625223945_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd223624223948_))
                                                          (let ((_e223628223953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd223624223948_))))
                    (let ((_tl223626223958_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223628223953_)))
                          (_hd223627223956_
                           (let ()
                             (declare (not safe))
                             (##car _e223628223953_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd223627223956_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd223627223956_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl223626223958_))
                                  (let ((_e223631223961_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl223626223958_))))
                                    (let ((_tl223629223966_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223631223961_)))
                                          (_hd223630223964_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223631223961_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223629223966_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223623223950_))
                                              (___match229820229821_
                                               _e223586223841_
                                               _hd223585223844_
                                               _tl223584223846_
                                               _e223589223849_
                                               _hd223588223852_
                                               _tl223587223854_
                                               _e223592223857_
                                               _hd223591223860_
                                               _tl223590223862_
                                               _e223595223865_
                                               _hd223594223868_
                                               _tl223593223870_
                                               _e223598223873_
                                               _hd223597223876_
                                               _tl223596223878_
                                               _e223601223881_
                                               _hd223600223884_
                                               _tl223599223886_
                                               _e223604223889_
                                               _hd223603223892_
                                               _tl223602223894_
                                               _e223607223897_
                                               _hd223606223900_
                                               _tl223605223902_
                                               _e223610223905_
                                               _hd223609223908_
                                               _tl223608223910_
                                               _e223613223913_
                                               _hd223612223916_
                                               _tl223611223918_
                                               _e223616223921_
                                               _hd223615223924_
                                               _tl223614223926_
                                               _e223619223929_
                                               _hd223618223932_
                                               _tl223617223934_
                                               _e223622223937_
                                               _hd223621223940_
                                               _tl223620223942_
                                               _e223625223945_
                                               _hd223624223948_
                                               _tl223623223950_
                                               _e223628223953_
                                               _hd223627223956_
                                               _tl223626223958_
                                               _e223631223961_
                                               _hd223630223964_
                                               _tl223629223966_)
                                              (___kont229691229692_))
                                          (___kont229691229692_))))
                                  (___kont229691229692_))
                              (___kont229691229692_))
                          (___kont229691229692_))))
                  (___kont229691229692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl223614223926_))
                                                      (if (let ((__tmp229998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp229998 'bind-method!))
                  (let ((_L223795_ _hd223621223940_)
                        (_L223796_ _hd223612223916_)
                        (_L223797_ _hd223603223892_)
                        (_L223798_ _hd223594223868_))
                    (___kont229689229690_
                     _L223795_
                     _L223796_
                     _L223797_
                     _L223798_))
                  (___kont229691229692_))
              (___kont229691229692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont229691229692_))))
                                      (___kont229691229692_))
                                  (___kont229691229692_))
                              (___kont229691229692_))))
                      (___kont229691229692_))))
              (___kont229691229692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont229691229692_))))
                                          (___kont229691229692_))
                                      (___kont229691229692_))
                                  (___kont229691229692_))))
                          (___kont229691229692_))))
                  (___kont229691229692_))
              (___kont229691229692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont229691229692_))
                                          (___kont229691229692_))
                                      (___kont229691229692_))))
                              (___kont229691229692_))))
                      (___kont229691229692_))
                  (___kont229691229692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont229691229692_))
                                              (___kont229691229692_))
                                          (___kont229691229692_))))
                                  (___kont229691229692_))))
                          (___kont229691229692_))))
                  (___kont229691229692_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx223520_ _id223521_ _new-id223522_)
        (let* ((_g223524223537_
                (lambda (_g223525223534_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223525223534_))))
               (_g223523223570_
                (lambda (_g223525223540_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223525223540_))
                      (let ((_e223529223542_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223525223540_))))
                        (let ((_hd223528223545_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223529223542_)))
                              (_tl223527223547_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223529223542_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223527223547_))
                              (let ((_e223532223550_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223527223547_))))
                                (let ((_hd223531223553_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223532223550_)))
                                      (_tl223530223555_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223532223550_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223530223555_))
                                      ((lambda (_L223558_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L223558_
                                                _id223521_))
                                             (let ((__tmp229999
                                                    (let ((__tmp230000
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id223522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp230000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp229999
                                                _stx223520_))
                                             _stx223520_))
                                       _hd223531223553_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223524223537_ _g223525223540_)))))
                              (let ()
                                (declare (not safe))
                                (_g223524223537_ _g223525223540_)))))
                      (let ()
                        (declare (not safe))
                        (_g223524223537_ _g223525223540_))))))
          (declare (not safe))
          (_g223523223570_ _stx223520_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx223461_ _subst223462_)
        (let* ((_g223464223477_
                (lambda (_g223465223474_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223465223474_))))
               (_g223463223517_
                (lambda (_g223465223480_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223465223480_))
                      (let ((_e223469223482_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223465223480_))))
                        (let ((_hd223468223485_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223469223482_)))
                              (_tl223467223487_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223469223482_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223467223487_))
                              (let ((_e223472223490_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223467223487_))))
                                (let ((_hd223471223493_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223472223490_)))
                                      (_tl223470223495_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223472223490_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223470223495_))
                                      ((lambda (_L223498_)
                                         (let ((_$e223512_
                                                (let ((__tmp230001
                                                       (lambda (_sub223510_)
                                                         (let ((__tmp230002
                                                                (car _sub223510_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L223498_
                                                            __tmp230002)))))
                                                  (declare (not safe))
                                                  (find __tmp230001
                                                        _subst223462_))))
                                           (if _$e223512_
                                               ((lambda (_sub223515_)
                                                  (let ((__tmp230003
                                                         (let ((__tmp230004
                                                                (let ((__tmp230005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub223515_)))
                          (declare (not safe))
                          (cons __tmp230005 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp230004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp230003
                                                     _stx223461_)))
                                                _$e223512_)
                                               _stx223461_)))
                                       _hd223471223493_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223464223477_ _g223465223480_)))))
                              (let ()
                                (declare (not safe))
                                (_g223464223477_ _g223465223480_)))))
                      (let ()
                        (declare (not safe))
                        (_g223464223477_ _g223465223480_))))))
          (declare (not safe))
          (_g223463223517_ _stx223461_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx223389_ _id223390_ _new-id223391_)
        (let* ((_g223393223410_
                (lambda (_g223394223407_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223394223407_))))
               (_g223392223458_
                (lambda (_g223394223413_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223394223413_))
                      (let ((_e223399223415_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223394223413_))))
                        (let ((_hd223398223418_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223399223415_)))
                              (_tl223397223420_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223399223415_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223397223420_))
                              (let ((_e223402223423_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223397223420_))))
                                (let ((_hd223401223426_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223402223423_)))
                                      (_tl223400223428_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223402223423_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223400223428_))
                                      (let ((_e223405223431_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223400223428_))))
                                        (let ((_hd223404223434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223405223431_)))
                                              (_tl223403223436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223405223431_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223403223436_))
                                              ((lambda (_L223439_ _L223440_)
                                                 (let ((_new-expr223455_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L223439_
                                                           _id223390_
                                                           _new-id223391_)))
                                                       (_new-xid223456_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L223440_
                                                               _id223390_))
                                                            _new-id223391_
                                                            _L223440_)))
                                                   (let ((__tmp230006
                                                          (let ((__tmp230007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp230008
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr223455_ '()))))
                           (declare (not safe))
                           (cons _new-xid223456_ __tmp230008))))
                    (declare (not safe))
                    (cons '%#set! __tmp230007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp230006
                                                      _stx223389_))))
                                               _hd223404223434_
                                               _hd223401223426_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223393223410_
                                                 _g223394223413_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223393223410_ _g223394223413_)))))
                              (let ()
                                (declare (not safe))
                                (_g223393223410_ _g223394223413_)))))
                      (let ()
                        (declare (not safe))
                        (_g223393223410_ _g223394223413_))))))
          (declare (not safe))
          (_g223392223458_ _stx223389_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx223313_ _subst223314_)
        (let* ((_g223316223333_
                (lambda (_g223317223330_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223317223330_))))
               (_g223315223386_
                (lambda (_g223317223336_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223317223336_))
                      (let ((_e223322223338_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223317223336_))))
                        (let ((_hd223321223341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223322223338_)))
                              (_tl223320223343_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223322223338_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223320223343_))
                              (let ((_e223325223346_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223320223343_))))
                                (let ((_hd223324223349_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223325223346_)))
                                      (_tl223323223351_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223325223346_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223323223351_))
                                      (let ((_e223328223354_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223323223351_))))
                                        (let ((_hd223327223357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223328223354_)))
                                              (_tl223326223359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223328223354_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223326223359_))
                                              ((lambda (_L223362_ _L223363_)
                                                 (let ((_new-expr223383_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L223362_
                                                           _subst223314_)))
                                                       (_new-xid223384_
                                                        (let ((_$e223380_
                                                               (let ((__tmp230009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub223378_)
                                (let ((__tmp230010 (car _sub223378_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L223363_
                                   __tmp230010)))))
                         (declare (not safe))
                         (find __tmp230009 _subst223314_))))
                  (if _$e223380_ (cdr _$e223380_) _L223363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp230011
                                                          (let ((__tmp230012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp230013
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr223383_ '()))))
                           (declare (not safe))
                           (cons _new-xid223384_ __tmp230013))))
                    (declare (not safe))
                    (cons '%#set! __tmp230012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp230011
                                                      _stx223313_))))
                                               _hd223327223357_
                                               _hd223324223349_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223316223333_
                                                 _g223317223336_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223316223333_ _g223317223336_)))))
                              (let ()
                                (declare (not safe))
                                (_g223316223333_ _g223317223336_)))))
                      (let ()
                        (declare (not safe))
                        (_g223316223333_ _g223317223336_))))))
          (declare (not safe))
          (_g223315223386_ _stx223313_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx223259_ _ht223260_)
        (let* ((_g223262223275_
                (lambda (_g223263223272_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223263223272_))))
               (_g223261223310_
                (lambda (_g223263223278_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223263223278_))
                      (let ((_e223267223280_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223263223278_))))
                        (let ((_hd223266223283_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223267223280_)))
                              (_tl223265223285_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223267223280_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223265223285_))
                              (let ((_e223270223288_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223265223285_))))
                                (let ((_hd223269223291_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223270223288_)))
                                      (_tl223268223293_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223270223288_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223268223293_))
                                      ((lambda (_L223296_)
                                         (let ((_eid223308_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L223296_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht223260_
                                            _eid223308_
                                            1+
                                            '0)))
                                       _hd223269223291_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223262223275_ _g223263223278_)))))
                              (let ()
                                (declare (not safe))
                                (_g223262223275_ _g223263223278_)))))
                      (let ()
                        (declare (not safe))
                        (_g223262223275_ _g223263223278_))))))
          (declare (not safe))
          (_g223261223310_ _stx223259_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx223189_ _ht223190_)
        (let* ((_g223192223209_
                (lambda (_g223193223206_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223193223206_))))
               (_g223191223256_
                (lambda (_g223193223212_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223193223212_))
                      (let ((_e223198223214_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223193223212_))))
                        (let ((_hd223197223217_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223198223214_)))
                              (_tl223196223219_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223198223214_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223196223219_))
                              (let ((_e223201223222_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223196223219_))))
                                (let ((_hd223200223225_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223201223222_)))
                                      (_tl223199223227_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223201223222_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223199223227_))
                                      (let ((_e223204223230_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223199223227_))))
                                        (let ((_hd223203223233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223204223230_)))
                                              (_tl223202223235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223204223230_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223202223235_))
                                              ((lambda (_L223238_ _L223239_)
                                                 (let ((_eid223254_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L223239_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht223190_
                                                      _eid223254_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L223238_
                                                      _ht223190_))))
                                               _hd223203223233_
                                               _hd223200223225_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223192223209_
                                                 _g223193223212_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223192223209_ _g223193223212_)))))
                              (let ()
                                (declare (not safe))
                                (_g223192223209_ _g223193223212_)))))
                      (let ()
                        (declare (not safe))
                        (_g223192223209_ _g223193223212_))))))
          (declare (not safe))
          (_g223191223256_ _stx223189_))))
    (define gxc#find-body%
      (lambda (_stx223102_ _arg223103_)
        (let* ((_g223105223124_
                (lambda (_g223106223121_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223106223121_))))
               (_g223104223186_
                (lambda (_g223106223127_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223106223127_))
                      (let ((_e223110223129_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223106223127_))))
                        (let ((_hd223109223132_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223110223129_)))
                              (_tl223108223134_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223110223129_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl223108223134_))
                              (let ((_g230014_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl223108223134_
                                        '0))))
                                (begin
                                  (let ((_g230015_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g230014_)
                                               (##vector-length _g230014_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g230015_ 2)))
                                        (error "Context expects 2 values"
                                               _g230015_)))
                                  (let ((_target223111223137_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g230014_ 0)))
                                        (_tl223113223139_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g230014_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl223113223139_))
                                        (letrec ((_loop223114223142_
                                                  (lambda (_hd223112223145_
                                                           _expr223118223147_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd223112223145_))
                                                        (let ((_e223115223150_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd223112223145_))))
                  (let ((_lp-hd223116223153_
                         (let () (declare (not safe)) (##car _e223115223150_)))
                        (_lp-tl223117223155_
                         (let ()
                           (declare (not safe))
                           (##cdr _e223115223150_))))
                    (let ((__tmp230019
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd223116223153_ _expr223118223147_))))
                      (declare (not safe))
                      (_loop223114223142_ _lp-tl223117223155_ __tmp230019))))
                (let ((_expr223119223158_ (reverse _expr223118223147_)))
                  ((lambda (_L223161_)
                     (let ((__tmp230018
                            (lambda (_g223174223176_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g223174223176_
                                 _arg223103_))))
                           (__tmp230016
                            (let ((__tmp230017
                                   (lambda (_g223178223181_ _g223179223183_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223178223181_
                                             _g223179223183_)))))
                              (declare (not safe))
                              (foldr1 __tmp230017 '() _L223161_))))
                       (declare (not safe))
                       (ormap1 __tmp230018 __tmp230016)))
                   _expr223119223158_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop223114223142_
                                             _target223111223137_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g223105223124_
                                           _g223106223127_))))))
                              (let ()
                                (declare (not safe))
                                (_g223105223124_ _g223106223127_)))))
                      (let ()
                        (declare (not safe))
                        (_g223105223124_ _g223106223127_))))))
          (declare (not safe))
          (_g223104223186_ _stx223102_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx223034_ _arg223035_)
        (let* ((_g223037223054_
                (lambda (_g223038223051_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223038223051_))))
               (_g223036223099_
                (lambda (_g223038223057_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223038223057_))
                      (let ((_e223043223059_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223038223057_))))
                        (let ((_hd223042223062_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223043223059_)))
                              (_tl223041223064_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223043223059_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223041223064_))
                              (let ((_e223046223067_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223041223064_))))
                                (let ((_hd223045223070_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223046223067_)))
                                      (_tl223044223072_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223046223067_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223044223072_))
                                      (let ((_e223049223075_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223044223072_))))
                                        (let ((_hd223048223078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223049223075_)))
                                              (_tl223047223080_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223049223075_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223047223080_))
                                              ((lambda (_L223083_ _L223084_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L223083_
                                                    _arg223035_)))
                                               _hd223048223078_
                                               _hd223045223070_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223037223054_
                                                 _g223038223057_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223037223054_ _g223038223057_)))))
                              (let ()
                                (declare (not safe))
                                (_g223037223054_ _g223038223057_)))))
                      (let ()
                        (declare (not safe))
                        (_g223037223054_ _g223038223057_))))))
          (declare (not safe))
          (_g223036223099_ _stx223034_))))
    (define gxc#find-lambda%
      (lambda (_stx222966_ _arg222967_)
        (let* ((_g222969222986_
                (lambda (_g222970222983_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222970222983_))))
               (_g222968223031_
                (lambda (_g222970222989_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222970222989_))
                      (let ((_e222975222991_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222970222989_))))
                        (let ((_hd222974222994_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222975222991_)))
                              (_tl222973222996_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222975222991_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222973222996_))
                              (let ((_e222978222999_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222973222996_))))
                                (let ((_hd222977223002_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222978222999_)))
                                      (_tl222976223004_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222978222999_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222976223004_))
                                      (let ((_e222981223007_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222976223004_))))
                                        (let ((_hd222980223010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222981223007_)))
                                              (_tl222979223012_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222981223007_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222979223012_))
                                              ((lambda (_L223015_ _L223016_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L223015_
                                                    _arg222967_)))
                                               _hd222980223010_
                                               _hd222977223002_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222969222986_
                                                 _g222970222989_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222969222986_ _g222970222989_)))))
                              (let ()
                                (declare (not safe))
                                (_g222969222986_ _g222970222989_)))))
                      (let ()
                        (declare (not safe))
                        (_g222969222986_ _g222970222989_))))))
          (declare (not safe))
          (_g222968223031_ _stx222966_))))
    (define gxc#find-case-lambda%
      (lambda (_stx222848_ _arg222849_)
        (let* ((_g222851222879_
                (lambda (_g222852222876_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222852222876_))))
               (_g222850222963_
                (lambda (_g222852222882_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222852222882_))
                      (let ((_e222857222884_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222852222882_))))
                        (let ((_hd222856222887_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222857222884_)))
                              (_tl222855222889_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222857222884_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl222855222889_))
                              (let ((_g230020_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl222855222889_
                                        '0))))
                                (begin
                                  (let ((_g230021_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g230020_)
                                               (##vector-length _g230020_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g230021_ 2)))
                                        (error "Context expects 2 values"
                                               _g230021_)))
                                  (let ((_target222858222892_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g230020_ 0)))
                                        (_tl222860222894_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g230020_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222860222894_))
                                        (letrec ((_loop222861222897_
                                                  (lambda (_hd222859222900_
                                                           _body222865222902_
                                                           _hd222866222904_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd222859222900_))
                                                        (let ((_e222862222907_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd222859222900_))))
                  (let ((_lp-hd222863222910_
                         (let () (declare (not safe)) (##car _e222862222907_)))
                        (_lp-tl222864222912_
                         (let ()
                           (declare (not safe))
                           (##cdr _e222862222907_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd222863222910_))
                        (let ((_e222871222915_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd222863222910_))))
                          (let ((_hd222870222918_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222871222915_)))
                                (_tl222869222920_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222871222915_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl222869222920_))
                                (let ((_e222874222923_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl222869222920_))))
                                  (let ((_hd222873222926_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222874222923_)))
                                        (_tl222872222928_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222874222923_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222872222928_))
                                        (let ((__tmp230026
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222873222926_
                                                       _body222865222902_)))
                                              (__tmp230025
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222870222918_
                                                       _hd222866222904_))))
                                          (declare (not safe))
                                          (_loop222861222897_
                                           _lp-tl222864222912_
                                           __tmp230026
                                           __tmp230025))
                                        (let ()
                                          (declare (not safe))
                                          (_g222851222879_ _g222852222882_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222851222879_ _g222852222882_)))))
                        (let ()
                          (declare (not safe))
                          (_g222851222879_ _g222852222882_)))))
                (let ((_body222867222931_ (reverse _body222865222902_))
                      (_hd222868222933_ (reverse _hd222866222904_)))
                  ((lambda (_L222936_ _L222937_)
                     (let ((__tmp230024
                            (lambda (_g222951222953_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g222951222953_
                                 _arg222849_))))
                           (__tmp230022
                            (let ((__tmp230023
                                   (lambda (_g222955222958_ _g222956222960_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g222955222958_
                                             _g222956222960_)))))
                              (declare (not safe))
                              (foldr1 __tmp230023 '() _L222936_))))
                       (declare (not safe))
                       (ormap1 __tmp230024 __tmp230022)))
                   _body222867222931_
                   _hd222868222933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop222861222897_
                                             _target222858222892_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g222851222879_
                                           _g222852222882_))))))
                              (let ()
                                (declare (not safe))
                                (_g222851222879_ _g222852222882_)))))
                      (let ()
                        (declare (not safe))
                        (_g222851222879_ _g222852222882_))))))
          (declare (not safe))
          (_g222850222963_ _stx222848_))))
    (define gxc#find-let-values%
      (lambda (_stx222698_ _arg222699_)
        (let* ((_g222701222736_
                (lambda (_g222702222733_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222702222733_))))
               (_g222700222845_
                (lambda (_g222702222739_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222702222739_))
                      (let ((_e222708222741_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222702222739_))))
                        (let ((_hd222707222744_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222708222741_)))
                              (_tl222706222746_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222708222741_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222706222746_))
                              (let ((_e222711222749_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222706222746_))))
                                (let ((_hd222710222752_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222711222749_)))
                                      (_tl222709222754_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222711222749_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd222710222752_))
                                      (let ((_g230027_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd222710222752_
                                                '0))))
                                        (begin
                                          (let ((_g230028_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g230027_)
                                                       (##vector-length
                                                        _g230027_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g230028_ 2)))
                                                (error "Context expects 2 values"
                                                       _g230028_)))
                                          (let ((_target222712222757_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g230027_ 0)))
                                                (_tl222714222759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g230027_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222714222759_))
                                                (letrec ((_loop222715222762_
                                                          (lambda (_hd222713222765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr222719222767_
                           _bind222720222769_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222713222765_))
                        (let ((_e222716222772_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222713222765_))))
                          (let ((_lp-hd222717222775_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222716222772_)))
                                (_lp-tl222718222777_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222716222772_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd222717222775_))
                                (let ((_e222725222780_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd222717222775_))))
                                  (let ((_hd222724222783_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222725222780_)))
                                        (_tl222723222785_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222725222780_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl222723222785_))
                                        (let ((_e222728222788_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl222723222785_))))
                                          (let ((_hd222727222791_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222728222788_)))
                                                (_tl222726222793_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222728222788_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222726222793_))
                                                (let ((__tmp230033
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222727222791_
                                                               _expr222719222767_)))
                                                      (__tmp230032
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222724222783_
                                                               _bind222720222769_))))
                                                  (declare (not safe))
                                                  (_loop222715222762_
                                                   _lp-tl222718222777_
                                                   __tmp230033
                                                   __tmp230032))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222701222736_
                                                   _g222702222739_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g222701222736_ _g222702222739_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222701222736_ _g222702222739_)))))
                        (let ((_expr222721222796_ (reverse _expr222719222767_))
                              (_bind222722222798_
                               (reverse _bind222720222769_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222709222754_))
                              (let ((_e222731222801_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222709222754_))))
                                (let ((_hd222730222804_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222731222801_)))
                                      (_tl222729222806_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222731222801_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222729222806_))
                                      ((lambda (_L222809_ _L222810_ _L222811_)
                                         (let ((_$e222842_
                                                (let ((__tmp230031
                                                       (lambda (_g222830222832_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g222830222832_
                                                            _arg222699_))))
                                                      (__tmp230029
                                                       (let ((__tmp230030
                                                              (lambda (_g222834222837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g222835222839_)
                        (let ()
                          (declare (not safe))
                          (cons _g222834222837_ _g222835222839_)))))
                 (declare (not safe))
                 (foldr1 __tmp230030 '() _L222810_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp230031
                                                          __tmp230029))))
                                           (if _$e222842_
                                               _$e222842_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L222809_
                                                  _arg222699_)))))
                                       _hd222730222804_
                                       _expr222721222796_
                                       _bind222722222798_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222701222736_ _g222702222739_)))))
                              (let ()
                                (declare (not safe))
                                (_g222701222736_ _g222702222739_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop222715222762_
                                                     _target222712222757_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222701222736_
                                                   _g222702222739_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222701222736_ _g222702222739_)))))
                              (let ()
                                (declare (not safe))
                                (_g222701222736_ _g222702222739_)))))
                      (let ()
                        (declare (not safe))
                        (_g222701222736_ _g222702222739_))))))
          (declare (not safe))
          (_g222700222845_ _stx222698_))))
    (define gxc#find-setq%
      (lambda (_stx222630_ _arg222631_)
        (let* ((_g222633222650_
                (lambda (_g222634222647_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222634222647_))))
               (_g222632222695_
                (lambda (_g222634222653_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222634222653_))
                      (let ((_e222639222655_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222634222653_))))
                        (let ((_hd222638222658_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222639222655_)))
                              (_tl222637222660_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222639222655_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222637222660_))
                              (let ((_e222642222663_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222637222660_))))
                                (let ((_hd222641222666_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222642222663_)))
                                      (_tl222640222668_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222642222663_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222640222668_))
                                      (let ((_e222645222671_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222640222668_))))
                                        (let ((_hd222644222674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222645222671_)))
                                              (_tl222643222676_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222645222671_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222643222676_))
                                              ((lambda (_L222679_ _L222680_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222679_
                                                    _arg222631_)))
                                               _hd222644222674_
                                               _hd222641222666_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222633222650_
                                                 _g222634222653_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222633222650_ _g222634222653_)))))
                              (let ()
                                (declare (not safe))
                                (_g222633222650_ _g222634222653_)))))
                      (let ()
                        (declare (not safe))
                        (_g222633222650_ _g222634222653_))))))
          (declare (not safe))
          (_g222632222695_ _stx222630_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx222574_ _ids222575_)
        (let* ((_g222577222590_
                (lambda (_g222578222587_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222578222587_))))
               (_g222576222627_
                (lambda (_g222578222593_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222578222593_))
                      (let ((_e222582222595_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222578222593_))))
                        (let ((_hd222581222598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222582222595_)))
                              (_tl222580222600_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222582222595_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222580222600_))
                              (let ((_e222585222603_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222580222600_))))
                                (let ((_hd222584222606_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222585222603_)))
                                      (_tl222583222608_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222585222603_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222583222608_))
                                      ((lambda (_L222611_)
                                         (let ((__tmp230034
                                                (lambda (_g222622222624_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L222611_
                                                     _g222622222624_)))))
                                           (declare (not safe))
                                           (find __tmp230034 _ids222575_)))
                                       _hd222584222606_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222577222590_ _g222578222593_)))))
                              (let ()
                                (declare (not safe))
                                (_g222577222590_ _g222578222593_)))))
                      (let ()
                        (declare (not safe))
                        (_g222577222590_ _g222578222593_))))))
          (declare (not safe))
          (_g222576222627_ _stx222574_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx222498_ _ids222499_)
        (let* ((_g222501222518_
                (lambda (_g222502222515_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222502222515_))))
               (_g222500222571_
                (lambda (_g222502222521_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222502222521_))
                      (let ((_e222507222523_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222502222521_))))
                        (let ((_hd222506222526_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222507222523_)))
                              (_tl222505222528_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222507222523_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222505222528_))
                              (let ((_e222510222531_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222505222528_))))
                                (let ((_hd222509222534_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222510222531_)))
                                      (_tl222508222536_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222510222531_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222508222536_))
                                      (let ((_e222513222539_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222508222536_))))
                                        (let ((_hd222512222542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222513222539_)))
                                              (_tl222511222544_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222513222539_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222511222544_))
                                              ((lambda (_L222547_ _L222548_)
                                                 (let ((_$e222568_
                                                        (let ((__tmp230035
                                                               (lambda (_g222563222565_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L222548_ _g222563222565_)))))
                  (declare (not safe))
                  (find __tmp230035 _ids222499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e222568_
                                                       _$e222568_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L222547_
                                                          _ids222499_)))))
                                               _hd222512222542_
                                               _hd222509222534_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222501222518_
                                                 _g222502222521_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222501222518_ _g222502222521_)))))
                              (let ()
                                (declare (not safe))
                                (_g222501222518_ _g222502222521_)))))
                      (let ()
                        (declare (not safe))
                        (_g222501222518_ _g222502222521_))))))
          (declare (not safe))
          (_g222500222571_ _stx222498_))))))
