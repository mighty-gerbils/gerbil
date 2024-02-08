(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707384298)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl213846_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl213846_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl213842_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213842_ '%#declare gxc#xform-identity))
           _tbl213842_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl213838_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218286 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl213838_ __tmp218286))
           (let ((__tmp218287 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl213838_ __tmp218287))
           _tbl213838_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl213834_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213834_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213834_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213834_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213834_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213834_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl213834_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl213830_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218288 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl213830_ __tmp218288))
           (let ((__tmp218289 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl213830_ __tmp218289))
           (let ()
             (declare (not safe))
             (table-set! _tbl213830_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213830_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213830_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213830_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213830_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl213830_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl213826_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218290 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl213826_ __tmp218290))
           (let ()
             (declare (not safe))
             (table-set! _tbl213826_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213826_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213826_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213826_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213826_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213826_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213826_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213826_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213826_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213826_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl213826_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx213809_ . _args213811_)
        (let ((__tmp218292
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213811_)
                     (gxc#compile-e__0 _stx213809_)
                     (let ((_arg1213816_ (car _args213811_))
                           (_rest213818_ (cdr _args213811_)))
                       (if (null? _rest213818_)
                           (gxc#compile-e__1 _stx213809_ _arg1213816_)
                           (let ((_arg2213821_ (car _rest213818_))
                                 (_rest213823_ (cdr _rest213818_)))
                             (if (null? _rest213823_)
                                 (gxc#compile-e__2
                                  _stx213809_
                                  _arg1213816_
                                  _arg2213821_)
                                 (apply gxc#compile-e
                                        _stx213809_
                                        _arg1213816_
                                        _arg2213821_
                                        _rest213823_))))))))
              (__tmp218291 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp218292
           gxc#current-compile-methods
           __tmp218291))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl213806_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218293 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl213806_ __tmp218293))
           (let ()
             (declare (not safe))
             (table-set! _tbl213806_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213806_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213806_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213806_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213806_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl213806_))))
    (define gxc#apply-collect-methods
      (lambda (_stx213789_ . _args213791_)
        (let ((__tmp218295
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213791_)
                     (gxc#compile-e__0 _stx213789_)
                     (let ((_arg1213796_ (car _args213791_))
                           (_rest213798_ (cdr _args213791_)))
                       (if (null? _rest213798_)
                           (gxc#compile-e__1 _stx213789_ _arg1213796_)
                           (let ((_arg2213801_ (car _rest213798_))
                                 (_rest213803_ (cdr _rest213798_)))
                             (if (null? _rest213803_)
                                 (gxc#compile-e__2
                                  _stx213789_
                                  _arg1213796_
                                  _arg2213801_)
                                 (apply gxc#compile-e
                                        _stx213789_
                                        _arg1213796_
                                        _arg2213801_
                                        _rest213803_))))))))
              (__tmp218294 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp218295
           gxc#current-compile-methods
           __tmp218294))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl213786_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218296 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl213786_ __tmp218296))
           (let ()
             (declare (not safe))
             (table-set! _tbl213786_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213786_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213786_ '%#set! gxc#expression-subst-setq%))
           _tbl213786_))))
    (define gxc#apply-expression-subst
      (lambda (_stx213769_ . _args213771_)
        (let ((__tmp218298
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213771_)
                     (gxc#compile-e__0 _stx213769_)
                     (let ((_arg1213776_ (car _args213771_))
                           (_rest213778_ (cdr _args213771_)))
                       (if (null? _rest213778_)
                           (gxc#compile-e__1 _stx213769_ _arg1213776_)
                           (let ((_arg2213781_ (car _rest213778_))
                                 (_rest213783_ (cdr _rest213778_)))
                             (if (null? _rest213783_)
                                 (gxc#compile-e__2
                                  _stx213769_
                                  _arg1213776_
                                  _arg2213781_)
                                 (apply gxc#compile-e
                                        _stx213769_
                                        _arg1213776_
                                        _arg2213781_
                                        _rest213783_))))))))
              (__tmp218297 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp218298
           gxc#current-compile-methods
           __tmp218297))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl213766_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218299 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl213766_ __tmp218299))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#set! gxc#expression-subst*-setq%))
           _tbl213766_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx213749_ . _args213751_)
        (let ((__tmp218301
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213751_)
                     (gxc#compile-e__0 _stx213749_)
                     (let ((_arg1213756_ (car _args213751_))
                           (_rest213758_ (cdr _args213751_)))
                       (if (null? _rest213758_)
                           (gxc#compile-e__1 _stx213749_ _arg1213756_)
                           (let ((_arg2213761_ (car _rest213758_))
                                 (_rest213763_ (cdr _rest213758_)))
                             (if (null? _rest213763_)
                                 (gxc#compile-e__2
                                  _stx213749_
                                  _arg1213756_
                                  _arg2213761_)
                                 (apply gxc#compile-e
                                        _stx213749_
                                        _arg1213756_
                                        _arg2213761_
                                        _rest213763_))))))))
              (__tmp218300 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp218301
           gxc#current-compile-methods
           __tmp218300))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl213746_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218302 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl213746_ __tmp218302))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213746_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213746_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213746_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl213746_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl213742_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218303 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl213742_ __tmp218303))
           (let ()
             (declare (not safe))
             (table-set! _tbl213742_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213742_ '%#set! gxc#find-var-refs-setq%))
           _tbl213742_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx213725_ . _args213727_)
        (let ((__tmp218305
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213727_)
                     (gxc#compile-e__0 _stx213725_)
                     (let ((_arg1213732_ (car _args213727_))
                           (_rest213734_ (cdr _args213727_)))
                       (if (null? _rest213734_)
                           (gxc#compile-e__1 _stx213725_ _arg1213732_)
                           (let ((_arg2213737_ (car _rest213734_))
                                 (_rest213739_ (cdr _rest213734_)))
                             (if (null? _rest213739_)
                                 (gxc#compile-e__2
                                  _stx213725_
                                  _arg1213732_
                                  _arg2213737_)
                                 (apply gxc#compile-e
                                        _stx213725_
                                        _arg1213732_
                                        _arg2213737_
                                        _rest213739_))))))))
              (__tmp218304 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp218305
           gxc#current-compile-methods
           __tmp218304))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl213722_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218306 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl213722_ __tmp218306))
           (let ()
             (declare (not safe))
             (table-set! _tbl213722_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213722_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl213722_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx213705_ . _args213707_)
        (let ((__tmp218308
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213707_)
                     (gxc#compile-e__0 _stx213705_)
                     (let ((_arg1213712_ (car _args213707_))
                           (_rest213714_ (cdr _args213707_)))
                       (if (null? _rest213714_)
                           (gxc#compile-e__1 _stx213705_ _arg1213712_)
                           (let ((_arg2213717_ (car _rest213714_))
                                 (_rest213719_ (cdr _rest213714_)))
                             (if (null? _rest213719_)
                                 (gxc#compile-e__2
                                  _stx213705_
                                  _arg1213712_
                                  _arg2213717_)
                                 (apply gxc#compile-e
                                        _stx213705_
                                        _arg1213712_
                                        _arg2213717_
                                        _rest213719_))))))))
              (__tmp218307 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp218308
           gxc#current-compile-methods
           __tmp218307))))
    (define gxc#xform-identity
      (lambda (_stx213702_ . _args213703_) _stx213702_))
    (define gxc#xform-wrap-source
      (lambda (_stx213699_ _src-stx213700_)
        (let ((__tmp218309
               (let () (declare (not safe)) (gx#stx-source _src-stx213700_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx213699_ __tmp218309))))
    (define gxc#xform-apply-compile-e
      (lambda (_args213686_)
        (lambda (_stx213688_)
          (if (let () (declare (not safe)) (null? _args213686_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx213688_))
              (let ((_arg1213690_ (car _args213686_))
                    (_rest213692_ (cdr _args213686_)))
                (if (let () (declare (not safe)) (null? _rest213692_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx213688_ _arg1213690_))
                    (let ((_arg2213695_ (car _rest213692_))
                          (_rest213697_ (cdr _rest213692_)))
                      (if (let () (declare (not safe)) (null? _rest213697_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx213688_
                             _arg1213690_
                             _arg2213695_))
                          (apply gxc#compile-e
                                 _stx213688_
                                 _arg1213690_
                                 _arg2213695_
                                 _rest213697_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx213645_ . _args213646_)
        (let* ((_g213648213658_
                (lambda (_g213649213655_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213649213655_))))
               (_g213647213683_
                (lambda (_g213649213661_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213649213661_))
                      (let ((_e213653213663_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213649213661_))))
                        (let ((_hd213652213666_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213653213663_)))
                              (_tl213651213668_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213653213663_))))
                          ((lambda (_L213671_)
                             (let* ((_forms213681_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args213646_))
                                          _L213671_))
                                    (__tmp218310
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms213681_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp218310
                                _stx213645_)))
                           _tl213651213668_)))
                      (let ()
                        (declare (not safe))
                        (_g213648213658_ _g213649213661_))))))
          (declare (not safe))
          (_g213647213683_ _stx213645_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx213603_ . _args213604_)
        (let* ((_g213606213616_
                (lambda (_g213607213613_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213607213613_))))
               (_g213605213642_
                (lambda (_g213607213619_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213607213619_))
                      (let ((_e213611213621_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213607213619_))))
                        (let ((_hd213610213624_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213611213621_)))
                              (_tl213609213626_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213611213621_))))
                          ((lambda (_L213629_)
                             (let ((__tmp218313
                                    (lambda ()
                                      (let* ((_forms213640_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args213604_))
                                                   _L213629_))
                                             (__tmp218314
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms213640_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp218314
                                         _stx213603_))))
                                   (__tmp218311
                                    (let ((__tmp218312
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp218312 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp218313
                                gx#current-expander-phi
                                __tmp218311)))
                           _tl213609213626_)))
                      (let ()
                        (declare (not safe))
                        (_g213606213616_ _g213607213619_))))))
          (declare (not safe))
          (_g213605213642_ _stx213603_))))
    (define gxc#xform-module%
      (lambda (_stx213531_ . _args213532_)
        (let* ((_g213534213548_
                (lambda (_g213535213545_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213535213545_))))
               (_g213533213600_
                (lambda (_g213535213551_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213535213551_))
                      (let ((_e213540213553_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213535213551_))))
                        (let ((_hd213539213556_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213540213553_)))
                              (_tl213538213558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213540213553_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213538213558_))
                              (let ((_e213543213561_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213538213558_))))
                                (let ((_hd213542213564_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213543213561_)))
                                      (_tl213541213566_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213543213561_))))
                                  ((lambda (_L213569_ _L213570_)
                                     (let* ((_ctx213583_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L213570_)))
                                            (_code213585_
                                             (##structure-ref
                                              _ctx213583_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code213597_
                                             (let ((__tmp218315
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args213532_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code213585_))
                                                          (let ((_arg1213588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args213532_))
                        (_rest213590_ (cdr _args213532_)))
                    (if (let () (declare (not safe)) (null? _rest213590_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code213585_ _arg1213588_))
                        (let ((_arg2213593_ (car _rest213590_))
                              (_rest213595_ (cdr _rest213590_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest213595_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code213585_
                                 _arg1213588_
                                 _arg2213593_))
                              (apply gxc#compile-e
                                     _code213585_
                                     _arg1213588_
                                     _arg2213593_
                                     _rest213595_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp218315
                                                gx#current-expander-context
                                                _ctx213583_))))
                                       (##structure-set!
                                        _ctx213583_
                                        _code213597_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp218316
                                              (let ((__tmp218317
                                                     (let ((__tmp218318
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code213597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L213570_ __tmp218318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp218317))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp218316
                                          _stx213531_))))
                                   _tl213541213566_
                                   _hd213542213564_)))
                              (let ()
                                (declare (not safe))
                                (_g213534213548_ _g213535213551_)))))
                      (let ()
                        (declare (not safe))
                        (_g213534213548_ _g213535213551_))))))
          (declare (not safe))
          (_g213533213600_ _stx213531_))))
    (define gxc#xform-define-values%
      (lambda (_stx213452_ . _args213453_)
        (let* ((_g213455213472_
                (lambda (_g213456213469_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213456213469_))))
               (_g213454213528_
                (lambda (_g213456213475_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213456213475_))
                      (let ((_e213461213477_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213456213475_))))
                        (let ((_hd213460213480_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213461213477_)))
                              (_tl213459213482_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213461213477_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213459213482_))
                              (let ((_e213464213485_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213459213482_))))
                                (let ((_hd213463213488_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213464213485_)))
                                      (_tl213462213490_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213464213485_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213462213490_))
                                      (let ((_e213467213493_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213462213490_))))
                                        (let ((_hd213466213496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213467213493_)))
                                              (_tl213465213498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213467213493_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213465213498_))
                                              ((lambda (_L213501_ _L213502_)
                                                 (let* ((_expr213526_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args213453_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L213501_))
                     (let ((_arg1213517_ (car _args213453_))
                           (_rest213519_ (cdr _args213453_)))
                       (if (let () (declare (not safe)) (null? _rest213519_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L213501_ _arg1213517_))
                           (let ((_arg2213522_ (car _rest213519_))
                                 (_rest213524_ (cdr _rest213519_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest213524_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L213501_
                                    _arg1213517_
                                    _arg2213522_))
                                 (apply gxc#compile-e
                                        _L213501_
                                        _arg1213517_
                                        _arg2213522_
                                        _rest213524_)))))))
                (__tmp218319
                 (let ((__tmp218320
                        (let ((__tmp218321
                               (let ()
                                 (declare (not safe))
                                 (cons _expr213526_ '()))))
                          (declare (not safe))
                          (cons _L213502_ __tmp218321))))
                   (declare (not safe))
                   (cons '%#define-values __tmp218320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp218319
                                                    _stx213452_)))
                                               _hd213466213496_
                                               _hd213463213488_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213455213472_
                                                 _g213456213475_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213455213472_ _g213456213475_)))))
                              (let ()
                                (declare (not safe))
                                (_g213455213472_ _g213456213475_)))))
                      (let ()
                        (declare (not safe))
                        (_g213455213472_ _g213456213475_))))))
          (declare (not safe))
          (_g213454213528_ _stx213452_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx213372_ . _args213373_)
        (let* ((_g213375213392_
                (lambda (_g213376213389_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213376213389_))))
               (_g213374213449_
                (lambda (_g213376213395_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213376213395_))
                      (let ((_e213381213397_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213376213395_))))
                        (let ((_hd213380213400_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213381213397_)))
                              (_tl213379213402_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213381213397_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213379213402_))
                              (let ((_e213384213405_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213379213402_))))
                                (let ((_hd213383213408_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213384213405_)))
                                      (_tl213382213410_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213384213405_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213382213410_))
                                      (let ((_e213387213413_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213382213410_))))
                                        (let ((_hd213386213416_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213387213413_)))
                                              (_tl213385213418_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213387213413_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213385213418_))
                                              ((lambda (_L213421_ _L213422_)
                                                 (let ((__tmp218324
                                                        (lambda ()
                                                          (let* ((_expr213447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args213373_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L213421_))
                              (let ((_arg1213438_ (car _args213373_))
                                    (_rest213440_ (cdr _args213373_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest213440_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L213421_
                                       _arg1213438_))
                                    (let ((_arg2213443_ (car _rest213440_))
                                          (_rest213445_ (cdr _rest213440_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest213445_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L213421_
                                             _arg1213438_
                                             _arg2213443_))
                                          (apply gxc#compile-e
                                                 _L213421_
                                                 _arg1213438_
                                                 _arg2213443_
                                                 _rest213445_)))))))
                         (__tmp218325
                          (let ((__tmp218326
                                 (let ((__tmp218327
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr213447_ '()))))
                                   (declare (not safe))
                                   (cons _L213422_ __tmp218327))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp218326))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp218325 _stx213372_))))
               (__tmp218322
                (let ((__tmp218323 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp218323 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp218324
                                                    gx#current-expander-phi
                                                    __tmp218322)))
                                               _hd213386213416_
                                               _hd213383213408_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213375213392_
                                                 _g213376213395_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213375213392_ _g213376213395_)))))
                              (let ()
                                (declare (not safe))
                                (_g213375213392_ _g213376213395_)))))
                      (let ()
                        (declare (not safe))
                        (_g213375213392_ _g213376213395_))))))
          (declare (not safe))
          (_g213374213449_ _stx213372_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx213293_ . _args213294_)
        (let* ((_g213296213313_
                (lambda (_g213297213310_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213297213310_))))
               (_g213295213369_
                (lambda (_g213297213316_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213297213316_))
                      (let ((_e213302213318_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213297213316_))))
                        (let ((_hd213301213321_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213302213318_)))
                              (_tl213300213323_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213302213318_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213300213323_))
                              (let ((_e213305213326_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213300213323_))))
                                (let ((_hd213304213329_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213305213326_)))
                                      (_tl213303213331_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213305213326_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213303213331_))
                                      (let ((_e213308213334_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213303213331_))))
                                        (let ((_hd213307213337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213308213334_)))
                                              (_tl213306213339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213308213334_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213306213339_))
                                              ((lambda (_L213342_ _L213343_)
                                                 (let* ((_expr213367_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args213294_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L213342_))
                     (let ((_arg1213358_ (car _args213294_))
                           (_rest213360_ (cdr _args213294_)))
                       (if (let () (declare (not safe)) (null? _rest213360_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L213342_ _arg1213358_))
                           (let ((_arg2213363_ (car _rest213360_))
                                 (_rest213365_ (cdr _rest213360_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest213365_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L213342_
                                    _arg1213358_
                                    _arg2213363_))
                                 (apply gxc#compile-e
                                        _L213342_
                                        _arg1213358_
                                        _arg2213363_
                                        _rest213365_)))))))
                (__tmp218328
                 (let ((__tmp218329
                        (let ((__tmp218330
                               (let ()
                                 (declare (not safe))
                                 (cons _expr213367_ '()))))
                          (declare (not safe))
                          (cons _L213343_ __tmp218330))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp218329))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp218328
                                                    _stx213293_)))
                                               _hd213307213337_
                                               _hd213304213329_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213296213313_
                                                 _g213297213316_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213296213313_ _g213297213316_)))))
                              (let ()
                                (declare (not safe))
                                (_g213296213313_ _g213297213316_)))))
                      (let ()
                        (declare (not safe))
                        (_g213296213313_ _g213297213316_))))))
          (declare (not safe))
          (_g213295213369_ _stx213293_))))
    (define gxc#xform-lambda%
      (lambda (_stx213236_ . _args213237_)
        (let* ((_g213239213253_
                (lambda (_g213240213250_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213240213250_))))
               (_g213238213290_
                (lambda (_g213240213256_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213240213256_))
                      (let ((_e213245213258_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213240213256_))))
                        (let ((_hd213244213261_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213245213258_)))
                              (_tl213243213263_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213245213258_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213243213263_))
                              (let ((_e213248213266_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213243213263_))))
                                (let ((_hd213247213269_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213248213266_)))
                                      (_tl213246213271_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213248213266_))))
                                  ((lambda (_L213274_ _L213275_)
                                     (let* ((_body213288_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args213237_))
                                                  _L213274_))
                                            (__tmp218331
                                             (let ((__tmp218332
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L213275_
                                                            _body213288_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp218332))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp218331
                                        _stx213236_)))
                                   _tl213246213271_
                                   _hd213247213269_)))
                              (let ()
                                (declare (not safe))
                                (_g213239213253_ _g213240213256_)))))
                      (let ()
                        (declare (not safe))
                        (_g213239213253_ _g213240213256_))))))
          (declare (not safe))
          (_g213238213290_ _stx213236_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx213149_ . _args213150_)
        (letrec ((_clause-e213152_
                  (lambda (_clause213193_)
                    (let* ((_g213195213206_
                            (lambda (_g213196213203_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g213196213203_))))
                           (_g213194213233_
                            (lambda (_g213196213209_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g213196213209_))
                                  (let ((_e213201213211_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g213196213209_))))
                                    (let ((_hd213200213214_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e213201213211_)))
                                          (_tl213199213216_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e213201213211_))))
                                      ((lambda (_L213219_ _L213220_)
                                         (let ((_body213231_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args213150_))
                                                     _L213219_)))
                                           (declare (not safe))
                                           (cons _L213220_ _body213231_)))
                                       _tl213199213216_
                                       _hd213200213214_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g213195213206_ _g213196213209_))))))
                      (declare (not safe))
                      (_g213194213233_ _clause213193_)))))
          (let* ((_g213154213164_
                  (lambda (_g213155213161_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g213155213161_))))
                 (_g213153213190_
                  (lambda (_g213155213167_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g213155213167_))
                        (let ((_e213159213169_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g213155213167_))))
                          (let ((_hd213158213172_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e213159213169_)))
                                (_tl213157213174_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e213159213169_))))
                            ((lambda (_L213177_)
                               (let* ((_clauses213188_
                                       (map _clause-e213152_ _L213177_))
                                      (__tmp218333
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses213188_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp218333
                                  _stx213149_)))
                             _tl213157213174_)))
                        (let ()
                          (declare (not safe))
                          (_g213154213164_ _g213155213167_))))))
            (declare (not safe))
            (_g213153213190_ _stx213149_)))))
    (define gxc#xform-let-values%
      (lambda (_stx212943_ . _args212944_)
        (let* ((_g212946212979_
                (lambda (_g212947212976_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212947212976_))))
               (_g212945213146_
                (lambda (_g212947212982_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212947212982_))
                      (let ((_e212954212984_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212947212982_))))
                        (let ((_hd212953212987_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212954212984_)))
                              (_tl212952212989_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212954212984_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212952212989_))
                              (let ((_e212957212992_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212952212989_))))
                                (let ((_hd212956212995_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212957212992_)))
                                      (_tl212955212997_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212957212992_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd212956212995_))
                                      (let ((_g218334_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd212956212995_
                                                '0))))
                                        (begin
                                          (let ((_g218335_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218334_)
                                                       (##vector-length
                                                        _g218334_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218335_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218335_)))
                                          (let ((_target212958213000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g218334_ 0)))
                                                (_tl212960213002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g218334_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl212960213002_))
                                                (letrec ((_loop212961213005_
                                                          (lambda (_hd212959213008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr212965213010_
                           _hd212966213012_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd212959213008_))
                        (let ((_e212962213015_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd212959213008_))))
                          (let ((_lp-hd212963213018_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e212962213015_)))
                                (_lp-tl212964213020_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e212962213015_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd212963213018_))
                                (let ((_e212971213023_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd212963213018_))))
                                  (let ((_hd212970213026_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e212971213023_)))
                                        (_tl212969213028_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e212971213023_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl212969213028_))
                                        (let ((_e212974213031_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl212969213028_))))
                                          (let ((_hd212973213034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e212974213031_)))
                                                (_tl212972213036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e212974213031_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl212972213036_))
                                                (let ((__tmp218348
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd212973213034_
                                                               _expr212965213010_)))
                                                      (__tmp218347
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd212970213026_
                                                               _hd212966213012_))))
                                                  (declare (not safe))
                                                  (_loop212961213005_
                                                   _lp-tl212964213020_
                                                   __tmp218348
                                                   __tmp218347))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g212946212979_
                                                   _g212947212982_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g212946212979_ _g212947212982_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g212946212979_ _g212947212982_)))))
                        (let ((_expr212967213039_ (reverse _expr212965213010_))
                              (_hd212968213041_ (reverse _hd212966213012_)))
                          ((lambda (_L213044_ _L213045_ _L213046_ _L213047_)
                             (let* ((_g213066213082_
                                     (lambda (_g213067213079_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g213067213079_))))
                                    (_g213065213136_
                                     (lambda (_g213067213085_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g213067213085_))
                                           (let ((_g218336_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g213067213085_
                                                     '0))))
                                             (begin
                                               (let ((_g218337_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g218336_)
                                                            (##vector-length
                                                             _g218336_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g218337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g218337_)))
                                               (let ((_target213069213087_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g218336_
                                                         0)))
                                                     (_tl213071213089_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g218336_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl213071213089_))
                                                     (letrec ((_loop213072213092_
                                                               (lambda (_hd213070213095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr213076213097_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd213070213095_))
                             (let ((_e213073213100_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd213070213095_))))
                               (let ((_lp-hd213074213103_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e213073213100_)))
                                     (_lp-tl213075213105_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e213073213100_))))
                                 (let ((__tmp218344
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd213074213103_
                                                _expr213076213097_))))
                                   (declare (not safe))
                                   (_loop213072213092_
                                    _lp-tl213075213105_
                                    __tmp218344))))
                             (let ((_expr213077213108_
                                    (reverse _expr213076213097_)))
                               ((lambda (_L213111_)
                                  (let ()
                                    (let* ((_body213124_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args212944_))
                                                 _L213044_))
                                           (__tmp218338
                                            (let ((__tmp218339
                                                   (let ((__tmp218340
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L213111_
                                                               _L213046_))
                                                            (let ((__tmp218341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g213125213129_
                                    _g213126213131_
                                    _g213127213133_)
                             (let ((__tmp218342
                                    (let ((__tmp218343
                                           (let ()
                                             (declare (not safe))
                                             (cons _g213125213129_ '()))))
                                      (declare (not safe))
                                      (cons _g213126213131_ __tmp218343))))
                               (declare (not safe))
                               (cons __tmp218342 _g213127213133_)))))
                      (declare (not safe))
                      (foldr2 __tmp218341 '() _L213111_ _L213046_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp218340
                                                           _body213124_))))
                                              (declare (not safe))
                                              (cons _L213047_ __tmp218339))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp218338
                                       _stx212943_))))
                                _expr213077213108_))))))
               (let ()
                 (declare (not safe))
                 (_loop213072213092_ _target213069213087_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g213066213082_
                                                        _g213067213085_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g213066213082_
                                              _g213067213085_)))))
                                    (__tmp218345
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args212944_))
                                          (let ((__tmp218346
                                                 (lambda (_g213138213141_
                                                          _g213139213143_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g213138213141_
                                                           _g213139213143_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp218346
                                                    '()
                                                    _L213045_)))))
                               (declare (not safe))
                               (_g213065213136_ __tmp218345)))
                           _tl212955212997_
                           _expr212967213039_
                           _hd212968213041_
                           _hd212953212987_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop212961213005_
                                                     _target212958213000_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g212946212979_
                                                   _g212947212982_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212946212979_ _g212947212982_)))))
                              (let ()
                                (declare (not safe))
                                (_g212946212979_ _g212947212982_)))))
                      (let ()
                        (declare (not safe))
                        (_g212946212979_ _g212947212982_))))))
          (declare (not safe))
          (_g212945213146_ _stx212943_))))
    (define gxc#xform-operands
      (lambda (_stx212899_ . _args212900_)
        (let* ((_g212902212913_
                (lambda (_g212903212910_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212903212910_))))
               (_g212901212940_
                (lambda (_g212903212916_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212903212916_))
                      (let ((_e212908212918_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212903212916_))))
                        (let ((_hd212907212921_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212908212918_)))
                              (_tl212906212923_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212908212918_))))
                          ((lambda (_L212926_ _L212927_)
                             (let* ((_rands212938_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args212900_))
                                          _L212926_))
                                    (__tmp218349
                                     (let ()
                                       (declare (not safe))
                                       (cons _L212927_ _rands212938_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp218349
                                _stx212899_)))
                           _tl212906212923_
                           _hd212907212921_)))
                      (let ()
                        (declare (not safe))
                        (_g212902212913_ _g212903212916_))))))
          (declare (not safe))
          (_g212901212940_ _stx212899_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx212820_ . _args212821_)
        (let* ((_g212823212840_
                (lambda (_g212824212837_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212824212837_))))
               (_g212822212896_
                (lambda (_g212824212843_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212824212843_))
                      (let ((_e212829212845_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212824212843_))))
                        (let ((_hd212828212848_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212829212845_)))
                              (_tl212827212850_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212829212845_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212827212850_))
                              (let ((_e212832212853_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212827212850_))))
                                (let ((_hd212831212856_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212832212853_)))
                                      (_tl212830212858_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212832212853_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212830212858_))
                                      (let ((_e212835212861_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212830212858_))))
                                        (let ((_hd212834212864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212835212861_)))
                                              (_tl212833212866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212835212861_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212833212866_))
                                              ((lambda (_L212869_ _L212870_)
                                                 (let* ((_expr212894_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args212821_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L212869_))
                     (let ((_arg1212885_ (car _args212821_))
                           (_rest212887_ (cdr _args212821_)))
                       (if (let () (declare (not safe)) (null? _rest212887_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L212869_ _arg1212885_))
                           (let ((_arg2212890_ (car _rest212887_))
                                 (_rest212892_ (cdr _rest212887_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest212892_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L212869_
                                    _arg1212885_
                                    _arg2212890_))
                                 (apply gxc#compile-e
                                        _L212869_
                                        _arg1212885_
                                        _arg2212890_
                                        _rest212892_)))))))
                (__tmp218350
                 (let ((__tmp218351
                        (let ((__tmp218352
                               (let ()
                                 (declare (not safe))
                                 (cons _expr212894_ '()))))
                          (declare (not safe))
                          (cons _L212870_ __tmp218352))))
                   (declare (not safe))
                   (cons '%#set! __tmp218351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp218350
                                                    _stx212820_)))
                                               _hd212834212864_
                                               _hd212831212856_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212823212840_
                                                 _g212824212843_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212823212840_ _g212824212843_)))))
                              (let ()
                                (declare (not safe))
                                (_g212823212840_ _g212824212843_)))))
                      (let ()
                        (declare (not safe))
                        (_g212823212840_ _g212824212843_))))))
          (declare (not safe))
          (_g212822212896_ _stx212820_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx212751_)
        (let* ((_g212753212770_
                (lambda (_g212754212767_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212754212767_))))
               (_g212752212817_
                (lambda (_g212754212773_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212754212773_))
                      (let ((_e212759212775_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212754212773_))))
                        (let ((_hd212758212778_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212759212775_)))
                              (_tl212757212780_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212759212775_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212757212780_))
                              (let ((_e212762212783_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212757212780_))))
                                (let ((_hd212761212786_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212762212783_)))
                                      (_tl212760212788_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212762212783_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212760212788_))
                                      (let ((_e212765212791_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212760212788_))))
                                        (let ((_hd212764212794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212765212791_)))
                                              (_tl212763212796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212765212791_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212763212796_))
                                              ((lambda (_L212799_ _L212800_)
                                                 (let ((_sym212815_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L212800_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym212815_))
                                                   (let ((__tmp218353
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp218353
                                                      _sym212815_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L212799_))))
                                               _hd212764212794_
                                               _hd212761212786_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212753212770_
                                                 _g212754212773_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212753212770_ _g212754212773_)))))
                              (let ()
                                (declare (not safe))
                                (_g212753212770_ _g212754212773_)))))
                      (let ()
                        (declare (not safe))
                        (_g212753212770_ _g212754212773_))))))
          (declare (not safe))
          (_g212752212817_ _stx212751_))))
    (define gxc#collect-methods-call%
      (lambda (_stx212305_)
        (let* ((___stx218043218044_ _stx212305_)
               (_g212309212411_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx218043218044_)))))
          (let ((___kont218045218046_
                 (lambda (_L212701_ _L212702_ _L212703_ _L212704_ _L212705_)
                   (let ((__tmp218354
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L212702_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp218354))))
                (___kont218047218048_
                 (lambda (_L212527_ _L212528_ _L212529_ _L212530_)
                   (let ((__tmp218355
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L212527_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp218355))))
                (___kont218049218050_ (lambda () '#!void)))
            (let ((___match218178218179_
                   (lambda (_e212318212573_
                            _hd212317212576_
                            _tl212316212578_
                            _e212321212581_
                            _hd212320212584_
                            _tl212319212586_
                            _e212324212589_
                            _hd212323212592_
                            _tl212322212594_
                            _e212327212597_
                            _hd212326212600_
                            _tl212325212602_
                            _e212330212605_
                            _hd212329212608_
                            _tl212328212610_
                            _e212333212613_
                            _hd212332212616_
                            _tl212331212618_
                            _e212336212621_
                            _hd212335212624_
                            _tl212334212626_
                            _e212339212629_
                            _hd212338212632_
                            _tl212337212634_
                            _e212342212637_
                            _hd212341212640_
                            _tl212340212642_
                            _e212345212645_
                            _hd212344212648_
                            _tl212343212650_
                            _e212348212653_
                            _hd212347212656_
                            _tl212346212658_
                            _e212351212661_
                            _hd212350212664_
                            _tl212349212666_
                            _e212354212669_
                            _hd212353212672_
                            _tl212352212674_
                            _e212357212677_
                            _hd212356212680_
                            _tl212355212682_
                            _e212360212685_
                            _hd212359212688_
                            _tl212358212690_
                            _e212363212693_
                            _hd212362212696_
                            _tl212361212698_)
                     (let ((_L212701_ _hd212362212696_)
                           (_L212702_ _hd212353212672_)
                           (_L212703_ _hd212344212648_)
                           (_L212704_ _hd212335212624_)
                           (_L212705_ _hd212326212600_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L212705_
                              'bind-method!))
                           (___kont218045218046_
                            _L212701_
                            _L212702_
                            _L212703_
                            _L212704_
                            _L212705_)
                           (___kont218049218050_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx218043218044_))
                  (let ((_e212318212573_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx218043218044_))))
                    (let ((_tl212316212578_
                           (let ()
                             (declare (not safe))
                             (##cdr _e212318212573_)))
                          (_hd212317212576_
                           (let ()
                             (declare (not safe))
                             (##car _e212318212573_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl212316212578_))
                          (let ((_e212321212581_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl212316212578_))))
                            (let ((_tl212319212586_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e212321212581_)))
                                  (_hd212320212584_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e212321212581_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd212320212584_))
                                  (let ((_e212324212589_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd212320212584_))))
                                    (let ((_tl212322212594_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e212324212589_)))
                                          (_hd212323212592_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e212324212589_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd212323212592_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd212323212592_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl212322212594_))
                                                  (let ((_e212327212597_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl212322212594_))))
                                                    (let ((_tl212325212602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e212327212597_)))
                                                          (_hd212326212600_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e212327212597_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl212325212602_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl212319212586_))
                      (let ((_e212330212605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl212319212586_))))
                        (let ((_tl212328212610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212330212605_)))
                              (_hd212329212608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212330212605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd212329212608_))
                              (let ((_e212333212613_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd212329212608_))))
                                (let ((_tl212331212618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212333212613_)))
                                      (_hd212332212616_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212333212613_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd212332212616_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd212332212616_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl212331212618_))
                                              (let ((_e212336212621_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl212331212618_))))
                                                (let ((_tl212334212626_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e212336212621_)))
                                                      (_hd212335212624_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e212336212621_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl212334212626_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl212328212610_))
                                                          (let ((_e212339212629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl212328212610_))))
                    (let ((_tl212337212634_
                           (let ()
                             (declare (not safe))
                             (##cdr _e212339212629_)))
                          (_hd212338212632_
                           (let ()
                             (declare (not safe))
                             (##car _e212339212629_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd212338212632_))
                          (let ((_e212342212637_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd212338212632_))))
                            (let ((_tl212340212642_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e212342212637_)))
                                  (_hd212341212640_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e212342212637_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd212341212640_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd212341212640_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl212340212642_))
                                          (let ((_e212345212645_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl212340212642_))))
                                            (let ((_tl212343212650_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e212345212645_)))
                                                  (_hd212344212648_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e212345212645_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl212343212650_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl212337212634_))
                                                      (let ((_e212348212653_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl212337212634_))))
                (let ((_tl212346212658_
                       (let () (declare (not safe)) (##cdr _e212348212653_)))
                      (_hd212347212656_
                       (let () (declare (not safe)) (##car _e212348212653_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd212347212656_))
                      (let ((_e212351212661_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd212347212656_))))
                        (let ((_tl212349212666_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212351212661_)))
                              (_hd212350212664_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212351212661_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd212350212664_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd212350212664_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212349212666_))
                                      (let ((_e212354212669_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212349212666_))))
                                        (let ((_tl212352212674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212354212669_)))
                                              (_hd212353212672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212354212669_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212352212674_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl212346212658_))
                                                  (let ((_e212357212677_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl212346212658_))))
                                                    (let ((_tl212355212682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e212357212677_)))
                                                          (_hd212356212680_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e212357212677_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd212356212680_))
                                                          (let ((_e212360212685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd212356212680_))))
                    (let ((_tl212358212690_
                           (let ()
                             (declare (not safe))
                             (##cdr _e212360212685_)))
                          (_hd212359212688_
                           (let ()
                             (declare (not safe))
                             (##car _e212360212685_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd212359212688_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd212359212688_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl212358212690_))
                                  (let ((_e212363212693_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl212358212690_))))
                                    (let ((_tl212361212698_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e212363212693_)))
                                          (_hd212362212696_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e212363212693_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl212361212698_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212355212682_))
                                              (___match218178218179_
                                               _e212318212573_
                                               _hd212317212576_
                                               _tl212316212578_
                                               _e212321212581_
                                               _hd212320212584_
                                               _tl212319212586_
                                               _e212324212589_
                                               _hd212323212592_
                                               _tl212322212594_
                                               _e212327212597_
                                               _hd212326212600_
                                               _tl212325212602_
                                               _e212330212605_
                                               _hd212329212608_
                                               _tl212328212610_
                                               _e212333212613_
                                               _hd212332212616_
                                               _tl212331212618_
                                               _e212336212621_
                                               _hd212335212624_
                                               _tl212334212626_
                                               _e212339212629_
                                               _hd212338212632_
                                               _tl212337212634_
                                               _e212342212637_
                                               _hd212341212640_
                                               _tl212340212642_
                                               _e212345212645_
                                               _hd212344212648_
                                               _tl212343212650_
                                               _e212348212653_
                                               _hd212347212656_
                                               _tl212346212658_
                                               _e212351212661_
                                               _hd212350212664_
                                               _tl212349212666_
                                               _e212354212669_
                                               _hd212353212672_
                                               _tl212352212674_
                                               _e212357212677_
                                               _hd212356212680_
                                               _tl212355212682_
                                               _e212360212685_
                                               _hd212359212688_
                                               _tl212358212690_
                                               _e212363212693_
                                               _hd212362212696_
                                               _tl212361212698_)
                                              (___kont218049218050_))
                                          (___kont218049218050_))))
                                  (___kont218049218050_))
                              (___kont218049218050_))
                          (___kont218049218050_))))
                  (___kont218049218050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl212346212658_))
                                                      (if (let ((__tmp218356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp218356 'bind-method!))
                  (let ((_L212527_ _hd212353212672_)
                        (_L212528_ _hd212344212648_)
                        (_L212529_ _hd212335212624_)
                        (_L212530_ _hd212326212600_))
                    (___kont218047218048_
                     _L212527_
                     _L212528_
                     _L212529_
                     _L212530_))
                  (___kont218049218050_))
              (___kont218049218050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont218049218050_))))
                                      (___kont218049218050_))
                                  (___kont218049218050_))
                              (___kont218049218050_))))
                      (___kont218049218050_))))
              (___kont218049218050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont218049218050_))))
                                          (___kont218049218050_))
                                      (___kont218049218050_))
                                  (___kont218049218050_))))
                          (___kont218049218050_))))
                  (___kont218049218050_))
              (___kont218049218050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont218049218050_))
                                          (___kont218049218050_))
                                      (___kont218049218050_))))
                              (___kont218049218050_))))
                      (___kont218049218050_))
                  (___kont218049218050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont218049218050_))
                                              (___kont218049218050_))
                                          (___kont218049218050_))))
                                  (___kont218049218050_))))
                          (___kont218049218050_))))
                  (___kont218049218050_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx212252_ _id212253_ _new-id212254_)
        (let* ((_g212256212269_
                (lambda (_g212257212266_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212257212266_))))
               (_g212255212302_
                (lambda (_g212257212272_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212257212272_))
                      (let ((_e212261212274_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212257212272_))))
                        (let ((_hd212260212277_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212261212274_)))
                              (_tl212259212279_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212261212274_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212259212279_))
                              (let ((_e212264212282_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212259212279_))))
                                (let ((_hd212263212285_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212264212282_)))
                                      (_tl212262212287_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212264212282_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl212262212287_))
                                      ((lambda (_L212290_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L212290_
                                                _id212253_))
                                             (let ((__tmp218357
                                                    (let ((__tmp218358
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id212254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp218358))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp218357
                                                _stx212252_))
                                             _stx212252_))
                                       _hd212263212285_)
                                      (let ()
                                        (declare (not safe))
                                        (_g212256212269_ _g212257212272_)))))
                              (let ()
                                (declare (not safe))
                                (_g212256212269_ _g212257212272_)))))
                      (let ()
                        (declare (not safe))
                        (_g212256212269_ _g212257212272_))))))
          (declare (not safe))
          (_g212255212302_ _stx212252_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx212193_ _subst212194_)
        (let* ((_g212196212209_
                (lambda (_g212197212206_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212197212206_))))
               (_g212195212249_
                (lambda (_g212197212212_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212197212212_))
                      (let ((_e212201212214_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212197212212_))))
                        (let ((_hd212200212217_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212201212214_)))
                              (_tl212199212219_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212201212214_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212199212219_))
                              (let ((_e212204212222_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212199212219_))))
                                (let ((_hd212203212225_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212204212222_)))
                                      (_tl212202212227_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212204212222_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl212202212227_))
                                      ((lambda (_L212230_)
                                         (let ((_$e212244_
                                                (let ((__tmp218359
                                                       (lambda (_sub212242_)
                                                         (let ((__tmp218360
                                                                (car _sub212242_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L212230_
                                                            __tmp218360)))))
                                                  (declare (not safe))
                                                  (find __tmp218359
                                                        _subst212194_))))
                                           (if _$e212244_
                                               ((lambda (_sub212247_)
                                                  (let ((__tmp218361
                                                         (let ((__tmp218362
                                                                (let ((__tmp218363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub212247_)))
                          (declare (not safe))
                          (cons __tmp218363 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp218362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp218361
                                                     _stx212193_)))
                                                _$e212244_)
                                               _stx212193_)))
                                       _hd212203212225_)
                                      (let ()
                                        (declare (not safe))
                                        (_g212196212209_ _g212197212212_)))))
                              (let ()
                                (declare (not safe))
                                (_g212196212209_ _g212197212212_)))))
                      (let ()
                        (declare (not safe))
                        (_g212196212209_ _g212197212212_))))))
          (declare (not safe))
          (_g212195212249_ _stx212193_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx212121_ _id212122_ _new-id212123_)
        (let* ((_g212125212142_
                (lambda (_g212126212139_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212126212139_))))
               (_g212124212190_
                (lambda (_g212126212145_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212126212145_))
                      (let ((_e212131212147_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212126212145_))))
                        (let ((_hd212130212150_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212131212147_)))
                              (_tl212129212152_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212131212147_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212129212152_))
                              (let ((_e212134212155_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212129212152_))))
                                (let ((_hd212133212158_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212134212155_)))
                                      (_tl212132212160_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212134212155_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212132212160_))
                                      (let ((_e212137212163_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212132212160_))))
                                        (let ((_hd212136212166_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212137212163_)))
                                              (_tl212135212168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212137212163_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212135212168_))
                                              ((lambda (_L212171_ _L212172_)
                                                 (let ((_new-expr212187_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L212171_
                                                           _id212122_
                                                           _new-id212123_)))
                                                       (_new-xid212188_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L212172_
                                                               _id212122_))
                                                            _new-id212123_
                                                            _L212172_)))
                                                   (let ((__tmp218364
                                                          (let ((__tmp218365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp218366
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr212187_ '()))))
                           (declare (not safe))
                           (cons _new-xid212188_ __tmp218366))))
                    (declare (not safe))
                    (cons '%#set! __tmp218365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp218364
                                                      _stx212121_))))
                                               _hd212136212166_
                                               _hd212133212158_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212125212142_
                                                 _g212126212145_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212125212142_ _g212126212145_)))))
                              (let ()
                                (declare (not safe))
                                (_g212125212142_ _g212126212145_)))))
                      (let ()
                        (declare (not safe))
                        (_g212125212142_ _g212126212145_))))))
          (declare (not safe))
          (_g212124212190_ _stx212121_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx212045_ _subst212046_)
        (let* ((_g212048212065_
                (lambda (_g212049212062_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212049212062_))))
               (_g212047212118_
                (lambda (_g212049212068_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212049212068_))
                      (let ((_e212054212070_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212049212068_))))
                        (let ((_hd212053212073_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212054212070_)))
                              (_tl212052212075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212054212070_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212052212075_))
                              (let ((_e212057212078_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212052212075_))))
                                (let ((_hd212056212081_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212057212078_)))
                                      (_tl212055212083_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212057212078_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212055212083_))
                                      (let ((_e212060212086_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212055212083_))))
                                        (let ((_hd212059212089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212060212086_)))
                                              (_tl212058212091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212060212086_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212058212091_))
                                              ((lambda (_L212094_ _L212095_)
                                                 (let ((_new-expr212115_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L212094_
                                                           _subst212046_)))
                                                       (_new-xid212116_
                                                        (let ((_$e212112_
                                                               (let ((__tmp218367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub212110_)
                                (let ((__tmp218368 (car _sub212110_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L212095_
                                   __tmp218368)))))
                         (declare (not safe))
                         (find __tmp218367 _subst212046_))))
                  (if _$e212112_ (cdr _$e212112_) _L212095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp218369
                                                          (let ((__tmp218370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp218371
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr212115_ '()))))
                           (declare (not safe))
                           (cons _new-xid212116_ __tmp218371))))
                    (declare (not safe))
                    (cons '%#set! __tmp218370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp218369
                                                      _stx212045_))))
                                               _hd212059212089_
                                               _hd212056212081_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212048212065_
                                                 _g212049212068_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212048212065_ _g212049212068_)))))
                              (let ()
                                (declare (not safe))
                                (_g212048212065_ _g212049212068_)))))
                      (let ()
                        (declare (not safe))
                        (_g212048212065_ _g212049212068_))))))
          (declare (not safe))
          (_g212047212118_ _stx212045_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx211991_ _ht211992_)
        (let* ((_g211994212007_
                (lambda (_g211995212004_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211995212004_))))
               (_g211993212042_
                (lambda (_g211995212010_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211995212010_))
                      (let ((_e211999212012_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211995212010_))))
                        (let ((_hd211998212015_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211999212012_)))
                              (_tl211997212017_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211999212012_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211997212017_))
                              (let ((_e212002212020_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211997212017_))))
                                (let ((_hd212001212023_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212002212020_)))
                                      (_tl212000212025_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212002212020_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl212000212025_))
                                      ((lambda (_L212028_)
                                         (let ((_eid212040_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L212028_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht211992_
                                            _eid212040_
                                            1+
                                            '0)))
                                       _hd212001212023_)
                                      (let ()
                                        (declare (not safe))
                                        (_g211994212007_ _g211995212010_)))))
                              (let ()
                                (declare (not safe))
                                (_g211994212007_ _g211995212010_)))))
                      (let ()
                        (declare (not safe))
                        (_g211994212007_ _g211995212010_))))))
          (declare (not safe))
          (_g211993212042_ _stx211991_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx211921_ _ht211922_)
        (let* ((_g211924211941_
                (lambda (_g211925211938_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211925211938_))))
               (_g211923211988_
                (lambda (_g211925211944_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211925211944_))
                      (let ((_e211930211946_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211925211944_))))
                        (let ((_hd211929211949_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211930211946_)))
                              (_tl211928211951_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211930211946_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211928211951_))
                              (let ((_e211933211954_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211928211951_))))
                                (let ((_hd211932211957_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211933211954_)))
                                      (_tl211931211959_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211933211954_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211931211959_))
                                      (let ((_e211936211962_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211931211959_))))
                                        (let ((_hd211935211965_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211936211962_)))
                                              (_tl211934211967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211936211962_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211934211967_))
                                              ((lambda (_L211970_ _L211971_)
                                                 (let ((_eid211986_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L211971_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht211922_
                                                      _eid211986_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L211970_
                                                      _ht211922_))))
                                               _hd211935211965_
                                               _hd211932211957_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211924211941_
                                                 _g211925211944_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211924211941_ _g211925211944_)))))
                              (let ()
                                (declare (not safe))
                                (_g211924211941_ _g211925211944_)))))
                      (let ()
                        (declare (not safe))
                        (_g211924211941_ _g211925211944_))))))
          (declare (not safe))
          (_g211923211988_ _stx211921_))))
    (define gxc#find-body%
      (lambda (_stx211834_ _arg211835_)
        (let* ((_g211837211856_
                (lambda (_g211838211853_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211838211853_))))
               (_g211836211918_
                (lambda (_g211838211859_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211838211859_))
                      (let ((_e211842211861_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211838211859_))))
                        (let ((_hd211841211864_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211842211861_)))
                              (_tl211840211866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211842211861_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl211840211866_))
                              (let ((_g218372_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl211840211866_
                                        '0))))
                                (begin
                                  (let ((_g218373_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g218372_)
                                               (##vector-length _g218372_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g218373_ 2)))
                                        (error "Context expects 2 values"
                                               _g218373_)))
                                  (let ((_target211843211869_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218372_ 0)))
                                        (_tl211845211871_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218372_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl211845211871_))
                                        (letrec ((_loop211846211874_
                                                  (lambda (_hd211844211877_
                                                           _expr211850211879_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd211844211877_))
                                                        (let ((_e211847211882_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd211844211877_))))
                  (let ((_lp-hd211848211885_
                         (let () (declare (not safe)) (##car _e211847211882_)))
                        (_lp-tl211849211887_
                         (let ()
                           (declare (not safe))
                           (##cdr _e211847211882_))))
                    (let ((__tmp218377
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd211848211885_ _expr211850211879_))))
                      (declare (not safe))
                      (_loop211846211874_ _lp-tl211849211887_ __tmp218377))))
                (let ((_expr211851211890_ (reverse _expr211850211879_)))
                  ((lambda (_L211893_)
                     (let ((__tmp218376
                            (lambda (_g211906211908_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g211906211908_
                                 _arg211835_))))
                           (__tmp218374
                            (let ((__tmp218375
                                   (lambda (_g211910211913_ _g211911211915_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g211910211913_
                                             _g211911211915_)))))
                              (declare (not safe))
                              (foldr1 __tmp218375 '() _L211893_))))
                       (declare (not safe))
                       (ormap1 __tmp218376 __tmp218374)))
                   _expr211851211890_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop211846211874_
                                             _target211843211869_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g211837211856_
                                           _g211838211859_))))))
                              (let ()
                                (declare (not safe))
                                (_g211837211856_ _g211838211859_)))))
                      (let ()
                        (declare (not safe))
                        (_g211837211856_ _g211838211859_))))))
          (declare (not safe))
          (_g211836211918_ _stx211834_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx211766_ _arg211767_)
        (let* ((_g211769211786_
                (lambda (_g211770211783_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211770211783_))))
               (_g211768211831_
                (lambda (_g211770211789_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211770211789_))
                      (let ((_e211775211791_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211770211789_))))
                        (let ((_hd211774211794_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211775211791_)))
                              (_tl211773211796_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211775211791_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211773211796_))
                              (let ((_e211778211799_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211773211796_))))
                                (let ((_hd211777211802_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211778211799_)))
                                      (_tl211776211804_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211778211799_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211776211804_))
                                      (let ((_e211781211807_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211776211804_))))
                                        (let ((_hd211780211810_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211781211807_)))
                                              (_tl211779211812_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211781211807_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211779211812_))
                                              ((lambda (_L211815_ _L211816_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L211815_
                                                    _arg211767_)))
                                               _hd211780211810_
                                               _hd211777211802_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211769211786_
                                                 _g211770211789_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211769211786_ _g211770211789_)))))
                              (let ()
                                (declare (not safe))
                                (_g211769211786_ _g211770211789_)))))
                      (let ()
                        (declare (not safe))
                        (_g211769211786_ _g211770211789_))))))
          (declare (not safe))
          (_g211768211831_ _stx211766_))))
    (define gxc#find-lambda%
      (lambda (_stx211698_ _arg211699_)
        (let* ((_g211701211718_
                (lambda (_g211702211715_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211702211715_))))
               (_g211700211763_
                (lambda (_g211702211721_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211702211721_))
                      (let ((_e211707211723_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211702211721_))))
                        (let ((_hd211706211726_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211707211723_)))
                              (_tl211705211728_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211707211723_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211705211728_))
                              (let ((_e211710211731_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211705211728_))))
                                (let ((_hd211709211734_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211710211731_)))
                                      (_tl211708211736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211710211731_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211708211736_))
                                      (let ((_e211713211739_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211708211736_))))
                                        (let ((_hd211712211742_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211713211739_)))
                                              (_tl211711211744_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211713211739_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211711211744_))
                                              ((lambda (_L211747_ _L211748_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L211747_
                                                    _arg211699_)))
                                               _hd211712211742_
                                               _hd211709211734_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211701211718_
                                                 _g211702211721_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211701211718_ _g211702211721_)))))
                              (let ()
                                (declare (not safe))
                                (_g211701211718_ _g211702211721_)))))
                      (let ()
                        (declare (not safe))
                        (_g211701211718_ _g211702211721_))))))
          (declare (not safe))
          (_g211700211763_ _stx211698_))))
    (define gxc#find-case-lambda%
      (lambda (_stx211580_ _arg211581_)
        (let* ((_g211583211611_
                (lambda (_g211584211608_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211584211608_))))
               (_g211582211695_
                (lambda (_g211584211614_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211584211614_))
                      (let ((_e211589211616_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211584211614_))))
                        (let ((_hd211588211619_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211589211616_)))
                              (_tl211587211621_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211589211616_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl211587211621_))
                              (let ((_g218378_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl211587211621_
                                        '0))))
                                (begin
                                  (let ((_g218379_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g218378_)
                                               (##vector-length _g218378_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g218379_ 2)))
                                        (error "Context expects 2 values"
                                               _g218379_)))
                                  (let ((_target211590211624_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218378_ 0)))
                                        (_tl211592211626_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218378_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl211592211626_))
                                        (letrec ((_loop211593211629_
                                                  (lambda (_hd211591211632_
                                                           _body211597211634_
                                                           _hd211598211636_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd211591211632_))
                                                        (let ((_e211594211639_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd211591211632_))))
                  (let ((_lp-hd211595211642_
                         (let () (declare (not safe)) (##car _e211594211639_)))
                        (_lp-tl211596211644_
                         (let ()
                           (declare (not safe))
                           (##cdr _e211594211639_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd211595211642_))
                        (let ((_e211603211647_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd211595211642_))))
                          (let ((_hd211602211650_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e211603211647_)))
                                (_tl211601211652_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e211603211647_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl211601211652_))
                                (let ((_e211606211655_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl211601211652_))))
                                  (let ((_hd211605211658_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e211606211655_)))
                                        (_tl211604211660_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e211606211655_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl211604211660_))
                                        (let ((__tmp218384
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd211605211658_
                                                       _body211597211634_)))
                                              (__tmp218383
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd211602211650_
                                                       _hd211598211636_))))
                                          (declare (not safe))
                                          (_loop211593211629_
                                           _lp-tl211596211644_
                                           __tmp218384
                                           __tmp218383))
                                        (let ()
                                          (declare (not safe))
                                          (_g211583211611_ _g211584211614_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g211583211611_ _g211584211614_)))))
                        (let ()
                          (declare (not safe))
                          (_g211583211611_ _g211584211614_)))))
                (let ((_body211599211663_ (reverse _body211597211634_))
                      (_hd211600211665_ (reverse _hd211598211636_)))
                  ((lambda (_L211668_ _L211669_)
                     (let ((__tmp218382
                            (lambda (_g211683211685_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g211683211685_
                                 _arg211581_))))
                           (__tmp218380
                            (let ((__tmp218381
                                   (lambda (_g211687211690_ _g211688211692_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g211687211690_
                                             _g211688211692_)))))
                              (declare (not safe))
                              (foldr1 __tmp218381 '() _L211668_))))
                       (declare (not safe))
                       (ormap1 __tmp218382 __tmp218380)))
                   _body211599211663_
                   _hd211600211665_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop211593211629_
                                             _target211590211624_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g211583211611_
                                           _g211584211614_))))))
                              (let ()
                                (declare (not safe))
                                (_g211583211611_ _g211584211614_)))))
                      (let ()
                        (declare (not safe))
                        (_g211583211611_ _g211584211614_))))))
          (declare (not safe))
          (_g211582211695_ _stx211580_))))
    (define gxc#find-let-values%
      (lambda (_stx211430_ _arg211431_)
        (let* ((_g211433211468_
                (lambda (_g211434211465_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211434211465_))))
               (_g211432211577_
                (lambda (_g211434211471_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211434211471_))
                      (let ((_e211440211473_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211434211471_))))
                        (let ((_hd211439211476_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211440211473_)))
                              (_tl211438211478_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211440211473_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211438211478_))
                              (let ((_e211443211481_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211438211478_))))
                                (let ((_hd211442211484_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211443211481_)))
                                      (_tl211441211486_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211443211481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd211442211484_))
                                      (let ((_g218385_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd211442211484_
                                                '0))))
                                        (begin
                                          (let ((_g218386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218385_)
                                                       (##vector-length
                                                        _g218385_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218386_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218386_)))
                                          (let ((_target211444211489_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g218385_ 0)))
                                                (_tl211446211491_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g218385_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl211446211491_))
                                                (letrec ((_loop211447211494_
                                                          (lambda (_hd211445211497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr211451211499_
                           _bind211452211501_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd211445211497_))
                        (let ((_e211448211504_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd211445211497_))))
                          (let ((_lp-hd211449211507_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e211448211504_)))
                                (_lp-tl211450211509_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e211448211504_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd211449211507_))
                                (let ((_e211457211512_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd211449211507_))))
                                  (let ((_hd211456211515_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e211457211512_)))
                                        (_tl211455211517_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e211457211512_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl211455211517_))
                                        (let ((_e211460211520_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl211455211517_))))
                                          (let ((_hd211459211523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e211460211520_)))
                                                (_tl211458211525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e211460211520_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl211458211525_))
                                                (let ((__tmp218391
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd211459211523_
                                                               _expr211451211499_)))
                                                      (__tmp218390
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd211456211515_
                                                               _bind211452211501_))))
                                                  (declare (not safe))
                                                  (_loop211447211494_
                                                   _lp-tl211450211509_
                                                   __tmp218391
                                                   __tmp218390))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g211433211468_
                                                   _g211434211471_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g211433211468_ _g211434211471_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g211433211468_ _g211434211471_)))))
                        (let ((_expr211453211528_ (reverse _expr211451211499_))
                              (_bind211454211530_
                               (reverse _bind211452211501_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211441211486_))
                              (let ((_e211463211533_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211441211486_))))
                                (let ((_hd211462211536_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211463211533_)))
                                      (_tl211461211538_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211463211533_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl211461211538_))
                                      ((lambda (_L211541_ _L211542_ _L211543_)
                                         (let ((_$e211574_
                                                (let ((__tmp218389
                                                       (lambda (_g211562211564_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g211562211564_
                                                            _arg211431_))))
                                                      (__tmp218387
                                                       (let ((__tmp218388
                                                              (lambda (_g211566211569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g211567211571_)
                        (let ()
                          (declare (not safe))
                          (cons _g211566211569_ _g211567211571_)))))
                 (declare (not safe))
                 (foldr1 __tmp218388 '() _L211542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp218389
                                                          __tmp218387))))
                                           (if _$e211574_
                                               _$e211574_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L211541_
                                                  _arg211431_)))))
                                       _hd211462211536_
                                       _expr211453211528_
                                       _bind211454211530_)
                                      (let ()
                                        (declare (not safe))
                                        (_g211433211468_ _g211434211471_)))))
                              (let ()
                                (declare (not safe))
                                (_g211433211468_ _g211434211471_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop211447211494_
                                                     _target211444211489_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g211433211468_
                                                   _g211434211471_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211433211468_ _g211434211471_)))))
                              (let ()
                                (declare (not safe))
                                (_g211433211468_ _g211434211471_)))))
                      (let ()
                        (declare (not safe))
                        (_g211433211468_ _g211434211471_))))))
          (declare (not safe))
          (_g211432211577_ _stx211430_))))
    (define gxc#find-setq%
      (lambda (_stx211362_ _arg211363_)
        (let* ((_g211365211382_
                (lambda (_g211366211379_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211366211379_))))
               (_g211364211427_
                (lambda (_g211366211385_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211366211385_))
                      (let ((_e211371211387_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211366211385_))))
                        (let ((_hd211370211390_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211371211387_)))
                              (_tl211369211392_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211371211387_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211369211392_))
                              (let ((_e211374211395_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211369211392_))))
                                (let ((_hd211373211398_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211374211395_)))
                                      (_tl211372211400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211374211395_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211372211400_))
                                      (let ((_e211377211403_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211372211400_))))
                                        (let ((_hd211376211406_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211377211403_)))
                                              (_tl211375211408_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211377211403_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211375211408_))
                                              ((lambda (_L211411_ _L211412_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L211411_
                                                    _arg211363_)))
                                               _hd211376211406_
                                               _hd211373211398_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211365211382_
                                                 _g211366211385_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211365211382_ _g211366211385_)))))
                              (let ()
                                (declare (not safe))
                                (_g211365211382_ _g211366211385_)))))
                      (let ()
                        (declare (not safe))
                        (_g211365211382_ _g211366211385_))))))
          (declare (not safe))
          (_g211364211427_ _stx211362_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx211306_ _ids211307_)
        (let* ((_g211309211322_
                (lambda (_g211310211319_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211310211319_))))
               (_g211308211359_
                (lambda (_g211310211325_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211310211325_))
                      (let ((_e211314211327_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211310211325_))))
                        (let ((_hd211313211330_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211314211327_)))
                              (_tl211312211332_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211314211327_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211312211332_))
                              (let ((_e211317211335_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211312211332_))))
                                (let ((_hd211316211338_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211317211335_)))
                                      (_tl211315211340_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211317211335_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl211315211340_))
                                      ((lambda (_L211343_)
                                         (let ((__tmp218392
                                                (lambda (_g211354211356_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L211343_
                                                     _g211354211356_)))))
                                           (declare (not safe))
                                           (find __tmp218392 _ids211307_)))
                                       _hd211316211338_)
                                      (let ()
                                        (declare (not safe))
                                        (_g211309211322_ _g211310211325_)))))
                              (let ()
                                (declare (not safe))
                                (_g211309211322_ _g211310211325_)))))
                      (let ()
                        (declare (not safe))
                        (_g211309211322_ _g211310211325_))))))
          (declare (not safe))
          (_g211308211359_ _stx211306_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx211230_ _ids211231_)
        (let* ((_g211233211250_
                (lambda (_g211234211247_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211234211247_))))
               (_g211232211303_
                (lambda (_g211234211253_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211234211253_))
                      (let ((_e211239211255_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211234211253_))))
                        (let ((_hd211238211258_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211239211255_)))
                              (_tl211237211260_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211239211255_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211237211260_))
                              (let ((_e211242211263_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211237211260_))))
                                (let ((_hd211241211266_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211242211263_)))
                                      (_tl211240211268_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211242211263_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211240211268_))
                                      (let ((_e211245211271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211240211268_))))
                                        (let ((_hd211244211274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211245211271_)))
                                              (_tl211243211276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211245211271_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211243211276_))
                                              ((lambda (_L211279_ _L211280_)
                                                 (let ((_$e211300_
                                                        (let ((__tmp218393
                                                               (lambda (_g211295211297_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L211280_ _g211295211297_)))))
                  (declare (not safe))
                  (find __tmp218393 _ids211231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e211300_
                                                       _$e211300_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L211279_
                                                          _ids211231_)))))
                                               _hd211244211274_
                                               _hd211241211266_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211233211250_
                                                 _g211234211253_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211233211250_ _g211234211253_)))))
                              (let ()
                                (declare (not safe))
                                (_g211233211250_ _g211234211253_)))))
                      (let ()
                        (declare (not safe))
                        (_g211233211250_ _g211234211253_))))))
          (declare (not safe))
          (_g211232211303_ _stx211230_))))))
