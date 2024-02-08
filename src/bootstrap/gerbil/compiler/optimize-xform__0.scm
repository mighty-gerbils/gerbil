(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707415538)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl213866_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213866_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213866_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213866_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213866_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl213866_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl213862_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213862_ '%#declare gxc#xform-identity))
           _tbl213862_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl213858_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218306 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl213858_ __tmp218306))
           (let ((__tmp218307 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl213858_ __tmp218307))
           _tbl213858_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl213854_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213854_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213854_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213854_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213854_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213854_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl213854_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl213850_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218308 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl213850_ __tmp218308))
           (let ((__tmp218309 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl213850_ __tmp218309))
           (let ()
             (declare (not safe))
             (table-set! _tbl213850_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213850_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213850_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213850_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213850_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl213850_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl213846_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218310 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl213846_ __tmp218310))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl213846_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213846_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl213846_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx213829_ . _args213831_)
        (let ((__tmp218312
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213831_)
                     (gxc#compile-e__0 _stx213829_)
                     (let ((_arg1213836_ (car _args213831_))
                           (_rest213838_ (cdr _args213831_)))
                       (if (null? _rest213838_)
                           (gxc#compile-e__1 _stx213829_ _arg1213836_)
                           (let ((_arg2213841_ (car _rest213838_))
                                 (_rest213843_ (cdr _rest213838_)))
                             (if (null? _rest213843_)
                                 (gxc#compile-e__2
                                  _stx213829_
                                  _arg1213836_
                                  _arg2213841_)
                                 (apply gxc#compile-e
                                        _stx213829_
                                        _arg1213836_
                                        _arg2213841_
                                        _rest213843_))))))))
              (__tmp218311 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp218312
           gxc#current-compile-methods
           __tmp218311))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl213826_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218313 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl213826_ __tmp218313))
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
             (table-set! _tbl213826_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213826_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213826_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl213826_))))
    (define gxc#apply-collect-methods
      (lambda (_stx213809_ . _args213811_)
        (let ((__tmp218315
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
              (__tmp218314 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp218315
           gxc#current-compile-methods
           __tmp218314))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl213806_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218316 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl213806_ __tmp218316))
           (let ()
             (declare (not safe))
             (table-set! _tbl213806_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213806_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213806_ '%#set! gxc#expression-subst-setq%))
           _tbl213806_))))
    (define gxc#apply-expression-subst
      (lambda (_stx213789_ . _args213791_)
        (let ((__tmp218318
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
              (__tmp218317 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp218318
           gxc#current-compile-methods
           __tmp218317))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl213786_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218319 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl213786_ __tmp218319))
           (let ()
             (declare (not safe))
             (table-set! _tbl213786_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213786_ '%#set! gxc#expression-subst*-setq%))
           _tbl213786_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx213769_ . _args213771_)
        (let ((__tmp218321
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
              (__tmp218320 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp218321
           gxc#current-compile-methods
           __tmp218320))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl213766_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218322 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl213766_ __tmp218322))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213766_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl213766_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213766_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl213766_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl213762_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218323 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl213762_ __tmp218323))
           (let ()
             (declare (not safe))
             (table-set! _tbl213762_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213762_ '%#set! gxc#find-var-refs-setq%))
           _tbl213762_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx213745_ . _args213747_)
        (let ((__tmp218325
               (lambda ()
                 (declare (not safe))
                 (if (null? _args213747_)
                     (gxc#compile-e__0 _stx213745_)
                     (let ((_arg1213752_ (car _args213747_))
                           (_rest213754_ (cdr _args213747_)))
                       (if (null? _rest213754_)
                           (gxc#compile-e__1 _stx213745_ _arg1213752_)
                           (let ((_arg2213757_ (car _rest213754_))
                                 (_rest213759_ (cdr _rest213754_)))
                             (if (null? _rest213759_)
                                 (gxc#compile-e__2
                                  _stx213745_
                                  _arg1213752_
                                  _arg2213757_)
                                 (apply gxc#compile-e
                                        _stx213745_
                                        _arg1213752_
                                        _arg2213757_
                                        _rest213759_))))))))
              (__tmp218324 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp218325
           gxc#current-compile-methods
           __tmp218324))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl213742_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp218326 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl213742_ __tmp218326))
           (let ()
             (declare (not safe))
             (table-set! _tbl213742_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl213742_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl213742_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx213725_ . _args213727_)
        (let ((__tmp218328
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
              (__tmp218327 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp218328
           gxc#current-compile-methods
           __tmp218327))))
    (define gxc#xform-identity
      (lambda (_stx213722_ . _args213723_) _stx213722_))
    (define gxc#xform-wrap-source
      (lambda (_stx213719_ _src-stx213720_)
        (let ((__tmp218329
               (let () (declare (not safe)) (gx#stx-source _src-stx213720_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx213719_ __tmp218329))))
    (define gxc#xform-apply-compile-e
      (lambda (_args213706_)
        (lambda (_stx213708_)
          (if (let () (declare (not safe)) (null? _args213706_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx213708_))
              (let ((_arg1213710_ (car _args213706_))
                    (_rest213712_ (cdr _args213706_)))
                (if (let () (declare (not safe)) (null? _rest213712_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx213708_ _arg1213710_))
                    (let ((_arg2213715_ (car _rest213712_))
                          (_rest213717_ (cdr _rest213712_)))
                      (if (let () (declare (not safe)) (null? _rest213717_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx213708_
                             _arg1213710_
                             _arg2213715_))
                          (apply gxc#compile-e
                                 _stx213708_
                                 _arg1213710_
                                 _arg2213715_
                                 _rest213717_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx213665_ . _args213666_)
        (let* ((_g213668213678_
                (lambda (_g213669213675_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213669213675_))))
               (_g213667213703_
                (lambda (_g213669213681_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213669213681_))
                      (let ((_e213673213683_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213669213681_))))
                        (let ((_hd213672213686_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213673213683_)))
                              (_tl213671213688_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213673213683_))))
                          ((lambda (_L213691_)
                             (let* ((_forms213701_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args213666_))
                                          _L213691_))
                                    (__tmp218330
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms213701_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp218330
                                _stx213665_)))
                           _tl213671213688_)))
                      (let ()
                        (declare (not safe))
                        (_g213668213678_ _g213669213681_))))))
          (declare (not safe))
          (_g213667213703_ _stx213665_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx213623_ . _args213624_)
        (let* ((_g213626213636_
                (lambda (_g213627213633_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213627213633_))))
               (_g213625213662_
                (lambda (_g213627213639_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213627213639_))
                      (let ((_e213631213641_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213627213639_))))
                        (let ((_hd213630213644_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213631213641_)))
                              (_tl213629213646_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213631213641_))))
                          ((lambda (_L213649_)
                             (let ((__tmp218333
                                    (lambda ()
                                      (let* ((_forms213660_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args213624_))
                                                   _L213649_))
                                             (__tmp218334
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms213660_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp218334
                                         _stx213623_))))
                                   (__tmp218331
                                    (let ((__tmp218332
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp218332 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp218333
                                gx#current-expander-phi
                                __tmp218331)))
                           _tl213629213646_)))
                      (let ()
                        (declare (not safe))
                        (_g213626213636_ _g213627213639_))))))
          (declare (not safe))
          (_g213625213662_ _stx213623_))))
    (define gxc#xform-module%
      (lambda (_stx213551_ . _args213552_)
        (let* ((_g213554213568_
                (lambda (_g213555213565_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213555213565_))))
               (_g213553213620_
                (lambda (_g213555213571_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213555213571_))
                      (let ((_e213560213573_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213555213571_))))
                        (let ((_hd213559213576_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213560213573_)))
                              (_tl213558213578_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213560213573_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213558213578_))
                              (let ((_e213563213581_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213558213578_))))
                                (let ((_hd213562213584_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213563213581_)))
                                      (_tl213561213586_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213563213581_))))
                                  ((lambda (_L213589_ _L213590_)
                                     (let* ((_ctx213603_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L213590_)))
                                            (_code213605_
                                             (##structure-ref
                                              _ctx213603_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code213617_
                                             (let ((__tmp218335
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args213552_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code213605_))
                                                          (let ((_arg1213608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args213552_))
                        (_rest213610_ (cdr _args213552_)))
                    (if (let () (declare (not safe)) (null? _rest213610_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code213605_ _arg1213608_))
                        (let ((_arg2213613_ (car _rest213610_))
                              (_rest213615_ (cdr _rest213610_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest213615_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code213605_
                                 _arg1213608_
                                 _arg2213613_))
                              (apply gxc#compile-e
                                     _code213605_
                                     _arg1213608_
                                     _arg2213613_
                                     _rest213615_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp218335
                                                gx#current-expander-context
                                                _ctx213603_))))
                                       (##structure-set!
                                        _ctx213603_
                                        _code213617_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp218336
                                              (let ((__tmp218337
                                                     (let ((__tmp218338
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code213617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L213590_ __tmp218338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp218337))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp218336
                                          _stx213551_))))
                                   _tl213561213586_
                                   _hd213562213584_)))
                              (let ()
                                (declare (not safe))
                                (_g213554213568_ _g213555213571_)))))
                      (let ()
                        (declare (not safe))
                        (_g213554213568_ _g213555213571_))))))
          (declare (not safe))
          (_g213553213620_ _stx213551_))))
    (define gxc#xform-define-values%
      (lambda (_stx213472_ . _args213473_)
        (let* ((_g213475213492_
                (lambda (_g213476213489_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213476213489_))))
               (_g213474213548_
                (lambda (_g213476213495_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213476213495_))
                      (let ((_e213481213497_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213476213495_))))
                        (let ((_hd213480213500_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213481213497_)))
                              (_tl213479213502_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213481213497_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213479213502_))
                              (let ((_e213484213505_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213479213502_))))
                                (let ((_hd213483213508_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213484213505_)))
                                      (_tl213482213510_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213484213505_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213482213510_))
                                      (let ((_e213487213513_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213482213510_))))
                                        (let ((_hd213486213516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213487213513_)))
                                              (_tl213485213518_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213487213513_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213485213518_))
                                              ((lambda (_L213521_ _L213522_)
                                                 (let* ((_expr213546_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args213473_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L213521_))
                     (let ((_arg1213537_ (car _args213473_))
                           (_rest213539_ (cdr _args213473_)))
                       (if (let () (declare (not safe)) (null? _rest213539_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L213521_ _arg1213537_))
                           (let ((_arg2213542_ (car _rest213539_))
                                 (_rest213544_ (cdr _rest213539_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest213544_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L213521_
                                    _arg1213537_
                                    _arg2213542_))
                                 (apply gxc#compile-e
                                        _L213521_
                                        _arg1213537_
                                        _arg2213542_
                                        _rest213544_)))))))
                (__tmp218339
                 (let ((__tmp218340
                        (let ((__tmp218341
                               (let ()
                                 (declare (not safe))
                                 (cons _expr213546_ '()))))
                          (declare (not safe))
                          (cons _L213522_ __tmp218341))))
                   (declare (not safe))
                   (cons '%#define-values __tmp218340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp218339
                                                    _stx213472_)))
                                               _hd213486213516_
                                               _hd213483213508_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213475213492_
                                                 _g213476213495_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213475213492_ _g213476213495_)))))
                              (let ()
                                (declare (not safe))
                                (_g213475213492_ _g213476213495_)))))
                      (let ()
                        (declare (not safe))
                        (_g213475213492_ _g213476213495_))))))
          (declare (not safe))
          (_g213474213548_ _stx213472_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx213392_ . _args213393_)
        (let* ((_g213395213412_
                (lambda (_g213396213409_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213396213409_))))
               (_g213394213469_
                (lambda (_g213396213415_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213396213415_))
                      (let ((_e213401213417_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213396213415_))))
                        (let ((_hd213400213420_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213401213417_)))
                              (_tl213399213422_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213401213417_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213399213422_))
                              (let ((_e213404213425_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213399213422_))))
                                (let ((_hd213403213428_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213404213425_)))
                                      (_tl213402213430_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213404213425_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213402213430_))
                                      (let ((_e213407213433_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213402213430_))))
                                        (let ((_hd213406213436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213407213433_)))
                                              (_tl213405213438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213407213433_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213405213438_))
                                              ((lambda (_L213441_ _L213442_)
                                                 (let ((__tmp218344
                                                        (lambda ()
                                                          (let* ((_expr213467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args213393_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L213441_))
                              (let ((_arg1213458_ (car _args213393_))
                                    (_rest213460_ (cdr _args213393_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest213460_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L213441_
                                       _arg1213458_))
                                    (let ((_arg2213463_ (car _rest213460_))
                                          (_rest213465_ (cdr _rest213460_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest213465_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L213441_
                                             _arg1213458_
                                             _arg2213463_))
                                          (apply gxc#compile-e
                                                 _L213441_
                                                 _arg1213458_
                                                 _arg2213463_
                                                 _rest213465_)))))))
                         (__tmp218345
                          (let ((__tmp218346
                                 (let ((__tmp218347
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr213467_ '()))))
                                   (declare (not safe))
                                   (cons _L213442_ __tmp218347))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp218346))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp218345 _stx213392_))))
               (__tmp218342
                (let ((__tmp218343 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp218343 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp218344
                                                    gx#current-expander-phi
                                                    __tmp218342)))
                                               _hd213406213436_
                                               _hd213403213428_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213395213412_
                                                 _g213396213415_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213395213412_ _g213396213415_)))))
                              (let ()
                                (declare (not safe))
                                (_g213395213412_ _g213396213415_)))))
                      (let ()
                        (declare (not safe))
                        (_g213395213412_ _g213396213415_))))))
          (declare (not safe))
          (_g213394213469_ _stx213392_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx213313_ . _args213314_)
        (let* ((_g213316213333_
                (lambda (_g213317213330_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213317213330_))))
               (_g213315213389_
                (lambda (_g213317213336_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213317213336_))
                      (let ((_e213322213338_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213317213336_))))
                        (let ((_hd213321213341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213322213338_)))
                              (_tl213320213343_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213322213338_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213320213343_))
                              (let ((_e213325213346_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213320213343_))))
                                (let ((_hd213324213349_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213325213346_)))
                                      (_tl213323213351_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213325213346_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213323213351_))
                                      (let ((_e213328213354_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213323213351_))))
                                        (let ((_hd213327213357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213328213354_)))
                                              (_tl213326213359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213328213354_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213326213359_))
                                              ((lambda (_L213362_ _L213363_)
                                                 (let* ((_expr213387_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args213314_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L213362_))
                     (let ((_arg1213378_ (car _args213314_))
                           (_rest213380_ (cdr _args213314_)))
                       (if (let () (declare (not safe)) (null? _rest213380_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L213362_ _arg1213378_))
                           (let ((_arg2213383_ (car _rest213380_))
                                 (_rest213385_ (cdr _rest213380_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest213385_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L213362_
                                    _arg1213378_
                                    _arg2213383_))
                                 (apply gxc#compile-e
                                        _L213362_
                                        _arg1213378_
                                        _arg2213383_
                                        _rest213385_)))))))
                (__tmp218348
                 (let ((__tmp218349
                        (let ((__tmp218350
                               (let ()
                                 (declare (not safe))
                                 (cons _expr213387_ '()))))
                          (declare (not safe))
                          (cons _L213363_ __tmp218350))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp218349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp218348
                                                    _stx213313_)))
                                               _hd213327213357_
                                               _hd213324213349_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213316213333_
                                                 _g213317213336_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213316213333_ _g213317213336_)))))
                              (let ()
                                (declare (not safe))
                                (_g213316213333_ _g213317213336_)))))
                      (let ()
                        (declare (not safe))
                        (_g213316213333_ _g213317213336_))))))
          (declare (not safe))
          (_g213315213389_ _stx213313_))))
    (define gxc#xform-lambda%
      (lambda (_stx213256_ . _args213257_)
        (let* ((_g213259213273_
                (lambda (_g213260213270_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213260213270_))))
               (_g213258213310_
                (lambda (_g213260213276_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213260213276_))
                      (let ((_e213265213278_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213260213276_))))
                        (let ((_hd213264213281_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213265213278_)))
                              (_tl213263213283_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213265213278_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213263213283_))
                              (let ((_e213268213286_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213263213283_))))
                                (let ((_hd213267213289_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213268213286_)))
                                      (_tl213266213291_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213268213286_))))
                                  ((lambda (_L213294_ _L213295_)
                                     (let* ((_body213308_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args213257_))
                                                  _L213294_))
                                            (__tmp218351
                                             (let ((__tmp218352
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L213295_
                                                            _body213308_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp218352))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp218351
                                        _stx213256_)))
                                   _tl213266213291_
                                   _hd213267213289_)))
                              (let ()
                                (declare (not safe))
                                (_g213259213273_ _g213260213276_)))))
                      (let ()
                        (declare (not safe))
                        (_g213259213273_ _g213260213276_))))))
          (declare (not safe))
          (_g213258213310_ _stx213256_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx213169_ . _args213170_)
        (letrec ((_clause-e213172_
                  (lambda (_clause213213_)
                    (let* ((_g213215213226_
                            (lambda (_g213216213223_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g213216213223_))))
                           (_g213214213253_
                            (lambda (_g213216213229_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g213216213229_))
                                  (let ((_e213221213231_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g213216213229_))))
                                    (let ((_hd213220213234_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e213221213231_)))
                                          (_tl213219213236_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e213221213231_))))
                                      ((lambda (_L213239_ _L213240_)
                                         (let ((_body213251_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args213170_))
                                                     _L213239_)))
                                           (declare (not safe))
                                           (cons _L213240_ _body213251_)))
                                       _tl213219213236_
                                       _hd213220213234_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g213215213226_ _g213216213229_))))))
                      (declare (not safe))
                      (_g213214213253_ _clause213213_)))))
          (let* ((_g213174213184_
                  (lambda (_g213175213181_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g213175213181_))))
                 (_g213173213210_
                  (lambda (_g213175213187_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g213175213187_))
                        (let ((_e213179213189_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g213175213187_))))
                          (let ((_hd213178213192_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e213179213189_)))
                                (_tl213177213194_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e213179213189_))))
                            ((lambda (_L213197_)
                               (let* ((_clauses213208_
                                       (map _clause-e213172_ _L213197_))
                                      (__tmp218353
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses213208_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp218353
                                  _stx213169_)))
                             _tl213177213194_)))
                        (let ()
                          (declare (not safe))
                          (_g213174213184_ _g213175213187_))))))
            (declare (not safe))
            (_g213173213210_ _stx213169_)))))
    (define gxc#xform-let-values%
      (lambda (_stx212963_ . _args212964_)
        (let* ((_g212966212999_
                (lambda (_g212967212996_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212967212996_))))
               (_g212965213166_
                (lambda (_g212967213002_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212967213002_))
                      (let ((_e212974213004_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212967213002_))))
                        (let ((_hd212973213007_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212974213004_)))
                              (_tl212972213009_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212974213004_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212972213009_))
                              (let ((_e212977213012_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212972213009_))))
                                (let ((_hd212976213015_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212977213012_)))
                                      (_tl212975213017_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212977213012_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd212976213015_))
                                      (let ((_g218354_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd212976213015_
                                                '0))))
                                        (begin
                                          (let ((_g218355_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218354_)
                                                       (##vector-length
                                                        _g218354_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218355_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218355_)))
                                          (let ((_target212978213020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g218354_ 0)))
                                                (_tl212980213022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g218354_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl212980213022_))
                                                (letrec ((_loop212981213025_
                                                          (lambda (_hd212979213028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr212985213030_
                           _hd212986213032_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd212979213028_))
                        (let ((_e212982213035_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd212979213028_))))
                          (let ((_lp-hd212983213038_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e212982213035_)))
                                (_lp-tl212984213040_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e212982213035_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd212983213038_))
                                (let ((_e212991213043_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd212983213038_))))
                                  (let ((_hd212990213046_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e212991213043_)))
                                        (_tl212989213048_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e212991213043_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl212989213048_))
                                        (let ((_e212994213051_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl212989213048_))))
                                          (let ((_hd212993213054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e212994213051_)))
                                                (_tl212992213056_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e212994213051_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl212992213056_))
                                                (let ((__tmp218368
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd212993213054_
                                                               _expr212985213030_)))
                                                      (__tmp218367
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd212990213046_
                                                               _hd212986213032_))))
                                                  (declare (not safe))
                                                  (_loop212981213025_
                                                   _lp-tl212984213040_
                                                   __tmp218368
                                                   __tmp218367))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g212966212999_
                                                   _g212967213002_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g212966212999_ _g212967213002_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g212966212999_ _g212967213002_)))))
                        (let ((_expr212987213059_ (reverse _expr212985213030_))
                              (_hd212988213061_ (reverse _hd212986213032_)))
                          ((lambda (_L213064_ _L213065_ _L213066_ _L213067_)
                             (let* ((_g213086213102_
                                     (lambda (_g213087213099_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g213087213099_))))
                                    (_g213085213156_
                                     (lambda (_g213087213105_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g213087213105_))
                                           (let ((_g218356_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g213087213105_
                                                     '0))))
                                             (begin
                                               (let ((_g218357_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g218356_)
                                                            (##vector-length
                                                             _g218356_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g218357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g218357_)))
                                               (let ((_target213089213107_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g218356_
                                                         0)))
                                                     (_tl213091213109_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g218356_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl213091213109_))
                                                     (letrec ((_loop213092213112_
                                                               (lambda (_hd213090213115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr213096213117_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd213090213115_))
                             (let ((_e213093213120_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd213090213115_))))
                               (let ((_lp-hd213094213123_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e213093213120_)))
                                     (_lp-tl213095213125_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e213093213120_))))
                                 (let ((__tmp218364
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd213094213123_
                                                _expr213096213117_))))
                                   (declare (not safe))
                                   (_loop213092213112_
                                    _lp-tl213095213125_
                                    __tmp218364))))
                             (let ((_expr213097213128_
                                    (reverse _expr213096213117_)))
                               ((lambda (_L213131_)
                                  (let ()
                                    (let* ((_body213144_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args212964_))
                                                 _L213064_))
                                           (__tmp218358
                                            (let ((__tmp218359
                                                   (let ((__tmp218360
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L213131_
                                                               _L213066_))
                                                            (let ((__tmp218361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g213145213149_
                                    _g213146213151_
                                    _g213147213153_)
                             (let ((__tmp218362
                                    (let ((__tmp218363
                                           (let ()
                                             (declare (not safe))
                                             (cons _g213145213149_ '()))))
                                      (declare (not safe))
                                      (cons _g213146213151_ __tmp218363))))
                               (declare (not safe))
                               (cons __tmp218362 _g213147213153_)))))
                      (declare (not safe))
                      (foldr2 __tmp218361 '() _L213131_ _L213066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp218360
                                                           _body213144_))))
                                              (declare (not safe))
                                              (cons _L213067_ __tmp218359))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp218358
                                       _stx212963_))))
                                _expr213097213128_))))))
               (let ()
                 (declare (not safe))
                 (_loop213092213112_ _target213089213107_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g213086213102_
                                                        _g213087213105_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g213086213102_
                                              _g213087213105_)))))
                                    (__tmp218365
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args212964_))
                                          (let ((__tmp218366
                                                 (lambda (_g213158213161_
                                                          _g213159213163_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g213158213161_
                                                           _g213159213163_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp218366
                                                    '()
                                                    _L213065_)))))
                               (declare (not safe))
                               (_g213085213156_ __tmp218365)))
                           _tl212975213017_
                           _expr212987213059_
                           _hd212988213061_
                           _hd212973213007_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop212981213025_
                                                     _target212978213020_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g212966212999_
                                                   _g212967213002_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212966212999_ _g212967213002_)))))
                              (let ()
                                (declare (not safe))
                                (_g212966212999_ _g212967213002_)))))
                      (let ()
                        (declare (not safe))
                        (_g212966212999_ _g212967213002_))))))
          (declare (not safe))
          (_g212965213166_ _stx212963_))))
    (define gxc#xform-operands
      (lambda (_stx212919_ . _args212920_)
        (let* ((_g212922212933_
                (lambda (_g212923212930_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212923212930_))))
               (_g212921212960_
                (lambda (_g212923212936_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212923212936_))
                      (let ((_e212928212938_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212923212936_))))
                        (let ((_hd212927212941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212928212938_)))
                              (_tl212926212943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212928212938_))))
                          ((lambda (_L212946_ _L212947_)
                             (let* ((_rands212958_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args212920_))
                                          _L212946_))
                                    (__tmp218369
                                     (let ()
                                       (declare (not safe))
                                       (cons _L212947_ _rands212958_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp218369
                                _stx212919_)))
                           _tl212926212943_
                           _hd212927212941_)))
                      (let ()
                        (declare (not safe))
                        (_g212922212933_ _g212923212936_))))))
          (declare (not safe))
          (_g212921212960_ _stx212919_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx212840_ . _args212841_)
        (let* ((_g212843212860_
                (lambda (_g212844212857_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212844212857_))))
               (_g212842212916_
                (lambda (_g212844212863_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212844212863_))
                      (let ((_e212849212865_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212844212863_))))
                        (let ((_hd212848212868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212849212865_)))
                              (_tl212847212870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212849212865_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212847212870_))
                              (let ((_e212852212873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212847212870_))))
                                (let ((_hd212851212876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212852212873_)))
                                      (_tl212850212878_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212852212873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212850212878_))
                                      (let ((_e212855212881_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212850212878_))))
                                        (let ((_hd212854212884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212855212881_)))
                                              (_tl212853212886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212855212881_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212853212886_))
                                              ((lambda (_L212889_ _L212890_)
                                                 (let* ((_expr212914_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args212841_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L212889_))
                     (let ((_arg1212905_ (car _args212841_))
                           (_rest212907_ (cdr _args212841_)))
                       (if (let () (declare (not safe)) (null? _rest212907_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L212889_ _arg1212905_))
                           (let ((_arg2212910_ (car _rest212907_))
                                 (_rest212912_ (cdr _rest212907_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest212912_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L212889_
                                    _arg1212905_
                                    _arg2212910_))
                                 (apply gxc#compile-e
                                        _L212889_
                                        _arg1212905_
                                        _arg2212910_
                                        _rest212912_)))))))
                (__tmp218370
                 (let ((__tmp218371
                        (let ((__tmp218372
                               (let ()
                                 (declare (not safe))
                                 (cons _expr212914_ '()))))
                          (declare (not safe))
                          (cons _L212890_ __tmp218372))))
                   (declare (not safe))
                   (cons '%#set! __tmp218371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp218370
                                                    _stx212840_)))
                                               _hd212854212884_
                                               _hd212851212876_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212843212860_
                                                 _g212844212863_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212843212860_ _g212844212863_)))))
                              (let ()
                                (declare (not safe))
                                (_g212843212860_ _g212844212863_)))))
                      (let ()
                        (declare (not safe))
                        (_g212843212860_ _g212844212863_))))))
          (declare (not safe))
          (_g212842212916_ _stx212840_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx212771_)
        (let* ((_g212773212790_
                (lambda (_g212774212787_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212774212787_))))
               (_g212772212837_
                (lambda (_g212774212793_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212774212793_))
                      (let ((_e212779212795_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212774212793_))))
                        (let ((_hd212778212798_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212779212795_)))
                              (_tl212777212800_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212779212795_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212777212800_))
                              (let ((_e212782212803_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212777212800_))))
                                (let ((_hd212781212806_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212782212803_)))
                                      (_tl212780212808_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212782212803_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212780212808_))
                                      (let ((_e212785212811_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212780212808_))))
                                        (let ((_hd212784212814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212785212811_)))
                                              (_tl212783212816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212785212811_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212783212816_))
                                              ((lambda (_L212819_ _L212820_)
                                                 (let ((_sym212835_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L212820_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym212835_))
                                                   (let ((__tmp218373
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp218373
                                                      _sym212835_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L212819_))))
                                               _hd212784212814_
                                               _hd212781212806_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212773212790_
                                                 _g212774212793_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212773212790_ _g212774212793_)))))
                              (let ()
                                (declare (not safe))
                                (_g212773212790_ _g212774212793_)))))
                      (let ()
                        (declare (not safe))
                        (_g212773212790_ _g212774212793_))))))
          (declare (not safe))
          (_g212772212837_ _stx212771_))))
    (define gxc#collect-methods-call%
      (lambda (_stx212325_)
        (let* ((___stx218063218064_ _stx212325_)
               (_g212329212431_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx218063218064_)))))
          (let ((___kont218065218066_
                 (lambda (_L212721_ _L212722_ _L212723_ _L212724_ _L212725_)
                   (let ((__tmp218374
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L212722_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp218374))))
                (___kont218067218068_
                 (lambda (_L212547_ _L212548_ _L212549_ _L212550_)
                   (let ((__tmp218375
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L212547_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp218375))))
                (___kont218069218070_ (lambda () '#!void)))
            (let ((___match218198218199_
                   (lambda (_e212338212593_
                            _hd212337212596_
                            _tl212336212598_
                            _e212341212601_
                            _hd212340212604_
                            _tl212339212606_
                            _e212344212609_
                            _hd212343212612_
                            _tl212342212614_
                            _e212347212617_
                            _hd212346212620_
                            _tl212345212622_
                            _e212350212625_
                            _hd212349212628_
                            _tl212348212630_
                            _e212353212633_
                            _hd212352212636_
                            _tl212351212638_
                            _e212356212641_
                            _hd212355212644_
                            _tl212354212646_
                            _e212359212649_
                            _hd212358212652_
                            _tl212357212654_
                            _e212362212657_
                            _hd212361212660_
                            _tl212360212662_
                            _e212365212665_
                            _hd212364212668_
                            _tl212363212670_
                            _e212368212673_
                            _hd212367212676_
                            _tl212366212678_
                            _e212371212681_
                            _hd212370212684_
                            _tl212369212686_
                            _e212374212689_
                            _hd212373212692_
                            _tl212372212694_
                            _e212377212697_
                            _hd212376212700_
                            _tl212375212702_
                            _e212380212705_
                            _hd212379212708_
                            _tl212378212710_
                            _e212383212713_
                            _hd212382212716_
                            _tl212381212718_)
                     (let ((_L212721_ _hd212382212716_)
                           (_L212722_ _hd212373212692_)
                           (_L212723_ _hd212364212668_)
                           (_L212724_ _hd212355212644_)
                           (_L212725_ _hd212346212620_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L212725_
                              'bind-method!))
                           (___kont218065218066_
                            _L212721_
                            _L212722_
                            _L212723_
                            _L212724_
                            _L212725_)
                           (___kont218069218070_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx218063218064_))
                  (let ((_e212338212593_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx218063218064_))))
                    (let ((_tl212336212598_
                           (let ()
                             (declare (not safe))
                             (##cdr _e212338212593_)))
                          (_hd212337212596_
                           (let ()
                             (declare (not safe))
                             (##car _e212338212593_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl212336212598_))
                          (let ((_e212341212601_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl212336212598_))))
                            (let ((_tl212339212606_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e212341212601_)))
                                  (_hd212340212604_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e212341212601_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd212340212604_))
                                  (let ((_e212344212609_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd212340212604_))))
                                    (let ((_tl212342212614_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e212344212609_)))
                                          (_hd212343212612_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e212344212609_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd212343212612_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd212343212612_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl212342212614_))
                                                  (let ((_e212347212617_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl212342212614_))))
                                                    (let ((_tl212345212622_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e212347212617_)))
                                                          (_hd212346212620_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e212347212617_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl212345212622_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl212339212606_))
                      (let ((_e212350212625_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl212339212606_))))
                        (let ((_tl212348212630_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212350212625_)))
                              (_hd212349212628_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212350212625_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd212349212628_))
                              (let ((_e212353212633_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd212349212628_))))
                                (let ((_tl212351212638_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212353212633_)))
                                      (_hd212352212636_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212353212633_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd212352212636_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd212352212636_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl212351212638_))
                                              (let ((_e212356212641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl212351212638_))))
                                                (let ((_tl212354212646_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e212356212641_)))
                                                      (_hd212355212644_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e212356212641_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl212354212646_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl212348212630_))
                                                          (let ((_e212359212649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl212348212630_))))
                    (let ((_tl212357212654_
                           (let ()
                             (declare (not safe))
                             (##cdr _e212359212649_)))
                          (_hd212358212652_
                           (let ()
                             (declare (not safe))
                             (##car _e212359212649_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd212358212652_))
                          (let ((_e212362212657_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd212358212652_))))
                            (let ((_tl212360212662_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e212362212657_)))
                                  (_hd212361212660_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e212362212657_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd212361212660_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd212361212660_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl212360212662_))
                                          (let ((_e212365212665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl212360212662_))))
                                            (let ((_tl212363212670_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e212365212665_)))
                                                  (_hd212364212668_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e212365212665_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl212363212670_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl212357212654_))
                                                      (let ((_e212368212673_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl212357212654_))))
                (let ((_tl212366212678_
                       (let () (declare (not safe)) (##cdr _e212368212673_)))
                      (_hd212367212676_
                       (let () (declare (not safe)) (##car _e212368212673_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd212367212676_))
                      (let ((_e212371212681_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd212367212676_))))
                        (let ((_tl212369212686_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212371212681_)))
                              (_hd212370212684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212371212681_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd212370212684_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd212370212684_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212369212686_))
                                      (let ((_e212374212689_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212369212686_))))
                                        (let ((_tl212372212694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212374212689_)))
                                              (_hd212373212692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212374212689_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212372212694_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl212366212678_))
                                                  (let ((_e212377212697_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl212366212678_))))
                                                    (let ((_tl212375212702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e212377212697_)))
                                                          (_hd212376212700_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e212377212697_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd212376212700_))
                                                          (let ((_e212380212705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd212376212700_))))
                    (let ((_tl212378212710_
                           (let ()
                             (declare (not safe))
                             (##cdr _e212380212705_)))
                          (_hd212379212708_
                           (let ()
                             (declare (not safe))
                             (##car _e212380212705_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd212379212708_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd212379212708_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl212378212710_))
                                  (let ((_e212383212713_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl212378212710_))))
                                    (let ((_tl212381212718_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e212383212713_)))
                                          (_hd212382212716_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e212383212713_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl212381212718_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212375212702_))
                                              (___match218198218199_
                                               _e212338212593_
                                               _hd212337212596_
                                               _tl212336212598_
                                               _e212341212601_
                                               _hd212340212604_
                                               _tl212339212606_
                                               _e212344212609_
                                               _hd212343212612_
                                               _tl212342212614_
                                               _e212347212617_
                                               _hd212346212620_
                                               _tl212345212622_
                                               _e212350212625_
                                               _hd212349212628_
                                               _tl212348212630_
                                               _e212353212633_
                                               _hd212352212636_
                                               _tl212351212638_
                                               _e212356212641_
                                               _hd212355212644_
                                               _tl212354212646_
                                               _e212359212649_
                                               _hd212358212652_
                                               _tl212357212654_
                                               _e212362212657_
                                               _hd212361212660_
                                               _tl212360212662_
                                               _e212365212665_
                                               _hd212364212668_
                                               _tl212363212670_
                                               _e212368212673_
                                               _hd212367212676_
                                               _tl212366212678_
                                               _e212371212681_
                                               _hd212370212684_
                                               _tl212369212686_
                                               _e212374212689_
                                               _hd212373212692_
                                               _tl212372212694_
                                               _e212377212697_
                                               _hd212376212700_
                                               _tl212375212702_
                                               _e212380212705_
                                               _hd212379212708_
                                               _tl212378212710_
                                               _e212383212713_
                                               _hd212382212716_
                                               _tl212381212718_)
                                              (___kont218069218070_))
                                          (___kont218069218070_))))
                                  (___kont218069218070_))
                              (___kont218069218070_))
                          (___kont218069218070_))))
                  (___kont218069218070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl212366212678_))
                                                      (if (let ((__tmp218376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp218376 'bind-method!))
                  (let ((_L212547_ _hd212373212692_)
                        (_L212548_ _hd212364212668_)
                        (_L212549_ _hd212355212644_)
                        (_L212550_ _hd212346212620_))
                    (___kont218067218068_
                     _L212547_
                     _L212548_
                     _L212549_
                     _L212550_))
                  (___kont218069218070_))
              (___kont218069218070_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont218069218070_))))
                                      (___kont218069218070_))
                                  (___kont218069218070_))
                              (___kont218069218070_))))
                      (___kont218069218070_))))
              (___kont218069218070_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont218069218070_))))
                                          (___kont218069218070_))
                                      (___kont218069218070_))
                                  (___kont218069218070_))))
                          (___kont218069218070_))))
                  (___kont218069218070_))
              (___kont218069218070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont218069218070_))
                                          (___kont218069218070_))
                                      (___kont218069218070_))))
                              (___kont218069218070_))))
                      (___kont218069218070_))
                  (___kont218069218070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont218069218070_))
                                              (___kont218069218070_))
                                          (___kont218069218070_))))
                                  (___kont218069218070_))))
                          (___kont218069218070_))))
                  (___kont218069218070_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx212272_ _id212273_ _new-id212274_)
        (let* ((_g212276212289_
                (lambda (_g212277212286_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212277212286_))))
               (_g212275212322_
                (lambda (_g212277212292_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212277212292_))
                      (let ((_e212281212294_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212277212292_))))
                        (let ((_hd212280212297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212281212294_)))
                              (_tl212279212299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212281212294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212279212299_))
                              (let ((_e212284212302_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212279212299_))))
                                (let ((_hd212283212305_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212284212302_)))
                                      (_tl212282212307_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212284212302_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl212282212307_))
                                      ((lambda (_L212310_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L212310_
                                                _id212273_))
                                             (let ((__tmp218377
                                                    (let ((__tmp218378
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id212274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp218378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp218377
                                                _stx212272_))
                                             _stx212272_))
                                       _hd212283212305_)
                                      (let ()
                                        (declare (not safe))
                                        (_g212276212289_ _g212277212292_)))))
                              (let ()
                                (declare (not safe))
                                (_g212276212289_ _g212277212292_)))))
                      (let ()
                        (declare (not safe))
                        (_g212276212289_ _g212277212292_))))))
          (declare (not safe))
          (_g212275212322_ _stx212272_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx212213_ _subst212214_)
        (let* ((_g212216212229_
                (lambda (_g212217212226_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212217212226_))))
               (_g212215212269_
                (lambda (_g212217212232_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212217212232_))
                      (let ((_e212221212234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212217212232_))))
                        (let ((_hd212220212237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212221212234_)))
                              (_tl212219212239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212221212234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212219212239_))
                              (let ((_e212224212242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212219212239_))))
                                (let ((_hd212223212245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212224212242_)))
                                      (_tl212222212247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212224212242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl212222212247_))
                                      ((lambda (_L212250_)
                                         (let ((_$e212264_
                                                (let ((__tmp218379
                                                       (lambda (_sub212262_)
                                                         (let ((__tmp218380
                                                                (car _sub212262_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L212250_
                                                            __tmp218380)))))
                                                  (declare (not safe))
                                                  (find __tmp218379
                                                        _subst212214_))))
                                           (if _$e212264_
                                               ((lambda (_sub212267_)
                                                  (let ((__tmp218381
                                                         (let ((__tmp218382
                                                                (let ((__tmp218383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub212267_)))
                          (declare (not safe))
                          (cons __tmp218383 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp218382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp218381
                                                     _stx212213_)))
                                                _$e212264_)
                                               _stx212213_)))
                                       _hd212223212245_)
                                      (let ()
                                        (declare (not safe))
                                        (_g212216212229_ _g212217212232_)))))
                              (let ()
                                (declare (not safe))
                                (_g212216212229_ _g212217212232_)))))
                      (let ()
                        (declare (not safe))
                        (_g212216212229_ _g212217212232_))))))
          (declare (not safe))
          (_g212215212269_ _stx212213_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx212141_ _id212142_ _new-id212143_)
        (let* ((_g212145212162_
                (lambda (_g212146212159_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212146212159_))))
               (_g212144212210_
                (lambda (_g212146212165_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212146212165_))
                      (let ((_e212151212167_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212146212165_))))
                        (let ((_hd212150212170_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212151212167_)))
                              (_tl212149212172_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212151212167_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212149212172_))
                              (let ((_e212154212175_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212149212172_))))
                                (let ((_hd212153212178_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212154212175_)))
                                      (_tl212152212180_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212154212175_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212152212180_))
                                      (let ((_e212157212183_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212152212180_))))
                                        (let ((_hd212156212186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212157212183_)))
                                              (_tl212155212188_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212157212183_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212155212188_))
                                              ((lambda (_L212191_ _L212192_)
                                                 (let ((_new-expr212207_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L212191_
                                                           _id212142_
                                                           _new-id212143_)))
                                                       (_new-xid212208_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L212192_
                                                               _id212142_))
                                                            _new-id212143_
                                                            _L212192_)))
                                                   (let ((__tmp218384
                                                          (let ((__tmp218385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp218386
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr212207_ '()))))
                           (declare (not safe))
                           (cons _new-xid212208_ __tmp218386))))
                    (declare (not safe))
                    (cons '%#set! __tmp218385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp218384
                                                      _stx212141_))))
                                               _hd212156212186_
                                               _hd212153212178_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212145212162_
                                                 _g212146212165_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212145212162_ _g212146212165_)))))
                              (let ()
                                (declare (not safe))
                                (_g212145212162_ _g212146212165_)))))
                      (let ()
                        (declare (not safe))
                        (_g212145212162_ _g212146212165_))))))
          (declare (not safe))
          (_g212144212210_ _stx212141_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx212065_ _subst212066_)
        (let* ((_g212068212085_
                (lambda (_g212069212082_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212069212082_))))
               (_g212067212138_
                (lambda (_g212069212088_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212069212088_))
                      (let ((_e212074212090_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212069212088_))))
                        (let ((_hd212073212093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212074212090_)))
                              (_tl212072212095_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212074212090_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212072212095_))
                              (let ((_e212077212098_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212072212095_))))
                                (let ((_hd212076212101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212077212098_)))
                                      (_tl212075212103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212077212098_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212075212103_))
                                      (let ((_e212080212106_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212075212103_))))
                                        (let ((_hd212079212109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212080212106_)))
                                              (_tl212078212111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212080212106_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212078212111_))
                                              ((lambda (_L212114_ _L212115_)
                                                 (let ((_new-expr212135_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L212114_
                                                           _subst212066_)))
                                                       (_new-xid212136_
                                                        (let ((_$e212132_
                                                               (let ((__tmp218387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub212130_)
                                (let ((__tmp218388 (car _sub212130_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L212115_
                                   __tmp218388)))))
                         (declare (not safe))
                         (find __tmp218387 _subst212066_))))
                  (if _$e212132_ (cdr _$e212132_) _L212115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp218389
                                                          (let ((__tmp218390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp218391
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr212135_ '()))))
                           (declare (not safe))
                           (cons _new-xid212136_ __tmp218391))))
                    (declare (not safe))
                    (cons '%#set! __tmp218390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp218389
                                                      _stx212065_))))
                                               _hd212079212109_
                                               _hd212076212101_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212068212085_
                                                 _g212069212088_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212068212085_ _g212069212088_)))))
                              (let ()
                                (declare (not safe))
                                (_g212068212085_ _g212069212088_)))))
                      (let ()
                        (declare (not safe))
                        (_g212068212085_ _g212069212088_))))))
          (declare (not safe))
          (_g212067212138_ _stx212065_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx212011_ _ht212012_)
        (let* ((_g212014212027_
                (lambda (_g212015212024_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212015212024_))))
               (_g212013212062_
                (lambda (_g212015212030_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212015212030_))
                      (let ((_e212019212032_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212015212030_))))
                        (let ((_hd212018212035_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212019212032_)))
                              (_tl212017212037_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212019212032_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212017212037_))
                              (let ((_e212022212040_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212017212037_))))
                                (let ((_hd212021212043_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212022212040_)))
                                      (_tl212020212045_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212022212040_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl212020212045_))
                                      ((lambda (_L212048_)
                                         (let ((_eid212060_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L212048_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht212012_
                                            _eid212060_
                                            1+
                                            '0)))
                                       _hd212021212043_)
                                      (let ()
                                        (declare (not safe))
                                        (_g212014212027_ _g212015212030_)))))
                              (let ()
                                (declare (not safe))
                                (_g212014212027_ _g212015212030_)))))
                      (let ()
                        (declare (not safe))
                        (_g212014212027_ _g212015212030_))))))
          (declare (not safe))
          (_g212013212062_ _stx212011_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx211941_ _ht211942_)
        (let* ((_g211944211961_
                (lambda (_g211945211958_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211945211958_))))
               (_g211943212008_
                (lambda (_g211945211964_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211945211964_))
                      (let ((_e211950211966_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211945211964_))))
                        (let ((_hd211949211969_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211950211966_)))
                              (_tl211948211971_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211950211966_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211948211971_))
                              (let ((_e211953211974_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211948211971_))))
                                (let ((_hd211952211977_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211953211974_)))
                                      (_tl211951211979_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211953211974_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211951211979_))
                                      (let ((_e211956211982_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211951211979_))))
                                        (let ((_hd211955211985_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211956211982_)))
                                              (_tl211954211987_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211956211982_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211954211987_))
                                              ((lambda (_L211990_ _L211991_)
                                                 (let ((_eid212006_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L211991_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht211942_
                                                      _eid212006_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L211990_
                                                      _ht211942_))))
                                               _hd211955211985_
                                               _hd211952211977_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211944211961_
                                                 _g211945211964_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211944211961_ _g211945211964_)))))
                              (let ()
                                (declare (not safe))
                                (_g211944211961_ _g211945211964_)))))
                      (let ()
                        (declare (not safe))
                        (_g211944211961_ _g211945211964_))))))
          (declare (not safe))
          (_g211943212008_ _stx211941_))))
    (define gxc#find-body%
      (lambda (_stx211854_ _arg211855_)
        (let* ((_g211857211876_
                (lambda (_g211858211873_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211858211873_))))
               (_g211856211938_
                (lambda (_g211858211879_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211858211879_))
                      (let ((_e211862211881_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211858211879_))))
                        (let ((_hd211861211884_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211862211881_)))
                              (_tl211860211886_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211862211881_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl211860211886_))
                              (let ((_g218392_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl211860211886_
                                        '0))))
                                (begin
                                  (let ((_g218393_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g218392_)
                                               (##vector-length _g218392_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g218393_ 2)))
                                        (error "Context expects 2 values"
                                               _g218393_)))
                                  (let ((_target211863211889_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218392_ 0)))
                                        (_tl211865211891_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218392_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl211865211891_))
                                        (letrec ((_loop211866211894_
                                                  (lambda (_hd211864211897_
                                                           _expr211870211899_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd211864211897_))
                                                        (let ((_e211867211902_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd211864211897_))))
                  (let ((_lp-hd211868211905_
                         (let () (declare (not safe)) (##car _e211867211902_)))
                        (_lp-tl211869211907_
                         (let ()
                           (declare (not safe))
                           (##cdr _e211867211902_))))
                    (let ((__tmp218397
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd211868211905_ _expr211870211899_))))
                      (declare (not safe))
                      (_loop211866211894_ _lp-tl211869211907_ __tmp218397))))
                (let ((_expr211871211910_ (reverse _expr211870211899_)))
                  ((lambda (_L211913_)
                     (let ((__tmp218396
                            (lambda (_g211926211928_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g211926211928_
                                 _arg211855_))))
                           (__tmp218394
                            (let ((__tmp218395
                                   (lambda (_g211930211933_ _g211931211935_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g211930211933_
                                             _g211931211935_)))))
                              (declare (not safe))
                              (foldr1 __tmp218395 '() _L211913_))))
                       (declare (not safe))
                       (ormap1 __tmp218396 __tmp218394)))
                   _expr211871211910_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop211866211894_
                                             _target211863211889_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g211857211876_
                                           _g211858211879_))))))
                              (let ()
                                (declare (not safe))
                                (_g211857211876_ _g211858211879_)))))
                      (let ()
                        (declare (not safe))
                        (_g211857211876_ _g211858211879_))))))
          (declare (not safe))
          (_g211856211938_ _stx211854_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx211786_ _arg211787_)
        (let* ((_g211789211806_
                (lambda (_g211790211803_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211790211803_))))
               (_g211788211851_
                (lambda (_g211790211809_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211790211809_))
                      (let ((_e211795211811_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211790211809_))))
                        (let ((_hd211794211814_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211795211811_)))
                              (_tl211793211816_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211795211811_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211793211816_))
                              (let ((_e211798211819_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211793211816_))))
                                (let ((_hd211797211822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211798211819_)))
                                      (_tl211796211824_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211798211819_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211796211824_))
                                      (let ((_e211801211827_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211796211824_))))
                                        (let ((_hd211800211830_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211801211827_)))
                                              (_tl211799211832_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211801211827_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211799211832_))
                                              ((lambda (_L211835_ _L211836_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L211835_
                                                    _arg211787_)))
                                               _hd211800211830_
                                               _hd211797211822_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211789211806_
                                                 _g211790211809_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211789211806_ _g211790211809_)))))
                              (let ()
                                (declare (not safe))
                                (_g211789211806_ _g211790211809_)))))
                      (let ()
                        (declare (not safe))
                        (_g211789211806_ _g211790211809_))))))
          (declare (not safe))
          (_g211788211851_ _stx211786_))))
    (define gxc#find-lambda%
      (lambda (_stx211718_ _arg211719_)
        (let* ((_g211721211738_
                (lambda (_g211722211735_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211722211735_))))
               (_g211720211783_
                (lambda (_g211722211741_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211722211741_))
                      (let ((_e211727211743_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211722211741_))))
                        (let ((_hd211726211746_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211727211743_)))
                              (_tl211725211748_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211727211743_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211725211748_))
                              (let ((_e211730211751_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211725211748_))))
                                (let ((_hd211729211754_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211730211751_)))
                                      (_tl211728211756_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211730211751_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211728211756_))
                                      (let ((_e211733211759_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211728211756_))))
                                        (let ((_hd211732211762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211733211759_)))
                                              (_tl211731211764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211733211759_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211731211764_))
                                              ((lambda (_L211767_ _L211768_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L211767_
                                                    _arg211719_)))
                                               _hd211732211762_
                                               _hd211729211754_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211721211738_
                                                 _g211722211741_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211721211738_ _g211722211741_)))))
                              (let ()
                                (declare (not safe))
                                (_g211721211738_ _g211722211741_)))))
                      (let ()
                        (declare (not safe))
                        (_g211721211738_ _g211722211741_))))))
          (declare (not safe))
          (_g211720211783_ _stx211718_))))
    (define gxc#find-case-lambda%
      (lambda (_stx211600_ _arg211601_)
        (let* ((_g211603211631_
                (lambda (_g211604211628_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211604211628_))))
               (_g211602211715_
                (lambda (_g211604211634_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211604211634_))
                      (let ((_e211609211636_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211604211634_))))
                        (let ((_hd211608211639_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211609211636_)))
                              (_tl211607211641_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211609211636_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl211607211641_))
                              (let ((_g218398_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl211607211641_
                                        '0))))
                                (begin
                                  (let ((_g218399_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g218398_)
                                               (##vector-length _g218398_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g218399_ 2)))
                                        (error "Context expects 2 values"
                                               _g218399_)))
                                  (let ((_target211610211644_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218398_ 0)))
                                        (_tl211612211646_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g218398_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl211612211646_))
                                        (letrec ((_loop211613211649_
                                                  (lambda (_hd211611211652_
                                                           _body211617211654_
                                                           _hd211618211656_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd211611211652_))
                                                        (let ((_e211614211659_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd211611211652_))))
                  (let ((_lp-hd211615211662_
                         (let () (declare (not safe)) (##car _e211614211659_)))
                        (_lp-tl211616211664_
                         (let ()
                           (declare (not safe))
                           (##cdr _e211614211659_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd211615211662_))
                        (let ((_e211623211667_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd211615211662_))))
                          (let ((_hd211622211670_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e211623211667_)))
                                (_tl211621211672_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e211623211667_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl211621211672_))
                                (let ((_e211626211675_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl211621211672_))))
                                  (let ((_hd211625211678_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e211626211675_)))
                                        (_tl211624211680_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e211626211675_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl211624211680_))
                                        (let ((__tmp218404
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd211625211678_
                                                       _body211617211654_)))
                                              (__tmp218403
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd211622211670_
                                                       _hd211618211656_))))
                                          (declare (not safe))
                                          (_loop211613211649_
                                           _lp-tl211616211664_
                                           __tmp218404
                                           __tmp218403))
                                        (let ()
                                          (declare (not safe))
                                          (_g211603211631_ _g211604211634_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g211603211631_ _g211604211634_)))))
                        (let ()
                          (declare (not safe))
                          (_g211603211631_ _g211604211634_)))))
                (let ((_body211619211683_ (reverse _body211617211654_))
                      (_hd211620211685_ (reverse _hd211618211656_)))
                  ((lambda (_L211688_ _L211689_)
                     (let ((__tmp218402
                            (lambda (_g211703211705_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g211703211705_
                                 _arg211601_))))
                           (__tmp218400
                            (let ((__tmp218401
                                   (lambda (_g211707211710_ _g211708211712_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g211707211710_
                                             _g211708211712_)))))
                              (declare (not safe))
                              (foldr1 __tmp218401 '() _L211688_))))
                       (declare (not safe))
                       (ormap1 __tmp218402 __tmp218400)))
                   _body211619211683_
                   _hd211620211685_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop211613211649_
                                             _target211610211644_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g211603211631_
                                           _g211604211634_))))))
                              (let ()
                                (declare (not safe))
                                (_g211603211631_ _g211604211634_)))))
                      (let ()
                        (declare (not safe))
                        (_g211603211631_ _g211604211634_))))))
          (declare (not safe))
          (_g211602211715_ _stx211600_))))
    (define gxc#find-let-values%
      (lambda (_stx211450_ _arg211451_)
        (let* ((_g211453211488_
                (lambda (_g211454211485_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211454211485_))))
               (_g211452211597_
                (lambda (_g211454211491_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211454211491_))
                      (let ((_e211460211493_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211454211491_))))
                        (let ((_hd211459211496_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211460211493_)))
                              (_tl211458211498_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211460211493_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211458211498_))
                              (let ((_e211463211501_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211458211498_))))
                                (let ((_hd211462211504_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211463211501_)))
                                      (_tl211461211506_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211463211501_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd211462211504_))
                                      (let ((_g218405_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd211462211504_
                                                '0))))
                                        (begin
                                          (let ((_g218406_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g218405_)
                                                       (##vector-length
                                                        _g218405_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g218406_ 2)))
                                                (error "Context expects 2 values"
                                                       _g218406_)))
                                          (let ((_target211464211509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g218405_ 0)))
                                                (_tl211466211511_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g218405_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl211466211511_))
                                                (letrec ((_loop211467211514_
                                                          (lambda (_hd211465211517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr211471211519_
                           _bind211472211521_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd211465211517_))
                        (let ((_e211468211524_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd211465211517_))))
                          (let ((_lp-hd211469211527_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e211468211524_)))
                                (_lp-tl211470211529_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e211468211524_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd211469211527_))
                                (let ((_e211477211532_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd211469211527_))))
                                  (let ((_hd211476211535_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e211477211532_)))
                                        (_tl211475211537_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e211477211532_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl211475211537_))
                                        (let ((_e211480211540_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl211475211537_))))
                                          (let ((_hd211479211543_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e211480211540_)))
                                                (_tl211478211545_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e211480211540_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl211478211545_))
                                                (let ((__tmp218411
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd211479211543_
                                                               _expr211471211519_)))
                                                      (__tmp218410
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd211476211535_
                                                               _bind211472211521_))))
                                                  (declare (not safe))
                                                  (_loop211467211514_
                                                   _lp-tl211470211529_
                                                   __tmp218411
                                                   __tmp218410))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g211453211488_
                                                   _g211454211491_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g211453211488_ _g211454211491_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g211453211488_ _g211454211491_)))))
                        (let ((_expr211473211548_ (reverse _expr211471211519_))
                              (_bind211474211550_
                               (reverse _bind211472211521_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211461211506_))
                              (let ((_e211483211553_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211461211506_))))
                                (let ((_hd211482211556_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211483211553_)))
                                      (_tl211481211558_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211483211553_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl211481211558_))
                                      ((lambda (_L211561_ _L211562_ _L211563_)
                                         (let ((_$e211594_
                                                (let ((__tmp218409
                                                       (lambda (_g211582211584_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g211582211584_
                                                            _arg211451_))))
                                                      (__tmp218407
                                                       (let ((__tmp218408
                                                              (lambda (_g211586211589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g211587211591_)
                        (let ()
                          (declare (not safe))
                          (cons _g211586211589_ _g211587211591_)))))
                 (declare (not safe))
                 (foldr1 __tmp218408 '() _L211562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp218409
                                                          __tmp218407))))
                                           (if _$e211594_
                                               _$e211594_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L211561_
                                                  _arg211451_)))))
                                       _hd211482211556_
                                       _expr211473211548_
                                       _bind211474211550_)
                                      (let ()
                                        (declare (not safe))
                                        (_g211453211488_ _g211454211491_)))))
                              (let ()
                                (declare (not safe))
                                (_g211453211488_ _g211454211491_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop211467211514_
                                                     _target211464211509_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g211453211488_
                                                   _g211454211491_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211453211488_ _g211454211491_)))))
                              (let ()
                                (declare (not safe))
                                (_g211453211488_ _g211454211491_)))))
                      (let ()
                        (declare (not safe))
                        (_g211453211488_ _g211454211491_))))))
          (declare (not safe))
          (_g211452211597_ _stx211450_))))
    (define gxc#find-setq%
      (lambda (_stx211382_ _arg211383_)
        (let* ((_g211385211402_
                (lambda (_g211386211399_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211386211399_))))
               (_g211384211447_
                (lambda (_g211386211405_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211386211405_))
                      (let ((_e211391211407_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211386211405_))))
                        (let ((_hd211390211410_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211391211407_)))
                              (_tl211389211412_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211391211407_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211389211412_))
                              (let ((_e211394211415_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211389211412_))))
                                (let ((_hd211393211418_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211394211415_)))
                                      (_tl211392211420_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211394211415_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211392211420_))
                                      (let ((_e211397211423_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211392211420_))))
                                        (let ((_hd211396211426_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211397211423_)))
                                              (_tl211395211428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211397211423_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211395211428_))
                                              ((lambda (_L211431_ _L211432_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L211431_
                                                    _arg211383_)))
                                               _hd211396211426_
                                               _hd211393211418_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211385211402_
                                                 _g211386211405_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211385211402_ _g211386211405_)))))
                              (let ()
                                (declare (not safe))
                                (_g211385211402_ _g211386211405_)))))
                      (let ()
                        (declare (not safe))
                        (_g211385211402_ _g211386211405_))))))
          (declare (not safe))
          (_g211384211447_ _stx211382_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx211326_ _ids211327_)
        (let* ((_g211329211342_
                (lambda (_g211330211339_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211330211339_))))
               (_g211328211379_
                (lambda (_g211330211345_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211330211345_))
                      (let ((_e211334211347_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211330211345_))))
                        (let ((_hd211333211350_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211334211347_)))
                              (_tl211332211352_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211334211347_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211332211352_))
                              (let ((_e211337211355_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211332211352_))))
                                (let ((_hd211336211358_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211337211355_)))
                                      (_tl211335211360_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211337211355_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl211335211360_))
                                      ((lambda (_L211363_)
                                         (let ((__tmp218412
                                                (lambda (_g211374211376_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L211363_
                                                     _g211374211376_)))))
                                           (declare (not safe))
                                           (find __tmp218412 _ids211327_)))
                                       _hd211336211358_)
                                      (let ()
                                        (declare (not safe))
                                        (_g211329211342_ _g211330211345_)))))
                              (let ()
                                (declare (not safe))
                                (_g211329211342_ _g211330211345_)))))
                      (let ()
                        (declare (not safe))
                        (_g211329211342_ _g211330211345_))))))
          (declare (not safe))
          (_g211328211379_ _stx211326_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx211250_ _ids211251_)
        (let* ((_g211253211270_
                (lambda (_g211254211267_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g211254211267_))))
               (_g211252211323_
                (lambda (_g211254211273_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g211254211273_))
                      (let ((_e211259211275_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g211254211273_))))
                        (let ((_hd211258211278_
                               (let ()
                                 (declare (not safe))
                                 (##car _e211259211275_)))
                              (_tl211257211280_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e211259211275_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl211257211280_))
                              (let ((_e211262211283_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl211257211280_))))
                                (let ((_hd211261211286_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e211262211283_)))
                                      (_tl211260211288_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e211262211283_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl211260211288_))
                                      (let ((_e211265211291_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl211260211288_))))
                                        (let ((_hd211264211294_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e211265211291_)))
                                              (_tl211263211296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e211265211291_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl211263211296_))
                                              ((lambda (_L211299_ _L211300_)
                                                 (let ((_$e211320_
                                                        (let ((__tmp218413
                                                               (lambda (_g211315211317_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L211300_ _g211315211317_)))))
                  (declare (not safe))
                  (find __tmp218413 _ids211251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e211320_
                                                       _$e211320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L211299_
                                                          _ids211251_)))))
                                               _hd211264211294_
                                               _hd211261211286_)
                                              (let ()
                                                (declare (not safe))
                                                (_g211253211270_
                                                 _g211254211273_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g211253211270_ _g211254211273_)))))
                              (let ()
                                (declare (not safe))
                                (_g211253211270_ _g211254211273_)))))
                      (let ()
                        (declare (not safe))
                        (_g211253211270_ _g211254211273_))))))
          (declare (not safe))
          (_g211252211323_ _stx211250_))))))
