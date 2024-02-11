(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707660404)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl220904_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220904_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220904_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220904_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220904_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl220904_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl220900_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220900_ '%#declare gxc#xform-identity))
           _tbl220900_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl220896_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225618 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl220896_ __tmp225618))
           (let ((__tmp225619 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl220896_ __tmp225619))
           _tbl220896_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl220892_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220892_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220892_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220892_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220892_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220892_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl220892_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl220888_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225620 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl220888_ __tmp225620))
           (let ((__tmp225621 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl220888_ __tmp225621))
           (let ()
             (declare (not safe))
             (table-set! _tbl220888_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220888_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220888_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220888_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220888_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl220888_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl220884_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225622 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl220884_ __tmp225622))
           (let ()
             (declare (not safe))
             (table-set! _tbl220884_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220884_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220884_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220884_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220884_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220884_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220884_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220884_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220884_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl220884_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220884_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl220884_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx220867_ . _args220869_)
        (let ((__tmp225624
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220869_)
                     (gxc#compile-e__0 _stx220867_)
                     (let ((_arg1220874_ (car _args220869_))
                           (_rest220876_ (cdr _args220869_)))
                       (if (null? _rest220876_)
                           (gxc#compile-e__1 _stx220867_ _arg1220874_)
                           (let ((_arg2220879_ (car _rest220876_))
                                 (_rest220881_ (cdr _rest220876_)))
                             (if (null? _rest220881_)
                                 (gxc#compile-e__2
                                  _stx220867_
                                  _arg1220874_
                                  _arg2220879_)
                                 (apply gxc#compile-e
                                        _stx220867_
                                        _arg1220874_
                                        _arg2220879_
                                        _rest220881_))))))))
              (__tmp225623 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp225624
           gxc#current-compile-methods
           __tmp225623))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl220864_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225625 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl220864_ __tmp225625))
           (let ()
             (declare (not safe))
             (table-set! _tbl220864_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220864_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220864_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220864_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220864_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl220864_))))
    (define gxc#apply-collect-methods
      (lambda (_stx220847_ . _args220849_)
        (let ((__tmp225627
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220849_)
                     (gxc#compile-e__0 _stx220847_)
                     (let ((_arg1220854_ (car _args220849_))
                           (_rest220856_ (cdr _args220849_)))
                       (if (null? _rest220856_)
                           (gxc#compile-e__1 _stx220847_ _arg1220854_)
                           (let ((_arg2220859_ (car _rest220856_))
                                 (_rest220861_ (cdr _rest220856_)))
                             (if (null? _rest220861_)
                                 (gxc#compile-e__2
                                  _stx220847_
                                  _arg1220854_
                                  _arg2220859_)
                                 (apply gxc#compile-e
                                        _stx220847_
                                        _arg1220854_
                                        _arg2220859_
                                        _rest220861_))))))))
              (__tmp225626 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp225627
           gxc#current-compile-methods
           __tmp225626))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl220844_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225628 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl220844_ __tmp225628))
           (let ()
             (declare (not safe))
             (table-set! _tbl220844_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220844_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220844_ '%#set! gxc#expression-subst-setq%))
           _tbl220844_))))
    (define gxc#apply-expression-subst
      (lambda (_stx220827_ . _args220829_)
        (let ((__tmp225630
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220829_)
                     (gxc#compile-e__0 _stx220827_)
                     (let ((_arg1220834_ (car _args220829_))
                           (_rest220836_ (cdr _args220829_)))
                       (if (null? _rest220836_)
                           (gxc#compile-e__1 _stx220827_ _arg1220834_)
                           (let ((_arg2220839_ (car _rest220836_))
                                 (_rest220841_ (cdr _rest220836_)))
                             (if (null? _rest220841_)
                                 (gxc#compile-e__2
                                  _stx220827_
                                  _arg1220834_
                                  _arg2220839_)
                                 (apply gxc#compile-e
                                        _stx220827_
                                        _arg1220834_
                                        _arg2220839_
                                        _rest220841_))))))))
              (__tmp225629 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp225630
           gxc#current-compile-methods
           __tmp225629))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl220824_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225631 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl220824_ __tmp225631))
           (let ()
             (declare (not safe))
             (table-set! _tbl220824_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220824_ '%#set! gxc#expression-subst*-setq%))
           _tbl220824_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx220807_ . _args220809_)
        (let ((__tmp225633
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220809_)
                     (gxc#compile-e__0 _stx220807_)
                     (let ((_arg1220814_ (car _args220809_))
                           (_rest220816_ (cdr _args220809_)))
                       (if (null? _rest220816_)
                           (gxc#compile-e__1 _stx220807_ _arg1220814_)
                           (let ((_arg2220819_ (car _rest220816_))
                                 (_rest220821_ (cdr _rest220816_)))
                             (if (null? _rest220821_)
                                 (gxc#compile-e__2
                                  _stx220807_
                                  _arg1220814_
                                  _arg2220819_)
                                 (apply gxc#compile-e
                                        _stx220807_
                                        _arg1220814_
                                        _arg2220819_
                                        _rest220821_))))))))
              (__tmp225632 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp225633
           gxc#current-compile-methods
           __tmp225632))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl220804_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225634 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl220804_ __tmp225634))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220804_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl220804_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220804_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl220804_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl220800_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225635 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl220800_ __tmp225635))
           (let ()
             (declare (not safe))
             (table-set! _tbl220800_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220800_ '%#set! gxc#find-var-refs-setq%))
           _tbl220800_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx220783_ . _args220785_)
        (let ((__tmp225637
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220785_)
                     (gxc#compile-e__0 _stx220783_)
                     (let ((_arg1220790_ (car _args220785_))
                           (_rest220792_ (cdr _args220785_)))
                       (if (null? _rest220792_)
                           (gxc#compile-e__1 _stx220783_ _arg1220790_)
                           (let ((_arg2220795_ (car _rest220792_))
                                 (_rest220797_ (cdr _rest220792_)))
                             (if (null? _rest220797_)
                                 (gxc#compile-e__2
                                  _stx220783_
                                  _arg1220790_
                                  _arg2220795_)
                                 (apply gxc#compile-e
                                        _stx220783_
                                        _arg1220790_
                                        _arg2220795_
                                        _rest220797_))))))))
              (__tmp225636 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp225637
           gxc#current-compile-methods
           __tmp225636))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl220780_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225638 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl220780_ __tmp225638))
           (let ()
             (declare (not safe))
             (table-set! _tbl220780_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl220780_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl220780_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx220763_ . _args220765_)
        (let ((__tmp225640
               (lambda ()
                 (declare (not safe))
                 (if (null? _args220765_)
                     (gxc#compile-e__0 _stx220763_)
                     (let ((_arg1220770_ (car _args220765_))
                           (_rest220772_ (cdr _args220765_)))
                       (if (null? _rest220772_)
                           (gxc#compile-e__1 _stx220763_ _arg1220770_)
                           (let ((_arg2220775_ (car _rest220772_))
                                 (_rest220777_ (cdr _rest220772_)))
                             (if (null? _rest220777_)
                                 (gxc#compile-e__2
                                  _stx220763_
                                  _arg1220770_
                                  _arg2220775_)
                                 (apply gxc#compile-e
                                        _stx220763_
                                        _arg1220770_
                                        _arg2220775_
                                        _rest220777_))))))))
              (__tmp225639 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp225640
           gxc#current-compile-methods
           __tmp225639))))
    (define gxc#xform-identity
      (lambda (_stx220760_ . _args220761_) _stx220760_))
    (define gxc#xform-wrap-source
      (lambda (_stx220757_ _src-stx220758_)
        (let ((__tmp225641
               (let () (declare (not safe)) (gx#stx-source _src-stx220758_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx220757_ __tmp225641))))
    (define gxc#xform-apply-compile-e
      (lambda (_args220744_)
        (lambda (_stx220746_)
          (if (let () (declare (not safe)) (null? _args220744_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx220746_))
              (let ((_arg1220748_ (car _args220744_))
                    (_rest220750_ (cdr _args220744_)))
                (if (let () (declare (not safe)) (null? _rest220750_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx220746_ _arg1220748_))
                    (let ((_arg2220753_ (car _rest220750_))
                          (_rest220755_ (cdr _rest220750_)))
                      (if (let () (declare (not safe)) (null? _rest220755_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx220746_
                             _arg1220748_
                             _arg2220753_))
                          (apply gxc#compile-e
                                 _stx220746_
                                 _arg1220748_
                                 _arg2220753_
                                 _rest220755_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx220703_ . _args220704_)
        (let* ((_g220706220716_
                (lambda (_g220707220713_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220707220713_))))
               (_g220705220741_
                (lambda (_g220707220719_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220707220719_))
                      (let ((_e220711220721_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220707220719_))))
                        (let ((_hd220710220724_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220711220721_)))
                              (_tl220709220726_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220711220721_))))
                          ((lambda (_L220729_)
                             (let* ((_forms220739_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220704_))
                                          _L220729_))
                                    (__tmp225642
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms220739_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp225642
                                _stx220703_)))
                           _tl220709220726_)))
                      (let ()
                        (declare (not safe))
                        (_g220706220716_ _g220707220719_))))))
          (declare (not safe))
          (_g220705220741_ _stx220703_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx220661_ . _args220662_)
        (let* ((_g220664220674_
                (lambda (_g220665220671_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220665220671_))))
               (_g220663220700_
                (lambda (_g220665220677_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220665220677_))
                      (let ((_e220669220679_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220665220677_))))
                        (let ((_hd220668220682_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220669220679_)))
                              (_tl220667220684_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220669220679_))))
                          ((lambda (_L220687_)
                             (let ((__tmp225645
                                    (lambda ()
                                      (let* ((_forms220698_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args220662_))
                                                   _L220687_))
                                             (__tmp225646
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms220698_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp225646
                                         _stx220661_))))
                                   (__tmp225643
                                    (let ((__tmp225644
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp225644 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp225645
                                gx#current-expander-phi
                                __tmp225643)))
                           _tl220667220684_)))
                      (let ()
                        (declare (not safe))
                        (_g220664220674_ _g220665220677_))))))
          (declare (not safe))
          (_g220663220700_ _stx220661_))))
    (define gxc#xform-module%
      (lambda (_stx220589_ . _args220590_)
        (let* ((_g220592220606_
                (lambda (_g220593220603_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220593220603_))))
               (_g220591220658_
                (lambda (_g220593220609_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220593220609_))
                      (let ((_e220598220611_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220593220609_))))
                        (let ((_hd220597220614_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220598220611_)))
                              (_tl220596220616_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220598220611_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220596220616_))
                              (let ((_e220601220619_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220596220616_))))
                                (let ((_hd220600220622_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220601220619_)))
                                      (_tl220599220624_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220601220619_))))
                                  ((lambda (_L220627_ _L220628_)
                                     (let* ((_ctx220641_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L220628_)))
                                            (_code220643_
                                             (##structure-ref
                                              _ctx220641_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code220655_
                                             (let ((__tmp225647
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args220590_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code220643_))
                                                          (let ((_arg1220646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args220590_))
                        (_rest220648_ (cdr _args220590_)))
                    (if (let () (declare (not safe)) (null? _rest220648_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code220643_ _arg1220646_))
                        (let ((_arg2220651_ (car _rest220648_))
                              (_rest220653_ (cdr _rest220648_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest220653_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code220643_
                                 _arg1220646_
                                 _arg2220651_))
                              (apply gxc#compile-e
                                     _code220643_
                                     _arg1220646_
                                     _arg2220651_
                                     _rest220653_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp225647
                                                gx#current-expander-context
                                                _ctx220641_))))
                                       (##structure-set!
                                        _ctx220641_
                                        _code220655_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp225648
                                              (let ((__tmp225649
                                                     (let ((__tmp225650
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code220655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L220628_ __tmp225650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp225649))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp225648
                                          _stx220589_))))
                                   _tl220599220624_
                                   _hd220600220622_)))
                              (let ()
                                (declare (not safe))
                                (_g220592220606_ _g220593220609_)))))
                      (let ()
                        (declare (not safe))
                        (_g220592220606_ _g220593220609_))))))
          (declare (not safe))
          (_g220591220658_ _stx220589_))))
    (define gxc#xform-define-values%
      (lambda (_stx220510_ . _args220511_)
        (let* ((_g220513220530_
                (lambda (_g220514220527_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220514220527_))))
               (_g220512220586_
                (lambda (_g220514220533_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220514220533_))
                      (let ((_e220519220535_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220514220533_))))
                        (let ((_hd220518220538_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220519220535_)))
                              (_tl220517220540_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220519220535_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220517220540_))
                              (let ((_e220522220543_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220517220540_))))
                                (let ((_hd220521220546_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220522220543_)))
                                      (_tl220520220548_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220522220543_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220520220548_))
                                      (let ((_e220525220551_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220520220548_))))
                                        (let ((_hd220524220554_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220525220551_)))
                                              (_tl220523220556_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220525220551_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220523220556_))
                                              ((lambda (_L220559_ _L220560_)
                                                 (let* ((_expr220584_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220511_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220559_))
                     (let ((_arg1220575_ (car _args220511_))
                           (_rest220577_ (cdr _args220511_)))
                       (if (let () (declare (not safe)) (null? _rest220577_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220559_ _arg1220575_))
                           (let ((_arg2220580_ (car _rest220577_))
                                 (_rest220582_ (cdr _rest220577_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220582_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220559_
                                    _arg1220575_
                                    _arg2220580_))
                                 (apply gxc#compile-e
                                        _L220559_
                                        _arg1220575_
                                        _arg2220580_
                                        _rest220582_)))))))
                (__tmp225651
                 (let ((__tmp225652
                        (let ((__tmp225653
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220584_ '()))))
                          (declare (not safe))
                          (cons _L220560_ __tmp225653))))
                   (declare (not safe))
                   (cons '%#define-values __tmp225652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225651
                                                    _stx220510_)))
                                               _hd220524220554_
                                               _hd220521220546_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220513220530_
                                                 _g220514220533_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220513220530_ _g220514220533_)))))
                              (let ()
                                (declare (not safe))
                                (_g220513220530_ _g220514220533_)))))
                      (let ()
                        (declare (not safe))
                        (_g220513220530_ _g220514220533_))))))
          (declare (not safe))
          (_g220512220586_ _stx220510_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx220430_ . _args220431_)
        (let* ((_g220433220450_
                (lambda (_g220434220447_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220434220447_))))
               (_g220432220507_
                (lambda (_g220434220453_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220434220453_))
                      (let ((_e220439220455_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220434220453_))))
                        (let ((_hd220438220458_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220439220455_)))
                              (_tl220437220460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220439220455_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220437220460_))
                              (let ((_e220442220463_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220437220460_))))
                                (let ((_hd220441220466_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220442220463_)))
                                      (_tl220440220468_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220442220463_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220440220468_))
                                      (let ((_e220445220471_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220440220468_))))
                                        (let ((_hd220444220474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220445220471_)))
                                              (_tl220443220476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220445220471_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220443220476_))
                                              ((lambda (_L220479_ _L220480_)
                                                 (let ((__tmp225656
                                                        (lambda ()
                                                          (let* ((_expr220505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args220431_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L220479_))
                              (let ((_arg1220496_ (car _args220431_))
                                    (_rest220498_ (cdr _args220431_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest220498_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L220479_
                                       _arg1220496_))
                                    (let ((_arg2220501_ (car _rest220498_))
                                          (_rest220503_ (cdr _rest220498_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest220503_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L220479_
                                             _arg1220496_
                                             _arg2220501_))
                                          (apply gxc#compile-e
                                                 _L220479_
                                                 _arg1220496_
                                                 _arg2220501_
                                                 _rest220503_)))))))
                         (__tmp225657
                          (let ((__tmp225658
                                 (let ((__tmp225659
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr220505_ '()))))
                                   (declare (not safe))
                                   (cons _L220480_ __tmp225659))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp225658))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp225657 _stx220430_))))
               (__tmp225654
                (let ((__tmp225655 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp225655 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp225656
                                                    gx#current-expander-phi
                                                    __tmp225654)))
                                               _hd220444220474_
                                               _hd220441220466_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220433220450_
                                                 _g220434220453_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220433220450_ _g220434220453_)))))
                              (let ()
                                (declare (not safe))
                                (_g220433220450_ _g220434220453_)))))
                      (let ()
                        (declare (not safe))
                        (_g220433220450_ _g220434220453_))))))
          (declare (not safe))
          (_g220432220507_ _stx220430_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx220351_ . _args220352_)
        (let* ((_g220354220371_
                (lambda (_g220355220368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220355220368_))))
               (_g220353220427_
                (lambda (_g220355220374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220355220374_))
                      (let ((_e220360220376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220355220374_))))
                        (let ((_hd220359220379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220360220376_)))
                              (_tl220358220381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220360220376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220358220381_))
                              (let ((_e220363220384_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220358220381_))))
                                (let ((_hd220362220387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220363220384_)))
                                      (_tl220361220389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220363220384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220361220389_))
                                      (let ((_e220366220392_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220361220389_))))
                                        (let ((_hd220365220395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220366220392_)))
                                              (_tl220364220397_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220366220392_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220364220397_))
                                              ((lambda (_L220400_ _L220401_)
                                                 (let* ((_expr220425_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220352_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220400_))
                     (let ((_arg1220416_ (car _args220352_))
                           (_rest220418_ (cdr _args220352_)))
                       (if (let () (declare (not safe)) (null? _rest220418_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220400_ _arg1220416_))
                           (let ((_arg2220421_ (car _rest220418_))
                                 (_rest220423_ (cdr _rest220418_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220423_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220400_
                                    _arg1220416_
                                    _arg2220421_))
                                 (apply gxc#compile-e
                                        _L220400_
                                        _arg1220416_
                                        _arg2220421_
                                        _rest220423_)))))))
                (__tmp225660
                 (let ((__tmp225661
                        (let ((__tmp225662
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220425_ '()))))
                          (declare (not safe))
                          (cons _L220401_ __tmp225662))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp225661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225660
                                                    _stx220351_)))
                                               _hd220365220395_
                                               _hd220362220387_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220354220371_
                                                 _g220355220374_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220354220371_ _g220355220374_)))))
                              (let ()
                                (declare (not safe))
                                (_g220354220371_ _g220355220374_)))))
                      (let ()
                        (declare (not safe))
                        (_g220354220371_ _g220355220374_))))))
          (declare (not safe))
          (_g220353220427_ _stx220351_))))
    (define gxc#xform-lambda%
      (lambda (_stx220294_ . _args220295_)
        (let* ((_g220297220311_
                (lambda (_g220298220308_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220298220308_))))
               (_g220296220348_
                (lambda (_g220298220314_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220298220314_))
                      (let ((_e220303220316_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220298220314_))))
                        (let ((_hd220302220319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220303220316_)))
                              (_tl220301220321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220303220316_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220301220321_))
                              (let ((_e220306220324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220301220321_))))
                                (let ((_hd220305220327_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220306220324_)))
                                      (_tl220304220329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220306220324_))))
                                  ((lambda (_L220332_ _L220333_)
                                     (let* ((_body220346_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args220295_))
                                                  _L220332_))
                                            (__tmp225663
                                             (let ((__tmp225664
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L220333_
                                                            _body220346_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp225664))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp225663
                                        _stx220294_)))
                                   _tl220304220329_
                                   _hd220305220327_)))
                              (let ()
                                (declare (not safe))
                                (_g220297220311_ _g220298220314_)))))
                      (let ()
                        (declare (not safe))
                        (_g220297220311_ _g220298220314_))))))
          (declare (not safe))
          (_g220296220348_ _stx220294_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx220207_ . _args220208_)
        (letrec ((_clause-e220210_
                  (lambda (_clause220251_)
                    (let* ((_g220253220264_
                            (lambda (_g220254220261_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g220254220261_))))
                           (_g220252220291_
                            (lambda (_g220254220267_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g220254220267_))
                                  (let ((_e220259220269_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g220254220267_))))
                                    (let ((_hd220258220272_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e220259220269_)))
                                          (_tl220257220274_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e220259220269_))))
                                      ((lambda (_L220277_ _L220278_)
                                         (let ((_body220289_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args220208_))
                                                     _L220277_)))
                                           (declare (not safe))
                                           (cons _L220278_ _body220289_)))
                                       _tl220257220274_
                                       _hd220258220272_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g220253220264_ _g220254220267_))))))
                      (declare (not safe))
                      (_g220252220291_ _clause220251_)))))
          (let* ((_g220212220222_
                  (lambda (_g220213220219_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g220213220219_))))
                 (_g220211220248_
                  (lambda (_g220213220225_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g220213220225_))
                        (let ((_e220217220227_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g220213220225_))))
                          (let ((_hd220216220230_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220217220227_)))
                                (_tl220215220232_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220217220227_))))
                            ((lambda (_L220235_)
                               (let* ((_clauses220246_
                                       (map _clause-e220210_ _L220235_))
                                      (__tmp225665
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses220246_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp225665
                                  _stx220207_)))
                             _tl220215220232_)))
                        (let ()
                          (declare (not safe))
                          (_g220212220222_ _g220213220225_))))))
            (declare (not safe))
            (_g220211220248_ _stx220207_)))))
    (define gxc#xform-let-values%
      (lambda (_stx220001_ . _args220002_)
        (let* ((_g220004220037_
                (lambda (_g220005220034_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220005220034_))))
               (_g220003220204_
                (lambda (_g220005220040_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220005220040_))
                      (let ((_e220012220042_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220005220040_))))
                        (let ((_hd220011220045_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220012220042_)))
                              (_tl220010220047_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220012220042_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220010220047_))
                              (let ((_e220015220050_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220010220047_))))
                                (let ((_hd220014220053_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220015220050_)))
                                      (_tl220013220055_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220015220050_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd220014220053_))
                                      (let ((_g225666_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd220014220053_
                                                '0))))
                                        (begin
                                          (let ((_g225667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g225666_)
                                                       (##vector-length
                                                        _g225666_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g225667_ 2)))
                                                (error "Context expects 2 values"
                                                       _g225667_)))
                                          (let ((_target220016220058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g225666_ 0)))
                                                (_tl220018220060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g225666_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220018220060_))
                                                (letrec ((_loop220019220063_
                                                          (lambda (_hd220017220066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr220023220068_
                           _hd220024220070_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd220017220066_))
                        (let ((_e220020220073_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd220017220066_))))
                          (let ((_lp-hd220021220076_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220020220073_)))
                                (_lp-tl220022220078_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220020220073_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd220021220076_))
                                (let ((_e220029220081_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd220021220076_))))
                                  (let ((_hd220028220084_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e220029220081_)))
                                        (_tl220027220086_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e220029220081_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl220027220086_))
                                        (let ((_e220032220089_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl220027220086_))))
                                          (let ((_hd220031220092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e220032220089_)))
                                                (_tl220030220094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e220032220089_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220030220094_))
                                                (let ((__tmp225680
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220031220092_
                                                               _expr220023220068_)))
                                                      (__tmp225679
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220028220084_
                                                               _hd220024220070_))))
                                                  (declare (not safe))
                                                  (_loop220019220063_
                                                   _lp-tl220022220078_
                                                   __tmp225680
                                                   __tmp225679))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220004220037_
                                                   _g220005220040_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g220004220037_ _g220005220040_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g220004220037_ _g220005220040_)))))
                        (let ((_expr220025220097_ (reverse _expr220023220068_))
                              (_hd220026220099_ (reverse _hd220024220070_)))
                          ((lambda (_L220102_ _L220103_ _L220104_ _L220105_)
                             (let* ((_g220124220140_
                                     (lambda (_g220125220137_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g220125220137_))))
                                    (_g220123220194_
                                     (lambda (_g220125220143_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g220125220143_))
                                           (let ((_g225668_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g220125220143_
                                                     '0))))
                                             (begin
                                               (let ((_g225669_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g225668_)
                                                            (##vector-length
                                                             _g225668_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g225669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g225669_)))
                                               (let ((_target220127220145_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g225668_
                                                         0)))
                                                     (_tl220129220147_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g225668_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl220129220147_))
                                                     (letrec ((_loop220130220150_
                                                               (lambda (_hd220128220153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr220134220155_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd220128220153_))
                             (let ((_e220131220158_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd220128220153_))))
                               (let ((_lp-hd220132220161_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e220131220158_)))
                                     (_lp-tl220133220163_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e220131220158_))))
                                 (let ((__tmp225676
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd220132220161_
                                                _expr220134220155_))))
                                   (declare (not safe))
                                   (_loop220130220150_
                                    _lp-tl220133220163_
                                    __tmp225676))))
                             (let ((_expr220135220166_
                                    (reverse _expr220134220155_)))
                               ((lambda (_L220169_)
                                  (let ()
                                    (let* ((_body220182_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args220002_))
                                                 _L220102_))
                                           (__tmp225670
                                            (let ((__tmp225671
                                                   (let ((__tmp225672
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L220169_
                                                               _L220104_))
                                                            (let ((__tmp225673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g220183220187_
                                    _g220184220189_
                                    _g220185220191_)
                             (let ((__tmp225674
                                    (let ((__tmp225675
                                           (let ()
                                             (declare (not safe))
                                             (cons _g220183220187_ '()))))
                                      (declare (not safe))
                                      (cons _g220184220189_ __tmp225675))))
                               (declare (not safe))
                               (cons __tmp225674 _g220185220191_)))))
                      (declare (not safe))
                      (foldr2 __tmp225673 '() _L220169_ _L220104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp225672
                                                           _body220182_))))
                                              (declare (not safe))
                                              (cons _L220105_ __tmp225671))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp225670
                                       _stx220001_))))
                                _expr220135220166_))))))
               (let ()
                 (declare (not safe))
                 (_loop220130220150_ _target220127220145_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g220124220140_
                                                        _g220125220143_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g220124220140_
                                              _g220125220143_)))))
                                    (__tmp225677
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220002_))
                                          (let ((__tmp225678
                                                 (lambda (_g220196220199_
                                                          _g220197220201_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g220196220199_
                                                           _g220197220201_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp225678
                                                    '()
                                                    _L220103_)))))
                               (declare (not safe))
                               (_g220123220194_ __tmp225677)))
                           _tl220013220055_
                           _expr220025220097_
                           _hd220026220099_
                           _hd220011220045_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop220019220063_
                                                     _target220016220058_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220004220037_
                                                   _g220005220040_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220004220037_ _g220005220040_)))))
                              (let ()
                                (declare (not safe))
                                (_g220004220037_ _g220005220040_)))))
                      (let ()
                        (declare (not safe))
                        (_g220004220037_ _g220005220040_))))))
          (declare (not safe))
          (_g220003220204_ _stx220001_))))
    (define gxc#xform-operands
      (lambda (_stx219957_ . _args219958_)
        (let* ((_g219960219971_
                (lambda (_g219961219968_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219961219968_))))
               (_g219959219998_
                (lambda (_g219961219974_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219961219974_))
                      (let ((_e219966219976_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219961219974_))))
                        (let ((_hd219965219979_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219966219976_)))
                              (_tl219964219981_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219966219976_))))
                          ((lambda (_L219984_ _L219985_)
                             (let* ((_rands219996_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args219958_))
                                          _L219984_))
                                    (__tmp225681
                                     (let ()
                                       (declare (not safe))
                                       (cons _L219985_ _rands219996_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp225681
                                _stx219957_)))
                           _tl219964219981_
                           _hd219965219979_)))
                      (let ()
                        (declare (not safe))
                        (_g219960219971_ _g219961219974_))))))
          (declare (not safe))
          (_g219959219998_ _stx219957_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx219878_ . _args219879_)
        (let* ((_g219881219898_
                (lambda (_g219882219895_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219882219895_))))
               (_g219880219954_
                (lambda (_g219882219901_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219882219901_))
                      (let ((_e219887219903_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219882219901_))))
                        (let ((_hd219886219906_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219887219903_)))
                              (_tl219885219908_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219887219903_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219885219908_))
                              (let ((_e219890219911_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219885219908_))))
                                (let ((_hd219889219914_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219890219911_)))
                                      (_tl219888219916_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219890219911_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219888219916_))
                                      (let ((_e219893219919_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219888219916_))))
                                        (let ((_hd219892219922_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219893219919_)))
                                              (_tl219891219924_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219893219919_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219891219924_))
                                              ((lambda (_L219927_ _L219928_)
                                                 (let* ((_expr219952_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args219879_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L219927_))
                     (let ((_arg1219943_ (car _args219879_))
                           (_rest219945_ (cdr _args219879_)))
                       (if (let () (declare (not safe)) (null? _rest219945_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L219927_ _arg1219943_))
                           (let ((_arg2219948_ (car _rest219945_))
                                 (_rest219950_ (cdr _rest219945_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest219950_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L219927_
                                    _arg1219943_
                                    _arg2219948_))
                                 (apply gxc#compile-e
                                        _L219927_
                                        _arg1219943_
                                        _arg2219948_
                                        _rest219950_)))))))
                (__tmp225682
                 (let ((__tmp225683
                        (let ((__tmp225684
                               (let ()
                                 (declare (not safe))
                                 (cons _expr219952_ '()))))
                          (declare (not safe))
                          (cons _L219928_ __tmp225684))))
                   (declare (not safe))
                   (cons '%#set! __tmp225683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225682
                                                    _stx219878_)))
                                               _hd219892219922_
                                               _hd219889219914_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219881219898_
                                                 _g219882219901_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219881219898_ _g219882219901_)))))
                              (let ()
                                (declare (not safe))
                                (_g219881219898_ _g219882219901_)))))
                      (let ()
                        (declare (not safe))
                        (_g219881219898_ _g219882219901_))))))
          (declare (not safe))
          (_g219880219954_ _stx219878_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx219809_)
        (let* ((_g219811219828_
                (lambda (_g219812219825_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219812219825_))))
               (_g219810219875_
                (lambda (_g219812219831_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219812219831_))
                      (let ((_e219817219833_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219812219831_))))
                        (let ((_hd219816219836_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219817219833_)))
                              (_tl219815219838_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219817219833_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219815219838_))
                              (let ((_e219820219841_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219815219838_))))
                                (let ((_hd219819219844_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219820219841_)))
                                      (_tl219818219846_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219820219841_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219818219846_))
                                      (let ((_e219823219849_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219818219846_))))
                                        (let ((_hd219822219852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219823219849_)))
                                              (_tl219821219854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219823219849_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219821219854_))
                                              ((lambda (_L219857_ _L219858_)
                                                 (let ((_sym219873_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L219858_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym219873_))
                                                   (let ((__tmp225685
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp225685
                                                      _sym219873_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L219857_))))
                                               _hd219822219852_
                                               _hd219819219844_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219811219828_
                                                 _g219812219831_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219811219828_ _g219812219831_)))))
                              (let ()
                                (declare (not safe))
                                (_g219811219828_ _g219812219831_)))))
                      (let ()
                        (declare (not safe))
                        (_g219811219828_ _g219812219831_))))))
          (declare (not safe))
          (_g219810219875_ _stx219809_))))
    (define gxc#collect-methods-call%
      (lambda (_stx219363_)
        (let* ((___stx225375225376_ _stx219363_)
               (_g219367219469_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx225375225376_)))))
          (let ((___kont225377225378_
                 (lambda (_L219759_ _L219760_ _L219761_ _L219762_ _L219763_)
                   (let ((__tmp225686
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L219760_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp225686))))
                (___kont225379225380_
                 (lambda (_L219585_ _L219586_ _L219587_ _L219588_)
                   (let ((__tmp225687
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L219585_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp225687))))
                (___kont225381225382_ (lambda () '#!void)))
            (let ((___match225510225511_
                   (lambda (_e219376219631_
                            _hd219375219634_
                            _tl219374219636_
                            _e219379219639_
                            _hd219378219642_
                            _tl219377219644_
                            _e219382219647_
                            _hd219381219650_
                            _tl219380219652_
                            _e219385219655_
                            _hd219384219658_
                            _tl219383219660_
                            _e219388219663_
                            _hd219387219666_
                            _tl219386219668_
                            _e219391219671_
                            _hd219390219674_
                            _tl219389219676_
                            _e219394219679_
                            _hd219393219682_
                            _tl219392219684_
                            _e219397219687_
                            _hd219396219690_
                            _tl219395219692_
                            _e219400219695_
                            _hd219399219698_
                            _tl219398219700_
                            _e219403219703_
                            _hd219402219706_
                            _tl219401219708_
                            _e219406219711_
                            _hd219405219714_
                            _tl219404219716_
                            _e219409219719_
                            _hd219408219722_
                            _tl219407219724_
                            _e219412219727_
                            _hd219411219730_
                            _tl219410219732_
                            _e219415219735_
                            _hd219414219738_
                            _tl219413219740_
                            _e219418219743_
                            _hd219417219746_
                            _tl219416219748_
                            _e219421219751_
                            _hd219420219754_
                            _tl219419219756_)
                     (let ((_L219759_ _hd219420219754_)
                           (_L219760_ _hd219411219730_)
                           (_L219761_ _hd219402219706_)
                           (_L219762_ _hd219393219682_)
                           (_L219763_ _hd219384219658_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L219763_
                              'bind-method!))
                           (___kont225377225378_
                            _L219759_
                            _L219760_
                            _L219761_
                            _L219762_
                            _L219763_)
                           (___kont225381225382_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx225375225376_))
                  (let ((_e219376219631_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx225375225376_))))
                    (let ((_tl219374219636_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219376219631_)))
                          (_hd219375219634_
                           (let ()
                             (declare (not safe))
                             (##car _e219376219631_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219374219636_))
                          (let ((_e219379219639_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219374219636_))))
                            (let ((_tl219377219644_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219379219639_)))
                                  (_hd219378219642_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219379219639_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219378219642_))
                                  (let ((_e219382219647_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219378219642_))))
                                    (let ((_tl219380219652_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219382219647_)))
                                          (_hd219381219650_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219382219647_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd219381219650_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd219381219650_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219380219652_))
                                                  (let ((_e219385219655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219380219652_))))
                                                    (let ((_tl219383219660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219385219655_)))
                                                          (_hd219384219658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219385219655_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219383219660_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219377219644_))
                      (let ((_e219388219663_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219377219644_))))
                        (let ((_tl219386219668_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219388219663_)))
                              (_hd219387219666_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219388219663_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219387219666_))
                              (let ((_e219391219671_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219387219666_))))
                                (let ((_tl219389219676_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219391219671_)))
                                      (_hd219390219674_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219391219671_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd219390219674_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd219390219674_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl219389219676_))
                                              (let ((_e219394219679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl219389219676_))))
                                                (let ((_tl219392219684_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219394219679_)))
                                                      (_hd219393219682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219394219679_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219392219684_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl219386219668_))
                                                          (let ((_e219397219687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl219386219668_))))
                    (let ((_tl219395219692_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219397219687_)))
                          (_hd219396219690_
                           (let ()
                             (declare (not safe))
                             (##car _e219397219687_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd219396219690_))
                          (let ((_e219400219695_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd219396219690_))))
                            (let ((_tl219398219700_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219400219695_)))
                                  (_hd219399219698_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219400219695_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd219399219698_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd219399219698_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl219398219700_))
                                          (let ((_e219403219703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl219398219700_))))
                                            (let ((_tl219401219708_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219403219703_)))
                                                  (_hd219402219706_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219403219703_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl219401219708_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl219395219692_))
                                                      (let ((_e219406219711_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl219395219692_))))
                (let ((_tl219404219716_
                       (let () (declare (not safe)) (##cdr _e219406219711_)))
                      (_hd219405219714_
                       (let () (declare (not safe)) (##car _e219406219711_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219405219714_))
                      (let ((_e219409219719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219405219714_))))
                        (let ((_tl219407219724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219409219719_)))
                              (_hd219408219722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219409219719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd219408219722_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd219408219722_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219407219724_))
                                      (let ((_e219412219727_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219407219724_))))
                                        (let ((_tl219410219732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219412219727_)))
                                              (_hd219411219730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219412219727_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219410219732_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219404219716_))
                                                  (let ((_e219415219735_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219404219716_))))
                                                    (let ((_tl219413219740_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219415219735_)))
                                                          (_hd219414219738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219415219735_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd219414219738_))
                                                          (let ((_e219418219743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd219414219738_))))
                    (let ((_tl219416219748_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219418219743_)))
                          (_hd219417219746_
                           (let ()
                             (declare (not safe))
                             (##car _e219418219743_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd219417219746_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd219417219746_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219416219748_))
                                  (let ((_e219421219751_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219416219748_))))
                                    (let ((_tl219419219756_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219421219751_)))
                                          (_hd219420219754_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219421219751_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219419219756_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219413219740_))
                                              (___match225510225511_
                                               _e219376219631_
                                               _hd219375219634_
                                               _tl219374219636_
                                               _e219379219639_
                                               _hd219378219642_
                                               _tl219377219644_
                                               _e219382219647_
                                               _hd219381219650_
                                               _tl219380219652_
                                               _e219385219655_
                                               _hd219384219658_
                                               _tl219383219660_
                                               _e219388219663_
                                               _hd219387219666_
                                               _tl219386219668_
                                               _e219391219671_
                                               _hd219390219674_
                                               _tl219389219676_
                                               _e219394219679_
                                               _hd219393219682_
                                               _tl219392219684_
                                               _e219397219687_
                                               _hd219396219690_
                                               _tl219395219692_
                                               _e219400219695_
                                               _hd219399219698_
                                               _tl219398219700_
                                               _e219403219703_
                                               _hd219402219706_
                                               _tl219401219708_
                                               _e219406219711_
                                               _hd219405219714_
                                               _tl219404219716_
                                               _e219409219719_
                                               _hd219408219722_
                                               _tl219407219724_
                                               _e219412219727_
                                               _hd219411219730_
                                               _tl219410219732_
                                               _e219415219735_
                                               _hd219414219738_
                                               _tl219413219740_
                                               _e219418219743_
                                               _hd219417219746_
                                               _tl219416219748_
                                               _e219421219751_
                                               _hd219420219754_
                                               _tl219419219756_)
                                              (___kont225381225382_))
                                          (___kont225381225382_))))
                                  (___kont225381225382_))
                              (___kont225381225382_))
                          (___kont225381225382_))))
                  (___kont225381225382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219404219716_))
                                                      (if (let ((__tmp225688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp225688 'bind-method!))
                  (let ((_L219585_ _hd219411219730_)
                        (_L219586_ _hd219402219706_)
                        (_L219587_ _hd219393219682_)
                        (_L219588_ _hd219384219658_))
                    (___kont225379225380_
                     _L219585_
                     _L219586_
                     _L219587_
                     _L219588_))
                  (___kont225381225382_))
              (___kont225381225382_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225381225382_))))
                                      (___kont225381225382_))
                                  (___kont225381225382_))
                              (___kont225381225382_))))
                      (___kont225381225382_))))
              (___kont225381225382_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225381225382_))))
                                          (___kont225381225382_))
                                      (___kont225381225382_))
                                  (___kont225381225382_))))
                          (___kont225381225382_))))
                  (___kont225381225382_))
              (___kont225381225382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225381225382_))
                                          (___kont225381225382_))
                                      (___kont225381225382_))))
                              (___kont225381225382_))))
                      (___kont225381225382_))
                  (___kont225381225382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225381225382_))
                                              (___kont225381225382_))
                                          (___kont225381225382_))))
                                  (___kont225381225382_))))
                          (___kont225381225382_))))
                  (___kont225381225382_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx219310_ _id219311_ _new-id219312_)
        (let* ((_g219314219327_
                (lambda (_g219315219324_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219315219324_))))
               (_g219313219360_
                (lambda (_g219315219330_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219315219330_))
                      (let ((_e219319219332_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219315219330_))))
                        (let ((_hd219318219335_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219319219332_)))
                              (_tl219317219337_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219319219332_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219317219337_))
                              (let ((_e219322219340_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219317219337_))))
                                (let ((_hd219321219343_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219322219340_)))
                                      (_tl219320219345_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219322219340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219320219345_))
                                      ((lambda (_L219348_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L219348_
                                                _id219311_))
                                             (let ((__tmp225689
                                                    (let ((__tmp225690
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id219312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp225690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp225689
                                                _stx219310_))
                                             _stx219310_))
                                       _hd219321219343_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219314219327_ _g219315219330_)))))
                              (let ()
                                (declare (not safe))
                                (_g219314219327_ _g219315219330_)))))
                      (let ()
                        (declare (not safe))
                        (_g219314219327_ _g219315219330_))))))
          (declare (not safe))
          (_g219313219360_ _stx219310_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx219251_ _subst219252_)
        (let* ((_g219254219267_
                (lambda (_g219255219264_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219255219264_))))
               (_g219253219307_
                (lambda (_g219255219270_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219255219270_))
                      (let ((_e219259219272_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219255219270_))))
                        (let ((_hd219258219275_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219259219272_)))
                              (_tl219257219277_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219259219272_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219257219277_))
                              (let ((_e219262219280_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219257219277_))))
                                (let ((_hd219261219283_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219262219280_)))
                                      (_tl219260219285_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219262219280_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219260219285_))
                                      ((lambda (_L219288_)
                                         (let ((_$e219302_
                                                (let ((__tmp225691
                                                       (lambda (_sub219300_)
                                                         (let ((__tmp225692
                                                                (car _sub219300_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L219288_
                                                            __tmp225692)))))
                                                  (declare (not safe))
                                                  (find __tmp225691
                                                        _subst219252_))))
                                           (if _$e219302_
                                               ((lambda (_sub219305_)
                                                  (let ((__tmp225693
                                                         (let ((__tmp225694
                                                                (let ((__tmp225695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub219305_)))
                          (declare (not safe))
                          (cons __tmp225695 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp225694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp225693
                                                     _stx219251_)))
                                                _$e219302_)
                                               _stx219251_)))
                                       _hd219261219283_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219254219267_ _g219255219270_)))))
                              (let ()
                                (declare (not safe))
                                (_g219254219267_ _g219255219270_)))))
                      (let ()
                        (declare (not safe))
                        (_g219254219267_ _g219255219270_))))))
          (declare (not safe))
          (_g219253219307_ _stx219251_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx219179_ _id219180_ _new-id219181_)
        (let* ((_g219183219200_
                (lambda (_g219184219197_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219184219197_))))
               (_g219182219248_
                (lambda (_g219184219203_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219184219203_))
                      (let ((_e219189219205_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219184219203_))))
                        (let ((_hd219188219208_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219189219205_)))
                              (_tl219187219210_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219189219205_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219187219210_))
                              (let ((_e219192219213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219187219210_))))
                                (let ((_hd219191219216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219192219213_)))
                                      (_tl219190219218_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219192219213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219190219218_))
                                      (let ((_e219195219221_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219190219218_))))
                                        (let ((_hd219194219224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219195219221_)))
                                              (_tl219193219226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219195219221_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219193219226_))
                                              ((lambda (_L219229_ _L219230_)
                                                 (let ((_new-expr219245_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L219229_
                                                           _id219180_
                                                           _new-id219181_)))
                                                       (_new-xid219246_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L219230_
                                                               _id219180_))
                                                            _new-id219181_
                                                            _L219230_)))
                                                   (let ((__tmp225696
                                                          (let ((__tmp225697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp225698
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219245_ '()))))
                           (declare (not safe))
                           (cons _new-xid219246_ __tmp225698))))
                    (declare (not safe))
                    (cons '%#set! __tmp225697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp225696
                                                      _stx219179_))))
                                               _hd219194219224_
                                               _hd219191219216_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219183219200_
                                                 _g219184219203_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219183219200_ _g219184219203_)))))
                              (let ()
                                (declare (not safe))
                                (_g219183219200_ _g219184219203_)))))
                      (let ()
                        (declare (not safe))
                        (_g219183219200_ _g219184219203_))))))
          (declare (not safe))
          (_g219182219248_ _stx219179_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx219103_ _subst219104_)
        (let* ((_g219106219123_
                (lambda (_g219107219120_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219107219120_))))
               (_g219105219176_
                (lambda (_g219107219126_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219107219126_))
                      (let ((_e219112219128_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219107219126_))))
                        (let ((_hd219111219131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219112219128_)))
                              (_tl219110219133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219112219128_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219110219133_))
                              (let ((_e219115219136_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219110219133_))))
                                (let ((_hd219114219139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219115219136_)))
                                      (_tl219113219141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219115219136_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219113219141_))
                                      (let ((_e219118219144_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219113219141_))))
                                        (let ((_hd219117219147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219118219144_)))
                                              (_tl219116219149_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219118219144_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219116219149_))
                                              ((lambda (_L219152_ _L219153_)
                                                 (let ((_new-expr219173_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L219152_
                                                           _subst219104_)))
                                                       (_new-xid219174_
                                                        (let ((_$e219170_
                                                               (let ((__tmp225699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub219168_)
                                (let ((__tmp225700 (car _sub219168_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L219153_
                                   __tmp225700)))))
                         (declare (not safe))
                         (find __tmp225699 _subst219104_))))
                  (if _$e219170_ (cdr _$e219170_) _L219153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp225701
                                                          (let ((__tmp225702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp225703
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219173_ '()))))
                           (declare (not safe))
                           (cons _new-xid219174_ __tmp225703))))
                    (declare (not safe))
                    (cons '%#set! __tmp225702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp225701
                                                      _stx219103_))))
                                               _hd219117219147_
                                               _hd219114219139_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219106219123_
                                                 _g219107219126_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219106219123_ _g219107219126_)))))
                              (let ()
                                (declare (not safe))
                                (_g219106219123_ _g219107219126_)))))
                      (let ()
                        (declare (not safe))
                        (_g219106219123_ _g219107219126_))))))
          (declare (not safe))
          (_g219105219176_ _stx219103_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx219049_ _ht219050_)
        (let* ((_g219052219065_
                (lambda (_g219053219062_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219053219062_))))
               (_g219051219100_
                (lambda (_g219053219068_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219053219068_))
                      (let ((_e219057219070_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219053219068_))))
                        (let ((_hd219056219073_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219057219070_)))
                              (_tl219055219075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219057219070_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219055219075_))
                              (let ((_e219060219078_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219055219075_))))
                                (let ((_hd219059219081_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219060219078_)))
                                      (_tl219058219083_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219060219078_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219058219083_))
                                      ((lambda (_L219086_)
                                         (let ((_eid219098_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L219086_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht219050_
                                            _eid219098_
                                            1+
                                            '0)))
                                       _hd219059219081_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219052219065_ _g219053219068_)))))
                              (let ()
                                (declare (not safe))
                                (_g219052219065_ _g219053219068_)))))
                      (let ()
                        (declare (not safe))
                        (_g219052219065_ _g219053219068_))))))
          (declare (not safe))
          (_g219051219100_ _stx219049_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx218979_ _ht218980_)
        (let* ((_g218982218999_
                (lambda (_g218983218996_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218983218996_))))
               (_g218981219046_
                (lambda (_g218983219002_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218983219002_))
                      (let ((_e218988219004_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218983219002_))))
                        (let ((_hd218987219007_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218988219004_)))
                              (_tl218986219009_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218988219004_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218986219009_))
                              (let ((_e218991219012_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218986219009_))))
                                (let ((_hd218990219015_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218991219012_)))
                                      (_tl218989219017_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218991219012_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218989219017_))
                                      (let ((_e218994219020_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218989219017_))))
                                        (let ((_hd218993219023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218994219020_)))
                                              (_tl218992219025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218994219020_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218992219025_))
                                              ((lambda (_L219028_ _L219029_)
                                                 (let ((_eid219044_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L219029_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht218980_
                                                      _eid219044_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L219028_
                                                      _ht218980_))))
                                               _hd218993219023_
                                               _hd218990219015_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218982218999_
                                                 _g218983219002_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218982218999_ _g218983219002_)))))
                              (let ()
                                (declare (not safe))
                                (_g218982218999_ _g218983219002_)))))
                      (let ()
                        (declare (not safe))
                        (_g218982218999_ _g218983219002_))))))
          (declare (not safe))
          (_g218981219046_ _stx218979_))))
    (define gxc#find-body%
      (lambda (_stx218892_ _arg218893_)
        (let* ((_g218895218914_
                (lambda (_g218896218911_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218896218911_))))
               (_g218894218976_
                (lambda (_g218896218917_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218896218917_))
                      (let ((_e218900218919_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218896218917_))))
                        (let ((_hd218899218922_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218900218919_)))
                              (_tl218898218924_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218900218919_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl218898218924_))
                              (let ((_g225704_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl218898218924_
                                        '0))))
                                (begin
                                  (let ((_g225705_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g225704_)
                                               (##vector-length _g225704_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g225705_ 2)))
                                        (error "Context expects 2 values"
                                               _g225705_)))
                                  (let ((_target218901218927_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225704_ 0)))
                                        (_tl218903218929_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225704_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl218903218929_))
                                        (letrec ((_loop218904218932_
                                                  (lambda (_hd218902218935_
                                                           _expr218908218937_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd218902218935_))
                                                        (let ((_e218905218940_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd218902218935_))))
                  (let ((_lp-hd218906218943_
                         (let () (declare (not safe)) (##car _e218905218940_)))
                        (_lp-tl218907218945_
                         (let ()
                           (declare (not safe))
                           (##cdr _e218905218940_))))
                    (let ((__tmp225709
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd218906218943_ _expr218908218937_))))
                      (declare (not safe))
                      (_loop218904218932_ _lp-tl218907218945_ __tmp225709))))
                (let ((_expr218909218948_ (reverse _expr218908218937_)))
                  ((lambda (_L218951_)
                     (let ((__tmp225708
                            (lambda (_g218964218966_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g218964218966_
                                 _arg218893_))))
                           (__tmp225706
                            (let ((__tmp225707
                                   (lambda (_g218968218971_ _g218969218973_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g218968218971_
                                             _g218969218973_)))))
                              (declare (not safe))
                              (foldr1 __tmp225707 '() _L218951_))))
                       (declare (not safe))
                       (ormap1 __tmp225708 __tmp225706)))
                   _expr218909218948_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop218904218932_
                                             _target218901218927_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g218895218914_
                                           _g218896218917_))))))
                              (let ()
                                (declare (not safe))
                                (_g218895218914_ _g218896218917_)))))
                      (let ()
                        (declare (not safe))
                        (_g218895218914_ _g218896218917_))))))
          (declare (not safe))
          (_g218894218976_ _stx218892_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx218824_ _arg218825_)
        (let* ((_g218827218844_
                (lambda (_g218828218841_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218828218841_))))
               (_g218826218889_
                (lambda (_g218828218847_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218828218847_))
                      (let ((_e218833218849_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218828218847_))))
                        (let ((_hd218832218852_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218833218849_)))
                              (_tl218831218854_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218833218849_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218831218854_))
                              (let ((_e218836218857_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218831218854_))))
                                (let ((_hd218835218860_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218836218857_)))
                                      (_tl218834218862_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218836218857_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218834218862_))
                                      (let ((_e218839218865_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218834218862_))))
                                        (let ((_hd218838218868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218839218865_)))
                                              (_tl218837218870_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218839218865_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218837218870_))
                                              ((lambda (_L218873_ _L218874_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L218873_
                                                    _arg218825_)))
                                               _hd218838218868_
                                               _hd218835218860_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218827218844_
                                                 _g218828218847_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218827218844_ _g218828218847_)))))
                              (let ()
                                (declare (not safe))
                                (_g218827218844_ _g218828218847_)))))
                      (let ()
                        (declare (not safe))
                        (_g218827218844_ _g218828218847_))))))
          (declare (not safe))
          (_g218826218889_ _stx218824_))))
    (define gxc#find-lambda%
      (lambda (_stx218756_ _arg218757_)
        (let* ((_g218759218776_
                (lambda (_g218760218773_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218760218773_))))
               (_g218758218821_
                (lambda (_g218760218779_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218760218779_))
                      (let ((_e218765218781_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218760218779_))))
                        (let ((_hd218764218784_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218765218781_)))
                              (_tl218763218786_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218765218781_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218763218786_))
                              (let ((_e218768218789_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218763218786_))))
                                (let ((_hd218767218792_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218768218789_)))
                                      (_tl218766218794_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218768218789_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218766218794_))
                                      (let ((_e218771218797_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218766218794_))))
                                        (let ((_hd218770218800_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218771218797_)))
                                              (_tl218769218802_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218771218797_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218769218802_))
                                              ((lambda (_L218805_ _L218806_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L218805_
                                                    _arg218757_)))
                                               _hd218770218800_
                                               _hd218767218792_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218759218776_
                                                 _g218760218779_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218759218776_ _g218760218779_)))))
                              (let ()
                                (declare (not safe))
                                (_g218759218776_ _g218760218779_)))))
                      (let ()
                        (declare (not safe))
                        (_g218759218776_ _g218760218779_))))))
          (declare (not safe))
          (_g218758218821_ _stx218756_))))
    (define gxc#find-case-lambda%
      (lambda (_stx218638_ _arg218639_)
        (let* ((_g218641218669_
                (lambda (_g218642218666_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218642218666_))))
               (_g218640218753_
                (lambda (_g218642218672_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218642218672_))
                      (let ((_e218647218674_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218642218672_))))
                        (let ((_hd218646218677_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218647218674_)))
                              (_tl218645218679_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218647218674_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl218645218679_))
                              (let ((_g225710_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl218645218679_
                                        '0))))
                                (begin
                                  (let ((_g225711_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g225710_)
                                               (##vector-length _g225710_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g225711_ 2)))
                                        (error "Context expects 2 values"
                                               _g225711_)))
                                  (let ((_target218648218682_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225710_ 0)))
                                        (_tl218650218684_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g225710_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl218650218684_))
                                        (letrec ((_loop218651218687_
                                                  (lambda (_hd218649218690_
                                                           _body218655218692_
                                                           _hd218656218694_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd218649218690_))
                                                        (let ((_e218652218697_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd218649218690_))))
                  (let ((_lp-hd218653218700_
                         (let () (declare (not safe)) (##car _e218652218697_)))
                        (_lp-tl218654218702_
                         (let ()
                           (declare (not safe))
                           (##cdr _e218652218697_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd218653218700_))
                        (let ((_e218661218705_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd218653218700_))))
                          (let ((_hd218660218708_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218661218705_)))
                                (_tl218659218710_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218661218705_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl218659218710_))
                                (let ((_e218664218713_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl218659218710_))))
                                  (let ((_hd218663218716_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e218664218713_)))
                                        (_tl218662218718_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e218664218713_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl218662218718_))
                                        (let ((__tmp225716
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd218663218716_
                                                       _body218655218692_)))
                                              (__tmp225715
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd218660218708_
                                                       _hd218656218694_))))
                                          (declare (not safe))
                                          (_loop218651218687_
                                           _lp-tl218654218702_
                                           __tmp225716
                                           __tmp225715))
                                        (let ()
                                          (declare (not safe))
                                          (_g218641218669_ _g218642218672_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g218641218669_ _g218642218672_)))))
                        (let ()
                          (declare (not safe))
                          (_g218641218669_ _g218642218672_)))))
                (let ((_body218657218721_ (reverse _body218655218692_))
                      (_hd218658218723_ (reverse _hd218656218694_)))
                  ((lambda (_L218726_ _L218727_)
                     (let ((__tmp225714
                            (lambda (_g218741218743_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g218741218743_
                                 _arg218639_))))
                           (__tmp225712
                            (let ((__tmp225713
                                   (lambda (_g218745218748_ _g218746218750_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g218745218748_
                                             _g218746218750_)))))
                              (declare (not safe))
                              (foldr1 __tmp225713 '() _L218726_))))
                       (declare (not safe))
                       (ormap1 __tmp225714 __tmp225712)))
                   _body218657218721_
                   _hd218658218723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop218651218687_
                                             _target218648218682_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g218641218669_
                                           _g218642218672_))))))
                              (let ()
                                (declare (not safe))
                                (_g218641218669_ _g218642218672_)))))
                      (let ()
                        (declare (not safe))
                        (_g218641218669_ _g218642218672_))))))
          (declare (not safe))
          (_g218640218753_ _stx218638_))))
    (define gxc#find-let-values%
      (lambda (_stx218488_ _arg218489_)
        (let* ((_g218491218526_
                (lambda (_g218492218523_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218492218523_))))
               (_g218490218635_
                (lambda (_g218492218529_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218492218529_))
                      (let ((_e218498218531_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218492218529_))))
                        (let ((_hd218497218534_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218498218531_)))
                              (_tl218496218536_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218498218531_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218496218536_))
                              (let ((_e218501218539_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218496218536_))))
                                (let ((_hd218500218542_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218501218539_)))
                                      (_tl218499218544_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218501218539_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd218500218542_))
                                      (let ((_g225717_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd218500218542_
                                                '0))))
                                        (begin
                                          (let ((_g225718_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g225717_)
                                                       (##vector-length
                                                        _g225717_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g225718_ 2)))
                                                (error "Context expects 2 values"
                                                       _g225718_)))
                                          (let ((_target218502218547_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g225717_ 0)))
                                                (_tl218504218549_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g225717_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl218504218549_))
                                                (letrec ((_loop218505218552_
                                                          (lambda (_hd218503218555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr218509218557_
                           _bind218510218559_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd218503218555_))
                        (let ((_e218506218562_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd218503218555_))))
                          (let ((_lp-hd218507218565_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218506218562_)))
                                (_lp-tl218508218567_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218506218562_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd218507218565_))
                                (let ((_e218515218570_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd218507218565_))))
                                  (let ((_hd218514218573_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e218515218570_)))
                                        (_tl218513218575_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e218515218570_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl218513218575_))
                                        (let ((_e218518218578_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl218513218575_))))
                                          (let ((_hd218517218581_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e218518218578_)))
                                                (_tl218516218583_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e218518218578_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl218516218583_))
                                                (let ((__tmp225723
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd218517218581_
                                                               _expr218509218557_)))
                                                      (__tmp225722
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd218514218573_
                                                               _bind218510218559_))))
                                                  (declare (not safe))
                                                  (_loop218505218552_
                                                   _lp-tl218508218567_
                                                   __tmp225723
                                                   __tmp225722))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g218491218526_
                                                   _g218492218529_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g218491218526_ _g218492218529_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g218491218526_ _g218492218529_)))))
                        (let ((_expr218511218586_ (reverse _expr218509218557_))
                              (_bind218512218588_
                               (reverse _bind218510218559_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218499218544_))
                              (let ((_e218521218591_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218499218544_))))
                                (let ((_hd218520218594_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218521218591_)))
                                      (_tl218519218596_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218521218591_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218519218596_))
                                      ((lambda (_L218599_ _L218600_ _L218601_)
                                         (let ((_$e218632_
                                                (let ((__tmp225721
                                                       (lambda (_g218620218622_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g218620218622_
                                                            _arg218489_))))
                                                      (__tmp225719
                                                       (let ((__tmp225720
                                                              (lambda (_g218624218627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g218625218629_)
                        (let ()
                          (declare (not safe))
                          (cons _g218624218627_ _g218625218629_)))))
                 (declare (not safe))
                 (foldr1 __tmp225720 '() _L218600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp225721
                                                          __tmp225719))))
                                           (if _$e218632_
                                               _$e218632_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L218599_
                                                  _arg218489_)))))
                                       _hd218520218594_
                                       _expr218511218586_
                                       _bind218512218588_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218491218526_ _g218492218529_)))))
                              (let ()
                                (declare (not safe))
                                (_g218491218526_ _g218492218529_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop218505218552_
                                                     _target218502218547_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g218491218526_
                                                   _g218492218529_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218491218526_ _g218492218529_)))))
                              (let ()
                                (declare (not safe))
                                (_g218491218526_ _g218492218529_)))))
                      (let ()
                        (declare (not safe))
                        (_g218491218526_ _g218492218529_))))))
          (declare (not safe))
          (_g218490218635_ _stx218488_))))
    (define gxc#find-setq%
      (lambda (_stx218420_ _arg218421_)
        (let* ((_g218423218440_
                (lambda (_g218424218437_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218424218437_))))
               (_g218422218485_
                (lambda (_g218424218443_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218424218443_))
                      (let ((_e218429218445_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218424218443_))))
                        (let ((_hd218428218448_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218429218445_)))
                              (_tl218427218450_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218429218445_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218427218450_))
                              (let ((_e218432218453_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218427218450_))))
                                (let ((_hd218431218456_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218432218453_)))
                                      (_tl218430218458_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218432218453_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218430218458_))
                                      (let ((_e218435218461_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218430218458_))))
                                        (let ((_hd218434218464_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218435218461_)))
                                              (_tl218433218466_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218435218461_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218433218466_))
                                              ((lambda (_L218469_ _L218470_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L218469_
                                                    _arg218421_)))
                                               _hd218434218464_
                                               _hd218431218456_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218423218440_
                                                 _g218424218443_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218423218440_ _g218424218443_)))))
                              (let ()
                                (declare (not safe))
                                (_g218423218440_ _g218424218443_)))))
                      (let ()
                        (declare (not safe))
                        (_g218423218440_ _g218424218443_))))))
          (declare (not safe))
          (_g218422218485_ _stx218420_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx218364_ _ids218365_)
        (let* ((_g218367218380_
                (lambda (_g218368218377_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218368218377_))))
               (_g218366218417_
                (lambda (_g218368218383_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218368218383_))
                      (let ((_e218372218385_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218368218383_))))
                        (let ((_hd218371218388_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218372218385_)))
                              (_tl218370218390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218372218385_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218370218390_))
                              (let ((_e218375218393_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218370218390_))))
                                (let ((_hd218374218396_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218375218393_)))
                                      (_tl218373218398_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218375218393_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218373218398_))
                                      ((lambda (_L218401_)
                                         (let ((__tmp225724
                                                (lambda (_g218412218414_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L218401_
                                                     _g218412218414_)))))
                                           (declare (not safe))
                                           (find __tmp225724 _ids218365_)))
                                       _hd218374218396_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218367218380_ _g218368218383_)))))
                              (let ()
                                (declare (not safe))
                                (_g218367218380_ _g218368218383_)))))
                      (let ()
                        (declare (not safe))
                        (_g218367218380_ _g218368218383_))))))
          (declare (not safe))
          (_g218366218417_ _stx218364_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx218288_ _ids218289_)
        (let* ((_g218291218308_
                (lambda (_g218292218305_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218292218305_))))
               (_g218290218361_
                (lambda (_g218292218311_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218292218311_))
                      (let ((_e218297218313_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218292218311_))))
                        (let ((_hd218296218316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218297218313_)))
                              (_tl218295218318_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218297218313_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218295218318_))
                              (let ((_e218300218321_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218295218318_))))
                                (let ((_hd218299218324_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218300218321_)))
                                      (_tl218298218326_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218300218321_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218298218326_))
                                      (let ((_e218303218329_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218298218326_))))
                                        (let ((_hd218302218332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218303218329_)))
                                              (_tl218301218334_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218303218329_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218301218334_))
                                              ((lambda (_L218337_ _L218338_)
                                                 (let ((_$e218358_
                                                        (let ((__tmp225725
                                                               (lambda (_g218353218355_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L218338_ _g218353218355_)))))
                  (declare (not safe))
                  (find __tmp225725 _ids218289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e218358_
                                                       _$e218358_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L218337_
                                                          _ids218289_)))))
                                               _hd218302218332_
                                               _hd218299218324_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218291218308_
                                                 _g218292218311_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218291218308_ _g218292218311_)))))
                              (let ()
                                (declare (not safe))
                                (_g218291218308_ _g218292218311_)))))
                      (let ()
                        (declare (not safe))
                        (_g218291218308_ _g218292218311_))))))
          (declare (not safe))
          (_g218290218361_ _stx218288_))))))
