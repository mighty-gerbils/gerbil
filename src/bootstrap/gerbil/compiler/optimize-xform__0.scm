(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707842374)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl225008_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225008_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225008_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225008_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl225008_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl225004_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225004_ '%#declare gxc#xform-identity))
           _tbl225004_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl225000_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229822 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl225000_ __tmp229822))
           (let ((__tmp229823 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl225000_ __tmp229823))
           _tbl225000_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl224996_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224996_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224996_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224996_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224996_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl224996_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl224992_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229824 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl224992_ __tmp229824))
           (let ((__tmp229825 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl224992_ __tmp229825))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl224992_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl224988_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229826 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl224988_ __tmp229826))
           (let ()
             (declare (not safe))
             (table-set! _tbl224988_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224988_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224988_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224988_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224988_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224988_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224988_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224988_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224988_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224988_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224988_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl224988_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx224971_ . _args224973_)
        (let ((__tmp229828
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224973_)
                     (gxc#compile-e__0 _stx224971_)
                     (let ((_arg1224978_ (car _args224973_))
                           (_rest224980_ (cdr _args224973_)))
                       (if (null? _rest224980_)
                           (gxc#compile-e__1 _stx224971_ _arg1224978_)
                           (let ((_arg2224983_ (car _rest224980_))
                                 (_rest224985_ (cdr _rest224980_)))
                             (if (null? _rest224985_)
                                 (gxc#compile-e__2
                                  _stx224971_
                                  _arg1224978_
                                  _arg2224983_)
                                 (apply gxc#compile-e
                                        _stx224971_
                                        _arg1224978_
                                        _arg2224983_
                                        _rest224985_))))))))
              (__tmp229827 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp229828
           gxc#current-compile-methods
           __tmp229827))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl224968_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229829 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl224968_ __tmp229829))
           (let ()
             (declare (not safe))
             (table-set! _tbl224968_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224968_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224968_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224968_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224968_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl224968_))))
    (define gxc#apply-collect-methods
      (lambda (_stx224951_ . _args224953_)
        (let ((__tmp229831
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224953_)
                     (gxc#compile-e__0 _stx224951_)
                     (let ((_arg1224958_ (car _args224953_))
                           (_rest224960_ (cdr _args224953_)))
                       (if (null? _rest224960_)
                           (gxc#compile-e__1 _stx224951_ _arg1224958_)
                           (let ((_arg2224963_ (car _rest224960_))
                                 (_rest224965_ (cdr _rest224960_)))
                             (if (null? _rest224965_)
                                 (gxc#compile-e__2
                                  _stx224951_
                                  _arg1224958_
                                  _arg2224963_)
                                 (apply gxc#compile-e
                                        _stx224951_
                                        _arg1224958_
                                        _arg2224963_
                                        _rest224965_))))))))
              (__tmp229830 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp229831
           gxc#current-compile-methods
           __tmp229830))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl224948_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229832 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl224948_ __tmp229832))
           (let ()
             (declare (not safe))
             (table-set! _tbl224948_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224948_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224948_ '%#set! gxc#expression-subst-setq%))
           _tbl224948_))))
    (define gxc#apply-expression-subst
      (lambda (_stx224931_ . _args224933_)
        (let ((__tmp229834
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224933_)
                     (gxc#compile-e__0 _stx224931_)
                     (let ((_arg1224938_ (car _args224933_))
                           (_rest224940_ (cdr _args224933_)))
                       (if (null? _rest224940_)
                           (gxc#compile-e__1 _stx224931_ _arg1224938_)
                           (let ((_arg2224943_ (car _rest224940_))
                                 (_rest224945_ (cdr _rest224940_)))
                             (if (null? _rest224945_)
                                 (gxc#compile-e__2
                                  _stx224931_
                                  _arg1224938_
                                  _arg2224943_)
                                 (apply gxc#compile-e
                                        _stx224931_
                                        _arg1224938_
                                        _arg2224943_
                                        _rest224945_))))))))
              (__tmp229833 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp229834
           gxc#current-compile-methods
           __tmp229833))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl224928_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229835 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl224928_ __tmp229835))
           (let ()
             (declare (not safe))
             (table-set! _tbl224928_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224928_ '%#set! gxc#expression-subst*-setq%))
           _tbl224928_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx224911_ . _args224913_)
        (let ((__tmp229837
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224913_)
                     (gxc#compile-e__0 _stx224911_)
                     (let ((_arg1224918_ (car _args224913_))
                           (_rest224920_ (cdr _args224913_)))
                       (if (null? _rest224920_)
                           (gxc#compile-e__1 _stx224911_ _arg1224918_)
                           (let ((_arg2224923_ (car _rest224920_))
                                 (_rest224925_ (cdr _rest224920_)))
                             (if (null? _rest224925_)
                                 (gxc#compile-e__2
                                  _stx224911_
                                  _arg1224918_
                                  _arg2224923_)
                                 (apply gxc#compile-e
                                        _stx224911_
                                        _arg1224918_
                                        _arg2224923_
                                        _rest224925_))))))))
              (__tmp229836 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp229837
           gxc#current-compile-methods
           __tmp229836))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl224908_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229838 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl224908_ __tmp229838))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224908_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224908_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl224908_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl224904_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229839 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl224904_ __tmp229839))
           (let ()
             (declare (not safe))
             (table-set! _tbl224904_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224904_ '%#set! gxc#find-var-refs-setq%))
           _tbl224904_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx224887_ . _args224889_)
        (let ((__tmp229841
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224889_)
                     (gxc#compile-e__0 _stx224887_)
                     (let ((_arg1224894_ (car _args224889_))
                           (_rest224896_ (cdr _args224889_)))
                       (if (null? _rest224896_)
                           (gxc#compile-e__1 _stx224887_ _arg1224894_)
                           (let ((_arg2224899_ (car _rest224896_))
                                 (_rest224901_ (cdr _rest224896_)))
                             (if (null? _rest224901_)
                                 (gxc#compile-e__2
                                  _stx224887_
                                  _arg1224894_
                                  _arg2224899_)
                                 (apply gxc#compile-e
                                        _stx224887_
                                        _arg1224894_
                                        _arg2224899_
                                        _rest224901_))))))))
              (__tmp229840 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp229841
           gxc#current-compile-methods
           __tmp229840))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl224884_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229842 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl224884_ __tmp229842))
           (let ()
             (declare (not safe))
             (table-set! _tbl224884_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224884_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl224884_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx224867_ . _args224869_)
        (let ((__tmp229844
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224869_)
                     (gxc#compile-e__0 _stx224867_)
                     (let ((_arg1224874_ (car _args224869_))
                           (_rest224876_ (cdr _args224869_)))
                       (if (null? _rest224876_)
                           (gxc#compile-e__1 _stx224867_ _arg1224874_)
                           (let ((_arg2224879_ (car _rest224876_))
                                 (_rest224881_ (cdr _rest224876_)))
                             (if (null? _rest224881_)
                                 (gxc#compile-e__2
                                  _stx224867_
                                  _arg1224874_
                                  _arg2224879_)
                                 (apply gxc#compile-e
                                        _stx224867_
                                        _arg1224874_
                                        _arg2224879_
                                        _rest224881_))))))))
              (__tmp229843 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp229844
           gxc#current-compile-methods
           __tmp229843))))
    (define gxc#xform-identity
      (lambda (_stx224864_ . _args224865_) _stx224864_))
    (define gxc#xform-wrap-source
      (lambda (_stx224861_ _src-stx224862_)
        (let ((__tmp229845
               (let () (declare (not safe)) (gx#stx-source _src-stx224862_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx224861_ __tmp229845))))
    (define gxc#xform-apply-compile-e
      (lambda (_args224848_)
        (lambda (_stx224850_)
          (if (let () (declare (not safe)) (null? _args224848_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx224850_))
              (let ((_arg1224852_ (car _args224848_))
                    (_rest224854_ (cdr _args224848_)))
                (if (let () (declare (not safe)) (null? _rest224854_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx224850_ _arg1224852_))
                    (let ((_arg2224857_ (car _rest224854_))
                          (_rest224859_ (cdr _rest224854_)))
                      (if (let () (declare (not safe)) (null? _rest224859_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx224850_
                             _arg1224852_
                             _arg2224857_))
                          (apply gxc#compile-e
                                 _stx224850_
                                 _arg1224852_
                                 _arg2224857_
                                 _rest224859_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx224807_ . _args224808_)
        (let* ((_g224810224820_
                (lambda (_g224811224817_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224811224817_))))
               (_g224809224845_
                (lambda (_g224811224823_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224811224823_))
                      (let ((_e224815224825_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224811224823_))))
                        (let ((_hd224814224828_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224815224825_)))
                              (_tl224813224830_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224815224825_))))
                          ((lambda (_L224833_)
                             (let* ((_forms224843_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224808_))
                                          _L224833_))
                                    (__tmp229846
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms224843_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp229846
                                _stx224807_)))
                           _tl224813224830_)))
                      (let ()
                        (declare (not safe))
                        (_g224810224820_ _g224811224823_))))))
          (declare (not safe))
          (_g224809224845_ _stx224807_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx224765_ . _args224766_)
        (let* ((_g224768224778_
                (lambda (_g224769224775_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224769224775_))))
               (_g224767224804_
                (lambda (_g224769224781_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224769224781_))
                      (let ((_e224773224783_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224769224781_))))
                        (let ((_hd224772224786_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224773224783_)))
                              (_tl224771224788_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224773224783_))))
                          ((lambda (_L224791_)
                             (let ((__tmp229849
                                    (lambda ()
                                      (let* ((_forms224802_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args224766_))
                                                   _L224791_))
                                             (__tmp229850
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms224802_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp229850
                                         _stx224765_))))
                                   (__tmp229847
                                    (let ((__tmp229848
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp229848 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp229849
                                gx#current-expander-phi
                                __tmp229847)))
                           _tl224771224788_)))
                      (let ()
                        (declare (not safe))
                        (_g224768224778_ _g224769224781_))))))
          (declare (not safe))
          (_g224767224804_ _stx224765_))))
    (define gxc#xform-module%
      (lambda (_stx224693_ . _args224694_)
        (let* ((_g224696224710_
                (lambda (_g224697224707_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224697224707_))))
               (_g224695224762_
                (lambda (_g224697224713_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224697224713_))
                      (let ((_e224702224715_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224697224713_))))
                        (let ((_hd224701224718_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224702224715_)))
                              (_tl224700224720_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224702224715_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224700224720_))
                              (let ((_e224705224723_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224700224720_))))
                                (let ((_hd224704224726_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224705224723_)))
                                      (_tl224703224728_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224705224723_))))
                                  ((lambda (_L224731_ _L224732_)
                                     (let* ((_ctx224745_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L224732_)))
                                            (_code224747_
                                             (##structure-ref
                                              _ctx224745_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code224759_
                                             (let ((__tmp229851
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args224694_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code224747_))
                                                          (let ((_arg1224750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args224694_))
                        (_rest224752_ (cdr _args224694_)))
                    (if (let () (declare (not safe)) (null? _rest224752_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code224747_ _arg1224750_))
                        (let ((_arg2224755_ (car _rest224752_))
                              (_rest224757_ (cdr _rest224752_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest224757_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code224747_
                                 _arg1224750_
                                 _arg2224755_))
                              (apply gxc#compile-e
                                     _code224747_
                                     _arg1224750_
                                     _arg2224755_
                                     _rest224757_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp229851
                                                gx#current-expander-context
                                                _ctx224745_))))
                                       (##structure-set!
                                        _ctx224745_
                                        _code224759_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp229852
                                              (let ((__tmp229853
                                                     (let ((__tmp229854
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code224759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L224732_ __tmp229854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp229853))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp229852
                                          _stx224693_))))
                                   _tl224703224728_
                                   _hd224704224726_)))
                              (let ()
                                (declare (not safe))
                                (_g224696224710_ _g224697224713_)))))
                      (let ()
                        (declare (not safe))
                        (_g224696224710_ _g224697224713_))))))
          (declare (not safe))
          (_g224695224762_ _stx224693_))))
    (define gxc#xform-define-values%
      (lambda (_stx224614_ . _args224615_)
        (let* ((_g224617224634_
                (lambda (_g224618224631_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224618224631_))))
               (_g224616224690_
                (lambda (_g224618224637_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224618224637_))
                      (let ((_e224623224639_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224618224637_))))
                        (let ((_hd224622224642_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224623224639_)))
                              (_tl224621224644_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224623224639_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224621224644_))
                              (let ((_e224626224647_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224621224644_))))
                                (let ((_hd224625224650_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224626224647_)))
                                      (_tl224624224652_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224626224647_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224624224652_))
                                      (let ((_e224629224655_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224624224652_))))
                                        (let ((_hd224628224658_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224629224655_)))
                                              (_tl224627224660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224629224655_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224627224660_))
                                              ((lambda (_L224663_ _L224664_)
                                                 (let* ((_expr224688_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args224615_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224663_))
                     (let ((_arg1224679_ (car _args224615_))
                           (_rest224681_ (cdr _args224615_)))
                       (if (let () (declare (not safe)) (null? _rest224681_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224663_ _arg1224679_))
                           (let ((_arg2224684_ (car _rest224681_))
                                 (_rest224686_ (cdr _rest224681_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224686_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224663_
                                    _arg1224679_
                                    _arg2224684_))
                                 (apply gxc#compile-e
                                        _L224663_
                                        _arg1224679_
                                        _arg2224684_
                                        _rest224686_)))))))
                (__tmp229855
                 (let ((__tmp229856
                        (let ((__tmp229857
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224688_ '()))))
                          (declare (not safe))
                          (cons _L224664_ __tmp229857))))
                   (declare (not safe))
                   (cons '%#define-values __tmp229856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229855
                                                    _stx224614_)))
                                               _hd224628224658_
                                               _hd224625224650_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224617224634_
                                                 _g224618224637_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224617224634_ _g224618224637_)))))
                              (let ()
                                (declare (not safe))
                                (_g224617224634_ _g224618224637_)))))
                      (let ()
                        (declare (not safe))
                        (_g224617224634_ _g224618224637_))))))
          (declare (not safe))
          (_g224616224690_ _stx224614_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx224534_ . _args224535_)
        (let* ((_g224537224554_
                (lambda (_g224538224551_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224538224551_))))
               (_g224536224611_
                (lambda (_g224538224557_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224538224557_))
                      (let ((_e224543224559_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224538224557_))))
                        (let ((_hd224542224562_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224543224559_)))
                              (_tl224541224564_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224543224559_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224541224564_))
                              (let ((_e224546224567_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224541224564_))))
                                (let ((_hd224545224570_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224546224567_)))
                                      (_tl224544224572_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224546224567_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224544224572_))
                                      (let ((_e224549224575_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224544224572_))))
                                        (let ((_hd224548224578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224549224575_)))
                                              (_tl224547224580_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224549224575_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224547224580_))
                                              ((lambda (_L224583_ _L224584_)
                                                 (let ((__tmp229860
                                                        (lambda ()
                                                          (let* ((_expr224609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args224535_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L224583_))
                              (let ((_arg1224600_ (car _args224535_))
                                    (_rest224602_ (cdr _args224535_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest224602_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L224583_
                                       _arg1224600_))
                                    (let ((_arg2224605_ (car _rest224602_))
                                          (_rest224607_ (cdr _rest224602_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest224607_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L224583_
                                             _arg1224600_
                                             _arg2224605_))
                                          (apply gxc#compile-e
                                                 _L224583_
                                                 _arg1224600_
                                                 _arg2224605_
                                                 _rest224607_)))))))
                         (__tmp229861
                          (let ((__tmp229862
                                 (let ((__tmp229863
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr224609_ '()))))
                                   (declare (not safe))
                                   (cons _L224584_ __tmp229863))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp229862))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp229861 _stx224534_))))
               (__tmp229858
                (let ((__tmp229859 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp229859 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp229860
                                                    gx#current-expander-phi
                                                    __tmp229858)))
                                               _hd224548224578_
                                               _hd224545224570_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224537224554_
                                                 _g224538224557_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224537224554_ _g224538224557_)))))
                              (let ()
                                (declare (not safe))
                                (_g224537224554_ _g224538224557_)))))
                      (let ()
                        (declare (not safe))
                        (_g224537224554_ _g224538224557_))))))
          (declare (not safe))
          (_g224536224611_ _stx224534_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx224455_ . _args224456_)
        (let* ((_g224458224475_
                (lambda (_g224459224472_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224459224472_))))
               (_g224457224531_
                (lambda (_g224459224478_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224459224478_))
                      (let ((_e224464224480_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224459224478_))))
                        (let ((_hd224463224483_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224464224480_)))
                              (_tl224462224485_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224464224480_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224462224485_))
                              (let ((_e224467224488_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224462224485_))))
                                (let ((_hd224466224491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224467224488_)))
                                      (_tl224465224493_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224467224488_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224465224493_))
                                      (let ((_e224470224496_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224465224493_))))
                                        (let ((_hd224469224499_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224470224496_)))
                                              (_tl224468224501_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224470224496_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224468224501_))
                                              ((lambda (_L224504_ _L224505_)
                                                 (let* ((_expr224529_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args224456_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224504_))
                     (let ((_arg1224520_ (car _args224456_))
                           (_rest224522_ (cdr _args224456_)))
                       (if (let () (declare (not safe)) (null? _rest224522_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224504_ _arg1224520_))
                           (let ((_arg2224525_ (car _rest224522_))
                                 (_rest224527_ (cdr _rest224522_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224527_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224504_
                                    _arg1224520_
                                    _arg2224525_))
                                 (apply gxc#compile-e
                                        _L224504_
                                        _arg1224520_
                                        _arg2224525_
                                        _rest224527_)))))))
                (__tmp229864
                 (let ((__tmp229865
                        (let ((__tmp229866
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224529_ '()))))
                          (declare (not safe))
                          (cons _L224505_ __tmp229866))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp229865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229864
                                                    _stx224455_)))
                                               _hd224469224499_
                                               _hd224466224491_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224458224475_
                                                 _g224459224478_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224458224475_ _g224459224478_)))))
                              (let ()
                                (declare (not safe))
                                (_g224458224475_ _g224459224478_)))))
                      (let ()
                        (declare (not safe))
                        (_g224458224475_ _g224459224478_))))))
          (declare (not safe))
          (_g224457224531_ _stx224455_))))
    (define gxc#xform-lambda%
      (lambda (_stx224398_ . _args224399_)
        (let* ((_g224401224415_
                (lambda (_g224402224412_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224402224412_))))
               (_g224400224452_
                (lambda (_g224402224418_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224402224418_))
                      (let ((_e224407224420_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224402224418_))))
                        (let ((_hd224406224423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224407224420_)))
                              (_tl224405224425_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224407224420_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224405224425_))
                              (let ((_e224410224428_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224405224425_))))
                                (let ((_hd224409224431_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224410224428_)))
                                      (_tl224408224433_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224410224428_))))
                                  ((lambda (_L224436_ _L224437_)
                                     (let* ((_body224450_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args224399_))
                                                  _L224436_))
                                            (__tmp229867
                                             (let ((__tmp229868
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L224437_
                                                            _body224450_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp229868))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp229867
                                        _stx224398_)))
                                   _tl224408224433_
                                   _hd224409224431_)))
                              (let ()
                                (declare (not safe))
                                (_g224401224415_ _g224402224418_)))))
                      (let ()
                        (declare (not safe))
                        (_g224401224415_ _g224402224418_))))))
          (declare (not safe))
          (_g224400224452_ _stx224398_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx224311_ . _args224312_)
        (letrec ((_clause-e224314_
                  (lambda (_clause224355_)
                    (let* ((_g224357224368_
                            (lambda (_g224358224365_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g224358224365_))))
                           (_g224356224395_
                            (lambda (_g224358224371_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g224358224371_))
                                  (let ((_e224363224373_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g224358224371_))))
                                    (let ((_hd224362224376_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224363224373_)))
                                          (_tl224361224378_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224363224373_))))
                                      ((lambda (_L224381_ _L224382_)
                                         (let ((_body224393_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args224312_))
                                                     _L224381_)))
                                           (declare (not safe))
                                           (cons _L224382_ _body224393_)))
                                       _tl224361224378_
                                       _hd224362224376_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g224357224368_ _g224358224371_))))))
                      (declare (not safe))
                      (_g224356224395_ _clause224355_)))))
          (let* ((_g224316224326_
                  (lambda (_g224317224323_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g224317224323_))))
                 (_g224315224352_
                  (lambda (_g224317224329_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g224317224329_))
                        (let ((_e224321224331_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g224317224329_))))
                          (let ((_hd224320224334_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224321224331_)))
                                (_tl224319224336_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224321224331_))))
                            ((lambda (_L224339_)
                               (let* ((_clauses224350_
                                       (map _clause-e224314_ _L224339_))
                                      (__tmp229869
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses224350_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp229869
                                  _stx224311_)))
                             _tl224319224336_)))
                        (let ()
                          (declare (not safe))
                          (_g224316224326_ _g224317224329_))))))
            (declare (not safe))
            (_g224315224352_ _stx224311_)))))
    (define gxc#xform-let-values%
      (lambda (_stx224105_ . _args224106_)
        (let* ((_g224108224141_
                (lambda (_g224109224138_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224109224138_))))
               (_g224107224308_
                (lambda (_g224109224144_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224109224144_))
                      (let ((_e224116224146_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224109224144_))))
                        (let ((_hd224115224149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224116224146_)))
                              (_tl224114224151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224116224146_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224114224151_))
                              (let ((_e224119224154_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224114224151_))))
                                (let ((_hd224118224157_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224119224154_)))
                                      (_tl224117224159_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224119224154_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd224118224157_))
                                      (let ((_g229870_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd224118224157_
                                                '0))))
                                        (begin
                                          (let ((_g229871_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g229870_)
                                                       (##vector-length
                                                        _g229870_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g229871_ 2)))
                                                (error "Context expects 2 values"
                                                       _g229871_)))
                                          (let ((_target224120224162_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g229870_ 0)))
                                                (_tl224122224164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g229870_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl224122224164_))
                                                (letrec ((_loop224123224167_
                                                          (lambda (_hd224121224170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr224127224172_
                           _hd224128224174_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd224121224170_))
                        (let ((_e224124224177_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd224121224170_))))
                          (let ((_lp-hd224125224180_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224124224177_)))
                                (_lp-tl224126224182_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224124224177_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd224125224180_))
                                (let ((_e224133224185_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd224125224180_))))
                                  (let ((_hd224132224188_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e224133224185_)))
                                        (_tl224131224190_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e224133224185_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl224131224190_))
                                        (let ((_e224136224193_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl224131224190_))))
                                          (let ((_hd224135224196_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e224136224193_)))
                                                (_tl224134224198_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e224136224193_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl224134224198_))
                                                (let ((__tmp229884
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd224135224196_
                                                               _expr224127224172_)))
                                                      (__tmp229883
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd224132224188_
                                                               _hd224128224174_))))
                                                  (declare (not safe))
                                                  (_loop224123224167_
                                                   _lp-tl224126224182_
                                                   __tmp229884
                                                   __tmp229883))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224108224141_
                                                   _g224109224144_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g224108224141_ _g224109224144_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g224108224141_ _g224109224144_)))))
                        (let ((_expr224129224201_ (reverse _expr224127224172_))
                              (_hd224130224203_ (reverse _hd224128224174_)))
                          ((lambda (_L224206_ _L224207_ _L224208_ _L224209_)
                             (let* ((_g224228224244_
                                     (lambda (_g224229224241_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g224229224241_))))
                                    (_g224227224298_
                                     (lambda (_g224229224247_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g224229224247_))
                                           (let ((_g229872_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g224229224247_
                                                     '0))))
                                             (begin
                                               (let ((_g229873_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g229872_)
                                                            (##vector-length
                                                             _g229872_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g229873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g229873_)))
                                               (let ((_target224231224249_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g229872_
                                                         0)))
                                                     (_tl224233224251_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g229872_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl224233224251_))
                                                     (letrec ((_loop224234224254_
                                                               (lambda (_hd224232224257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr224238224259_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd224232224257_))
                             (let ((_e224235224262_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd224232224257_))))
                               (let ((_lp-hd224236224265_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e224235224262_)))
                                     (_lp-tl224237224267_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e224235224262_))))
                                 (let ((__tmp229880
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd224236224265_
                                                _expr224238224259_))))
                                   (declare (not safe))
                                   (_loop224234224254_
                                    _lp-tl224237224267_
                                    __tmp229880))))
                             (let ((_expr224239224270_
                                    (reverse _expr224238224259_)))
                               ((lambda (_L224273_)
                                  (let ()
                                    (let* ((_body224286_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args224106_))
                                                 _L224206_))
                                           (__tmp229874
                                            (let ((__tmp229875
                                                   (let ((__tmp229876
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L224273_
                                                               _L224208_))
                                                            (let ((__tmp229877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g224287224291_
                                    _g224288224293_
                                    _g224289224295_)
                             (let ((__tmp229878
                                    (let ((__tmp229879
                                           (let ()
                                             (declare (not safe))
                                             (cons _g224287224291_ '()))))
                                      (declare (not safe))
                                      (cons _g224288224293_ __tmp229879))))
                               (declare (not safe))
                               (cons __tmp229878 _g224289224295_)))))
                      (declare (not safe))
                      (foldr2 __tmp229877 '() _L224273_ _L224208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp229876
                                                           _body224286_))))
                                              (declare (not safe))
                                              (cons _L224209_ __tmp229875))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp229874
                                       _stx224105_))))
                                _expr224239224270_))))))
               (let ()
                 (declare (not safe))
                 (_loop224234224254_ _target224231224249_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g224228224244_
                                                        _g224229224247_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g224228224244_
                                              _g224229224247_)))))
                                    (__tmp229881
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224106_))
                                          (let ((__tmp229882
                                                 (lambda (_g224300224303_
                                                          _g224301224305_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g224300224303_
                                                           _g224301224305_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp229882
                                                    '()
                                                    _L224207_)))))
                               (declare (not safe))
                               (_g224227224298_ __tmp229881)))
                           _tl224117224159_
                           _expr224129224201_
                           _hd224130224203_
                           _hd224115224149_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop224123224167_
                                                     _target224120224162_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224108224141_
                                                   _g224109224144_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224108224141_ _g224109224144_)))))
                              (let ()
                                (declare (not safe))
                                (_g224108224141_ _g224109224144_)))))
                      (let ()
                        (declare (not safe))
                        (_g224108224141_ _g224109224144_))))))
          (declare (not safe))
          (_g224107224308_ _stx224105_))))
    (define gxc#xform-operands
      (lambda (_stx224061_ . _args224062_)
        (let* ((_g224064224075_
                (lambda (_g224065224072_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224065224072_))))
               (_g224063224102_
                (lambda (_g224065224078_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224065224078_))
                      (let ((_e224070224080_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224065224078_))))
                        (let ((_hd224069224083_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224070224080_)))
                              (_tl224068224085_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224070224080_))))
                          ((lambda (_L224088_ _L224089_)
                             (let* ((_rands224100_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224062_))
                                          _L224088_))
                                    (__tmp229885
                                     (let ()
                                       (declare (not safe))
                                       (cons _L224089_ _rands224100_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp229885
                                _stx224061_)))
                           _tl224068224085_
                           _hd224069224083_)))
                      (let ()
                        (declare (not safe))
                        (_g224064224075_ _g224065224078_))))))
          (declare (not safe))
          (_g224063224102_ _stx224061_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx223982_ . _args223983_)
        (let* ((_g223985224002_
                (lambda (_g223986223999_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223986223999_))))
               (_g223984224058_
                (lambda (_g223986224005_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223986224005_))
                      (let ((_e223991224007_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223986224005_))))
                        (let ((_hd223990224010_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223991224007_)))
                              (_tl223989224012_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223991224007_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223989224012_))
                              (let ((_e223994224015_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223989224012_))))
                                (let ((_hd223993224018_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223994224015_)))
                                      (_tl223992224020_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223994224015_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223992224020_))
                                      (let ((_e223997224023_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223992224020_))))
                                        (let ((_hd223996224026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223997224023_)))
                                              (_tl223995224028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223997224023_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223995224028_))
                                              ((lambda (_L224031_ _L224032_)
                                                 (let* ((_expr224056_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223983_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224031_))
                     (let ((_arg1224047_ (car _args223983_))
                           (_rest224049_ (cdr _args223983_)))
                       (if (let () (declare (not safe)) (null? _rest224049_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224031_ _arg1224047_))
                           (let ((_arg2224052_ (car _rest224049_))
                                 (_rest224054_ (cdr _rest224049_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224054_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224031_
                                    _arg1224047_
                                    _arg2224052_))
                                 (apply gxc#compile-e
                                        _L224031_
                                        _arg1224047_
                                        _arg2224052_
                                        _rest224054_)))))))
                (__tmp229886
                 (let ((__tmp229887
                        (let ((__tmp229888
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224056_ '()))))
                          (declare (not safe))
                          (cons _L224032_ __tmp229888))))
                   (declare (not safe))
                   (cons '%#set! __tmp229887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229886
                                                    _stx223982_)))
                                               _hd223996224026_
                                               _hd223993224018_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223985224002_
                                                 _g223986224005_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223985224002_ _g223986224005_)))))
                              (let ()
                                (declare (not safe))
                                (_g223985224002_ _g223986224005_)))))
                      (let ()
                        (declare (not safe))
                        (_g223985224002_ _g223986224005_))))))
          (declare (not safe))
          (_g223984224058_ _stx223982_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx223913_)
        (let* ((_g223915223932_
                (lambda (_g223916223929_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223916223929_))))
               (_g223914223979_
                (lambda (_g223916223935_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223916223935_))
                      (let ((_e223921223937_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223916223935_))))
                        (let ((_hd223920223940_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223921223937_)))
                              (_tl223919223942_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223921223937_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223919223942_))
                              (let ((_e223924223945_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223919223942_))))
                                (let ((_hd223923223948_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223924223945_)))
                                      (_tl223922223950_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223924223945_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223922223950_))
                                      (let ((_e223927223953_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223922223950_))))
                                        (let ((_hd223926223956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223927223953_)))
                                              (_tl223925223958_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223927223953_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223925223958_))
                                              ((lambda (_L223961_ _L223962_)
                                                 (let ((_sym223977_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L223962_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym223977_))
                                                   (let ((__tmp229889
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp229889
                                                      _sym223977_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L223961_))))
                                               _hd223926223956_
                                               _hd223923223948_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223915223932_
                                                 _g223916223935_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223915223932_ _g223916223935_)))))
                              (let ()
                                (declare (not safe))
                                (_g223915223932_ _g223916223935_)))))
                      (let ()
                        (declare (not safe))
                        (_g223915223932_ _g223916223935_))))))
          (declare (not safe))
          (_g223914223979_ _stx223913_))))
    (define gxc#collect-methods-call%
      (lambda (_stx223467_)
        (let* ((___stx229579229580_ _stx223467_)
               (_g223471223573_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx229579229580_)))))
          (let ((___kont229581229582_
                 (lambda (_L223863_ _L223864_ _L223865_ _L223866_ _L223867_)
                   (let ((__tmp229890
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L223864_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp229890))))
                (___kont229583229584_
                 (lambda (_L223689_ _L223690_ _L223691_ _L223692_)
                   (let ((__tmp229891
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L223689_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp229891))))
                (___kont229585229586_ (lambda () '#!void)))
            (let ((___match229714229715_
                   (lambda (_e223480223735_
                            _hd223479223738_
                            _tl223478223740_
                            _e223483223743_
                            _hd223482223746_
                            _tl223481223748_
                            _e223486223751_
                            _hd223485223754_
                            _tl223484223756_
                            _e223489223759_
                            _hd223488223762_
                            _tl223487223764_
                            _e223492223767_
                            _hd223491223770_
                            _tl223490223772_
                            _e223495223775_
                            _hd223494223778_
                            _tl223493223780_
                            _e223498223783_
                            _hd223497223786_
                            _tl223496223788_
                            _e223501223791_
                            _hd223500223794_
                            _tl223499223796_
                            _e223504223799_
                            _hd223503223802_
                            _tl223502223804_
                            _e223507223807_
                            _hd223506223810_
                            _tl223505223812_
                            _e223510223815_
                            _hd223509223818_
                            _tl223508223820_
                            _e223513223823_
                            _hd223512223826_
                            _tl223511223828_
                            _e223516223831_
                            _hd223515223834_
                            _tl223514223836_
                            _e223519223839_
                            _hd223518223842_
                            _tl223517223844_
                            _e223522223847_
                            _hd223521223850_
                            _tl223520223852_
                            _e223525223855_
                            _hd223524223858_
                            _tl223523223860_)
                     (let ((_L223863_ _hd223524223858_)
                           (_L223864_ _hd223515223834_)
                           (_L223865_ _hd223506223810_)
                           (_L223866_ _hd223497223786_)
                           (_L223867_ _hd223488223762_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L223867_
                              'bind-method!))
                           (___kont229581229582_
                            _L223863_
                            _L223864_
                            _L223865_
                            _L223866_
                            _L223867_)
                           (___kont229585229586_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx229579229580_))
                  (let ((_e223480223735_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx229579229580_))))
                    (let ((_tl223478223740_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223480223735_)))
                          (_hd223479223738_
                           (let ()
                             (declare (not safe))
                             (##car _e223480223735_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223478223740_))
                          (let ((_e223483223743_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223478223740_))))
                            (let ((_tl223481223748_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223483223743_)))
                                  (_hd223482223746_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223483223743_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223482223746_))
                                  (let ((_e223486223751_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223482223746_))))
                                    (let ((_tl223484223756_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223486223751_)))
                                          (_hd223485223754_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223486223751_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd223485223754_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd223485223754_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223484223756_))
                                                  (let ((_e223489223759_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223484223756_))))
                                                    (let ((_tl223487223764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223489223759_)))
                                                          (_hd223488223762_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223489223759_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223487223764_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl223481223748_))
                      (let ((_e223492223767_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl223481223748_))))
                        (let ((_tl223490223772_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223492223767_)))
                              (_hd223491223770_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223492223767_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd223491223770_))
                              (let ((_e223495223775_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd223491223770_))))
                                (let ((_tl223493223780_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223495223775_)))
                                      (_hd223494223778_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223495223775_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd223494223778_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd223494223778_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl223493223780_))
                                              (let ((_e223498223783_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl223493223780_))))
                                                (let ((_tl223496223788_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e223498223783_)))
                                                      (_hd223497223786_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e223498223783_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl223496223788_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl223490223772_))
                                                          (let ((_e223501223791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl223490223772_))))
                    (let ((_tl223499223796_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223501223791_)))
                          (_hd223500223794_
                           (let ()
                             (declare (not safe))
                             (##car _e223501223791_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd223500223794_))
                          (let ((_e223504223799_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd223500223794_))))
                            (let ((_tl223502223804_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223504223799_)))
                                  (_hd223503223802_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223504223799_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd223503223802_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd223503223802_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl223502223804_))
                                          (let ((_e223507223807_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl223502223804_))))
                                            (let ((_tl223505223812_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e223507223807_)))
                                                  (_hd223506223810_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e223507223807_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl223505223812_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl223499223796_))
                                                      (let ((_e223510223815_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl223499223796_))))
                (let ((_tl223508223820_
                       (let () (declare (not safe)) (##cdr _e223510223815_)))
                      (_hd223509223818_
                       (let () (declare (not safe)) (##car _e223510223815_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd223509223818_))
                      (let ((_e223513223823_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd223509223818_))))
                        (let ((_tl223511223828_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223513223823_)))
                              (_hd223512223826_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223513223823_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd223512223826_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd223512223826_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223511223828_))
                                      (let ((_e223516223831_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223511223828_))))
                                        (let ((_tl223514223836_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223516223831_)))
                                              (_hd223515223834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223516223831_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223514223836_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223508223820_))
                                                  (let ((_e223519223839_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223508223820_))))
                                                    (let ((_tl223517223844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223519223839_)))
                                                          (_hd223518223842_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223519223839_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd223518223842_))
                                                          (let ((_e223522223847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd223518223842_))))
                    (let ((_tl223520223852_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223522223847_)))
                          (_hd223521223850_
                           (let ()
                             (declare (not safe))
                             (##car _e223522223847_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd223521223850_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd223521223850_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl223520223852_))
                                  (let ((_e223525223855_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl223520223852_))))
                                    (let ((_tl223523223860_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223525223855_)))
                                          (_hd223524223858_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223525223855_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223523223860_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223517223844_))
                                              (___match229714229715_
                                               _e223480223735_
                                               _hd223479223738_
                                               _tl223478223740_
                                               _e223483223743_
                                               _hd223482223746_
                                               _tl223481223748_
                                               _e223486223751_
                                               _hd223485223754_
                                               _tl223484223756_
                                               _e223489223759_
                                               _hd223488223762_
                                               _tl223487223764_
                                               _e223492223767_
                                               _hd223491223770_
                                               _tl223490223772_
                                               _e223495223775_
                                               _hd223494223778_
                                               _tl223493223780_
                                               _e223498223783_
                                               _hd223497223786_
                                               _tl223496223788_
                                               _e223501223791_
                                               _hd223500223794_
                                               _tl223499223796_
                                               _e223504223799_
                                               _hd223503223802_
                                               _tl223502223804_
                                               _e223507223807_
                                               _hd223506223810_
                                               _tl223505223812_
                                               _e223510223815_
                                               _hd223509223818_
                                               _tl223508223820_
                                               _e223513223823_
                                               _hd223512223826_
                                               _tl223511223828_
                                               _e223516223831_
                                               _hd223515223834_
                                               _tl223514223836_
                                               _e223519223839_
                                               _hd223518223842_
                                               _tl223517223844_
                                               _e223522223847_
                                               _hd223521223850_
                                               _tl223520223852_
                                               _e223525223855_
                                               _hd223524223858_
                                               _tl223523223860_)
                                              (___kont229585229586_))
                                          (___kont229585229586_))))
                                  (___kont229585229586_))
                              (___kont229585229586_))
                          (___kont229585229586_))))
                  (___kont229585229586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl223508223820_))
                                                      (if (let ((__tmp229892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp229892 'bind-method!))
                  (let ((_L223689_ _hd223515223834_)
                        (_L223690_ _hd223506223810_)
                        (_L223691_ _hd223497223786_)
                        (_L223692_ _hd223488223762_))
                    (___kont229583229584_
                     _L223689_
                     _L223690_
                     _L223691_
                     _L223692_))
                  (___kont229585229586_))
              (___kont229585229586_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont229585229586_))))
                                      (___kont229585229586_))
                                  (___kont229585229586_))
                              (___kont229585229586_))))
                      (___kont229585229586_))))
              (___kont229585229586_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont229585229586_))))
                                          (___kont229585229586_))
                                      (___kont229585229586_))
                                  (___kont229585229586_))))
                          (___kont229585229586_))))
                  (___kont229585229586_))
              (___kont229585229586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont229585229586_))
                                          (___kont229585229586_))
                                      (___kont229585229586_))))
                              (___kont229585229586_))))
                      (___kont229585229586_))
                  (___kont229585229586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont229585229586_))
                                              (___kont229585229586_))
                                          (___kont229585229586_))))
                                  (___kont229585229586_))))
                          (___kont229585229586_))))
                  (___kont229585229586_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx223414_ _id223415_ _new-id223416_)
        (let* ((_g223418223431_
                (lambda (_g223419223428_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223419223428_))))
               (_g223417223464_
                (lambda (_g223419223434_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223419223434_))
                      (let ((_e223423223436_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223419223434_))))
                        (let ((_hd223422223439_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223423223436_)))
                              (_tl223421223441_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223423223436_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223421223441_))
                              (let ((_e223426223444_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223421223441_))))
                                (let ((_hd223425223447_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223426223444_)))
                                      (_tl223424223449_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223426223444_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223424223449_))
                                      ((lambda (_L223452_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L223452_
                                                _id223415_))
                                             (let ((__tmp229893
                                                    (let ((__tmp229894
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id223416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp229894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp229893
                                                _stx223414_))
                                             _stx223414_))
                                       _hd223425223447_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223418223431_ _g223419223434_)))))
                              (let ()
                                (declare (not safe))
                                (_g223418223431_ _g223419223434_)))))
                      (let ()
                        (declare (not safe))
                        (_g223418223431_ _g223419223434_))))))
          (declare (not safe))
          (_g223417223464_ _stx223414_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx223355_ _subst223356_)
        (let* ((_g223358223371_
                (lambda (_g223359223368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223359223368_))))
               (_g223357223411_
                (lambda (_g223359223374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223359223374_))
                      (let ((_e223363223376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223359223374_))))
                        (let ((_hd223362223379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223363223376_)))
                              (_tl223361223381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223363223376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223361223381_))
                              (let ((_e223366223384_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223361223381_))))
                                (let ((_hd223365223387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223366223384_)))
                                      (_tl223364223389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223366223384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223364223389_))
                                      ((lambda (_L223392_)
                                         (let ((_$e223406_
                                                (let ((__tmp229895
                                                       (lambda (_sub223404_)
                                                         (let ((__tmp229896
                                                                (car _sub223404_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L223392_
                                                            __tmp229896)))))
                                                  (declare (not safe))
                                                  (find __tmp229895
                                                        _subst223356_))))
                                           (if _$e223406_
                                               ((lambda (_sub223409_)
                                                  (let ((__tmp229897
                                                         (let ((__tmp229898
                                                                (let ((__tmp229899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub223409_)))
                          (declare (not safe))
                          (cons __tmp229899 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp229898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp229897
                                                     _stx223355_)))
                                                _$e223406_)
                                               _stx223355_)))
                                       _hd223365223387_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223358223371_ _g223359223374_)))))
                              (let ()
                                (declare (not safe))
                                (_g223358223371_ _g223359223374_)))))
                      (let ()
                        (declare (not safe))
                        (_g223358223371_ _g223359223374_))))))
          (declare (not safe))
          (_g223357223411_ _stx223355_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx223283_ _id223284_ _new-id223285_)
        (let* ((_g223287223304_
                (lambda (_g223288223301_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223288223301_))))
               (_g223286223352_
                (lambda (_g223288223307_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223288223307_))
                      (let ((_e223293223309_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223288223307_))))
                        (let ((_hd223292223312_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223293223309_)))
                              (_tl223291223314_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223293223309_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223291223314_))
                              (let ((_e223296223317_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223291223314_))))
                                (let ((_hd223295223320_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223296223317_)))
                                      (_tl223294223322_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223296223317_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223294223322_))
                                      (let ((_e223299223325_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223294223322_))))
                                        (let ((_hd223298223328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223299223325_)))
                                              (_tl223297223330_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223299223325_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223297223330_))
                                              ((lambda (_L223333_ _L223334_)
                                                 (let ((_new-expr223349_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L223333_
                                                           _id223284_
                                                           _new-id223285_)))
                                                       (_new-xid223350_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L223334_
                                                               _id223284_))
                                                            _new-id223285_
                                                            _L223334_)))
                                                   (let ((__tmp229900
                                                          (let ((__tmp229901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp229902
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr223349_ '()))))
                           (declare (not safe))
                           (cons _new-xid223350_ __tmp229902))))
                    (declare (not safe))
                    (cons '%#set! __tmp229901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp229900
                                                      _stx223283_))))
                                               _hd223298223328_
                                               _hd223295223320_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223287223304_
                                                 _g223288223307_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223287223304_ _g223288223307_)))))
                              (let ()
                                (declare (not safe))
                                (_g223287223304_ _g223288223307_)))))
                      (let ()
                        (declare (not safe))
                        (_g223287223304_ _g223288223307_))))))
          (declare (not safe))
          (_g223286223352_ _stx223283_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx223207_ _subst223208_)
        (let* ((_g223210223227_
                (lambda (_g223211223224_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223211223224_))))
               (_g223209223280_
                (lambda (_g223211223230_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223211223230_))
                      (let ((_e223216223232_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223211223230_))))
                        (let ((_hd223215223235_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223216223232_)))
                              (_tl223214223237_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223216223232_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223214223237_))
                              (let ((_e223219223240_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223214223237_))))
                                (let ((_hd223218223243_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223219223240_)))
                                      (_tl223217223245_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223219223240_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223217223245_))
                                      (let ((_e223222223248_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223217223245_))))
                                        (let ((_hd223221223251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223222223248_)))
                                              (_tl223220223253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223222223248_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223220223253_))
                                              ((lambda (_L223256_ _L223257_)
                                                 (let ((_new-expr223277_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L223256_
                                                           _subst223208_)))
                                                       (_new-xid223278_
                                                        (let ((_$e223274_
                                                               (let ((__tmp229903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub223272_)
                                (let ((__tmp229904 (car _sub223272_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L223257_
                                   __tmp229904)))))
                         (declare (not safe))
                         (find __tmp229903 _subst223208_))))
                  (if _$e223274_ (cdr _$e223274_) _L223257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp229905
                                                          (let ((__tmp229906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp229907
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr223277_ '()))))
                           (declare (not safe))
                           (cons _new-xid223278_ __tmp229907))))
                    (declare (not safe))
                    (cons '%#set! __tmp229906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp229905
                                                      _stx223207_))))
                                               _hd223221223251_
                                               _hd223218223243_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223210223227_
                                                 _g223211223230_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223210223227_ _g223211223230_)))))
                              (let ()
                                (declare (not safe))
                                (_g223210223227_ _g223211223230_)))))
                      (let ()
                        (declare (not safe))
                        (_g223210223227_ _g223211223230_))))))
          (declare (not safe))
          (_g223209223280_ _stx223207_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx223153_ _ht223154_)
        (let* ((_g223156223169_
                (lambda (_g223157223166_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223157223166_))))
               (_g223155223204_
                (lambda (_g223157223172_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223157223172_))
                      (let ((_e223161223174_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223157223172_))))
                        (let ((_hd223160223177_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223161223174_)))
                              (_tl223159223179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223161223174_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223159223179_))
                              (let ((_e223164223182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223159223179_))))
                                (let ((_hd223163223185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223164223182_)))
                                      (_tl223162223187_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223164223182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223162223187_))
                                      ((lambda (_L223190_)
                                         (let ((_eid223202_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L223190_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht223154_
                                            _eid223202_
                                            1+
                                            '0)))
                                       _hd223163223185_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223156223169_ _g223157223172_)))))
                              (let ()
                                (declare (not safe))
                                (_g223156223169_ _g223157223172_)))))
                      (let ()
                        (declare (not safe))
                        (_g223156223169_ _g223157223172_))))))
          (declare (not safe))
          (_g223155223204_ _stx223153_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx223083_ _ht223084_)
        (let* ((_g223086223103_
                (lambda (_g223087223100_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223087223100_))))
               (_g223085223150_
                (lambda (_g223087223106_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223087223106_))
                      (let ((_e223092223108_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223087223106_))))
                        (let ((_hd223091223111_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223092223108_)))
                              (_tl223090223113_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223092223108_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223090223113_))
                              (let ((_e223095223116_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223090223113_))))
                                (let ((_hd223094223119_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223095223116_)))
                                      (_tl223093223121_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223095223116_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223093223121_))
                                      (let ((_e223098223124_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223093223121_))))
                                        (let ((_hd223097223127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223098223124_)))
                                              (_tl223096223129_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223098223124_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223096223129_))
                                              ((lambda (_L223132_ _L223133_)
                                                 (let ((_eid223148_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L223133_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht223084_
                                                      _eid223148_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L223132_
                                                      _ht223084_))))
                                               _hd223097223127_
                                               _hd223094223119_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223086223103_
                                                 _g223087223106_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223086223103_ _g223087223106_)))))
                              (let ()
                                (declare (not safe))
                                (_g223086223103_ _g223087223106_)))))
                      (let ()
                        (declare (not safe))
                        (_g223086223103_ _g223087223106_))))))
          (declare (not safe))
          (_g223085223150_ _stx223083_))))
    (define gxc#find-body%
      (lambda (_stx222996_ _arg222997_)
        (let* ((_g222999223018_
                (lambda (_g223000223015_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223000223015_))))
               (_g222998223080_
                (lambda (_g223000223021_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223000223021_))
                      (let ((_e223004223023_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223000223021_))))
                        (let ((_hd223003223026_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223004223023_)))
                              (_tl223002223028_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223004223023_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl223002223028_))
                              (let ((_g229908_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl223002223028_
                                        '0))))
                                (begin
                                  (let ((_g229909_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g229908_)
                                               (##vector-length _g229908_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g229909_ 2)))
                                        (error "Context expects 2 values"
                                               _g229909_)))
                                  (let ((_target223005223031_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229908_ 0)))
                                        (_tl223007223033_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229908_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl223007223033_))
                                        (letrec ((_loop223008223036_
                                                  (lambda (_hd223006223039_
                                                           _expr223012223041_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd223006223039_))
                                                        (let ((_e223009223044_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd223006223039_))))
                  (let ((_lp-hd223010223047_
                         (let () (declare (not safe)) (##car _e223009223044_)))
                        (_lp-tl223011223049_
                         (let ()
                           (declare (not safe))
                           (##cdr _e223009223044_))))
                    (let ((__tmp229913
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd223010223047_ _expr223012223041_))))
                      (declare (not safe))
                      (_loop223008223036_ _lp-tl223011223049_ __tmp229913))))
                (let ((_expr223013223052_ (reverse _expr223012223041_)))
                  ((lambda (_L223055_)
                     (let ((__tmp229912
                            (lambda (_g223068223070_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g223068223070_
                                 _arg222997_))))
                           (__tmp229910
                            (let ((__tmp229911
                                   (lambda (_g223072223075_ _g223073223077_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223072223075_
                                             _g223073223077_)))))
                              (declare (not safe))
                              (foldr1 __tmp229911 '() _L223055_))))
                       (declare (not safe))
                       (ormap1 __tmp229912 __tmp229910)))
                   _expr223013223052_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop223008223036_
                                             _target223005223031_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g222999223018_
                                           _g223000223021_))))))
                              (let ()
                                (declare (not safe))
                                (_g222999223018_ _g223000223021_)))))
                      (let ()
                        (declare (not safe))
                        (_g222999223018_ _g223000223021_))))))
          (declare (not safe))
          (_g222998223080_ _stx222996_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx222928_ _arg222929_)
        (let* ((_g222931222948_
                (lambda (_g222932222945_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222932222945_))))
               (_g222930222993_
                (lambda (_g222932222951_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222932222951_))
                      (let ((_e222937222953_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222932222951_))))
                        (let ((_hd222936222956_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222937222953_)))
                              (_tl222935222958_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222937222953_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222935222958_))
                              (let ((_e222940222961_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222935222958_))))
                                (let ((_hd222939222964_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222940222961_)))
                                      (_tl222938222966_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222940222961_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222938222966_))
                                      (let ((_e222943222969_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222938222966_))))
                                        (let ((_hd222942222972_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222943222969_)))
                                              (_tl222941222974_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222943222969_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222941222974_))
                                              ((lambda (_L222977_ _L222978_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222977_
                                                    _arg222929_)))
                                               _hd222942222972_
                                               _hd222939222964_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222931222948_
                                                 _g222932222951_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222931222948_ _g222932222951_)))))
                              (let ()
                                (declare (not safe))
                                (_g222931222948_ _g222932222951_)))))
                      (let ()
                        (declare (not safe))
                        (_g222931222948_ _g222932222951_))))))
          (declare (not safe))
          (_g222930222993_ _stx222928_))))
    (define gxc#find-lambda%
      (lambda (_stx222860_ _arg222861_)
        (let* ((_g222863222880_
                (lambda (_g222864222877_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222864222877_))))
               (_g222862222925_
                (lambda (_g222864222883_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222864222883_))
                      (let ((_e222869222885_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222864222883_))))
                        (let ((_hd222868222888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222869222885_)))
                              (_tl222867222890_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222869222885_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222867222890_))
                              (let ((_e222872222893_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222867222890_))))
                                (let ((_hd222871222896_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222872222893_)))
                                      (_tl222870222898_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222872222893_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222870222898_))
                                      (let ((_e222875222901_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222870222898_))))
                                        (let ((_hd222874222904_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222875222901_)))
                                              (_tl222873222906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222875222901_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222873222906_))
                                              ((lambda (_L222909_ _L222910_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222909_
                                                    _arg222861_)))
                                               _hd222874222904_
                                               _hd222871222896_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222863222880_
                                                 _g222864222883_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222863222880_ _g222864222883_)))))
                              (let ()
                                (declare (not safe))
                                (_g222863222880_ _g222864222883_)))))
                      (let ()
                        (declare (not safe))
                        (_g222863222880_ _g222864222883_))))))
          (declare (not safe))
          (_g222862222925_ _stx222860_))))
    (define gxc#find-case-lambda%
      (lambda (_stx222742_ _arg222743_)
        (let* ((_g222745222773_
                (lambda (_g222746222770_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222746222770_))))
               (_g222744222857_
                (lambda (_g222746222776_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222746222776_))
                      (let ((_e222751222778_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222746222776_))))
                        (let ((_hd222750222781_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222751222778_)))
                              (_tl222749222783_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222751222778_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl222749222783_))
                              (let ((_g229914_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl222749222783_
                                        '0))))
                                (begin
                                  (let ((_g229915_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g229914_)
                                               (##vector-length _g229914_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g229915_ 2)))
                                        (error "Context expects 2 values"
                                               _g229915_)))
                                  (let ((_target222752222786_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229914_ 0)))
                                        (_tl222754222788_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229914_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222754222788_))
                                        (letrec ((_loop222755222791_
                                                  (lambda (_hd222753222794_
                                                           _body222759222796_
                                                           _hd222760222798_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd222753222794_))
                                                        (let ((_e222756222801_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd222753222794_))))
                  (let ((_lp-hd222757222804_
                         (let () (declare (not safe)) (##car _e222756222801_)))
                        (_lp-tl222758222806_
                         (let ()
                           (declare (not safe))
                           (##cdr _e222756222801_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd222757222804_))
                        (let ((_e222765222809_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd222757222804_))))
                          (let ((_hd222764222812_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222765222809_)))
                                (_tl222763222814_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222765222809_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl222763222814_))
                                (let ((_e222768222817_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl222763222814_))))
                                  (let ((_hd222767222820_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222768222817_)))
                                        (_tl222766222822_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222768222817_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222766222822_))
                                        (let ((__tmp229920
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222767222820_
                                                       _body222759222796_)))
                                              (__tmp229919
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222764222812_
                                                       _hd222760222798_))))
                                          (declare (not safe))
                                          (_loop222755222791_
                                           _lp-tl222758222806_
                                           __tmp229920
                                           __tmp229919))
                                        (let ()
                                          (declare (not safe))
                                          (_g222745222773_ _g222746222776_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222745222773_ _g222746222776_)))))
                        (let ()
                          (declare (not safe))
                          (_g222745222773_ _g222746222776_)))))
                (let ((_body222761222825_ (reverse _body222759222796_))
                      (_hd222762222827_ (reverse _hd222760222798_)))
                  ((lambda (_L222830_ _L222831_)
                     (let ((__tmp229918
                            (lambda (_g222845222847_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g222845222847_
                                 _arg222743_))))
                           (__tmp229916
                            (let ((__tmp229917
                                   (lambda (_g222849222852_ _g222850222854_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g222849222852_
                                             _g222850222854_)))))
                              (declare (not safe))
                              (foldr1 __tmp229917 '() _L222830_))))
                       (declare (not safe))
                       (ormap1 __tmp229918 __tmp229916)))
                   _body222761222825_
                   _hd222762222827_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop222755222791_
                                             _target222752222786_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g222745222773_
                                           _g222746222776_))))))
                              (let ()
                                (declare (not safe))
                                (_g222745222773_ _g222746222776_)))))
                      (let ()
                        (declare (not safe))
                        (_g222745222773_ _g222746222776_))))))
          (declare (not safe))
          (_g222744222857_ _stx222742_))))
    (define gxc#find-let-values%
      (lambda (_stx222592_ _arg222593_)
        (let* ((_g222595222630_
                (lambda (_g222596222627_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222596222627_))))
               (_g222594222739_
                (lambda (_g222596222633_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222596222633_))
                      (let ((_e222602222635_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222596222633_))))
                        (let ((_hd222601222638_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222602222635_)))
                              (_tl222600222640_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222602222635_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222600222640_))
                              (let ((_e222605222643_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222600222640_))))
                                (let ((_hd222604222646_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222605222643_)))
                                      (_tl222603222648_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222605222643_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd222604222646_))
                                      (let ((_g229921_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd222604222646_
                                                '0))))
                                        (begin
                                          (let ((_g229922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g229921_)
                                                       (##vector-length
                                                        _g229921_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g229922_ 2)))
                                                (error "Context expects 2 values"
                                                       _g229922_)))
                                          (let ((_target222606222651_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g229921_ 0)))
                                                (_tl222608222653_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g229921_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222608222653_))
                                                (letrec ((_loop222609222656_
                                                          (lambda (_hd222607222659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr222613222661_
                           _bind222614222663_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222607222659_))
                        (let ((_e222610222666_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222607222659_))))
                          (let ((_lp-hd222611222669_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222610222666_)))
                                (_lp-tl222612222671_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222610222666_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd222611222669_))
                                (let ((_e222619222674_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd222611222669_))))
                                  (let ((_hd222618222677_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222619222674_)))
                                        (_tl222617222679_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222619222674_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl222617222679_))
                                        (let ((_e222622222682_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl222617222679_))))
                                          (let ((_hd222621222685_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222622222682_)))
                                                (_tl222620222687_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222622222682_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222620222687_))
                                                (let ((__tmp229927
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222621222685_
                                                               _expr222613222661_)))
                                                      (__tmp229926
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222618222677_
                                                               _bind222614222663_))))
                                                  (declare (not safe))
                                                  (_loop222609222656_
                                                   _lp-tl222612222671_
                                                   __tmp229927
                                                   __tmp229926))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222595222630_
                                                   _g222596222633_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g222595222630_ _g222596222633_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222595222630_ _g222596222633_)))))
                        (let ((_expr222615222690_ (reverse _expr222613222661_))
                              (_bind222616222692_
                               (reverse _bind222614222663_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222603222648_))
                              (let ((_e222625222695_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222603222648_))))
                                (let ((_hd222624222698_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222625222695_)))
                                      (_tl222623222700_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222625222695_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222623222700_))
                                      ((lambda (_L222703_ _L222704_ _L222705_)
                                         (let ((_$e222736_
                                                (let ((__tmp229925
                                                       (lambda (_g222724222726_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g222724222726_
                                                            _arg222593_))))
                                                      (__tmp229923
                                                       (let ((__tmp229924
                                                              (lambda (_g222728222731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g222729222733_)
                        (let ()
                          (declare (not safe))
                          (cons _g222728222731_ _g222729222733_)))))
                 (declare (not safe))
                 (foldr1 __tmp229924 '() _L222704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp229925
                                                          __tmp229923))))
                                           (if _$e222736_
                                               _$e222736_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L222703_
                                                  _arg222593_)))))
                                       _hd222624222698_
                                       _expr222615222690_
                                       _bind222616222692_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222595222630_ _g222596222633_)))))
                              (let ()
                                (declare (not safe))
                                (_g222595222630_ _g222596222633_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop222609222656_
                                                     _target222606222651_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222595222630_
                                                   _g222596222633_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222595222630_ _g222596222633_)))))
                              (let ()
                                (declare (not safe))
                                (_g222595222630_ _g222596222633_)))))
                      (let ()
                        (declare (not safe))
                        (_g222595222630_ _g222596222633_))))))
          (declare (not safe))
          (_g222594222739_ _stx222592_))))
    (define gxc#find-setq%
      (lambda (_stx222524_ _arg222525_)
        (let* ((_g222527222544_
                (lambda (_g222528222541_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222528222541_))))
               (_g222526222589_
                (lambda (_g222528222547_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222528222547_))
                      (let ((_e222533222549_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222528222547_))))
                        (let ((_hd222532222552_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222533222549_)))
                              (_tl222531222554_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222533222549_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222531222554_))
                              (let ((_e222536222557_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222531222554_))))
                                (let ((_hd222535222560_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222536222557_)))
                                      (_tl222534222562_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222536222557_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222534222562_))
                                      (let ((_e222539222565_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222534222562_))))
                                        (let ((_hd222538222568_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222539222565_)))
                                              (_tl222537222570_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222539222565_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222537222570_))
                                              ((lambda (_L222573_ _L222574_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222573_
                                                    _arg222525_)))
                                               _hd222538222568_
                                               _hd222535222560_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222527222544_
                                                 _g222528222547_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222527222544_ _g222528222547_)))))
                              (let ()
                                (declare (not safe))
                                (_g222527222544_ _g222528222547_)))))
                      (let ()
                        (declare (not safe))
                        (_g222527222544_ _g222528222547_))))))
          (declare (not safe))
          (_g222526222589_ _stx222524_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx222468_ _ids222469_)
        (let* ((_g222471222484_
                (lambda (_g222472222481_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222472222481_))))
               (_g222470222521_
                (lambda (_g222472222487_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222472222487_))
                      (let ((_e222476222489_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222472222487_))))
                        (let ((_hd222475222492_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222476222489_)))
                              (_tl222474222494_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222476222489_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222474222494_))
                              (let ((_e222479222497_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222474222494_))))
                                (let ((_hd222478222500_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222479222497_)))
                                      (_tl222477222502_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222479222497_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222477222502_))
                                      ((lambda (_L222505_)
                                         (let ((__tmp229928
                                                (lambda (_g222516222518_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L222505_
                                                     _g222516222518_)))))
                                           (declare (not safe))
                                           (find __tmp229928 _ids222469_)))
                                       _hd222478222500_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222471222484_ _g222472222487_)))))
                              (let ()
                                (declare (not safe))
                                (_g222471222484_ _g222472222487_)))))
                      (let ()
                        (declare (not safe))
                        (_g222471222484_ _g222472222487_))))))
          (declare (not safe))
          (_g222470222521_ _stx222468_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx222392_ _ids222393_)
        (let* ((_g222395222412_
                (lambda (_g222396222409_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222396222409_))))
               (_g222394222465_
                (lambda (_g222396222415_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222396222415_))
                      (let ((_e222401222417_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222396222415_))))
                        (let ((_hd222400222420_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222401222417_)))
                              (_tl222399222422_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222401222417_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222399222422_))
                              (let ((_e222404222425_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222399222422_))))
                                (let ((_hd222403222428_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222404222425_)))
                                      (_tl222402222430_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222404222425_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222402222430_))
                                      (let ((_e222407222433_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222402222430_))))
                                        (let ((_hd222406222436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222407222433_)))
                                              (_tl222405222438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222407222433_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222405222438_))
                                              ((lambda (_L222441_ _L222442_)
                                                 (let ((_$e222462_
                                                        (let ((__tmp229929
                                                               (lambda (_g222457222459_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L222442_ _g222457222459_)))))
                  (declare (not safe))
                  (find __tmp229929 _ids222393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e222462_
                                                       _$e222462_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L222441_
                                                          _ids222393_)))))
                                               _hd222406222436_
                                               _hd222403222428_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222395222412_
                                                 _g222396222415_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222395222412_ _g222396222415_)))))
                              (let ()
                                (declare (not safe))
                                (_g222395222412_ _g222396222415_)))))
                      (let ()
                        (declare (not safe))
                        (_g222395222412_ _g222396222415_))))))
          (declare (not safe))
          (_g222394222465_ _stx222392_))))))
