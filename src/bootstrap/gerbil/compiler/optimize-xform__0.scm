(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707646854)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl221168_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221168_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221168_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221168_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221168_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl221168_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl221164_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#declare gxc#xform-identity))
           _tbl221164_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl221160_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225884 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl221160_ __tmp225884))
           (let ((__tmp225885 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl221160_ __tmp225885))
           _tbl221160_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl221156_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221156_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221156_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221156_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221156_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221156_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl221156_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl221152_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225886 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl221152_ __tmp225886))
           (let ((__tmp225887 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl221152_ __tmp225887))
           (let ()
             (declare (not safe))
             (table-set! _tbl221152_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221152_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221152_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221152_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221152_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl221152_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl221148_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225888 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl221148_ __tmp225888))
           (let ()
             (declare (not safe))
             (table-set! _tbl221148_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221148_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221148_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221148_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221148_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221148_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221148_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221148_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221148_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221148_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221148_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl221148_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx221131_ . _args221133_)
        (let ((__tmp225890
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221133_)
                     (gxc#compile-e__0 _stx221131_)
                     (let ((_arg1221138_ (car _args221133_))
                           (_rest221140_ (cdr _args221133_)))
                       (if (null? _rest221140_)
                           (gxc#compile-e__1 _stx221131_ _arg1221138_)
                           (let ((_arg2221143_ (car _rest221140_))
                                 (_rest221145_ (cdr _rest221140_)))
                             (if (null? _rest221145_)
                                 (gxc#compile-e__2
                                  _stx221131_
                                  _arg1221138_
                                  _arg2221143_)
                                 (apply gxc#compile-e
                                        _stx221131_
                                        _arg1221138_
                                        _arg2221143_
                                        _rest221145_))))))))
              (__tmp225889 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp225890
           gxc#current-compile-methods
           __tmp225889))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl221128_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225891 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl221128_ __tmp225891))
           (let ()
             (declare (not safe))
             (table-set! _tbl221128_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221128_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221128_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221128_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221128_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl221128_))))
    (define gxc#apply-collect-methods
      (lambda (_stx221111_ . _args221113_)
        (let ((__tmp225893
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221113_)
                     (gxc#compile-e__0 _stx221111_)
                     (let ((_arg1221118_ (car _args221113_))
                           (_rest221120_ (cdr _args221113_)))
                       (if (null? _rest221120_)
                           (gxc#compile-e__1 _stx221111_ _arg1221118_)
                           (let ((_arg2221123_ (car _rest221120_))
                                 (_rest221125_ (cdr _rest221120_)))
                             (if (null? _rest221125_)
                                 (gxc#compile-e__2
                                  _stx221111_
                                  _arg1221118_
                                  _arg2221123_)
                                 (apply gxc#compile-e
                                        _stx221111_
                                        _arg1221118_
                                        _arg2221123_
                                        _rest221125_))))))))
              (__tmp225892 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp225893
           gxc#current-compile-methods
           __tmp225892))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl221108_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225894 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl221108_ __tmp225894))
           (let ()
             (declare (not safe))
             (table-set! _tbl221108_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221108_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221108_ '%#set! gxc#expression-subst-setq%))
           _tbl221108_))))
    (define gxc#apply-expression-subst
      (lambda (_stx221091_ . _args221093_)
        (let ((__tmp225896
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221093_)
                     (gxc#compile-e__0 _stx221091_)
                     (let ((_arg1221098_ (car _args221093_))
                           (_rest221100_ (cdr _args221093_)))
                       (if (null? _rest221100_)
                           (gxc#compile-e__1 _stx221091_ _arg1221098_)
                           (let ((_arg2221103_ (car _rest221100_))
                                 (_rest221105_ (cdr _rest221100_)))
                             (if (null? _rest221105_)
                                 (gxc#compile-e__2
                                  _stx221091_
                                  _arg1221098_
                                  _arg2221103_)
                                 (apply gxc#compile-e
                                        _stx221091_
                                        _arg1221098_
                                        _arg2221103_
                                        _rest221105_))))))))
              (__tmp225895 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp225896
           gxc#current-compile-methods
           __tmp225895))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl221088_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225897 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl221088_ __tmp225897))
           (let ()
             (declare (not safe))
             (table-set! _tbl221088_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221088_ '%#set! gxc#expression-subst*-setq%))
           _tbl221088_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx221071_ . _args221073_)
        (let ((__tmp225899
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221073_)
                     (gxc#compile-e__0 _stx221071_)
                     (let ((_arg1221078_ (car _args221073_))
                           (_rest221080_ (cdr _args221073_)))
                       (if (null? _rest221080_)
                           (gxc#compile-e__1 _stx221071_ _arg1221078_)
                           (let ((_arg2221083_ (car _rest221080_))
                                 (_rest221085_ (cdr _rest221080_)))
                             (if (null? _rest221085_)
                                 (gxc#compile-e__2
                                  _stx221071_
                                  _arg1221078_
                                  _arg2221083_)
                                 (apply gxc#compile-e
                                        _stx221071_
                                        _arg1221078_
                                        _arg2221083_
                                        _rest221085_))))))))
              (__tmp225898 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp225899
           gxc#current-compile-methods
           __tmp225898))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl221068_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225900 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl221068_ __tmp225900))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221068_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221068_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221068_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl221068_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl221064_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225901 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl221064_ __tmp225901))
           (let ()
             (declare (not safe))
             (table-set! _tbl221064_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221064_ '%#set! gxc#find-var-refs-setq%))
           _tbl221064_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx221047_ . _args221049_)
        (let ((__tmp225903
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221049_)
                     (gxc#compile-e__0 _stx221047_)
                     (let ((_arg1221054_ (car _args221049_))
                           (_rest221056_ (cdr _args221049_)))
                       (if (null? _rest221056_)
                           (gxc#compile-e__1 _stx221047_ _arg1221054_)
                           (let ((_arg2221059_ (car _rest221056_))
                                 (_rest221061_ (cdr _rest221056_)))
                             (if (null? _rest221061_)
                                 (gxc#compile-e__2
                                  _stx221047_
                                  _arg1221054_
                                  _arg2221059_)
                                 (apply gxc#compile-e
                                        _stx221047_
                                        _arg1221054_
                                        _arg2221059_
                                        _rest221061_))))))))
              (__tmp225902 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp225903
           gxc#current-compile-methods
           __tmp225902))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl221044_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225904 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl221044_ __tmp225904))
           (let ()
             (declare (not safe))
             (table-set! _tbl221044_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221044_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl221044_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx221027_ . _args221029_)
        (let ((__tmp225906
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221029_)
                     (gxc#compile-e__0 _stx221027_)
                     (let ((_arg1221034_ (car _args221029_))
                           (_rest221036_ (cdr _args221029_)))
                       (if (null? _rest221036_)
                           (gxc#compile-e__1 _stx221027_ _arg1221034_)
                           (let ((_arg2221039_ (car _rest221036_))
                                 (_rest221041_ (cdr _rest221036_)))
                             (if (null? _rest221041_)
                                 (gxc#compile-e__2
                                  _stx221027_
                                  _arg1221034_
                                  _arg2221039_)
                                 (apply gxc#compile-e
                                        _stx221027_
                                        _arg1221034_
                                        _arg2221039_
                                        _rest221041_))))))))
              (__tmp225905 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp225906
           gxc#current-compile-methods
           __tmp225905))))
    (define gxc#xform-identity
      (lambda (_stx221024_ . _args221025_) _stx221024_))
    (define gxc#xform-wrap-source
      (lambda (_stx221021_ _src-stx221022_)
        (let ((__tmp225907
               (let () (declare (not safe)) (gx#stx-source _src-stx221022_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx221021_ __tmp225907))))
    (define gxc#xform-apply-compile-e
      (lambda (_args221008_)
        (lambda (_stx221010_)
          (if (let () (declare (not safe)) (null? _args221008_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx221010_))
              (let ((_arg1221012_ (car _args221008_))
                    (_rest221014_ (cdr _args221008_)))
                (if (let () (declare (not safe)) (null? _rest221014_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx221010_ _arg1221012_))
                    (let ((_arg2221017_ (car _rest221014_))
                          (_rest221019_ (cdr _rest221014_)))
                      (if (let () (declare (not safe)) (null? _rest221019_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx221010_
                             _arg1221012_
                             _arg2221017_))
                          (apply gxc#compile-e
                                 _stx221010_
                                 _arg1221012_
                                 _arg2221017_
                                 _rest221019_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx220967_ . _args220968_)
        (let* ((_g220970220980_
                (lambda (_g220971220977_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220971220977_))))
               (_g220969221005_
                (lambda (_g220971220983_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220971220983_))
                      (let ((_e220975220985_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220971220983_))))
                        (let ((_hd220974220988_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220975220985_)))
                              (_tl220973220990_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220975220985_))))
                          ((lambda (_L220993_)
                             (let* ((_forms221003_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220968_))
                                          _L220993_))
                                    (__tmp225908
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms221003_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp225908
                                _stx220967_)))
                           _tl220973220990_)))
                      (let ()
                        (declare (not safe))
                        (_g220970220980_ _g220971220983_))))))
          (declare (not safe))
          (_g220969221005_ _stx220967_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx220925_ . _args220926_)
        (let* ((_g220928220938_
                (lambda (_g220929220935_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220929220935_))))
               (_g220927220964_
                (lambda (_g220929220941_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220929220941_))
                      (let ((_e220933220943_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220929220941_))))
                        (let ((_hd220932220946_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220933220943_)))
                              (_tl220931220948_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220933220943_))))
                          ((lambda (_L220951_)
                             (let ((__tmp225911
                                    (lambda ()
                                      (let* ((_forms220962_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args220926_))
                                                   _L220951_))
                                             (__tmp225912
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms220962_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp225912
                                         _stx220925_))))
                                   (__tmp225909
                                    (let ((__tmp225910
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp225910 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp225911
                                gx#current-expander-phi
                                __tmp225909)))
                           _tl220931220948_)))
                      (let ()
                        (declare (not safe))
                        (_g220928220938_ _g220929220941_))))))
          (declare (not safe))
          (_g220927220964_ _stx220925_))))
    (define gxc#xform-module%
      (lambda (_stx220853_ . _args220854_)
        (let* ((_g220856220870_
                (lambda (_g220857220867_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220857220867_))))
               (_g220855220922_
                (lambda (_g220857220873_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220857220873_))
                      (let ((_e220862220875_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220857220873_))))
                        (let ((_hd220861220878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220862220875_)))
                              (_tl220860220880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220862220875_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220860220880_))
                              (let ((_e220865220883_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220860220880_))))
                                (let ((_hd220864220886_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220865220883_)))
                                      (_tl220863220888_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220865220883_))))
                                  ((lambda (_L220891_ _L220892_)
                                     (let* ((_ctx220905_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L220892_)))
                                            (_code220907_
                                             (let ((__obj225882 _ctx220905_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      __obj225882
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      __obj225882
                                                      '11
                                                      gx#module-context::t
                                                      '#f))
                                                   (class-slot-ref
                                                    gx#module-context::t
                                                    __obj225882
                                                    'code))))
                                            (_code220919_
                                             (let ((__tmp225913
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args220854_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code220907_))
                                                          (let ((_arg1220910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args220854_))
                        (_rest220912_ (cdr _args220854_)))
                    (if (let () (declare (not safe)) (null? _rest220912_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code220907_ _arg1220910_))
                        (let ((_arg2220915_ (car _rest220912_))
                              (_rest220917_ (cdr _rest220912_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest220917_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code220907_
                                 _arg1220910_
                                 _arg2220915_))
                              (apply gxc#compile-e
                                     _code220907_
                                     _arg1220910_
                                     _arg2220915_
                                     _rest220917_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp225913
                                                gx#current-expander-context
                                                _ctx220905_))))
                                       (let ((__obj225883 _ctx220905_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj225883
                                                'gx#module-context::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-set!
                                                __obj225883
                                                _code220919_
                                                '11
                                                gx#module-context::t
                                                '#f))
                                             (class-slot-set!
                                              gx#module-context::t
                                              __obj225883
                                              'code
                                              _code220919_)))
                                       (let ((__tmp225914
                                              (let ((__tmp225915
                                                     (let ((__tmp225916
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code220919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L220892_ __tmp225916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp225915))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp225914
                                          _stx220853_))))
                                   _tl220863220888_
                                   _hd220864220886_)))
                              (let ()
                                (declare (not safe))
                                (_g220856220870_ _g220857220873_)))))
                      (let ()
                        (declare (not safe))
                        (_g220856220870_ _g220857220873_))))))
          (declare (not safe))
          (_g220855220922_ _stx220853_))))
    (define gxc#xform-define-values%
      (lambda (_stx220774_ . _args220775_)
        (let* ((_g220777220794_
                (lambda (_g220778220791_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220778220791_))))
               (_g220776220850_
                (lambda (_g220778220797_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220778220797_))
                      (let ((_e220783220799_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220778220797_))))
                        (let ((_hd220782220802_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220783220799_)))
                              (_tl220781220804_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220783220799_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220781220804_))
                              (let ((_e220786220807_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220781220804_))))
                                (let ((_hd220785220810_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220786220807_)))
                                      (_tl220784220812_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220786220807_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220784220812_))
                                      (let ((_e220789220815_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220784220812_))))
                                        (let ((_hd220788220818_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220789220815_)))
                                              (_tl220787220820_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220789220815_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220787220820_))
                                              ((lambda (_L220823_ _L220824_)
                                                 (let* ((_expr220848_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220775_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220823_))
                     (let ((_arg1220839_ (car _args220775_))
                           (_rest220841_ (cdr _args220775_)))
                       (if (let () (declare (not safe)) (null? _rest220841_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220823_ _arg1220839_))
                           (let ((_arg2220844_ (car _rest220841_))
                                 (_rest220846_ (cdr _rest220841_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220846_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220823_
                                    _arg1220839_
                                    _arg2220844_))
                                 (apply gxc#compile-e
                                        _L220823_
                                        _arg1220839_
                                        _arg2220844_
                                        _rest220846_)))))))
                (__tmp225917
                 (let ((__tmp225918
                        (let ((__tmp225919
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220848_ '()))))
                          (declare (not safe))
                          (cons _L220824_ __tmp225919))))
                   (declare (not safe))
                   (cons '%#define-values __tmp225918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225917
                                                    _stx220774_)))
                                               _hd220788220818_
                                               _hd220785220810_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220777220794_
                                                 _g220778220797_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220777220794_ _g220778220797_)))))
                              (let ()
                                (declare (not safe))
                                (_g220777220794_ _g220778220797_)))))
                      (let ()
                        (declare (not safe))
                        (_g220777220794_ _g220778220797_))))))
          (declare (not safe))
          (_g220776220850_ _stx220774_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx220694_ . _args220695_)
        (let* ((_g220697220714_
                (lambda (_g220698220711_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220698220711_))))
               (_g220696220771_
                (lambda (_g220698220717_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220698220717_))
                      (let ((_e220703220719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220698220717_))))
                        (let ((_hd220702220722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220703220719_)))
                              (_tl220701220724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220703220719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220701220724_))
                              (let ((_e220706220727_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220701220724_))))
                                (let ((_hd220705220730_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220706220727_)))
                                      (_tl220704220732_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220706220727_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220704220732_))
                                      (let ((_e220709220735_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220704220732_))))
                                        (let ((_hd220708220738_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220709220735_)))
                                              (_tl220707220740_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220709220735_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220707220740_))
                                              ((lambda (_L220743_ _L220744_)
                                                 (let ((__tmp225922
                                                        (lambda ()
                                                          (let* ((_expr220769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args220695_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L220743_))
                              (let ((_arg1220760_ (car _args220695_))
                                    (_rest220762_ (cdr _args220695_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest220762_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L220743_
                                       _arg1220760_))
                                    (let ((_arg2220765_ (car _rest220762_))
                                          (_rest220767_ (cdr _rest220762_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest220767_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L220743_
                                             _arg1220760_
                                             _arg2220765_))
                                          (apply gxc#compile-e
                                                 _L220743_
                                                 _arg1220760_
                                                 _arg2220765_
                                                 _rest220767_)))))))
                         (__tmp225923
                          (let ((__tmp225924
                                 (let ((__tmp225925
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr220769_ '()))))
                                   (declare (not safe))
                                   (cons _L220744_ __tmp225925))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp225924))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp225923 _stx220694_))))
               (__tmp225920
                (let ((__tmp225921 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp225921 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp225922
                                                    gx#current-expander-phi
                                                    __tmp225920)))
                                               _hd220708220738_
                                               _hd220705220730_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220697220714_
                                                 _g220698220717_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220697220714_ _g220698220717_)))))
                              (let ()
                                (declare (not safe))
                                (_g220697220714_ _g220698220717_)))))
                      (let ()
                        (declare (not safe))
                        (_g220697220714_ _g220698220717_))))))
          (declare (not safe))
          (_g220696220771_ _stx220694_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx220615_ . _args220616_)
        (let* ((_g220618220635_
                (lambda (_g220619220632_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220619220632_))))
               (_g220617220691_
                (lambda (_g220619220638_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220619220638_))
                      (let ((_e220624220640_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220619220638_))))
                        (let ((_hd220623220643_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220624220640_)))
                              (_tl220622220645_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220624220640_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220622220645_))
                              (let ((_e220627220648_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220622220645_))))
                                (let ((_hd220626220651_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220627220648_)))
                                      (_tl220625220653_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220627220648_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220625220653_))
                                      (let ((_e220630220656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220625220653_))))
                                        (let ((_hd220629220659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220630220656_)))
                                              (_tl220628220661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220630220656_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220628220661_))
                                              ((lambda (_L220664_ _L220665_)
                                                 (let* ((_expr220689_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220616_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220664_))
                     (let ((_arg1220680_ (car _args220616_))
                           (_rest220682_ (cdr _args220616_)))
                       (if (let () (declare (not safe)) (null? _rest220682_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220664_ _arg1220680_))
                           (let ((_arg2220685_ (car _rest220682_))
                                 (_rest220687_ (cdr _rest220682_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220687_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220664_
                                    _arg1220680_
                                    _arg2220685_))
                                 (apply gxc#compile-e
                                        _L220664_
                                        _arg1220680_
                                        _arg2220685_
                                        _rest220687_)))))))
                (__tmp225926
                 (let ((__tmp225927
                        (let ((__tmp225928
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220689_ '()))))
                          (declare (not safe))
                          (cons _L220665_ __tmp225928))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp225927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225926
                                                    _stx220615_)))
                                               _hd220629220659_
                                               _hd220626220651_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220618220635_
                                                 _g220619220638_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220618220635_ _g220619220638_)))))
                              (let ()
                                (declare (not safe))
                                (_g220618220635_ _g220619220638_)))))
                      (let ()
                        (declare (not safe))
                        (_g220618220635_ _g220619220638_))))))
          (declare (not safe))
          (_g220617220691_ _stx220615_))))
    (define gxc#xform-lambda%
      (lambda (_stx220558_ . _args220559_)
        (let* ((_g220561220575_
                (lambda (_g220562220572_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220562220572_))))
               (_g220560220612_
                (lambda (_g220562220578_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220562220578_))
                      (let ((_e220567220580_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220562220578_))))
                        (let ((_hd220566220583_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220567220580_)))
                              (_tl220565220585_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220567220580_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220565220585_))
                              (let ((_e220570220588_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220565220585_))))
                                (let ((_hd220569220591_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220570220588_)))
                                      (_tl220568220593_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220570220588_))))
                                  ((lambda (_L220596_ _L220597_)
                                     (let* ((_body220610_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args220559_))
                                                  _L220596_))
                                            (__tmp225929
                                             (let ((__tmp225930
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L220597_
                                                            _body220610_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp225930))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp225929
                                        _stx220558_)))
                                   _tl220568220593_
                                   _hd220569220591_)))
                              (let ()
                                (declare (not safe))
                                (_g220561220575_ _g220562220578_)))))
                      (let ()
                        (declare (not safe))
                        (_g220561220575_ _g220562220578_))))))
          (declare (not safe))
          (_g220560220612_ _stx220558_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx220471_ . _args220472_)
        (letrec ((_clause-e220474_
                  (lambda (_clause220515_)
                    (let* ((_g220517220528_
                            (lambda (_g220518220525_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g220518220525_))))
                           (_g220516220555_
                            (lambda (_g220518220531_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g220518220531_))
                                  (let ((_e220523220533_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g220518220531_))))
                                    (let ((_hd220522220536_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e220523220533_)))
                                          (_tl220521220538_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e220523220533_))))
                                      ((lambda (_L220541_ _L220542_)
                                         (let ((_body220553_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args220472_))
                                                     _L220541_)))
                                           (declare (not safe))
                                           (cons _L220542_ _body220553_)))
                                       _tl220521220538_
                                       _hd220522220536_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g220517220528_ _g220518220531_))))))
                      (declare (not safe))
                      (_g220516220555_ _clause220515_)))))
          (let* ((_g220476220486_
                  (lambda (_g220477220483_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g220477220483_))))
                 (_g220475220512_
                  (lambda (_g220477220489_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g220477220489_))
                        (let ((_e220481220491_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g220477220489_))))
                          (let ((_hd220480220494_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220481220491_)))
                                (_tl220479220496_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220481220491_))))
                            ((lambda (_L220499_)
                               (let* ((_clauses220510_
                                       (map _clause-e220474_ _L220499_))
                                      (__tmp225931
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses220510_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp225931
                                  _stx220471_)))
                             _tl220479220496_)))
                        (let ()
                          (declare (not safe))
                          (_g220476220486_ _g220477220489_))))))
            (declare (not safe))
            (_g220475220512_ _stx220471_)))))
    (define gxc#xform-let-values%
      (lambda (_stx220265_ . _args220266_)
        (let* ((_g220268220301_
                (lambda (_g220269220298_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220269220298_))))
               (_g220267220468_
                (lambda (_g220269220304_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220269220304_))
                      (let ((_e220276220306_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220269220304_))))
                        (let ((_hd220275220309_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220276220306_)))
                              (_tl220274220311_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220276220306_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220274220311_))
                              (let ((_e220279220314_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220274220311_))))
                                (let ((_hd220278220317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220279220314_)))
                                      (_tl220277220319_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220279220314_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd220278220317_))
                                      (let ((_g225932_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd220278220317_
                                                '0))))
                                        (begin
                                          (let ((_g225933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g225932_)
                                                       (##vector-length
                                                        _g225932_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g225933_ 2)))
                                                (error "Context expects 2 values"
                                                       _g225933_)))
                                          (let ((_target220280220322_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g225932_ 0)))
                                                (_tl220282220324_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g225932_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220282220324_))
                                                (letrec ((_loop220283220327_
                                                          (lambda (_hd220281220330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr220287220332_
                           _hd220288220334_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd220281220330_))
                        (let ((_e220284220337_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd220281220330_))))
                          (let ((_lp-hd220285220340_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220284220337_)))
                                (_lp-tl220286220342_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220284220337_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd220285220340_))
                                (let ((_e220293220345_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd220285220340_))))
                                  (let ((_hd220292220348_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e220293220345_)))
                                        (_tl220291220350_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e220293220345_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl220291220350_))
                                        (let ((_e220296220353_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl220291220350_))))
                                          (let ((_hd220295220356_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e220296220353_)))
                                                (_tl220294220358_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e220296220353_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220294220358_))
                                                (let ((__tmp225946
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220295220356_
                                                               _expr220287220332_)))
                                                      (__tmp225945
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220292220348_
                                                               _hd220288220334_))))
                                                  (declare (not safe))
                                                  (_loop220283220327_
                                                   _lp-tl220286220342_
                                                   __tmp225946
                                                   __tmp225945))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220268220301_
                                                   _g220269220304_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g220268220301_ _g220269220304_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g220268220301_ _g220269220304_)))))
                        (let ((_expr220289220361_ (reverse _expr220287220332_))
                              (_hd220290220363_ (reverse _hd220288220334_)))
                          ((lambda (_L220366_ _L220367_ _L220368_ _L220369_)
                             (let* ((_g220388220404_
                                     (lambda (_g220389220401_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g220389220401_))))
                                    (_g220387220458_
                                     (lambda (_g220389220407_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g220389220407_))
                                           (let ((_g225934_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g220389220407_
                                                     '0))))
                                             (begin
                                               (let ((_g225935_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g225934_)
                                                            (##vector-length
                                                             _g225934_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g225935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g225935_)))
                                               (let ((_target220391220409_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g225934_
                                                         0)))
                                                     (_tl220393220411_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g225934_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl220393220411_))
                                                     (letrec ((_loop220394220414_
                                                               (lambda (_hd220392220417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr220398220419_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd220392220417_))
                             (let ((_e220395220422_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd220392220417_))))
                               (let ((_lp-hd220396220425_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e220395220422_)))
                                     (_lp-tl220397220427_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e220395220422_))))
                                 (let ((__tmp225942
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd220396220425_
                                                _expr220398220419_))))
                                   (declare (not safe))
                                   (_loop220394220414_
                                    _lp-tl220397220427_
                                    __tmp225942))))
                             (let ((_expr220399220430_
                                    (reverse _expr220398220419_)))
                               ((lambda (_L220433_)
                                  (let ()
                                    (let* ((_body220446_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args220266_))
                                                 _L220366_))
                                           (__tmp225936
                                            (let ((__tmp225937
                                                   (let ((__tmp225938
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L220433_
                                                               _L220368_))
                                                            (let ((__tmp225939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g220447220451_
                                    _g220448220453_
                                    _g220449220455_)
                             (let ((__tmp225940
                                    (let ((__tmp225941
                                           (let ()
                                             (declare (not safe))
                                             (cons _g220447220451_ '()))))
                                      (declare (not safe))
                                      (cons _g220448220453_ __tmp225941))))
                               (declare (not safe))
                               (cons __tmp225940 _g220449220455_)))))
                      (declare (not safe))
                      (foldr2 __tmp225939 '() _L220433_ _L220368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp225938
                                                           _body220446_))))
                                              (declare (not safe))
                                              (cons _L220369_ __tmp225937))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp225936
                                       _stx220265_))))
                                _expr220399220430_))))))
               (let ()
                 (declare (not safe))
                 (_loop220394220414_ _target220391220409_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g220388220404_
                                                        _g220389220407_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g220388220404_
                                              _g220389220407_)))))
                                    (__tmp225943
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220266_))
                                          (let ((__tmp225944
                                                 (lambda (_g220460220463_
                                                          _g220461220465_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g220460220463_
                                                           _g220461220465_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp225944
                                                    '()
                                                    _L220367_)))))
                               (declare (not safe))
                               (_g220387220458_ __tmp225943)))
                           _tl220277220319_
                           _expr220289220361_
                           _hd220290220363_
                           _hd220275220309_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop220283220327_
                                                     _target220280220322_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220268220301_
                                                   _g220269220304_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220268220301_ _g220269220304_)))))
                              (let ()
                                (declare (not safe))
                                (_g220268220301_ _g220269220304_)))))
                      (let ()
                        (declare (not safe))
                        (_g220268220301_ _g220269220304_))))))
          (declare (not safe))
          (_g220267220468_ _stx220265_))))
    (define gxc#xform-operands
      (lambda (_stx220221_ . _args220222_)
        (let* ((_g220224220235_
                (lambda (_g220225220232_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220225220232_))))
               (_g220223220262_
                (lambda (_g220225220238_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220225220238_))
                      (let ((_e220230220240_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220225220238_))))
                        (let ((_hd220229220243_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220230220240_)))
                              (_tl220228220245_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220230220240_))))
                          ((lambda (_L220248_ _L220249_)
                             (let* ((_rands220260_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220222_))
                                          _L220248_))
                                    (__tmp225947
                                     (let ()
                                       (declare (not safe))
                                       (cons _L220249_ _rands220260_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp225947
                                _stx220221_)))
                           _tl220228220245_
                           _hd220229220243_)))
                      (let ()
                        (declare (not safe))
                        (_g220224220235_ _g220225220238_))))))
          (declare (not safe))
          (_g220223220262_ _stx220221_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx220142_ . _args220143_)
        (let* ((_g220145220162_
                (lambda (_g220146220159_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220146220159_))))
               (_g220144220218_
                (lambda (_g220146220165_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220146220165_))
                      (let ((_e220151220167_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220146220165_))))
                        (let ((_hd220150220170_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220151220167_)))
                              (_tl220149220172_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220151220167_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220149220172_))
                              (let ((_e220154220175_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220149220172_))))
                                (let ((_hd220153220178_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220154220175_)))
                                      (_tl220152220180_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220154220175_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220152220180_))
                                      (let ((_e220157220183_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220152220180_))))
                                        (let ((_hd220156220186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220157220183_)))
                                              (_tl220155220188_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220157220183_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220155220188_))
                                              ((lambda (_L220191_ _L220192_)
                                                 (let* ((_expr220216_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220143_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220191_))
                     (let ((_arg1220207_ (car _args220143_))
                           (_rest220209_ (cdr _args220143_)))
                       (if (let () (declare (not safe)) (null? _rest220209_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220191_ _arg1220207_))
                           (let ((_arg2220212_ (car _rest220209_))
                                 (_rest220214_ (cdr _rest220209_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220214_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220191_
                                    _arg1220207_
                                    _arg2220212_))
                                 (apply gxc#compile-e
                                        _L220191_
                                        _arg1220207_
                                        _arg2220212_
                                        _rest220214_)))))))
                (__tmp225948
                 (let ((__tmp225949
                        (let ((__tmp225950
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220216_ '()))))
                          (declare (not safe))
                          (cons _L220192_ __tmp225950))))
                   (declare (not safe))
                   (cons '%#set! __tmp225949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225948
                                                    _stx220142_)))
                                               _hd220156220186_
                                               _hd220153220178_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220145220162_
                                                 _g220146220165_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220145220162_ _g220146220165_)))))
                              (let ()
                                (declare (not safe))
                                (_g220145220162_ _g220146220165_)))))
                      (let ()
                        (declare (not safe))
                        (_g220145220162_ _g220146220165_))))))
          (declare (not safe))
          (_g220144220218_ _stx220142_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx220073_)
        (let* ((_g220075220092_
                (lambda (_g220076220089_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220076220089_))))
               (_g220074220139_
                (lambda (_g220076220095_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220076220095_))
                      (let ((_e220081220097_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220076220095_))))
                        (let ((_hd220080220100_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220081220097_)))
                              (_tl220079220102_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220081220097_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220079220102_))
                              (let ((_e220084220105_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220079220102_))))
                                (let ((_hd220083220108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220084220105_)))
                                      (_tl220082220110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220084220105_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220082220110_))
                                      (let ((_e220087220113_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220082220110_))))
                                        (let ((_hd220086220116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220087220113_)))
                                              (_tl220085220118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220087220113_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220085220118_))
                                              ((lambda (_L220121_ _L220122_)
                                                 (let ((_sym220137_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L220122_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym220137_))
                                                   (let ((__tmp225951
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp225951
                                                      _sym220137_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L220121_))))
                                               _hd220086220116_
                                               _hd220083220108_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220075220092_
                                                 _g220076220095_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220075220092_ _g220076220095_)))))
                              (let ()
                                (declare (not safe))
                                (_g220075220092_ _g220076220095_)))))
                      (let ()
                        (declare (not safe))
                        (_g220075220092_ _g220076220095_))))))
          (declare (not safe))
          (_g220074220139_ _stx220073_))))
    (define gxc#collect-methods-call%
      (lambda (_stx219627_)
        (let* ((___stx225639225640_ _stx219627_)
               (_g219631219733_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx225639225640_)))))
          (let ((___kont225641225642_
                 (lambda (_L220023_ _L220024_ _L220025_ _L220026_ _L220027_)
                   (let ((__tmp225952
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L220024_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp225952))))
                (___kont225643225644_
                 (lambda (_L219849_ _L219850_ _L219851_ _L219852_)
                   (let ((__tmp225953
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L219849_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp225953))))
                (___kont225645225646_ (lambda () '#!void)))
            (let ((___match225774225775_
                   (lambda (_e219640219895_
                            _hd219639219898_
                            _tl219638219900_
                            _e219643219903_
                            _hd219642219906_
                            _tl219641219908_
                            _e219646219911_
                            _hd219645219914_
                            _tl219644219916_
                            _e219649219919_
                            _hd219648219922_
                            _tl219647219924_
                            _e219652219927_
                            _hd219651219930_
                            _tl219650219932_
                            _e219655219935_
                            _hd219654219938_
                            _tl219653219940_
                            _e219658219943_
                            _hd219657219946_
                            _tl219656219948_
                            _e219661219951_
                            _hd219660219954_
                            _tl219659219956_
                            _e219664219959_
                            _hd219663219962_
                            _tl219662219964_
                            _e219667219967_
                            _hd219666219970_
                            _tl219665219972_
                            _e219670219975_
                            _hd219669219978_
                            _tl219668219980_
                            _e219673219983_
                            _hd219672219986_
                            _tl219671219988_
                            _e219676219991_
                            _hd219675219994_
                            _tl219674219996_
                            _e219679219999_
                            _hd219678220002_
                            _tl219677220004_
                            _e219682220007_
                            _hd219681220010_
                            _tl219680220012_
                            _e219685220015_
                            _hd219684220018_
                            _tl219683220020_)
                     (let ((_L220023_ _hd219684220018_)
                           (_L220024_ _hd219675219994_)
                           (_L220025_ _hd219666219970_)
                           (_L220026_ _hd219657219946_)
                           (_L220027_ _hd219648219922_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L220027_
                              'bind-method!))
                           (___kont225641225642_
                            _L220023_
                            _L220024_
                            _L220025_
                            _L220026_
                            _L220027_)
                           (___kont225645225646_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx225639225640_))
                  (let ((_e219640219895_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx225639225640_))))
                    (let ((_tl219638219900_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219640219895_)))
                          (_hd219639219898_
                           (let ()
                             (declare (not safe))
                             (##car _e219640219895_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219638219900_))
                          (let ((_e219643219903_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219638219900_))))
                            (let ((_tl219641219908_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219643219903_)))
                                  (_hd219642219906_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219643219903_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219642219906_))
                                  (let ((_e219646219911_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219642219906_))))
                                    (let ((_tl219644219916_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219646219911_)))
                                          (_hd219645219914_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219646219911_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd219645219914_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd219645219914_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219644219916_))
                                                  (let ((_e219649219919_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219644219916_))))
                                                    (let ((_tl219647219924_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219649219919_)))
                                                          (_hd219648219922_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219649219919_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219647219924_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219641219908_))
                      (let ((_e219652219927_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219641219908_))))
                        (let ((_tl219650219932_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219652219927_)))
                              (_hd219651219930_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219652219927_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219651219930_))
                              (let ((_e219655219935_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219651219930_))))
                                (let ((_tl219653219940_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219655219935_)))
                                      (_hd219654219938_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219655219935_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd219654219938_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd219654219938_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl219653219940_))
                                              (let ((_e219658219943_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl219653219940_))))
                                                (let ((_tl219656219948_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219658219943_)))
                                                      (_hd219657219946_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219658219943_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219656219948_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl219650219932_))
                                                          (let ((_e219661219951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl219650219932_))))
                    (let ((_tl219659219956_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219661219951_)))
                          (_hd219660219954_
                           (let ()
                             (declare (not safe))
                             (##car _e219661219951_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd219660219954_))
                          (let ((_e219664219959_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd219660219954_))))
                            (let ((_tl219662219964_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219664219959_)))
                                  (_hd219663219962_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219664219959_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd219663219962_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd219663219962_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl219662219964_))
                                          (let ((_e219667219967_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl219662219964_))))
                                            (let ((_tl219665219972_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219667219967_)))
                                                  (_hd219666219970_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219667219967_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl219665219972_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl219659219956_))
                                                      (let ((_e219670219975_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl219659219956_))))
                (let ((_tl219668219980_
                       (let () (declare (not safe)) (##cdr _e219670219975_)))
                      (_hd219669219978_
                       (let () (declare (not safe)) (##car _e219670219975_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219669219978_))
                      (let ((_e219673219983_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219669219978_))))
                        (let ((_tl219671219988_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219673219983_)))
                              (_hd219672219986_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219673219983_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd219672219986_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd219672219986_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219671219988_))
                                      (let ((_e219676219991_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219671219988_))))
                                        (let ((_tl219674219996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219676219991_)))
                                              (_hd219675219994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219676219991_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219674219996_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219668219980_))
                                                  (let ((_e219679219999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219668219980_))))
                                                    (let ((_tl219677220004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219679219999_)))
                                                          (_hd219678220002_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219679219999_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd219678220002_))
                                                          (let ((_e219682220007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd219678220002_))))
                    (let ((_tl219680220012_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219682220007_)))
                          (_hd219681220010_
                           (let ()
                             (declare (not safe))
                             (##car _e219682220007_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd219681220010_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd219681220010_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219680220012_))
                                  (let ((_e219685220015_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219680220012_))))
                                    (let ((_tl219683220020_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219685220015_)))
                                          (_hd219684220018_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219685220015_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219683220020_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219677220004_))
                                              (___match225774225775_
                                               _e219640219895_
                                               _hd219639219898_
                                               _tl219638219900_
                                               _e219643219903_
                                               _hd219642219906_
                                               _tl219641219908_
                                               _e219646219911_
                                               _hd219645219914_
                                               _tl219644219916_
                                               _e219649219919_
                                               _hd219648219922_
                                               _tl219647219924_
                                               _e219652219927_
                                               _hd219651219930_
                                               _tl219650219932_
                                               _e219655219935_
                                               _hd219654219938_
                                               _tl219653219940_
                                               _e219658219943_
                                               _hd219657219946_
                                               _tl219656219948_
                                               _e219661219951_
                                               _hd219660219954_
                                               _tl219659219956_
                                               _e219664219959_
                                               _hd219663219962_
                                               _tl219662219964_
                                               _e219667219967_
                                               _hd219666219970_
                                               _tl219665219972_
                                               _e219670219975_
                                               _hd219669219978_
                                               _tl219668219980_
                                               _e219673219983_
                                               _hd219672219986_
                                               _tl219671219988_
                                               _e219676219991_
                                               _hd219675219994_
                                               _tl219674219996_
                                               _e219679219999_
                                               _hd219678220002_
                                               _tl219677220004_
                                               _e219682220007_
                                               _hd219681220010_
                                               _tl219680220012_
                                               _e219685220015_
                                               _hd219684220018_
                                               _tl219683220020_)
                                              (___kont225645225646_))
                                          (___kont225645225646_))))
                                  (___kont225645225646_))
                              (___kont225645225646_))
                          (___kont225645225646_))))
                  (___kont225645225646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219668219980_))
                                                      (if (let ((__tmp225954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp225954 'bind-method!))
                  (let ((_L219849_ _hd219675219994_)
                        (_L219850_ _hd219666219970_)
                        (_L219851_ _hd219657219946_)
                        (_L219852_ _hd219648219922_))
                    (___kont225643225644_
                     _L219849_
                     _L219850_
                     _L219851_
                     _L219852_))
                  (___kont225645225646_))
              (___kont225645225646_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225645225646_))))
                                      (___kont225645225646_))
                                  (___kont225645225646_))
                              (___kont225645225646_))))
                      (___kont225645225646_))))
              (___kont225645225646_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225645225646_))))
                                          (___kont225645225646_))
                                      (___kont225645225646_))
                                  (___kont225645225646_))))
                          (___kont225645225646_))))
                  (___kont225645225646_))
              (___kont225645225646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225645225646_))
                                          (___kont225645225646_))
                                      (___kont225645225646_))))
                              (___kont225645225646_))))
                      (___kont225645225646_))
                  (___kont225645225646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225645225646_))
                                              (___kont225645225646_))
                                          (___kont225645225646_))))
                                  (___kont225645225646_))))
                          (___kont225645225646_))))
                  (___kont225645225646_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx219574_ _id219575_ _new-id219576_)
        (let* ((_g219578219591_
                (lambda (_g219579219588_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219579219588_))))
               (_g219577219624_
                (lambda (_g219579219594_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219579219594_))
                      (let ((_e219583219596_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219579219594_))))
                        (let ((_hd219582219599_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219583219596_)))
                              (_tl219581219601_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219583219596_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219581219601_))
                              (let ((_e219586219604_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219581219601_))))
                                (let ((_hd219585219607_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219586219604_)))
                                      (_tl219584219609_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219586219604_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219584219609_))
                                      ((lambda (_L219612_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L219612_
                                                _id219575_))
                                             (let ((__tmp225955
                                                    (let ((__tmp225956
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id219576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp225956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp225955
                                                _stx219574_))
                                             _stx219574_))
                                       _hd219585219607_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219578219591_ _g219579219594_)))))
                              (let ()
                                (declare (not safe))
                                (_g219578219591_ _g219579219594_)))))
                      (let ()
                        (declare (not safe))
                        (_g219578219591_ _g219579219594_))))))
          (declare (not safe))
          (_g219577219624_ _stx219574_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx219515_ _subst219516_)
        (let* ((_g219518219531_
                (lambda (_g219519219528_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219519219528_))))
               (_g219517219571_
                (lambda (_g219519219534_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219519219534_))
                      (let ((_e219523219536_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219519219534_))))
                        (let ((_hd219522219539_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219523219536_)))
                              (_tl219521219541_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219523219536_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219521219541_))
                              (let ((_e219526219544_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219521219541_))))
                                (let ((_hd219525219547_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219526219544_)))
                                      (_tl219524219549_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219526219544_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219524219549_))
                                      ((lambda (_L219552_)
                                         (let ((_$e219566_
                                                (let ((__tmp225957
                                                       (lambda (_sub219564_)
                                                         (let ((__tmp225958
                                                                (car _sub219564_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L219552_
                                                            __tmp225958)))))
                                                  (declare (not safe))
                                                  (find __tmp225957
                                                        _subst219516_))))
                                           (if _$e219566_
                                               ((lambda (_sub219569_)
                                                  (let ((__tmp225959
                                                         (let ((__tmp225960
                                                                (let ((__tmp225961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub219569_)))
                          (declare (not safe))
                          (cons __tmp225961 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp225960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp225959
                                                     _stx219515_)))
                                                _$e219566_)
                                               _stx219515_)))
                                       _hd219525219547_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219518219531_ _g219519219534_)))))
                              (let ()
                                (declare (not safe))
                                (_g219518219531_ _g219519219534_)))))
                      (let ()
                        (declare (not safe))
                        (_g219518219531_ _g219519219534_))))))
          (declare (not safe))
          (_g219517219571_ _stx219515_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx219443_ _id219444_ _new-id219445_)
        (let* ((_g219447219464_
                (lambda (_g219448219461_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219448219461_))))
               (_g219446219512_
                (lambda (_g219448219467_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219448219467_))
                      (let ((_e219453219469_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219448219467_))))
                        (let ((_hd219452219472_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219453219469_)))
                              (_tl219451219474_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219453219469_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219451219474_))
                              (let ((_e219456219477_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219451219474_))))
                                (let ((_hd219455219480_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219456219477_)))
                                      (_tl219454219482_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219456219477_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219454219482_))
                                      (let ((_e219459219485_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219454219482_))))
                                        (let ((_hd219458219488_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219459219485_)))
                                              (_tl219457219490_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219459219485_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219457219490_))
                                              ((lambda (_L219493_ _L219494_)
                                                 (let ((_new-expr219509_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L219493_
                                                           _id219444_
                                                           _new-id219445_)))
                                                       (_new-xid219510_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L219494_
                                                               _id219444_))
                                                            _new-id219445_
                                                            _L219494_)))
                                                   (let ((__tmp225962
                                                          (let ((__tmp225963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp225964
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219509_ '()))))
                           (declare (not safe))
                           (cons _new-xid219510_ __tmp225964))))
                    (declare (not safe))
                    (cons '%#set! __tmp225963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp225962
                                                      _stx219443_))))
                                               _hd219458219488_
                                               _hd219455219480_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219447219464_
                                                 _g219448219467_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219447219464_ _g219448219467_)))))
                              (let ()
                                (declare (not safe))
                                (_g219447219464_ _g219448219467_)))))
                      (let ()
                        (declare (not safe))
                        (_g219447219464_ _g219448219467_))))))
          (declare (not safe))
          (_g219446219512_ _stx219443_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx219367_ _subst219368_)
        (let* ((_g219370219387_
                (lambda (_g219371219384_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219371219384_))))
               (_g219369219440_
                (lambda (_g219371219390_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219371219390_))
                      (let ((_e219376219392_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219371219390_))))
                        (let ((_hd219375219395_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219376219392_)))
                              (_tl219374219397_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219376219392_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219374219397_))
                              (let ((_e219379219400_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219374219397_))))
                                (let ((_hd219378219403_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219379219400_)))
                                      (_tl219377219405_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219379219400_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219377219405_))
                                      (let ((_e219382219408_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219377219405_))))
                                        (let ((_hd219381219411_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219382219408_)))
                                              (_tl219380219413_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219382219408_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219380219413_))
                                              ((lambda (_L219416_ _L219417_)
                                                 (let ((_new-expr219437_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L219416_
                                                           _subst219368_)))
                                                       (_new-xid219438_
                                                        (let ((_$e219434_
                                                               (let ((__tmp225965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub219432_)
                                (let ((__tmp225966 (car _sub219432_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L219417_
                                   __tmp225966)))))
                         (declare (not safe))
                         (find __tmp225965 _subst219368_))))
                  (if _$e219434_ (cdr _$e219434_) _L219417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp225967
                                                          (let ((__tmp225968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp225969
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219437_ '()))))
                           (declare (not safe))
                           (cons _new-xid219438_ __tmp225969))))
                    (declare (not safe))
                    (cons '%#set! __tmp225968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp225967
                                                      _stx219367_))))
                                               _hd219381219411_
                                               _hd219378219403_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219370219387_
                                                 _g219371219390_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219370219387_ _g219371219390_)))))
                              (let ()
                                (declare (not safe))
                                (_g219370219387_ _g219371219390_)))))
                      (let ()
                        (declare (not safe))
                        (_g219370219387_ _g219371219390_))))))
          (declare (not safe))
          (_g219369219440_ _stx219367_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx219313_ _ht219314_)
        (let* ((_g219316219329_
                (lambda (_g219317219326_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219317219326_))))
               (_g219315219364_
                (lambda (_g219317219332_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219317219332_))
                      (let ((_e219321219334_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219317219332_))))
                        (let ((_hd219320219337_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219321219334_)))
                              (_tl219319219339_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219321219334_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219319219339_))
                              (let ((_e219324219342_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219319219339_))))
                                (let ((_hd219323219345_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219324219342_)))
                                      (_tl219322219347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219324219342_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219322219347_))
                                      ((lambda (_L219350_)
                                         (let ((_eid219362_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L219350_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht219314_
                                            _eid219362_
                                            1+
                                            '0)))
                                       _hd219323219345_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219316219329_ _g219317219332_)))))
                              (let ()
                                (declare (not safe))
                                (_g219316219329_ _g219317219332_)))))
                      (let ()
                        (declare (not safe))
                        (_g219316219329_ _g219317219332_))))))
          (declare (not safe))
          (_g219315219364_ _stx219313_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx219243_ _ht219244_)
        (let* ((_g219246219263_
                (lambda (_g219247219260_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219247219260_))))
               (_g219245219310_
                (lambda (_g219247219266_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219247219266_))
                      (let ((_e219252219268_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219247219266_))))
                        (let ((_hd219251219271_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219252219268_)))
                              (_tl219250219273_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219252219268_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219250219273_))
                              (let ((_e219255219276_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219250219273_))))
                                (let ((_hd219254219279_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219255219276_)))
                                      (_tl219253219281_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219255219276_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219253219281_))
                                      (let ((_e219258219284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219253219281_))))
                                        (let ((_hd219257219287_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219258219284_)))
                                              (_tl219256219289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219258219284_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219256219289_))
                                              ((lambda (_L219292_ _L219293_)
                                                 (let ((_eid219308_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L219293_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht219244_
                                                      _eid219308_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L219292_
                                                      _ht219244_))))
                                               _hd219257219287_
                                               _hd219254219279_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219246219263_
                                                 _g219247219266_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219246219263_ _g219247219266_)))))
                              (let ()
                                (declare (not safe))
                                (_g219246219263_ _g219247219266_)))))
                      (let ()
                        (declare (not safe))
                        (_g219246219263_ _g219247219266_))))))
          (declare (not safe))
          (_g219245219310_ _stx219243_))))
    (define gxc#find-body%
      (lambda (_stx219156_ _arg219157_)
        (let* ((_g219159219178_
                (lambda (_g219160219175_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219160219175_))))
               (_g219158219240_
                (lambda (_g219160219181_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219160219181_))
                      (let ((_e219164219183_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219160219181_))))
                        (let ((_hd219163219186_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219164219183_)))
                              (_tl219162219188_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219164219183_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl219162219188_))
                              (let ((_g225970_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl219162219188_
                                        '0))))
                                (begin
                                  (let ((_g225971_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g225970_)
                                               (##vector-length _g225970_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g225971_ 2)))
                                        (error "Context expects 2 values"
                                               _g225971_)))
                                  (let ((_target219165219191_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225970_ 0)))
                                        (_tl219167219193_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225970_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219167219193_))
                                        (letrec ((_loop219168219196_
                                                  (lambda (_hd219166219199_
                                                           _expr219172219201_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd219166219199_))
                                                        (let ((_e219169219204_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd219166219199_))))
                  (let ((_lp-hd219170219207_
                         (let () (declare (not safe)) (##car _e219169219204_)))
                        (_lp-tl219171219209_
                         (let ()
                           (declare (not safe))
                           (##cdr _e219169219204_))))
                    (let ((__tmp225975
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd219170219207_ _expr219172219201_))))
                      (declare (not safe))
                      (_loop219168219196_ _lp-tl219171219209_ __tmp225975))))
                (let ((_expr219173219212_ (reverse _expr219172219201_)))
                  ((lambda (_L219215_)
                     (let ((__tmp225974
                            (lambda (_g219228219230_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g219228219230_
                                 _arg219157_))))
                           (__tmp225972
                            (let ((__tmp225973
                                   (lambda (_g219232219235_ _g219233219237_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g219232219235_
                                             _g219233219237_)))))
                              (declare (not safe))
                              (foldr1 __tmp225973 '() _L219215_))))
                       (declare (not safe))
                       (ormap1 __tmp225974 __tmp225972)))
                   _expr219173219212_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop219168219196_
                                             _target219165219191_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g219159219178_
                                           _g219160219181_))))))
                              (let ()
                                (declare (not safe))
                                (_g219159219178_ _g219160219181_)))))
                      (let ()
                        (declare (not safe))
                        (_g219159219178_ _g219160219181_))))))
          (declare (not safe))
          (_g219158219240_ _stx219156_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx219088_ _arg219089_)
        (let* ((_g219091219108_
                (lambda (_g219092219105_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219092219105_))))
               (_g219090219153_
                (lambda (_g219092219111_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219092219111_))
                      (let ((_e219097219113_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219092219111_))))
                        (let ((_hd219096219116_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219097219113_)))
                              (_tl219095219118_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219097219113_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219095219118_))
                              (let ((_e219100219121_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219095219118_))))
                                (let ((_hd219099219124_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219100219121_)))
                                      (_tl219098219126_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219100219121_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219098219126_))
                                      (let ((_e219103219129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219098219126_))))
                                        (let ((_hd219102219132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219103219129_)))
                                              (_tl219101219134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219103219129_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219101219134_))
                                              ((lambda (_L219137_ _L219138_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L219137_
                                                    _arg219089_)))
                                               _hd219102219132_
                                               _hd219099219124_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219091219108_
                                                 _g219092219111_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219091219108_ _g219092219111_)))))
                              (let ()
                                (declare (not safe))
                                (_g219091219108_ _g219092219111_)))))
                      (let ()
                        (declare (not safe))
                        (_g219091219108_ _g219092219111_))))))
          (declare (not safe))
          (_g219090219153_ _stx219088_))))
    (define gxc#find-lambda%
      (lambda (_stx219020_ _arg219021_)
        (let* ((_g219023219040_
                (lambda (_g219024219037_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219024219037_))))
               (_g219022219085_
                (lambda (_g219024219043_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219024219043_))
                      (let ((_e219029219045_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219024219043_))))
                        (let ((_hd219028219048_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219029219045_)))
                              (_tl219027219050_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219029219045_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219027219050_))
                              (let ((_e219032219053_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219027219050_))))
                                (let ((_hd219031219056_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219032219053_)))
                                      (_tl219030219058_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219032219053_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219030219058_))
                                      (let ((_e219035219061_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219030219058_))))
                                        (let ((_hd219034219064_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219035219061_)))
                                              (_tl219033219066_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219035219061_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219033219066_))
                                              ((lambda (_L219069_ _L219070_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L219069_
                                                    _arg219021_)))
                                               _hd219034219064_
                                               _hd219031219056_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219023219040_
                                                 _g219024219043_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219023219040_ _g219024219043_)))))
                              (let ()
                                (declare (not safe))
                                (_g219023219040_ _g219024219043_)))))
                      (let ()
                        (declare (not safe))
                        (_g219023219040_ _g219024219043_))))))
          (declare (not safe))
          (_g219022219085_ _stx219020_))))
    (define gxc#find-case-lambda%
      (lambda (_stx218902_ _arg218903_)
        (let* ((_g218905218933_
                (lambda (_g218906218930_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218906218930_))))
               (_g218904219017_
                (lambda (_g218906218936_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218906218936_))
                      (let ((_e218911218938_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218906218936_))))
                        (let ((_hd218910218941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218911218938_)))
                              (_tl218909218943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218911218938_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl218909218943_))
                              (let ((_g225976_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl218909218943_
                                        '0))))
                                (begin
                                  (let ((_g225977_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g225976_)
                                               (##vector-length _g225976_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g225977_ 2)))
                                        (error "Context expects 2 values"
                                               _g225977_)))
                                  (let ((_target218912218946_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225976_ 0)))
                                        (_tl218914218948_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225976_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl218914218948_))
                                        (letrec ((_loop218915218951_
                                                  (lambda (_hd218913218954_
                                                           _body218919218956_
                                                           _hd218920218958_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd218913218954_))
                                                        (let ((_e218916218961_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd218913218954_))))
                  (let ((_lp-hd218917218964_
                         (let () (declare (not safe)) (##car _e218916218961_)))
                        (_lp-tl218918218966_
                         (let ()
                           (declare (not safe))
                           (##cdr _e218916218961_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd218917218964_))
                        (let ((_e218925218969_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd218917218964_))))
                          (let ((_hd218924218972_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218925218969_)))
                                (_tl218923218974_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218925218969_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl218923218974_))
                                (let ((_e218928218977_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl218923218974_))))
                                  (let ((_hd218927218980_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e218928218977_)))
                                        (_tl218926218982_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e218928218977_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl218926218982_))
                                        (let ((__tmp225982
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd218927218980_
                                                       _body218919218956_)))
                                              (__tmp225981
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd218924218972_
                                                       _hd218920218958_))))
                                          (declare (not safe))
                                          (_loop218915218951_
                                           _lp-tl218918218966_
                                           __tmp225982
                                           __tmp225981))
                                        (let ()
                                          (declare (not safe))
                                          (_g218905218933_ _g218906218936_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g218905218933_ _g218906218936_)))))
                        (let ()
                          (declare (not safe))
                          (_g218905218933_ _g218906218936_)))))
                (let ((_body218921218985_ (reverse _body218919218956_))
                      (_hd218922218987_ (reverse _hd218920218958_)))
                  ((lambda (_L218990_ _L218991_)
                     (let ((__tmp225980
                            (lambda (_g219005219007_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g219005219007_
                                 _arg218903_))))
                           (__tmp225978
                            (let ((__tmp225979
                                   (lambda (_g219009219012_ _g219010219014_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g219009219012_
                                             _g219010219014_)))))
                              (declare (not safe))
                              (foldr1 __tmp225979 '() _L218990_))))
                       (declare (not safe))
                       (ormap1 __tmp225980 __tmp225978)))
                   _body218921218985_
                   _hd218922218987_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop218915218951_
                                             _target218912218946_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g218905218933_
                                           _g218906218936_))))))
                              (let ()
                                (declare (not safe))
                                (_g218905218933_ _g218906218936_)))))
                      (let ()
                        (declare (not safe))
                        (_g218905218933_ _g218906218936_))))))
          (declare (not safe))
          (_g218904219017_ _stx218902_))))
    (define gxc#find-let-values%
      (lambda (_stx218752_ _arg218753_)
        (let* ((_g218755218790_
                (lambda (_g218756218787_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218756218787_))))
               (_g218754218899_
                (lambda (_g218756218793_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218756218793_))
                      (let ((_e218762218795_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218756218793_))))
                        (let ((_hd218761218798_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218762218795_)))
                              (_tl218760218800_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218762218795_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218760218800_))
                              (let ((_e218765218803_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218760218800_))))
                                (let ((_hd218764218806_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218765218803_)))
                                      (_tl218763218808_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218765218803_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd218764218806_))
                                      (let ((_g225983_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd218764218806_
                                                '0))))
                                        (begin
                                          (let ((_g225984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g225983_)
                                                       (##vector-length
                                                        _g225983_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g225984_ 2)))
                                                (error "Context expects 2 values"
                                                       _g225984_)))
                                          (let ((_target218766218811_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g225983_ 0)))
                                                (_tl218768218813_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g225983_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl218768218813_))
                                                (letrec ((_loop218769218816_
                                                          (lambda (_hd218767218819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr218773218821_
                           _bind218774218823_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd218767218819_))
                        (let ((_e218770218826_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd218767218819_))))
                          (let ((_lp-hd218771218829_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218770218826_)))
                                (_lp-tl218772218831_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218770218826_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd218771218829_))
                                (let ((_e218779218834_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd218771218829_))))
                                  (let ((_hd218778218837_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e218779218834_)))
                                        (_tl218777218839_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e218779218834_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl218777218839_))
                                        (let ((_e218782218842_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl218777218839_))))
                                          (let ((_hd218781218845_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e218782218842_)))
                                                (_tl218780218847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e218782218842_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl218780218847_))
                                                (let ((__tmp225989
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd218781218845_
                                                               _expr218773218821_)))
                                                      (__tmp225988
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd218778218837_
                                                               _bind218774218823_))))
                                                  (declare (not safe))
                                                  (_loop218769218816_
                                                   _lp-tl218772218831_
                                                   __tmp225989
                                                   __tmp225988))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g218755218790_
                                                   _g218756218793_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g218755218790_ _g218756218793_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g218755218790_ _g218756218793_)))))
                        (let ((_expr218775218850_ (reverse _expr218773218821_))
                              (_bind218776218852_
                               (reverse _bind218774218823_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218763218808_))
                              (let ((_e218785218855_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218763218808_))))
                                (let ((_hd218784218858_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218785218855_)))
                                      (_tl218783218860_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218785218855_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218783218860_))
                                      ((lambda (_L218863_ _L218864_ _L218865_)
                                         (let ((_$e218896_
                                                (let ((__tmp225987
                                                       (lambda (_g218884218886_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g218884218886_
                                                            _arg218753_))))
                                                      (__tmp225985
                                                       (let ((__tmp225986
                                                              (lambda (_g218888218891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g218889218893_)
                        (let ()
                          (declare (not safe))
                          (cons _g218888218891_ _g218889218893_)))))
                 (declare (not safe))
                 (foldr1 __tmp225986 '() _L218864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp225987
                                                          __tmp225985))))
                                           (if _$e218896_
                                               _$e218896_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L218863_
                                                  _arg218753_)))))
                                       _hd218784218858_
                                       _expr218775218850_
                                       _bind218776218852_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218755218790_ _g218756218793_)))))
                              (let ()
                                (declare (not safe))
                                (_g218755218790_ _g218756218793_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop218769218816_
                                                     _target218766218811_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g218755218790_
                                                   _g218756218793_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218755218790_ _g218756218793_)))))
                              (let ()
                                (declare (not safe))
                                (_g218755218790_ _g218756218793_)))))
                      (let ()
                        (declare (not safe))
                        (_g218755218790_ _g218756218793_))))))
          (declare (not safe))
          (_g218754218899_ _stx218752_))))
    (define gxc#find-setq%
      (lambda (_stx218684_ _arg218685_)
        (let* ((_g218687218704_
                (lambda (_g218688218701_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218688218701_))))
               (_g218686218749_
                (lambda (_g218688218707_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218688218707_))
                      (let ((_e218693218709_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218688218707_))))
                        (let ((_hd218692218712_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218693218709_)))
                              (_tl218691218714_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218693218709_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218691218714_))
                              (let ((_e218696218717_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218691218714_))))
                                (let ((_hd218695218720_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218696218717_)))
                                      (_tl218694218722_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218696218717_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218694218722_))
                                      (let ((_e218699218725_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218694218722_))))
                                        (let ((_hd218698218728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218699218725_)))
                                              (_tl218697218730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218699218725_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218697218730_))
                                              ((lambda (_L218733_ _L218734_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L218733_
                                                    _arg218685_)))
                                               _hd218698218728_
                                               _hd218695218720_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218687218704_
                                                 _g218688218707_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218687218704_ _g218688218707_)))))
                              (let ()
                                (declare (not safe))
                                (_g218687218704_ _g218688218707_)))))
                      (let ()
                        (declare (not safe))
                        (_g218687218704_ _g218688218707_))))))
          (declare (not safe))
          (_g218686218749_ _stx218684_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx218628_ _ids218629_)
        (let* ((_g218631218644_
                (lambda (_g218632218641_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218632218641_))))
               (_g218630218681_
                (lambda (_g218632218647_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218632218647_))
                      (let ((_e218636218649_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218632218647_))))
                        (let ((_hd218635218652_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218636218649_)))
                              (_tl218634218654_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218636218649_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218634218654_))
                              (let ((_e218639218657_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218634218654_))))
                                (let ((_hd218638218660_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218639218657_)))
                                      (_tl218637218662_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218639218657_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218637218662_))
                                      ((lambda (_L218665_)
                                         (let ((__tmp225990
                                                (lambda (_g218676218678_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L218665_
                                                     _g218676218678_)))))
                                           (declare (not safe))
                                           (find __tmp225990 _ids218629_)))
                                       _hd218638218660_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218631218644_ _g218632218647_)))))
                              (let ()
                                (declare (not safe))
                                (_g218631218644_ _g218632218647_)))))
                      (let ()
                        (declare (not safe))
                        (_g218631218644_ _g218632218647_))))))
          (declare (not safe))
          (_g218630218681_ _stx218628_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx218552_ _ids218553_)
        (let* ((_g218555218572_
                (lambda (_g218556218569_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218556218569_))))
               (_g218554218625_
                (lambda (_g218556218575_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218556218575_))
                      (let ((_e218561218577_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218556218575_))))
                        (let ((_hd218560218580_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218561218577_)))
                              (_tl218559218582_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218561218577_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218559218582_))
                              (let ((_e218564218585_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218559218582_))))
                                (let ((_hd218563218588_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218564218585_)))
                                      (_tl218562218590_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218564218585_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218562218590_))
                                      (let ((_e218567218593_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218562218590_))))
                                        (let ((_hd218566218596_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218567218593_)))
                                              (_tl218565218598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218567218593_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218565218598_))
                                              ((lambda (_L218601_ _L218602_)
                                                 (let ((_$e218622_
                                                        (let ((__tmp225991
                                                               (lambda (_g218617218619_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L218602_ _g218617218619_)))))
                  (declare (not safe))
                  (find __tmp225991 _ids218553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e218622_
                                                       _$e218622_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L218601_
                                                          _ids218553_)))))
                                               _hd218566218596_
                                               _hd218563218588_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218555218572_
                                                 _g218556218575_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218555218572_ _g218556218575_)))))
                              (let ()
                                (declare (not safe))
                                (_g218555218572_ _g218556218575_)))))
                      (let ()
                        (declare (not safe))
                        (_g218555218572_ _g218556218575_))))))
          (declare (not safe))
          (_g218554218625_ _stx218552_))))))
