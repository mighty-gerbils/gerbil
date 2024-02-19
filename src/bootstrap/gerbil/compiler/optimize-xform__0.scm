(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708343717)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl116823_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116823_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116823_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116823_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl116823_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl116819_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#declare gxc#xform-identity))
           _tbl116819_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl116815_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117069 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl116815_ __tmp117069))
           (let ((__tmp117070 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl116815_ __tmp117070))
           _tbl116815_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl116811_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116811_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116811_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116811_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116811_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116811_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl116811_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl116807_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117071 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl116807_ __tmp117071))
           (let ((__tmp117072 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl116807_ __tmp117072))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116807_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116807_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116807_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116807_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116807_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl116807_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl116803_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117073 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl116803_ __tmp117073))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116803_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116803_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116803_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116803_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116803_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116803_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116803_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116803_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116803_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116803_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116803_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116803_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl116803_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx116786_ . _args116788_)
        (let ((__tmp117075
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116788_)
                     (gxc#compile-e__0 _stx116786_)
                     (let ((_arg1116793_ (car _args116788_))
                           (_rest116795_ (cdr _args116788_)))
                       (if (null? _rest116795_)
                           (gxc#compile-e__1 _stx116786_ _arg1116793_)
                           (let ((_arg2116798_ (car _rest116795_))
                                 (_rest116800_ (cdr _rest116795_)))
                             (if (null? _rest116800_)
                                 (gxc#compile-e__2
                                  _stx116786_
                                  _arg1116793_
                                  _arg2116798_)
                                 (apply gxc#compile-e
                                        _stx116786_
                                        _arg1116793_
                                        _arg2116798_
                                        _rest116800_))))))))
              (__tmp117074 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp117075
           gxc#current-compile-methods
           __tmp117074))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl116783_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117076 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl116783_ __tmp117076))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116783_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116783_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116783_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116783_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116783_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl116783_))))
    (define gxc#apply-collect-methods
      (lambda (_stx116766_ . _args116768_)
        (let ((__tmp117078
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116768_)
                     (gxc#compile-e__0 _stx116766_)
                     (let ((_arg1116773_ (car _args116768_))
                           (_rest116775_ (cdr _args116768_)))
                       (if (null? _rest116775_)
                           (gxc#compile-e__1 _stx116766_ _arg1116773_)
                           (let ((_arg2116778_ (car _rest116775_))
                                 (_rest116780_ (cdr _rest116775_)))
                             (if (null? _rest116780_)
                                 (gxc#compile-e__2
                                  _stx116766_
                                  _arg1116773_
                                  _arg2116778_)
                                 (apply gxc#compile-e
                                        _stx116766_
                                        _arg1116773_
                                        _arg2116778_
                                        _rest116780_))))))))
              (__tmp117077 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp117078
           gxc#current-compile-methods
           __tmp117077))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl116763_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117079 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl116763_ __tmp117079))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116763_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116763_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116763_ '%#set! gxc#expression-subst-setq%))
           _tbl116763_))))
    (define gxc#apply-expression-subst
      (lambda (_stx116746_ . _args116748_)
        (let ((__tmp117081
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116748_)
                     (gxc#compile-e__0 _stx116746_)
                     (let ((_arg1116753_ (car _args116748_))
                           (_rest116755_ (cdr _args116748_)))
                       (if (null? _rest116755_)
                           (gxc#compile-e__1 _stx116746_ _arg1116753_)
                           (let ((_arg2116758_ (car _rest116755_))
                                 (_rest116760_ (cdr _rest116755_)))
                             (if (null? _rest116760_)
                                 (gxc#compile-e__2
                                  _stx116746_
                                  _arg1116753_
                                  _arg2116758_)
                                 (apply gxc#compile-e
                                        _stx116746_
                                        _arg1116753_
                                        _arg2116758_
                                        _rest116760_))))))))
              (__tmp117080 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp117081
           gxc#current-compile-methods
           __tmp117080))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl116743_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117082 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl116743_ __tmp117082))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116743_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116743_ '%#set! gxc#expression-subst*-setq%))
           _tbl116743_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx116726_ . _args116728_)
        (let ((__tmp117084
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116728_)
                     (gxc#compile-e__0 _stx116726_)
                     (let ((_arg1116733_ (car _args116728_))
                           (_rest116735_ (cdr _args116728_)))
                       (if (null? _rest116735_)
                           (gxc#compile-e__1 _stx116726_ _arg1116733_)
                           (let ((_arg2116738_ (car _rest116735_))
                                 (_rest116740_ (cdr _rest116735_)))
                             (if (null? _rest116740_)
                                 (gxc#compile-e__2
                                  _stx116726_
                                  _arg1116733_
                                  _arg2116738_)
                                 (apply gxc#compile-e
                                        _stx116726_
                                        _arg1116733_
                                        _arg2116738_
                                        _rest116740_))))))))
              (__tmp117083 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp117084
           gxc#current-compile-methods
           __tmp117083))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl116723_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117085 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl116723_ __tmp117085))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116723_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116723_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl116723_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl116719_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117086 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl116719_ __tmp117086))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116719_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116719_ '%#set! gxc#find-var-refs-setq%))
           _tbl116719_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx116702_ . _args116704_)
        (let ((__tmp117088
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116704_)
                     (gxc#compile-e__0 _stx116702_)
                     (let ((_arg1116709_ (car _args116704_))
                           (_rest116711_ (cdr _args116704_)))
                       (if (null? _rest116711_)
                           (gxc#compile-e__1 _stx116702_ _arg1116709_)
                           (let ((_arg2116714_ (car _rest116711_))
                                 (_rest116716_ (cdr _rest116711_)))
                             (if (null? _rest116716_)
                                 (gxc#compile-e__2
                                  _stx116702_
                                  _arg1116709_
                                  _arg2116714_)
                                 (apply gxc#compile-e
                                        _stx116702_
                                        _arg1116709_
                                        _arg2116714_
                                        _rest116716_))))))))
              (__tmp117087 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117088
           gxc#current-compile-methods
           __tmp117087))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl116699_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117089 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl116699_ __tmp117089))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116699_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116699_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl116699_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx116682_ . _args116684_)
        (let ((__tmp117091
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116684_)
                     (gxc#compile-e__0 _stx116682_)
                     (let ((_arg1116689_ (car _args116684_))
                           (_rest116691_ (cdr _args116684_)))
                       (if (null? _rest116691_)
                           (gxc#compile-e__1 _stx116682_ _arg1116689_)
                           (let ((_arg2116694_ (car _rest116691_))
                                 (_rest116696_ (cdr _rest116691_)))
                             (if (null? _rest116696_)
                                 (gxc#compile-e__2
                                  _stx116682_
                                  _arg1116689_
                                  _arg2116694_)
                                 (apply gxc#compile-e
                                        _stx116682_
                                        _arg1116689_
                                        _arg2116694_
                                        _rest116696_))))))))
              (__tmp117090 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117091
           gxc#current-compile-methods
           __tmp117090))))
    (define gxc#xform-identity
      (lambda (_stx116679_ . _args116680_) _stx116679_))
    (define gxc#xform-wrap-source
      (lambda (_stx116676_ _src-stx116677_)
        (let ((__tmp117092
               (let () (declare (not safe)) (gx#stx-source _src-stx116677_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx116676_ __tmp117092))))
    (define gxc#xform-apply-compile-e
      (lambda (_args116663_)
        (lambda (_stx116665_)
          (if (let () (declare (not safe)) (null? _args116663_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx116665_))
              (let ((_arg1116667_ (car _args116663_))
                    (_rest116669_ (cdr _args116663_)))
                (if (let () (declare (not safe)) (null? _rest116669_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx116665_ _arg1116667_))
                    (let ((_arg2116672_ (car _rest116669_))
                          (_rest116674_ (cdr _rest116669_)))
                      (if (let () (declare (not safe)) (null? _rest116674_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx116665_
                             _arg1116667_
                             _arg2116672_))
                          (apply gxc#compile-e
                                 _stx116665_
                                 _arg1116667_
                                 _arg2116672_
                                 _rest116674_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx116622_ . _args116623_)
        (let* ((_g116625116635_
                (lambda (_g116626116632_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116626116632_))))
               (_g116624116660_
                (lambda (_g116626116638_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116626116638_))
                      (let ((_e116630116640_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116626116638_))))
                        (let ((_hd116629116643_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116630116640_)))
                              (_tl116628116645_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116630116640_))))
                          ((lambda (_L116648_)
                             (let* ((_forms116658_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116623_))
                                          _L116648_))
                                    (__tmp117093
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms116658_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117093
                                _stx116622_)))
                           _tl116628116645_)))
                      (let ()
                        (declare (not safe))
                        (_g116625116635_ _g116626116638_))))))
          (declare (not safe))
          (_g116624116660_ _stx116622_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx116580_ . _args116581_)
        (let* ((_g116583116593_
                (lambda (_g116584116590_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116584116590_))))
               (_g116582116619_
                (lambda (_g116584116596_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116584116596_))
                      (let ((_e116588116598_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116584116596_))))
                        (let ((_hd116587116601_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116588116598_)))
                              (_tl116586116603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116588116598_))))
                          ((lambda (_L116606_)
                             (let ((__tmp117096
                                    (lambda ()
                                      (let* ((_forms116617_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args116581_))
                                                   _L116606_))
                                             (__tmp117097
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms116617_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp117097
                                         _stx116580_))))
                                   (__tmp117094
                                    (let ((__tmp117095
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp117095 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp117096
                                gx#current-expander-phi
                                __tmp117094)))
                           _tl116586116603_)))
                      (let ()
                        (declare (not safe))
                        (_g116583116593_ _g116584116596_))))))
          (declare (not safe))
          (_g116582116619_ _stx116580_))))
    (define gxc#xform-module%
      (lambda (_stx116508_ . _args116509_)
        (let* ((_g116511116525_
                (lambda (_g116512116522_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116512116522_))))
               (_g116510116577_
                (lambda (_g116512116528_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116512116528_))
                      (let ((_e116517116530_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116512116528_))))
                        (let ((_hd116516116533_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116517116530_)))
                              (_tl116515116535_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116517116530_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116515116535_))
                              (let ((_e116520116538_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116515116535_))))
                                (let ((_hd116519116541_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116520116538_)))
                                      (_tl116518116543_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116520116538_))))
                                  ((lambda (_L116546_ _L116547_)
                                     (let* ((_ctx116560_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L116547_)))
                                            (_code116562_
                                             (##structure-ref
                                              _ctx116560_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code116574_
                                             (let ((__tmp117098
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args116509_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code116562_))
                                                          (let ((_arg1116565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args116509_))
                        (_rest116567_ (cdr _args116509_)))
                    (if (let () (declare (not safe)) (null? _rest116567_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code116562_ _arg1116565_))
                        (let ((_arg2116570_ (car _rest116567_))
                              (_rest116572_ (cdr _rest116567_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest116572_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code116562_
                                 _arg1116565_
                                 _arg2116570_))
                              (apply gxc#compile-e
                                     _code116562_
                                     _arg1116565_
                                     _arg2116570_
                                     _rest116572_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp117098
                                                gx#current-expander-context
                                                _ctx116560_))))
                                       (##structure-set!
                                        _ctx116560_
                                        _code116574_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp117099
                                              (let ((__tmp117100
                                                     (let ((__tmp117101
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code116574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L116547_ __tmp117101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp117100))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp117099
                                          _stx116508_))))
                                   _tl116518116543_
                                   _hd116519116541_)))
                              (let ()
                                (declare (not safe))
                                (_g116511116525_ _g116512116528_)))))
                      (let ()
                        (declare (not safe))
                        (_g116511116525_ _g116512116528_))))))
          (declare (not safe))
          (_g116510116577_ _stx116508_))))
    (define gxc#xform-define-values%
      (lambda (_stx116429_ . _args116430_)
        (let* ((_g116432116449_
                (lambda (_g116433116446_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116433116446_))))
               (_g116431116505_
                (lambda (_g116433116452_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116433116452_))
                      (let ((_e116438116454_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116433116452_))))
                        (let ((_hd116437116457_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116438116454_)))
                              (_tl116436116459_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116438116454_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116436116459_))
                              (let ((_e116441116462_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116436116459_))))
                                (let ((_hd116440116465_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116441116462_)))
                                      (_tl116439116467_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116441116462_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116439116467_))
                                      (let ((_e116444116470_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116439116467_))))
                                        (let ((_hd116443116473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116444116470_)))
                                              (_tl116442116475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116444116470_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116442116475_))
                                              ((lambda (_L116478_ _L116479_)
                                                 (let* ((_expr116503_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116430_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116478_))
                     (let ((_arg1116494_ (car _args116430_))
                           (_rest116496_ (cdr _args116430_)))
                       (if (let () (declare (not safe)) (null? _rest116496_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116478_ _arg1116494_))
                           (let ((_arg2116499_ (car _rest116496_))
                                 (_rest116501_ (cdr _rest116496_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116501_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116478_
                                    _arg1116494_
                                    _arg2116499_))
                                 (apply gxc#compile-e
                                        _L116478_
                                        _arg1116494_
                                        _arg2116499_
                                        _rest116501_)))))))
                (__tmp117102
                 (let ((__tmp117103
                        (let ((__tmp117104
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116503_ '()))))
                          (declare (not safe))
                          (cons _L116479_ __tmp117104))))
                   (declare (not safe))
                   (cons '%#define-values __tmp117103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117102
                                                    _stx116429_)))
                                               _hd116443116473_
                                               _hd116440116465_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116432116449_
                                                 _g116433116452_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116432116449_ _g116433116452_)))))
                              (let ()
                                (declare (not safe))
                                (_g116432116449_ _g116433116452_)))))
                      (let ()
                        (declare (not safe))
                        (_g116432116449_ _g116433116452_))))))
          (declare (not safe))
          (_g116431116505_ _stx116429_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx116349_ . _args116350_)
        (let* ((_g116352116369_
                (lambda (_g116353116366_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116353116366_))))
               (_g116351116426_
                (lambda (_g116353116372_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116353116372_))
                      (let ((_e116358116374_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116353116372_))))
                        (let ((_hd116357116377_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116358116374_)))
                              (_tl116356116379_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116358116374_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116356116379_))
                              (let ((_e116361116382_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116356116379_))))
                                (let ((_hd116360116385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116361116382_)))
                                      (_tl116359116387_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116361116382_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116359116387_))
                                      (let ((_e116364116390_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116359116387_))))
                                        (let ((_hd116363116393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116364116390_)))
                                              (_tl116362116395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116364116390_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116362116395_))
                                              ((lambda (_L116398_ _L116399_)
                                                 (let ((__tmp117107
                                                        (lambda ()
                                                          (let* ((_expr116424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args116350_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L116398_))
                              (let ((_arg1116415_ (car _args116350_))
                                    (_rest116417_ (cdr _args116350_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest116417_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L116398_
                                       _arg1116415_))
                                    (let ((_arg2116420_ (car _rest116417_))
                                          (_rest116422_ (cdr _rest116417_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest116422_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L116398_
                                             _arg1116415_
                                             _arg2116420_))
                                          (apply gxc#compile-e
                                                 _L116398_
                                                 _arg1116415_
                                                 _arg2116420_
                                                 _rest116422_)))))))
                         (__tmp117108
                          (let ((__tmp117109
                                 (let ((__tmp117110
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr116424_ '()))))
                                   (declare (not safe))
                                   (cons _L116399_ __tmp117110))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp117109))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp117108 _stx116349_))))
               (__tmp117105
                (let ((__tmp117106 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp117106 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp117107
                                                    gx#current-expander-phi
                                                    __tmp117105)))
                                               _hd116363116393_
                                               _hd116360116385_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116352116369_
                                                 _g116353116372_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116352116369_ _g116353116372_)))))
                              (let ()
                                (declare (not safe))
                                (_g116352116369_ _g116353116372_)))))
                      (let ()
                        (declare (not safe))
                        (_g116352116369_ _g116353116372_))))))
          (declare (not safe))
          (_g116351116426_ _stx116349_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx116270_ . _args116271_)
        (let* ((_g116273116290_
                (lambda (_g116274116287_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116274116287_))))
               (_g116272116346_
                (lambda (_g116274116293_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116274116293_))
                      (let ((_e116279116295_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116274116293_))))
                        (let ((_hd116278116298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116279116295_)))
                              (_tl116277116300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116279116295_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116277116300_))
                              (let ((_e116282116303_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116277116300_))))
                                (let ((_hd116281116306_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116282116303_)))
                                      (_tl116280116308_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116282116303_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116280116308_))
                                      (let ((_e116285116311_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116280116308_))))
                                        (let ((_hd116284116314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116285116311_)))
                                              (_tl116283116316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116285116311_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116283116316_))
                                              ((lambda (_L116319_ _L116320_)
                                                 (let* ((_expr116344_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116271_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116319_))
                     (let ((_arg1116335_ (car _args116271_))
                           (_rest116337_ (cdr _args116271_)))
                       (if (let () (declare (not safe)) (null? _rest116337_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116319_ _arg1116335_))
                           (let ((_arg2116340_ (car _rest116337_))
                                 (_rest116342_ (cdr _rest116337_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116342_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116319_
                                    _arg1116335_
                                    _arg2116340_))
                                 (apply gxc#compile-e
                                        _L116319_
                                        _arg1116335_
                                        _arg2116340_
                                        _rest116342_)))))))
                (__tmp117111
                 (let ((__tmp117112
                        (let ((__tmp117113
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116344_ '()))))
                          (declare (not safe))
                          (cons _L116320_ __tmp117113))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp117112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117111
                                                    _stx116270_)))
                                               _hd116284116314_
                                               _hd116281116306_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116273116290_
                                                 _g116274116293_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116273116290_ _g116274116293_)))))
                              (let ()
                                (declare (not safe))
                                (_g116273116290_ _g116274116293_)))))
                      (let ()
                        (declare (not safe))
                        (_g116273116290_ _g116274116293_))))))
          (declare (not safe))
          (_g116272116346_ _stx116270_))))
    (define gxc#xform-lambda%
      (lambda (_stx116213_ . _args116214_)
        (let* ((_g116216116230_
                (lambda (_g116217116227_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116217116227_))))
               (_g116215116267_
                (lambda (_g116217116233_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116217116233_))
                      (let ((_e116222116235_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116217116233_))))
                        (let ((_hd116221116238_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116222116235_)))
                              (_tl116220116240_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116222116235_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116220116240_))
                              (let ((_e116225116243_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116220116240_))))
                                (let ((_hd116224116246_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116225116243_)))
                                      (_tl116223116248_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116225116243_))))
                                  ((lambda (_L116251_ _L116252_)
                                     (let* ((_body116265_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args116214_))
                                                  _L116251_))
                                            (__tmp117114
                                             (let ((__tmp117115
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L116252_
                                                            _body116265_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp117115))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp117114
                                        _stx116213_)))
                                   _tl116223116248_
                                   _hd116224116246_)))
                              (let ()
                                (declare (not safe))
                                (_g116216116230_ _g116217116233_)))))
                      (let ()
                        (declare (not safe))
                        (_g116216116230_ _g116217116233_))))))
          (declare (not safe))
          (_g116215116267_ _stx116213_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx116126_ . _args116127_)
        (letrec ((_clause-e116129_
                  (lambda (_clause116170_)
                    (let* ((_g116172116183_
                            (lambda (_g116173116180_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g116173116180_))))
                           (_g116171116210_
                            (lambda (_g116173116186_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g116173116186_))
                                  (let ((_e116178116188_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g116173116186_))))
                                    (let ((_hd116177116191_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116178116188_)))
                                          (_tl116176116193_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116178116188_))))
                                      ((lambda (_L116196_ _L116197_)
                                         (let ((_body116208_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args116127_))
                                                     _L116196_)))
                                           (declare (not safe))
                                           (cons _L116197_ _body116208_)))
                                       _tl116176116193_
                                       _hd116177116191_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g116172116183_ _g116173116186_))))))
                      (declare (not safe))
                      (_g116171116210_ _clause116170_)))))
          (let* ((_g116131116141_
                  (lambda (_g116132116138_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g116132116138_))))
                 (_g116130116167_
                  (lambda (_g116132116144_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g116132116144_))
                        (let ((_e116136116146_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g116132116144_))))
                          (let ((_hd116135116149_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116136116146_)))
                                (_tl116134116151_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116136116146_))))
                            ((lambda (_L116154_)
                               (let* ((_clauses116165_
                                       (map _clause-e116129_ _L116154_))
                                      (__tmp117116
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses116165_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp117116
                                  _stx116126_)))
                             _tl116134116151_)))
                        (let ()
                          (declare (not safe))
                          (_g116131116141_ _g116132116144_))))))
            (declare (not safe))
            (_g116130116167_ _stx116126_)))))
    (define gxc#xform-let-values%
      (lambda (_stx115920_ . _args115921_)
        (let* ((_g115923115956_
                (lambda (_g115924115953_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115924115953_))))
               (_g115922116123_
                (lambda (_g115924115959_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115924115959_))
                      (let ((_e115931115961_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115924115959_))))
                        (let ((_hd115930115964_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115931115961_)))
                              (_tl115929115966_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115931115961_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115929115966_))
                              (let ((_e115934115969_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115929115966_))))
                                (let ((_hd115933115972_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115934115969_)))
                                      (_tl115932115974_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115934115969_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115933115972_))
                                      (let ((_g117117_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115933115972_
                                                '0))))
                                        (begin
                                          (let ((_g117118_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117117_)
                                                       (##vector-length
                                                        _g117117_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117118_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117118_)))
                                          (let ((_target115935115977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117117_ 0)))
                                                (_tl115937115979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117117_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115937115979_))
                                                (letrec ((_loop115938115982_
                                                          (lambda (_hd115936115985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115942115987_
                           _hd115943115989_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115936115985_))
                        (let ((_e115939115992_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115936115985_))))
                          (let ((_lp-hd115940115995_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115939115992_)))
                                (_lp-tl115941115997_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115939115992_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115940115995_))
                                (let ((_e115948116000_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115940115995_))))
                                  (let ((_hd115947116003_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115948116000_)))
                                        (_tl115946116005_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115948116000_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115946116005_))
                                        (let ((_e115951116008_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115946116005_))))
                                          (let ((_hd115950116011_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115951116008_)))
                                                (_tl115949116013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115951116008_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115949116013_))
                                                (let ((__tmp117131
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115950116011_
                                                               _expr115942115987_)))
                                                      (__tmp117130
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115947116003_
                                                               _hd115943115989_))))
                                                  (declare (not safe))
                                                  (_loop115938115982_
                                                   _lp-tl115941115997_
                                                   __tmp117131
                                                   __tmp117130))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115923115956_
                                                   _g115924115959_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115923115956_ _g115924115959_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115923115956_ _g115924115959_)))))
                        (let ((_expr115944116016_ (reverse _expr115942115987_))
                              (_hd115945116018_ (reverse _hd115943115989_)))
                          ((lambda (_L116021_ _L116022_ _L116023_ _L116024_)
                             (let* ((_g116043116059_
                                     (lambda (_g116044116056_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g116044116056_))))
                                    (_g116042116113_
                                     (lambda (_g116044116062_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g116044116062_))
                                           (let ((_g117119_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g116044116062_
                                                     '0))))
                                             (begin
                                               (let ((_g117120_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g117119_)
                                                            (##vector-length
                                                             _g117119_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g117120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g117120_)))
                                               (let ((_target116046116064_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117119_
                                                         0)))
                                                     (_tl116048116066_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117119_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl116048116066_))
                                                     (letrec ((_loop116049116069_
                                                               (lambda (_hd116047116072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr116053116074_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd116047116072_))
                             (let ((_e116050116077_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd116047116072_))))
                               (let ((_lp-hd116051116080_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e116050116077_)))
                                     (_lp-tl116052116082_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e116050116077_))))
                                 (let ((__tmp117127
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd116051116080_
                                                _expr116053116074_))))
                                   (declare (not safe))
                                   (_loop116049116069_
                                    _lp-tl116052116082_
                                    __tmp117127))))
                             (let ((_expr116054116085_
                                    (reverse _expr116053116074_)))
                               ((lambda (_L116088_)
                                  (let ()
                                    (let* ((_body116101_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args115921_))
                                                 _L116021_))
                                           (__tmp117121
                                            (let ((__tmp117122
                                                   (let ((__tmp117123
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L116088_
                                                               _L116023_))
                                                            (let ((__tmp117124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g116102116106_
                                    _g116103116108_
                                    _g116104116110_)
                             (let ((__tmp117125
                                    (let ((__tmp117126
                                           (let ()
                                             (declare (not safe))
                                             (cons _g116102116106_ '()))))
                                      (declare (not safe))
                                      (cons _g116103116108_ __tmp117126))))
                               (declare (not safe))
                               (cons __tmp117125 _g116104116110_)))))
                      (declare (not safe))
                      (foldr2 __tmp117124 '() _L116088_ _L116023_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp117123
                                                           _body116101_))))
                                              (declare (not safe))
                                              (cons _L116024_ __tmp117122))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp117121
                                       _stx115920_))))
                                _expr116054116085_))))))
               (let ()
                 (declare (not safe))
                 (_loop116049116069_ _target116046116064_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g116043116059_
                                                        _g116044116062_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g116043116059_
                                              _g116044116062_)))))
                                    (__tmp117128
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args115921_))
                                          (let ((__tmp117129
                                                 (lambda (_g116115116118_
                                                          _g116116116120_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g116115116118_
                                                           _g116116116120_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp117129
                                                    '()
                                                    _L116022_)))))
                               (declare (not safe))
                               (_g116042116113_ __tmp117128)))
                           _tl115932115974_
                           _expr115944116016_
                           _hd115945116018_
                           _hd115930115964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115938115982_
                                                     _target115935115977_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115923115956_
                                                   _g115924115959_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115923115956_ _g115924115959_)))))
                              (let ()
                                (declare (not safe))
                                (_g115923115956_ _g115924115959_)))))
                      (let ()
                        (declare (not safe))
                        (_g115923115956_ _g115924115959_))))))
          (declare (not safe))
          (_g115922116123_ _stx115920_))))
    (define gxc#xform-operands
      (lambda (_stx115876_ . _args115877_)
        (let* ((_g115879115890_
                (lambda (_g115880115887_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115880115887_))))
               (_g115878115917_
                (lambda (_g115880115893_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115880115893_))
                      (let ((_e115885115895_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115880115893_))))
                        (let ((_hd115884115898_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115885115895_)))
                              (_tl115883115900_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115885115895_))))
                          ((lambda (_L115903_ _L115904_)
                             (let* ((_rands115915_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args115877_))
                                          _L115903_))
                                    (__tmp117132
                                     (let ()
                                       (declare (not safe))
                                       (cons _L115904_ _rands115915_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117132
                                _stx115876_)))
                           _tl115883115900_
                           _hd115884115898_)))
                      (let ()
                        (declare (not safe))
                        (_g115879115890_ _g115880115893_))))))
          (declare (not safe))
          (_g115878115917_ _stx115876_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx115797_ . _args115798_)
        (let* ((_g115800115817_
                (lambda (_g115801115814_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115801115814_))))
               (_g115799115873_
                (lambda (_g115801115820_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115801115820_))
                      (let ((_e115806115822_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115801115820_))))
                        (let ((_hd115805115825_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115806115822_)))
                              (_tl115804115827_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115806115822_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115804115827_))
                              (let ((_e115809115830_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115804115827_))))
                                (let ((_hd115808115833_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115809115830_)))
                                      (_tl115807115835_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115809115830_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115807115835_))
                                      (let ((_e115812115838_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115807115835_))))
                                        (let ((_hd115811115841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115812115838_)))
                                              (_tl115810115843_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115812115838_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115810115843_))
                                              ((lambda (_L115846_ _L115847_)
                                                 (let* ((_expr115871_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args115798_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L115846_))
                     (let ((_arg1115862_ (car _args115798_))
                           (_rest115864_ (cdr _args115798_)))
                       (if (let () (declare (not safe)) (null? _rest115864_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L115846_ _arg1115862_))
                           (let ((_arg2115867_ (car _rest115864_))
                                 (_rest115869_ (cdr _rest115864_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest115869_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L115846_
                                    _arg1115862_
                                    _arg2115867_))
                                 (apply gxc#compile-e
                                        _L115846_
                                        _arg1115862_
                                        _arg2115867_
                                        _rest115869_)))))))
                (__tmp117133
                 (let ((__tmp117134
                        (let ((__tmp117135
                               (let ()
                                 (declare (not safe))
                                 (cons _expr115871_ '()))))
                          (declare (not safe))
                          (cons _L115847_ __tmp117135))))
                   (declare (not safe))
                   (cons '%#set! __tmp117134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117133
                                                    _stx115797_)))
                                               _hd115811115841_
                                               _hd115808115833_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115800115817_
                                                 _g115801115820_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115800115817_ _g115801115820_)))))
                              (let ()
                                (declare (not safe))
                                (_g115800115817_ _g115801115820_)))))
                      (let ()
                        (declare (not safe))
                        (_g115800115817_ _g115801115820_))))))
          (declare (not safe))
          (_g115799115873_ _stx115797_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx115728_)
        (let* ((_g115730115747_
                (lambda (_g115731115744_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115731115744_))))
               (_g115729115794_
                (lambda (_g115731115750_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115731115750_))
                      (let ((_e115736115752_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115731115750_))))
                        (let ((_hd115735115755_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115736115752_)))
                              (_tl115734115757_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115736115752_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115734115757_))
                              (let ((_e115739115760_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115734115757_))))
                                (let ((_hd115738115763_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115739115760_)))
                                      (_tl115737115765_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115739115760_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115737115765_))
                                      (let ((_e115742115768_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115737115765_))))
                                        (let ((_hd115741115771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115742115768_)))
                                              (_tl115740115773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115742115768_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115740115773_))
                                              ((lambda (_L115776_ _L115777_)
                                                 (let ((_sym115792_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L115777_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym115792_))
                                                   (let ((__tmp117136
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp117136
                                                      _sym115792_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L115776_))))
                                               _hd115741115771_
                                               _hd115738115763_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115730115747_
                                                 _g115731115750_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115730115747_ _g115731115750_)))))
                              (let ()
                                (declare (not safe))
                                (_g115730115747_ _g115731115750_)))))
                      (let ()
                        (declare (not safe))
                        (_g115730115747_ _g115731115750_))))))
          (declare (not safe))
          (_g115729115794_ _stx115728_))))
    (define gxc#collect-methods-call%
      (lambda (_stx115282_)
        (let* ((___stx116826116827_ _stx115282_)
               (_g115286115388_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx116826116827_)))))
          (let ((___kont116828116829_
                 (lambda (_L115678_ _L115679_ _L115680_ _L115681_ _L115682_)
                   (let ((__tmp117137
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L115679_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117137))))
                (___kont116830116831_
                 (lambda (_L115504_ _L115505_ _L115506_ _L115507_)
                   (let ((__tmp117138
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L115504_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117138))))
                (___kont116832116833_ (lambda () '#!void)))
            (let ((___match116961116962_
                   (lambda (_e115295115550_
                            _hd115294115553_
                            _tl115293115555_
                            _e115298115558_
                            _hd115297115561_
                            _tl115296115563_
                            _e115301115566_
                            _hd115300115569_
                            _tl115299115571_
                            _e115304115574_
                            _hd115303115577_
                            _tl115302115579_
                            _e115307115582_
                            _hd115306115585_
                            _tl115305115587_
                            _e115310115590_
                            _hd115309115593_
                            _tl115308115595_
                            _e115313115598_
                            _hd115312115601_
                            _tl115311115603_
                            _e115316115606_
                            _hd115315115609_
                            _tl115314115611_
                            _e115319115614_
                            _hd115318115617_
                            _tl115317115619_
                            _e115322115622_
                            _hd115321115625_
                            _tl115320115627_
                            _e115325115630_
                            _hd115324115633_
                            _tl115323115635_
                            _e115328115638_
                            _hd115327115641_
                            _tl115326115643_
                            _e115331115646_
                            _hd115330115649_
                            _tl115329115651_
                            _e115334115654_
                            _hd115333115657_
                            _tl115332115659_
                            _e115337115662_
                            _hd115336115665_
                            _tl115335115667_
                            _e115340115670_
                            _hd115339115673_
                            _tl115338115675_)
                     (let ((_L115678_ _hd115339115673_)
                           (_L115679_ _hd115330115649_)
                           (_L115680_ _hd115321115625_)
                           (_L115681_ _hd115312115601_)
                           (_L115682_ _hd115303115577_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L115682_
                              'bind-method!))
                           (___kont116828116829_
                            _L115678_
                            _L115679_
                            _L115680_
                            _L115681_
                            _L115682_)
                           (___kont116832116833_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx116826116827_))
                  (let ((_e115295115550_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx116826116827_))))
                    (let ((_tl115293115555_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115295115550_)))
                          (_hd115294115553_
                           (let ()
                             (declare (not safe))
                             (##car _e115295115550_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115293115555_))
                          (let ((_e115298115558_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115293115555_))))
                            (let ((_tl115296115563_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115298115558_)))
                                  (_hd115297115561_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115298115558_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115297115561_))
                                  (let ((_e115301115566_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115297115561_))))
                                    (let ((_tl115299115571_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115301115566_)))
                                          (_hd115300115569_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115301115566_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd115300115569_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd115300115569_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115299115571_))
                                                  (let ((_e115304115574_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115299115571_))))
                                                    (let ((_tl115302115579_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115304115574_)))
                                                          (_hd115303115577_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115304115574_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115302115579_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115296115563_))
                      (let ((_e115307115582_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115296115563_))))
                        (let ((_tl115305115587_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115307115582_)))
                              (_hd115306115585_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115307115582_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd115306115585_))
                              (let ((_e115310115590_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd115306115585_))))
                                (let ((_tl115308115595_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115310115590_)))
                                      (_hd115309115593_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115310115590_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd115309115593_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd115309115593_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl115308115595_))
                                              (let ((_e115313115598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl115308115595_))))
                                                (let ((_tl115311115603_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e115313115598_)))
                                                      (_hd115312115601_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e115313115598_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115311115603_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl115305115587_))
                                                          (let ((_e115316115606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl115305115587_))))
                    (let ((_tl115314115611_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115316115606_)))
                          (_hd115315115609_
                           (let ()
                             (declare (not safe))
                             (##car _e115316115606_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd115315115609_))
                          (let ((_e115319115614_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd115315115609_))))
                            (let ((_tl115317115619_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115319115614_)))
                                  (_hd115318115617_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115319115614_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd115318115617_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd115318115617_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl115317115619_))
                                          (let ((_e115322115622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl115317115619_))))
                                            (let ((_tl115320115627_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115322115622_)))
                                                  (_hd115321115625_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115322115622_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl115320115627_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl115314115611_))
                                                      (let ((_e115325115630_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl115314115611_))))
                (let ((_tl115323115635_
                       (let () (declare (not safe)) (##cdr _e115325115630_)))
                      (_hd115324115633_
                       (let () (declare (not safe)) (##car _e115325115630_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd115324115633_))
                      (let ((_e115328115638_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd115324115633_))))
                        (let ((_tl115326115643_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115328115638_)))
                              (_hd115327115641_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115328115638_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd115327115641_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd115327115641_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115326115643_))
                                      (let ((_e115331115646_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115326115643_))))
                                        (let ((_tl115329115651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115331115646_)))
                                              (_hd115330115649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115331115646_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115329115651_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115323115635_))
                                                  (let ((_e115334115654_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115323115635_))))
                                                    (let ((_tl115332115659_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115334115654_)))
                                                          (_hd115333115657_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115334115654_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd115333115657_))
                                                          (let ((_e115337115662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd115333115657_))))
                    (let ((_tl115335115667_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115337115662_)))
                          (_hd115336115665_
                           (let ()
                             (declare (not safe))
                             (##car _e115337115662_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd115336115665_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd115336115665_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl115335115667_))
                                  (let ((_e115340115670_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl115335115667_))))
                                    (let ((_tl115338115675_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115340115670_)))
                                          (_hd115339115673_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115340115670_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl115338115675_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115332115659_))
                                              (___match116961116962_
                                               _e115295115550_
                                               _hd115294115553_
                                               _tl115293115555_
                                               _e115298115558_
                                               _hd115297115561_
                                               _tl115296115563_
                                               _e115301115566_
                                               _hd115300115569_
                                               _tl115299115571_
                                               _e115304115574_
                                               _hd115303115577_
                                               _tl115302115579_
                                               _e115307115582_
                                               _hd115306115585_
                                               _tl115305115587_
                                               _e115310115590_
                                               _hd115309115593_
                                               _tl115308115595_
                                               _e115313115598_
                                               _hd115312115601_
                                               _tl115311115603_
                                               _e115316115606_
                                               _hd115315115609_
                                               _tl115314115611_
                                               _e115319115614_
                                               _hd115318115617_
                                               _tl115317115619_
                                               _e115322115622_
                                               _hd115321115625_
                                               _tl115320115627_
                                               _e115325115630_
                                               _hd115324115633_
                                               _tl115323115635_
                                               _e115328115638_
                                               _hd115327115641_
                                               _tl115326115643_
                                               _e115331115646_
                                               _hd115330115649_
                                               _tl115329115651_
                                               _e115334115654_
                                               _hd115333115657_
                                               _tl115332115659_
                                               _e115337115662_
                                               _hd115336115665_
                                               _tl115335115667_
                                               _e115340115670_
                                               _hd115339115673_
                                               _tl115338115675_)
                                              (___kont116832116833_))
                                          (___kont116832116833_))))
                                  (___kont116832116833_))
                              (___kont116832116833_))
                          (___kont116832116833_))))
                  (___kont116832116833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115323115635_))
                                                      (if (let ((__tmp117139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp117139 'bind-method!))
                  (let ((_L115504_ _hd115330115649_)
                        (_L115505_ _hd115321115625_)
                        (_L115506_ _hd115312115601_)
                        (_L115507_ _hd115303115577_))
                    (___kont116830116831_
                     _L115504_
                     _L115505_
                     _L115506_
                     _L115507_))
                  (___kont116832116833_))
              (___kont116832116833_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116832116833_))))
                                      (___kont116832116833_))
                                  (___kont116832116833_))
                              (___kont116832116833_))))
                      (___kont116832116833_))))
              (___kont116832116833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116832116833_))))
                                          (___kont116832116833_))
                                      (___kont116832116833_))
                                  (___kont116832116833_))))
                          (___kont116832116833_))))
                  (___kont116832116833_))
              (___kont116832116833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116832116833_))
                                          (___kont116832116833_))
                                      (___kont116832116833_))))
                              (___kont116832116833_))))
                      (___kont116832116833_))
                  (___kont116832116833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116832116833_))
                                              (___kont116832116833_))
                                          (___kont116832116833_))))
                                  (___kont116832116833_))))
                          (___kont116832116833_))))
                  (___kont116832116833_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx115229_ _id115230_ _new-id115231_)
        (let* ((_g115233115246_
                (lambda (_g115234115243_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115234115243_))))
               (_g115232115279_
                (lambda (_g115234115249_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115234115249_))
                      (let ((_e115238115251_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115234115249_))))
                        (let ((_hd115237115254_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115238115251_)))
                              (_tl115236115256_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115238115251_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115236115256_))
                              (let ((_e115241115259_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115236115256_))))
                                (let ((_hd115240115262_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115241115259_)))
                                      (_tl115239115264_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115241115259_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115239115264_))
                                      ((lambda (_L115267_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L115267_
                                                _id115230_))
                                             (let ((__tmp117140
                                                    (let ((__tmp117141
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id115231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp117141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp117140
                                                _stx115229_))
                                             _stx115229_))
                                       _hd115240115262_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115233115246_ _g115234115249_)))))
                              (let ()
                                (declare (not safe))
                                (_g115233115246_ _g115234115249_)))))
                      (let ()
                        (declare (not safe))
                        (_g115233115246_ _g115234115249_))))))
          (declare (not safe))
          (_g115232115279_ _stx115229_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx115170_ _subst115171_)
        (let* ((_g115173115186_
                (lambda (_g115174115183_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115174115183_))))
               (_g115172115226_
                (lambda (_g115174115189_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115174115189_))
                      (let ((_e115178115191_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115174115189_))))
                        (let ((_hd115177115194_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115178115191_)))
                              (_tl115176115196_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115178115191_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115176115196_))
                              (let ((_e115181115199_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115176115196_))))
                                (let ((_hd115180115202_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115181115199_)))
                                      (_tl115179115204_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115181115199_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115179115204_))
                                      ((lambda (_L115207_)
                                         (let ((_$e115221_
                                                (let ((__tmp117142
                                                       (lambda (_sub115219_)
                                                         (let ((__tmp117143
                                                                (car _sub115219_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L115207_
                                                            __tmp117143)))))
                                                  (declare (not safe))
                                                  (find __tmp117142
                                                        _subst115171_))))
                                           (if _$e115221_
                                               ((lambda (_sub115224_)
                                                  (let ((__tmp117144
                                                         (let ((__tmp117145
                                                                (let ((__tmp117146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub115224_)))
                          (declare (not safe))
                          (cons __tmp117146 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp117145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp117144
                                                     _stx115170_)))
                                                _$e115221_)
                                               _stx115170_)))
                                       _hd115180115202_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115173115186_ _g115174115189_)))))
                              (let ()
                                (declare (not safe))
                                (_g115173115186_ _g115174115189_)))))
                      (let ()
                        (declare (not safe))
                        (_g115173115186_ _g115174115189_))))))
          (declare (not safe))
          (_g115172115226_ _stx115170_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx115098_ _id115099_ _new-id115100_)
        (let* ((_g115102115119_
                (lambda (_g115103115116_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115103115116_))))
               (_g115101115167_
                (lambda (_g115103115122_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115103115122_))
                      (let ((_e115108115124_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115103115122_))))
                        (let ((_hd115107115127_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115108115124_)))
                              (_tl115106115129_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115108115124_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115106115129_))
                              (let ((_e115111115132_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115106115129_))))
                                (let ((_hd115110115135_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115111115132_)))
                                      (_tl115109115137_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115111115132_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115109115137_))
                                      (let ((_e115114115140_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115109115137_))))
                                        (let ((_hd115113115143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115114115140_)))
                                              (_tl115112115145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115114115140_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115112115145_))
                                              ((lambda (_L115148_ _L115149_)
                                                 (let ((_new-expr115164_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L115148_
                                                           _id115099_
                                                           _new-id115100_)))
                                                       (_new-xid115165_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L115149_
                                                               _id115099_))
                                                            _new-id115100_
                                                            _L115149_)))
                                                   (let ((__tmp117147
                                                          (let ((__tmp117148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117149
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115164_ '()))))
                           (declare (not safe))
                           (cons _new-xid115165_ __tmp117149))))
                    (declare (not safe))
                    (cons '%#set! __tmp117148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117147
                                                      _stx115098_))))
                                               _hd115113115143_
                                               _hd115110115135_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115102115119_
                                                 _g115103115122_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115102115119_ _g115103115122_)))))
                              (let ()
                                (declare (not safe))
                                (_g115102115119_ _g115103115122_)))))
                      (let ()
                        (declare (not safe))
                        (_g115102115119_ _g115103115122_))))))
          (declare (not safe))
          (_g115101115167_ _stx115098_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx115022_ _subst115023_)
        (let* ((_g115025115042_
                (lambda (_g115026115039_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115026115039_))))
               (_g115024115095_
                (lambda (_g115026115045_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115026115045_))
                      (let ((_e115031115047_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115026115045_))))
                        (let ((_hd115030115050_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115031115047_)))
                              (_tl115029115052_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115031115047_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115029115052_))
                              (let ((_e115034115055_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115029115052_))))
                                (let ((_hd115033115058_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115034115055_)))
                                      (_tl115032115060_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115034115055_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115032115060_))
                                      (let ((_e115037115063_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115032115060_))))
                                        (let ((_hd115036115066_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115037115063_)))
                                              (_tl115035115068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115037115063_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115035115068_))
                                              ((lambda (_L115071_ _L115072_)
                                                 (let ((_new-expr115092_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L115071_
                                                           _subst115023_)))
                                                       (_new-xid115093_
                                                        (let ((_$e115089_
                                                               (let ((__tmp117150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub115087_)
                                (let ((__tmp117151 (car _sub115087_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L115072_
                                   __tmp117151)))))
                         (declare (not safe))
                         (find __tmp117150 _subst115023_))))
                  (if _$e115089_ (cdr _$e115089_) _L115072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp117152
                                                          (let ((__tmp117153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117154
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115092_ '()))))
                           (declare (not safe))
                           (cons _new-xid115093_ __tmp117154))))
                    (declare (not safe))
                    (cons '%#set! __tmp117153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117152
                                                      _stx115022_))))
                                               _hd115036115066_
                                               _hd115033115058_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115025115042_
                                                 _g115026115045_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115025115042_ _g115026115045_)))))
                              (let ()
                                (declare (not safe))
                                (_g115025115042_ _g115026115045_)))))
                      (let ()
                        (declare (not safe))
                        (_g115025115042_ _g115026115045_))))))
          (declare (not safe))
          (_g115024115095_ _stx115022_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx114968_ _ht114969_)
        (let* ((_g114971114984_
                (lambda (_g114972114981_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114972114981_))))
               (_g114970115019_
                (lambda (_g114972114987_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114972114987_))
                      (let ((_e114976114989_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114972114987_))))
                        (let ((_hd114975114992_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114976114989_)))
                              (_tl114974114994_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114976114989_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114974114994_))
                              (let ((_e114979114997_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114974114994_))))
                                (let ((_hd114978115000_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114979114997_)))
                                      (_tl114977115002_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114979114997_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114977115002_))
                                      ((lambda (_L115005_)
                                         (let ((_eid115017_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L115005_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht114969_
                                            _eid115017_
                                            1+
                                            '0)))
                                       _hd114978115000_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114971114984_ _g114972114987_)))))
                              (let ()
                                (declare (not safe))
                                (_g114971114984_ _g114972114987_)))))
                      (let ()
                        (declare (not safe))
                        (_g114971114984_ _g114972114987_))))))
          (declare (not safe))
          (_g114970115019_ _stx114968_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx114898_ _ht114899_)
        (let* ((_g114901114918_
                (lambda (_g114902114915_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114902114915_))))
               (_g114900114965_
                (lambda (_g114902114921_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114902114921_))
                      (let ((_e114907114923_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114902114921_))))
                        (let ((_hd114906114926_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114907114923_)))
                              (_tl114905114928_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114907114923_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114905114928_))
                              (let ((_e114910114931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114905114928_))))
                                (let ((_hd114909114934_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114910114931_)))
                                      (_tl114908114936_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114910114931_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114908114936_))
                                      (let ((_e114913114939_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114908114936_))))
                                        (let ((_hd114912114942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114913114939_)))
                                              (_tl114911114944_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114913114939_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114911114944_))
                                              ((lambda (_L114947_ _L114948_)
                                                 (let ((_eid114963_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L114948_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht114899_
                                                      _eid114963_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L114947_
                                                      _ht114899_))))
                                               _hd114912114942_
                                               _hd114909114934_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114901114918_
                                                 _g114902114921_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114901114918_ _g114902114921_)))))
                              (let ()
                                (declare (not safe))
                                (_g114901114918_ _g114902114921_)))))
                      (let ()
                        (declare (not safe))
                        (_g114901114918_ _g114902114921_))))))
          (declare (not safe))
          (_g114900114965_ _stx114898_))))
    (define gxc#find-body%
      (lambda (_stx114811_ _arg114812_)
        (let* ((_g114814114833_
                (lambda (_g114815114830_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114815114830_))))
               (_g114813114895_
                (lambda (_g114815114836_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114815114836_))
                      (let ((_e114819114838_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114815114836_))))
                        (let ((_hd114818114841_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114819114838_)))
                              (_tl114817114843_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114819114838_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl114817114843_))
                              (let ((_g117155_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl114817114843_
                                        '0))))
                                (begin
                                  (let ((_g117156_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117155_)
                                               (##vector-length _g117155_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117156_ 2)))
                                        (error "Context expects 2 values"
                                               _g117156_)))
                                  (let ((_target114820114846_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117155_ 0)))
                                        (_tl114822114848_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117155_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114822114848_))
                                        (letrec ((_loop114823114851_
                                                  (lambda (_hd114821114854_
                                                           _expr114827114856_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd114821114854_))
                                                        (let ((_e114824114859_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd114821114854_))))
                  (let ((_lp-hd114825114862_
                         (let () (declare (not safe)) (##car _e114824114859_)))
                        (_lp-tl114826114864_
                         (let ()
                           (declare (not safe))
                           (##cdr _e114824114859_))))
                    (let ((__tmp117160
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd114825114862_ _expr114827114856_))))
                      (declare (not safe))
                      (_loop114823114851_ _lp-tl114826114864_ __tmp117160))))
                (let ((_expr114828114867_ (reverse _expr114827114856_)))
                  ((lambda (_L114870_)
                     (let ((__tmp117159
                            (lambda (_g114883114885_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g114883114885_
                                 _arg114812_))))
                           (__tmp117157
                            (let ((__tmp117158
                                   (lambda (_g114887114890_ _g114888114892_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g114887114890_
                                             _g114888114892_)))))
                              (declare (not safe))
                              (foldr1 __tmp117158 '() _L114870_))))
                       (declare (not safe))
                       (ormap1 __tmp117159 __tmp117157)))
                   _expr114828114867_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop114823114851_
                                             _target114820114846_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g114814114833_
                                           _g114815114836_))))))
                              (let ()
                                (declare (not safe))
                                (_g114814114833_ _g114815114836_)))))
                      (let ()
                        (declare (not safe))
                        (_g114814114833_ _g114815114836_))))))
          (declare (not safe))
          (_g114813114895_ _stx114811_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx114743_ _arg114744_)
        (let* ((_g114746114763_
                (lambda (_g114747114760_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114747114760_))))
               (_g114745114808_
                (lambda (_g114747114766_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114747114766_))
                      (let ((_e114752114768_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114747114766_))))
                        (let ((_hd114751114771_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114752114768_)))
                              (_tl114750114773_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114752114768_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114750114773_))
                              (let ((_e114755114776_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114750114773_))))
                                (let ((_hd114754114779_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114755114776_)))
                                      (_tl114753114781_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114755114776_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114753114781_))
                                      (let ((_e114758114784_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114753114781_))))
                                        (let ((_hd114757114787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114758114784_)))
                                              (_tl114756114789_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114758114784_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114756114789_))
                                              ((lambda (_L114792_ _L114793_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114792_
                                                    _arg114744_)))
                                               _hd114757114787_
                                               _hd114754114779_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114746114763_
                                                 _g114747114766_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114746114763_ _g114747114766_)))))
                              (let ()
                                (declare (not safe))
                                (_g114746114763_ _g114747114766_)))))
                      (let ()
                        (declare (not safe))
                        (_g114746114763_ _g114747114766_))))))
          (declare (not safe))
          (_g114745114808_ _stx114743_))))
    (define gxc#find-lambda%
      (lambda (_stx114675_ _arg114676_)
        (let* ((_g114678114695_
                (lambda (_g114679114692_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114679114692_))))
               (_g114677114740_
                (lambda (_g114679114698_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114679114698_))
                      (let ((_e114684114700_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114679114698_))))
                        (let ((_hd114683114703_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114684114700_)))
                              (_tl114682114705_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114684114700_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114682114705_))
                              (let ((_e114687114708_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114682114705_))))
                                (let ((_hd114686114711_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114687114708_)))
                                      (_tl114685114713_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114687114708_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114685114713_))
                                      (let ((_e114690114716_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114685114713_))))
                                        (let ((_hd114689114719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114690114716_)))
                                              (_tl114688114721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114690114716_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114688114721_))
                                              ((lambda (_L114724_ _L114725_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114724_
                                                    _arg114676_)))
                                               _hd114689114719_
                                               _hd114686114711_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114678114695_
                                                 _g114679114698_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114678114695_ _g114679114698_)))))
                              (let ()
                                (declare (not safe))
                                (_g114678114695_ _g114679114698_)))))
                      (let ()
                        (declare (not safe))
                        (_g114678114695_ _g114679114698_))))))
          (declare (not safe))
          (_g114677114740_ _stx114675_))))
    (define gxc#find-case-lambda%
      (lambda (_stx114557_ _arg114558_)
        (let* ((_g114560114588_
                (lambda (_g114561114585_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114561114585_))))
               (_g114559114672_
                (lambda (_g114561114591_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114561114591_))
                      (let ((_e114566114593_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114561114591_))))
                        (let ((_hd114565114596_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114566114593_)))
                              (_tl114564114598_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114566114593_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl114564114598_))
                              (let ((_g117161_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl114564114598_
                                        '0))))
                                (begin
                                  (let ((_g117162_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117161_)
                                               (##vector-length _g117161_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117162_ 2)))
                                        (error "Context expects 2 values"
                                               _g117162_)))
                                  (let ((_target114567114601_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117161_ 0)))
                                        (_tl114569114603_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117161_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114569114603_))
                                        (letrec ((_loop114570114606_
                                                  (lambda (_hd114568114609_
                                                           _body114574114611_
                                                           _hd114575114613_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd114568114609_))
                                                        (let ((_e114571114616_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd114568114609_))))
                  (let ((_lp-hd114572114619_
                         (let () (declare (not safe)) (##car _e114571114616_)))
                        (_lp-tl114573114621_
                         (let ()
                           (declare (not safe))
                           (##cdr _e114571114616_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd114572114619_))
                        (let ((_e114580114624_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd114572114619_))))
                          (let ((_hd114579114627_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114580114624_)))
                                (_tl114578114629_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114580114624_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl114578114629_))
                                (let ((_e114583114632_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl114578114629_))))
                                  (let ((_hd114582114635_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e114583114632_)))
                                        (_tl114581114637_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e114583114632_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114581114637_))
                                        (let ((__tmp117167
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd114582114635_
                                                       _body114574114611_)))
                                              (__tmp117166
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd114579114627_
                                                       _hd114575114613_))))
                                          (declare (not safe))
                                          (_loop114570114606_
                                           _lp-tl114573114621_
                                           __tmp117167
                                           __tmp117166))
                                        (let ()
                                          (declare (not safe))
                                          (_g114560114588_ _g114561114591_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g114560114588_ _g114561114591_)))))
                        (let ()
                          (declare (not safe))
                          (_g114560114588_ _g114561114591_)))))
                (let ((_body114576114640_ (reverse _body114574114611_))
                      (_hd114577114642_ (reverse _hd114575114613_)))
                  ((lambda (_L114645_ _L114646_)
                     (let ((__tmp117165
                            (lambda (_g114660114662_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g114660114662_
                                 _arg114558_))))
                           (__tmp117163
                            (let ((__tmp117164
                                   (lambda (_g114664114667_ _g114665114669_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g114664114667_
                                             _g114665114669_)))))
                              (declare (not safe))
                              (foldr1 __tmp117164 '() _L114645_))))
                       (declare (not safe))
                       (ormap1 __tmp117165 __tmp117163)))
                   _body114576114640_
                   _hd114577114642_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop114570114606_
                                             _target114567114601_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g114560114588_
                                           _g114561114591_))))))
                              (let ()
                                (declare (not safe))
                                (_g114560114588_ _g114561114591_)))))
                      (let ()
                        (declare (not safe))
                        (_g114560114588_ _g114561114591_))))))
          (declare (not safe))
          (_g114559114672_ _stx114557_))))
    (define gxc#find-let-values%
      (lambda (_stx114407_ _arg114408_)
        (let* ((_g114410114445_
                (lambda (_g114411114442_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114411114442_))))
               (_g114409114554_
                (lambda (_g114411114448_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114411114448_))
                      (let ((_e114417114450_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114411114448_))))
                        (let ((_hd114416114453_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114417114450_)))
                              (_tl114415114455_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114417114450_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114415114455_))
                              (let ((_e114420114458_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114415114455_))))
                                (let ((_hd114419114461_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114420114458_)))
                                      (_tl114418114463_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114420114458_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd114419114461_))
                                      (let ((_g117168_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd114419114461_
                                                '0))))
                                        (begin
                                          (let ((_g117169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117168_)
                                                       (##vector-length
                                                        _g117168_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117169_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117169_)))
                                          (let ((_target114421114466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117168_ 0)))
                                                (_tl114423114468_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117168_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114423114468_))
                                                (letrec ((_loop114424114471_
                                                          (lambda (_hd114422114474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr114428114476_
                           _bind114429114478_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd114422114474_))
                        (let ((_e114425114481_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd114422114474_))))
                          (let ((_lp-hd114426114484_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114425114481_)))
                                (_lp-tl114427114486_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114425114481_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd114426114484_))
                                (let ((_e114434114489_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd114426114484_))))
                                  (let ((_hd114433114492_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e114434114489_)))
                                        (_tl114432114494_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e114434114489_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl114432114494_))
                                        (let ((_e114437114497_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl114432114494_))))
                                          (let ((_hd114436114500_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e114437114497_)))
                                                (_tl114435114502_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e114437114497_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114435114502_))
                                                (let ((__tmp117174
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd114436114500_
                                                               _expr114428114476_)))
                                                      (__tmp117173
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd114433114492_
                                                               _bind114429114478_))))
                                                  (declare (not safe))
                                                  (_loop114424114471_
                                                   _lp-tl114427114486_
                                                   __tmp117174
                                                   __tmp117173))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114410114445_
                                                   _g114411114448_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g114410114445_ _g114411114448_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g114410114445_ _g114411114448_)))))
                        (let ((_expr114430114505_ (reverse _expr114428114476_))
                              (_bind114431114507_
                               (reverse _bind114429114478_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114418114463_))
                              (let ((_e114440114510_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114418114463_))))
                                (let ((_hd114439114513_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114440114510_)))
                                      (_tl114438114515_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114440114510_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114438114515_))
                                      ((lambda (_L114518_ _L114519_ _L114520_)
                                         (let ((_$e114551_
                                                (let ((__tmp117172
                                                       (lambda (_g114539114541_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g114539114541_
                                                            _arg114408_))))
                                                      (__tmp117170
                                                       (let ((__tmp117171
                                                              (lambda (_g114543114546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g114544114548_)
                        (let ()
                          (declare (not safe))
                          (cons _g114543114546_ _g114544114548_)))))
                 (declare (not safe))
                 (foldr1 __tmp117171 '() _L114519_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp117172
                                                          __tmp117170))))
                                           (if _$e114551_
                                               _$e114551_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L114518_
                                                  _arg114408_)))))
                                       _hd114439114513_
                                       _expr114430114505_
                                       _bind114431114507_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114410114445_ _g114411114448_)))))
                              (let ()
                                (declare (not safe))
                                (_g114410114445_ _g114411114448_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop114424114471_
                                                     _target114421114466_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114410114445_
                                                   _g114411114448_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114410114445_ _g114411114448_)))))
                              (let ()
                                (declare (not safe))
                                (_g114410114445_ _g114411114448_)))))
                      (let ()
                        (declare (not safe))
                        (_g114410114445_ _g114411114448_))))))
          (declare (not safe))
          (_g114409114554_ _stx114407_))))
    (define gxc#find-setq%
      (lambda (_stx114339_ _arg114340_)
        (let* ((_g114342114359_
                (lambda (_g114343114356_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114343114356_))))
               (_g114341114404_
                (lambda (_g114343114362_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114343114362_))
                      (let ((_e114348114364_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114343114362_))))
                        (let ((_hd114347114367_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114348114364_)))
                              (_tl114346114369_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114348114364_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114346114369_))
                              (let ((_e114351114372_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114346114369_))))
                                (let ((_hd114350114375_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114351114372_)))
                                      (_tl114349114377_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114351114372_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114349114377_))
                                      (let ((_e114354114380_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114349114377_))))
                                        (let ((_hd114353114383_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114354114380_)))
                                              (_tl114352114385_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114354114380_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114352114385_))
                                              ((lambda (_L114388_ _L114389_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114388_
                                                    _arg114340_)))
                                               _hd114353114383_
                                               _hd114350114375_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114342114359_
                                                 _g114343114362_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114342114359_ _g114343114362_)))))
                              (let ()
                                (declare (not safe))
                                (_g114342114359_ _g114343114362_)))))
                      (let ()
                        (declare (not safe))
                        (_g114342114359_ _g114343114362_))))))
          (declare (not safe))
          (_g114341114404_ _stx114339_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx114283_ _ids114284_)
        (let* ((_g114286114299_
                (lambda (_g114287114296_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114287114296_))))
               (_g114285114336_
                (lambda (_g114287114302_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114287114302_))
                      (let ((_e114291114304_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114287114302_))))
                        (let ((_hd114290114307_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114291114304_)))
                              (_tl114289114309_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114291114304_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114289114309_))
                              (let ((_e114294114312_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114289114309_))))
                                (let ((_hd114293114315_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114294114312_)))
                                      (_tl114292114317_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114294114312_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114292114317_))
                                      ((lambda (_L114320_)
                                         (let ((__tmp117175
                                                (lambda (_g114331114333_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L114320_
                                                     _g114331114333_)))))
                                           (declare (not safe))
                                           (find __tmp117175 _ids114284_)))
                                       _hd114293114315_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114286114299_ _g114287114302_)))))
                              (let ()
                                (declare (not safe))
                                (_g114286114299_ _g114287114302_)))))
                      (let ()
                        (declare (not safe))
                        (_g114286114299_ _g114287114302_))))))
          (declare (not safe))
          (_g114285114336_ _stx114283_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx114207_ _ids114208_)
        (let* ((_g114210114227_
                (lambda (_g114211114224_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114211114224_))))
               (_g114209114280_
                (lambda (_g114211114230_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114211114230_))
                      (let ((_e114216114232_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114211114230_))))
                        (let ((_hd114215114235_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114216114232_)))
                              (_tl114214114237_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114216114232_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114214114237_))
                              (let ((_e114219114240_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114214114237_))))
                                (let ((_hd114218114243_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114219114240_)))
                                      (_tl114217114245_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114219114240_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114217114245_))
                                      (let ((_e114222114248_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114217114245_))))
                                        (let ((_hd114221114251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114222114248_)))
                                              (_tl114220114253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114222114248_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114220114253_))
                                              ((lambda (_L114256_ _L114257_)
                                                 (let ((_$e114277_
                                                        (let ((__tmp117176
                                                               (lambda (_g114272114274_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L114257_ _g114272114274_)))))
                  (declare (not safe))
                  (find __tmp117176 _ids114208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e114277_
                                                       _$e114277_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L114256_
                                                          _ids114208_)))))
                                               _hd114221114251_
                                               _hd114218114243_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114210114227_
                                                 _g114211114230_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114210114227_ _g114211114230_)))))
                              (let ()
                                (declare (not safe))
                                (_g114210114227_ _g114211114230_)))))
                      (let ()
                        (declare (not safe))
                        (_g114210114227_ _g114211114230_))))))
          (declare (not safe))
          (_g114209114280_ _stx114207_))))))
