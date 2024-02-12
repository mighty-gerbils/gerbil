(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707773929)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl223832_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223832_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223832_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223832_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223832_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl223832_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl223828_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223828_ '%#declare gxc#xform-identity))
           _tbl223828_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl223824_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228646 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl223824_ __tmp228646))
           (let ((__tmp228647 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl223824_ __tmp228647))
           _tbl223824_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl223820_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223820_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223820_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223820_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223820_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223820_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl223820_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl223816_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228648 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223816_ __tmp228648))
           (let ((__tmp228649 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl223816_ __tmp228649))
           (let ()
             (declare (not safe))
             (table-set! _tbl223816_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223816_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223816_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223816_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223816_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl223816_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl223812_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228650 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223812_ __tmp228650))
           (let ()
             (declare (not safe))
             (table-set! _tbl223812_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223812_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223812_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223812_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223812_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223812_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223812_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223812_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223812_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223812_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223812_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl223812_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx223795_ . _args223797_)
        (let ((__tmp228652
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223797_)
                     (gxc#compile-e__0 _stx223795_)
                     (let ((_arg1223802_ (car _args223797_))
                           (_rest223804_ (cdr _args223797_)))
                       (if (null? _rest223804_)
                           (gxc#compile-e__1 _stx223795_ _arg1223802_)
                           (let ((_arg2223807_ (car _rest223804_))
                                 (_rest223809_ (cdr _rest223804_)))
                             (if (null? _rest223809_)
                                 (gxc#compile-e__2
                                  _stx223795_
                                  _arg1223802_
                                  _arg2223807_)
                                 (apply gxc#compile-e
                                        _stx223795_
                                        _arg1223802_
                                        _arg2223807_
                                        _rest223809_))))))))
              (__tmp228651 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp228652
           gxc#current-compile-methods
           __tmp228651))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl223792_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228653 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223792_ __tmp228653))
           (let ()
             (declare (not safe))
             (table-set! _tbl223792_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223792_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223792_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223792_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223792_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl223792_))))
    (define gxc#apply-collect-methods
      (lambda (_stx223775_ . _args223777_)
        (let ((__tmp228655
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223777_)
                     (gxc#compile-e__0 _stx223775_)
                     (let ((_arg1223782_ (car _args223777_))
                           (_rest223784_ (cdr _args223777_)))
                       (if (null? _rest223784_)
                           (gxc#compile-e__1 _stx223775_ _arg1223782_)
                           (let ((_arg2223787_ (car _rest223784_))
                                 (_rest223789_ (cdr _rest223784_)))
                             (if (null? _rest223789_)
                                 (gxc#compile-e__2
                                  _stx223775_
                                  _arg1223782_
                                  _arg2223787_)
                                 (apply gxc#compile-e
                                        _stx223775_
                                        _arg1223782_
                                        _arg2223787_
                                        _rest223789_))))))))
              (__tmp228654 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp228655
           gxc#current-compile-methods
           __tmp228654))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl223772_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228656 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223772_ __tmp228656))
           (let ()
             (declare (not safe))
             (table-set! _tbl223772_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223772_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223772_ '%#set! gxc#expression-subst-setq%))
           _tbl223772_))))
    (define gxc#apply-expression-subst
      (lambda (_stx223755_ . _args223757_)
        (let ((__tmp228658
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223757_)
                     (gxc#compile-e__0 _stx223755_)
                     (let ((_arg1223762_ (car _args223757_))
                           (_rest223764_ (cdr _args223757_)))
                       (if (null? _rest223764_)
                           (gxc#compile-e__1 _stx223755_ _arg1223762_)
                           (let ((_arg2223767_ (car _rest223764_))
                                 (_rest223769_ (cdr _rest223764_)))
                             (if (null? _rest223769_)
                                 (gxc#compile-e__2
                                  _stx223755_
                                  _arg1223762_
                                  _arg2223767_)
                                 (apply gxc#compile-e
                                        _stx223755_
                                        _arg1223762_
                                        _arg2223767_
                                        _rest223769_))))))))
              (__tmp228657 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp228658
           gxc#current-compile-methods
           __tmp228657))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl223752_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228659 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl223752_ __tmp228659))
           (let ()
             (declare (not safe))
             (table-set! _tbl223752_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223752_ '%#set! gxc#expression-subst*-setq%))
           _tbl223752_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx223735_ . _args223737_)
        (let ((__tmp228661
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223737_)
                     (gxc#compile-e__0 _stx223735_)
                     (let ((_arg1223742_ (car _args223737_))
                           (_rest223744_ (cdr _args223737_)))
                       (if (null? _rest223744_)
                           (gxc#compile-e__1 _stx223735_ _arg1223742_)
                           (let ((_arg2223747_ (car _rest223744_))
                                 (_rest223749_ (cdr _rest223744_)))
                             (if (null? _rest223749_)
                                 (gxc#compile-e__2
                                  _stx223735_
                                  _arg1223742_
                                  _arg2223747_)
                                 (apply gxc#compile-e
                                        _stx223735_
                                        _arg1223742_
                                        _arg2223747_
                                        _rest223749_))))))))
              (__tmp228660 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp228661
           gxc#current-compile-methods
           __tmp228660))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl223732_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228662 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl223732_ __tmp228662))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223732_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223732_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223732_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl223732_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl223728_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228663 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl223728_ __tmp228663))
           (let ()
             (declare (not safe))
             (table-set! _tbl223728_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223728_ '%#set! gxc#find-var-refs-setq%))
           _tbl223728_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx223711_ . _args223713_)
        (let ((__tmp228665
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223713_)
                     (gxc#compile-e__0 _stx223711_)
                     (let ((_arg1223718_ (car _args223713_))
                           (_rest223720_ (cdr _args223713_)))
                       (if (null? _rest223720_)
                           (gxc#compile-e__1 _stx223711_ _arg1223718_)
                           (let ((_arg2223723_ (car _rest223720_))
                                 (_rest223725_ (cdr _rest223720_)))
                             (if (null? _rest223725_)
                                 (gxc#compile-e__2
                                  _stx223711_
                                  _arg1223718_
                                  _arg2223723_)
                                 (apply gxc#compile-e
                                        _stx223711_
                                        _arg1223718_
                                        _arg2223723_
                                        _rest223725_))))))))
              (__tmp228664 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp228665
           gxc#current-compile-methods
           __tmp228664))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl223708_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228666 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl223708_ __tmp228666))
           (let ()
             (declare (not safe))
             (table-set! _tbl223708_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223708_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl223708_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx223691_ . _args223693_)
        (let ((__tmp228668
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223693_)
                     (gxc#compile-e__0 _stx223691_)
                     (let ((_arg1223698_ (car _args223693_))
                           (_rest223700_ (cdr _args223693_)))
                       (if (null? _rest223700_)
                           (gxc#compile-e__1 _stx223691_ _arg1223698_)
                           (let ((_arg2223703_ (car _rest223700_))
                                 (_rest223705_ (cdr _rest223700_)))
                             (if (null? _rest223705_)
                                 (gxc#compile-e__2
                                  _stx223691_
                                  _arg1223698_
                                  _arg2223703_)
                                 (apply gxc#compile-e
                                        _stx223691_
                                        _arg1223698_
                                        _arg2223703_
                                        _rest223705_))))))))
              (__tmp228667 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp228668
           gxc#current-compile-methods
           __tmp228667))))
    (define gxc#xform-identity
      (lambda (_stx223688_ . _args223689_) _stx223688_))
    (define gxc#xform-wrap-source
      (lambda (_stx223685_ _src-stx223686_)
        (let ((__tmp228669
               (let () (declare (not safe)) (gx#stx-source _src-stx223686_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx223685_ __tmp228669))))
    (define gxc#xform-apply-compile-e
      (lambda (_args223672_)
        (lambda (_stx223674_)
          (if (let () (declare (not safe)) (null? _args223672_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx223674_))
              (let ((_arg1223676_ (car _args223672_))
                    (_rest223678_ (cdr _args223672_)))
                (if (let () (declare (not safe)) (null? _rest223678_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx223674_ _arg1223676_))
                    (let ((_arg2223681_ (car _rest223678_))
                          (_rest223683_ (cdr _rest223678_)))
                      (if (let () (declare (not safe)) (null? _rest223683_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx223674_
                             _arg1223676_
                             _arg2223681_))
                          (apply gxc#compile-e
                                 _stx223674_
                                 _arg1223676_
                                 _arg2223681_
                                 _rest223683_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx223631_ . _args223632_)
        (let* ((_g223634223644_
                (lambda (_g223635223641_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223635223641_))))
               (_g223633223669_
                (lambda (_g223635223647_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223635223647_))
                      (let ((_e223639223649_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223635223647_))))
                        (let ((_hd223638223652_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223639223649_)))
                              (_tl223637223654_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223639223649_))))
                          ((lambda (_L223657_)
                             (let* ((_forms223667_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args223632_))
                                          _L223657_))
                                    (__tmp228670
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms223667_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp228670
                                _stx223631_)))
                           _tl223637223654_)))
                      (let ()
                        (declare (not safe))
                        (_g223634223644_ _g223635223647_))))))
          (declare (not safe))
          (_g223633223669_ _stx223631_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx223589_ . _args223590_)
        (let* ((_g223592223602_
                (lambda (_g223593223599_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223593223599_))))
               (_g223591223628_
                (lambda (_g223593223605_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223593223605_))
                      (let ((_e223597223607_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223593223605_))))
                        (let ((_hd223596223610_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223597223607_)))
                              (_tl223595223612_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223597223607_))))
                          ((lambda (_L223615_)
                             (let ((__tmp228673
                                    (lambda ()
                                      (let* ((_forms223626_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args223590_))
                                                   _L223615_))
                                             (__tmp228674
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms223626_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp228674
                                         _stx223589_))))
                                   (__tmp228671
                                    (let ((__tmp228672
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp228672 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp228673
                                gx#current-expander-phi
                                __tmp228671)))
                           _tl223595223612_)))
                      (let ()
                        (declare (not safe))
                        (_g223592223602_ _g223593223605_))))))
          (declare (not safe))
          (_g223591223628_ _stx223589_))))
    (define gxc#xform-module%
      (lambda (_stx223517_ . _args223518_)
        (let* ((_g223520223534_
                (lambda (_g223521223531_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223521223531_))))
               (_g223519223586_
                (lambda (_g223521223537_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223521223537_))
                      (let ((_e223526223539_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223521223537_))))
                        (let ((_hd223525223542_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223526223539_)))
                              (_tl223524223544_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223526223539_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223524223544_))
                              (let ((_e223529223547_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223524223544_))))
                                (let ((_hd223528223550_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223529223547_)))
                                      (_tl223527223552_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223529223547_))))
                                  ((lambda (_L223555_ _L223556_)
                                     (let* ((_ctx223569_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L223556_)))
                                            (_code223571_
                                             (##structure-ref
                                              _ctx223569_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code223583_
                                             (let ((__tmp228675
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args223518_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code223571_))
                                                          (let ((_arg1223574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args223518_))
                        (_rest223576_ (cdr _args223518_)))
                    (if (let () (declare (not safe)) (null? _rest223576_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code223571_ _arg1223574_))
                        (let ((_arg2223579_ (car _rest223576_))
                              (_rest223581_ (cdr _rest223576_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest223581_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code223571_
                                 _arg1223574_
                                 _arg2223579_))
                              (apply gxc#compile-e
                                     _code223571_
                                     _arg1223574_
                                     _arg2223579_
                                     _rest223581_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp228675
                                                gx#current-expander-context
                                                _ctx223569_))))
                                       (##structure-set!
                                        _ctx223569_
                                        _code223583_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp228676
                                              (let ((__tmp228677
                                                     (let ((__tmp228678
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code223583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L223556_ __tmp228678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp228677))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp228676
                                          _stx223517_))))
                                   _tl223527223552_
                                   _hd223528223550_)))
                              (let ()
                                (declare (not safe))
                                (_g223520223534_ _g223521223537_)))))
                      (let ()
                        (declare (not safe))
                        (_g223520223534_ _g223521223537_))))))
          (declare (not safe))
          (_g223519223586_ _stx223517_))))
    (define gxc#xform-define-values%
      (lambda (_stx223438_ . _args223439_)
        (let* ((_g223441223458_
                (lambda (_g223442223455_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223442223455_))))
               (_g223440223514_
                (lambda (_g223442223461_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223442223461_))
                      (let ((_e223447223463_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223442223461_))))
                        (let ((_hd223446223466_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223447223463_)))
                              (_tl223445223468_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223447223463_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223445223468_))
                              (let ((_e223450223471_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223445223468_))))
                                (let ((_hd223449223474_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223450223471_)))
                                      (_tl223448223476_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223450223471_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223448223476_))
                                      (let ((_e223453223479_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223448223476_))))
                                        (let ((_hd223452223482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223453223479_)))
                                              (_tl223451223484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223453223479_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223451223484_))
                                              ((lambda (_L223487_ _L223488_)
                                                 (let* ((_expr223512_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223439_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223487_))
                     (let ((_arg1223503_ (car _args223439_))
                           (_rest223505_ (cdr _args223439_)))
                       (if (let () (declare (not safe)) (null? _rest223505_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223487_ _arg1223503_))
                           (let ((_arg2223508_ (car _rest223505_))
                                 (_rest223510_ (cdr _rest223505_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223510_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223487_
                                    _arg1223503_
                                    _arg2223508_))
                                 (apply gxc#compile-e
                                        _L223487_
                                        _arg1223503_
                                        _arg2223508_
                                        _rest223510_)))))))
                (__tmp228679
                 (let ((__tmp228680
                        (let ((__tmp228681
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223512_ '()))))
                          (declare (not safe))
                          (cons _L223488_ __tmp228681))))
                   (declare (not safe))
                   (cons '%#define-values __tmp228680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228679
                                                    _stx223438_)))
                                               _hd223452223482_
                                               _hd223449223474_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223441223458_
                                                 _g223442223461_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223441223458_ _g223442223461_)))))
                              (let ()
                                (declare (not safe))
                                (_g223441223458_ _g223442223461_)))))
                      (let ()
                        (declare (not safe))
                        (_g223441223458_ _g223442223461_))))))
          (declare (not safe))
          (_g223440223514_ _stx223438_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx223358_ . _args223359_)
        (let* ((_g223361223378_
                (lambda (_g223362223375_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223362223375_))))
               (_g223360223435_
                (lambda (_g223362223381_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223362223381_))
                      (let ((_e223367223383_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223362223381_))))
                        (let ((_hd223366223386_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223367223383_)))
                              (_tl223365223388_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223367223383_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223365223388_))
                              (let ((_e223370223391_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223365223388_))))
                                (let ((_hd223369223394_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223370223391_)))
                                      (_tl223368223396_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223370223391_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223368223396_))
                                      (let ((_e223373223399_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223368223396_))))
                                        (let ((_hd223372223402_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223373223399_)))
                                              (_tl223371223404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223373223399_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223371223404_))
                                              ((lambda (_L223407_ _L223408_)
                                                 (let ((__tmp228684
                                                        (lambda ()
                                                          (let* ((_expr223433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args223359_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L223407_))
                              (let ((_arg1223424_ (car _args223359_))
                                    (_rest223426_ (cdr _args223359_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest223426_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L223407_
                                       _arg1223424_))
                                    (let ((_arg2223429_ (car _rest223426_))
                                          (_rest223431_ (cdr _rest223426_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest223431_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L223407_
                                             _arg1223424_
                                             _arg2223429_))
                                          (apply gxc#compile-e
                                                 _L223407_
                                                 _arg1223424_
                                                 _arg2223429_
                                                 _rest223431_)))))))
                         (__tmp228685
                          (let ((__tmp228686
                                 (let ((__tmp228687
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr223433_ '()))))
                                   (declare (not safe))
                                   (cons _L223408_ __tmp228687))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp228686))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp228685 _stx223358_))))
               (__tmp228682
                (let ((__tmp228683 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp228683 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp228684
                                                    gx#current-expander-phi
                                                    __tmp228682)))
                                               _hd223372223402_
                                               _hd223369223394_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223361223378_
                                                 _g223362223381_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223361223378_ _g223362223381_)))))
                              (let ()
                                (declare (not safe))
                                (_g223361223378_ _g223362223381_)))))
                      (let ()
                        (declare (not safe))
                        (_g223361223378_ _g223362223381_))))))
          (declare (not safe))
          (_g223360223435_ _stx223358_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx223279_ . _args223280_)
        (let* ((_g223282223299_
                (lambda (_g223283223296_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223283223296_))))
               (_g223281223355_
                (lambda (_g223283223302_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223283223302_))
                      (let ((_e223288223304_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223283223302_))))
                        (let ((_hd223287223307_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223288223304_)))
                              (_tl223286223309_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223288223304_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223286223309_))
                              (let ((_e223291223312_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223286223309_))))
                                (let ((_hd223290223315_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223291223312_)))
                                      (_tl223289223317_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223291223312_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223289223317_))
                                      (let ((_e223294223320_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223289223317_))))
                                        (let ((_hd223293223323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223294223320_)))
                                              (_tl223292223325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223294223320_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223292223325_))
                                              ((lambda (_L223328_ _L223329_)
                                                 (let* ((_expr223353_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223280_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223328_))
                     (let ((_arg1223344_ (car _args223280_))
                           (_rest223346_ (cdr _args223280_)))
                       (if (let () (declare (not safe)) (null? _rest223346_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223328_ _arg1223344_))
                           (let ((_arg2223349_ (car _rest223346_))
                                 (_rest223351_ (cdr _rest223346_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223351_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223328_
                                    _arg1223344_
                                    _arg2223349_))
                                 (apply gxc#compile-e
                                        _L223328_
                                        _arg1223344_
                                        _arg2223349_
                                        _rest223351_)))))))
                (__tmp228688
                 (let ((__tmp228689
                        (let ((__tmp228690
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223353_ '()))))
                          (declare (not safe))
                          (cons _L223329_ __tmp228690))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp228689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228688
                                                    _stx223279_)))
                                               _hd223293223323_
                                               _hd223290223315_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223282223299_
                                                 _g223283223302_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223282223299_ _g223283223302_)))))
                              (let ()
                                (declare (not safe))
                                (_g223282223299_ _g223283223302_)))))
                      (let ()
                        (declare (not safe))
                        (_g223282223299_ _g223283223302_))))))
          (declare (not safe))
          (_g223281223355_ _stx223279_))))
    (define gxc#xform-lambda%
      (lambda (_stx223222_ . _args223223_)
        (let* ((_g223225223239_
                (lambda (_g223226223236_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223226223236_))))
               (_g223224223276_
                (lambda (_g223226223242_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223226223242_))
                      (let ((_e223231223244_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223226223242_))))
                        (let ((_hd223230223247_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223231223244_)))
                              (_tl223229223249_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223231223244_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223229223249_))
                              (let ((_e223234223252_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223229223249_))))
                                (let ((_hd223233223255_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223234223252_)))
                                      (_tl223232223257_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223234223252_))))
                                  ((lambda (_L223260_ _L223261_)
                                     (let* ((_body223274_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args223223_))
                                                  _L223260_))
                                            (__tmp228691
                                             (let ((__tmp228692
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L223261_
                                                            _body223274_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp228692))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp228691
                                        _stx223222_)))
                                   _tl223232223257_
                                   _hd223233223255_)))
                              (let ()
                                (declare (not safe))
                                (_g223225223239_ _g223226223242_)))))
                      (let ()
                        (declare (not safe))
                        (_g223225223239_ _g223226223242_))))))
          (declare (not safe))
          (_g223224223276_ _stx223222_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx223135_ . _args223136_)
        (letrec ((_clause-e223138_
                  (lambda (_clause223179_)
                    (let* ((_g223181223192_
                            (lambda (_g223182223189_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g223182223189_))))
                           (_g223180223219_
                            (lambda (_g223182223195_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g223182223195_))
                                  (let ((_e223187223197_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g223182223195_))))
                                    (let ((_hd223186223200_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223187223197_)))
                                          (_tl223185223202_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223187223197_))))
                                      ((lambda (_L223205_ _L223206_)
                                         (let ((_body223217_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args223136_))
                                                     _L223205_)))
                                           (declare (not safe))
                                           (cons _L223206_ _body223217_)))
                                       _tl223185223202_
                                       _hd223186223200_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g223181223192_ _g223182223195_))))))
                      (declare (not safe))
                      (_g223180223219_ _clause223179_)))))
          (let* ((_g223140223150_
                  (lambda (_g223141223147_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g223141223147_))))
                 (_g223139223176_
                  (lambda (_g223141223153_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g223141223153_))
                        (let ((_e223145223155_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g223141223153_))))
                          (let ((_hd223144223158_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e223145223155_)))
                                (_tl223143223160_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e223145223155_))))
                            ((lambda (_L223163_)
                               (let* ((_clauses223174_
                                       (map _clause-e223138_ _L223163_))
                                      (__tmp228693
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses223174_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp228693
                                  _stx223135_)))
                             _tl223143223160_)))
                        (let ()
                          (declare (not safe))
                          (_g223140223150_ _g223141223153_))))))
            (declare (not safe))
            (_g223139223176_ _stx223135_)))))
    (define gxc#xform-let-values%
      (lambda (_stx222929_ . _args222930_)
        (let* ((_g222932222965_
                (lambda (_g222933222962_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222933222962_))))
               (_g222931223132_
                (lambda (_g222933222968_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222933222968_))
                      (let ((_e222940222970_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222933222968_))))
                        (let ((_hd222939222973_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222940222970_)))
                              (_tl222938222975_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222940222970_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222938222975_))
                              (let ((_e222943222978_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222938222975_))))
                                (let ((_hd222942222981_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222943222978_)))
                                      (_tl222941222983_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222943222978_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd222942222981_))
                                      (let ((_g228694_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd222942222981_
                                                '0))))
                                        (begin
                                          (let ((_g228695_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228694_)
                                                       (##vector-length
                                                        _g228694_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228695_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228695_)))
                                          (let ((_target222944222986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g228694_ 0)))
                                                (_tl222946222988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g228694_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222946222988_))
                                                (letrec ((_loop222947222991_
                                                          (lambda (_hd222945222994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr222951222996_
                           _hd222952222998_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222945222994_))
                        (let ((_e222948223001_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222945222994_))))
                          (let ((_lp-hd222949223004_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222948223001_)))
                                (_lp-tl222950223006_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222948223001_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd222949223004_))
                                (let ((_e222957223009_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd222949223004_))))
                                  (let ((_hd222956223012_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222957223009_)))
                                        (_tl222955223014_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222957223009_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl222955223014_))
                                        (let ((_e222960223017_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl222955223014_))))
                                          (let ((_hd222959223020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222960223017_)))
                                                (_tl222958223022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222960223017_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222958223022_))
                                                (let ((__tmp228708
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222959223020_
                                                               _expr222951222996_)))
                                                      (__tmp228707
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222956223012_
                                                               _hd222952222998_))))
                                                  (declare (not safe))
                                                  (_loop222947222991_
                                                   _lp-tl222950223006_
                                                   __tmp228708
                                                   __tmp228707))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222932222965_
                                                   _g222933222968_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g222932222965_ _g222933222968_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222932222965_ _g222933222968_)))))
                        (let ((_expr222953223025_ (reverse _expr222951222996_))
                              (_hd222954223027_ (reverse _hd222952222998_)))
                          ((lambda (_L223030_ _L223031_ _L223032_ _L223033_)
                             (let* ((_g223052223068_
                                     (lambda (_g223053223065_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g223053223065_))))
                                    (_g223051223122_
                                     (lambda (_g223053223071_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g223053223071_))
                                           (let ((_g228696_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g223053223071_
                                                     '0))))
                                             (begin
                                               (let ((_g228697_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g228696_)
                                                            (##vector-length
                                                             _g228696_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g228697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g228697_)))
                                               (let ((_target223055223073_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g228696_
                                                         0)))
                                                     (_tl223057223075_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g228696_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl223057223075_))
                                                     (letrec ((_loop223058223078_
                                                               (lambda (_hd223056223081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr223062223083_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd223056223081_))
                             (let ((_e223059223086_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd223056223081_))))
                               (let ((_lp-hd223060223089_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e223059223086_)))
                                     (_lp-tl223061223091_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e223059223086_))))
                                 (let ((__tmp228704
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd223060223089_
                                                _expr223062223083_))))
                                   (declare (not safe))
                                   (_loop223058223078_
                                    _lp-tl223061223091_
                                    __tmp228704))))
                             (let ((_expr223063223094_
                                    (reverse _expr223062223083_)))
                               ((lambda (_L223097_)
                                  (let ()
                                    (let* ((_body223110_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args222930_))
                                                 _L223030_))
                                           (__tmp228698
                                            (let ((__tmp228699
                                                   (let ((__tmp228700
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L223097_
                                                               _L223032_))
                                                            (let ((__tmp228701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g223111223115_
                                    _g223112223117_
                                    _g223113223119_)
                             (let ((__tmp228702
                                    (let ((__tmp228703
                                           (let ()
                                             (declare (not safe))
                                             (cons _g223111223115_ '()))))
                                      (declare (not safe))
                                      (cons _g223112223117_ __tmp228703))))
                               (declare (not safe))
                               (cons __tmp228702 _g223113223119_)))))
                      (declare (not safe))
                      (foldr2 __tmp228701 '() _L223097_ _L223032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp228700
                                                           _body223110_))))
                                              (declare (not safe))
                                              (cons _L223033_ __tmp228699))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp228698
                                       _stx222929_))))
                                _expr223063223094_))))))
               (let ()
                 (declare (not safe))
                 (_loop223058223078_ _target223055223073_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g223052223068_
                                                        _g223053223071_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g223052223068_
                                              _g223053223071_)))))
                                    (__tmp228705
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222930_))
                                          (let ((__tmp228706
                                                 (lambda (_g223124223127_
                                                          _g223125223129_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g223124223127_
                                                           _g223125223129_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp228706
                                                    '()
                                                    _L223031_)))))
                               (declare (not safe))
                               (_g223051223122_ __tmp228705)))
                           _tl222941222983_
                           _expr222953223025_
                           _hd222954223027_
                           _hd222939222973_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop222947222991_
                                                     _target222944222986_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222932222965_
                                                   _g222933222968_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222932222965_ _g222933222968_)))))
                              (let ()
                                (declare (not safe))
                                (_g222932222965_ _g222933222968_)))))
                      (let ()
                        (declare (not safe))
                        (_g222932222965_ _g222933222968_))))))
          (declare (not safe))
          (_g222931223132_ _stx222929_))))
    (define gxc#xform-operands
      (lambda (_stx222885_ . _args222886_)
        (let* ((_g222888222899_
                (lambda (_g222889222896_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222889222896_))))
               (_g222887222926_
                (lambda (_g222889222902_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222889222902_))
                      (let ((_e222894222904_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222889222902_))))
                        (let ((_hd222893222907_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222894222904_)))
                              (_tl222892222909_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222894222904_))))
                          ((lambda (_L222912_ _L222913_)
                             (let* ((_rands222924_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222886_))
                                          _L222912_))
                                    (__tmp228709
                                     (let ()
                                       (declare (not safe))
                                       (cons _L222913_ _rands222924_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp228709
                                _stx222885_)))
                           _tl222892222909_
                           _hd222893222907_)))
                      (let ()
                        (declare (not safe))
                        (_g222888222899_ _g222889222902_))))))
          (declare (not safe))
          (_g222887222926_ _stx222885_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx222806_ . _args222807_)
        (let* ((_g222809222826_
                (lambda (_g222810222823_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222810222823_))))
               (_g222808222882_
                (lambda (_g222810222829_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222810222829_))
                      (let ((_e222815222831_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222810222829_))))
                        (let ((_hd222814222834_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222815222831_)))
                              (_tl222813222836_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222815222831_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222813222836_))
                              (let ((_e222818222839_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222813222836_))))
                                (let ((_hd222817222842_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222818222839_)))
                                      (_tl222816222844_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222818222839_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222816222844_))
                                      (let ((_e222821222847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222816222844_))))
                                        (let ((_hd222820222850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222821222847_)))
                                              (_tl222819222852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222821222847_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222819222852_))
                                              ((lambda (_L222855_ _L222856_)
                                                 (let* ((_expr222880_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args222807_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L222855_))
                     (let ((_arg1222871_ (car _args222807_))
                           (_rest222873_ (cdr _args222807_)))
                       (if (let () (declare (not safe)) (null? _rest222873_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L222855_ _arg1222871_))
                           (let ((_arg2222876_ (car _rest222873_))
                                 (_rest222878_ (cdr _rest222873_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest222878_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L222855_
                                    _arg1222871_
                                    _arg2222876_))
                                 (apply gxc#compile-e
                                        _L222855_
                                        _arg1222871_
                                        _arg2222876_
                                        _rest222878_)))))))
                (__tmp228710
                 (let ((__tmp228711
                        (let ((__tmp228712
                               (let ()
                                 (declare (not safe))
                                 (cons _expr222880_ '()))))
                          (declare (not safe))
                          (cons _L222856_ __tmp228712))))
                   (declare (not safe))
                   (cons '%#set! __tmp228711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228710
                                                    _stx222806_)))
                                               _hd222820222850_
                                               _hd222817222842_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222809222826_
                                                 _g222810222829_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222809222826_ _g222810222829_)))))
                              (let ()
                                (declare (not safe))
                                (_g222809222826_ _g222810222829_)))))
                      (let ()
                        (declare (not safe))
                        (_g222809222826_ _g222810222829_))))))
          (declare (not safe))
          (_g222808222882_ _stx222806_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx222737_)
        (let* ((_g222739222756_
                (lambda (_g222740222753_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222740222753_))))
               (_g222738222803_
                (lambda (_g222740222759_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222740222759_))
                      (let ((_e222745222761_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222740222759_))))
                        (let ((_hd222744222764_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222745222761_)))
                              (_tl222743222766_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222745222761_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222743222766_))
                              (let ((_e222748222769_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222743222766_))))
                                (let ((_hd222747222772_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222748222769_)))
                                      (_tl222746222774_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222748222769_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222746222774_))
                                      (let ((_e222751222777_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222746222774_))))
                                        (let ((_hd222750222780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222751222777_)))
                                              (_tl222749222782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222751222777_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222749222782_))
                                              ((lambda (_L222785_ _L222786_)
                                                 (let ((_sym222801_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L222786_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym222801_))
                                                   (let ((__tmp228713
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp228713
                                                      _sym222801_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L222785_))))
                                               _hd222750222780_
                                               _hd222747222772_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222739222756_
                                                 _g222740222759_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222739222756_ _g222740222759_)))))
                              (let ()
                                (declare (not safe))
                                (_g222739222756_ _g222740222759_)))))
                      (let ()
                        (declare (not safe))
                        (_g222739222756_ _g222740222759_))))))
          (declare (not safe))
          (_g222738222803_ _stx222737_))))
    (define gxc#collect-methods-call%
      (lambda (_stx222291_)
        (let* ((___stx228403228404_ _stx222291_)
               (_g222295222397_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx228403228404_)))))
          (let ((___kont228405228406_
                 (lambda (_L222687_ _L222688_ _L222689_ _L222690_ _L222691_)
                   (let ((__tmp228714
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222688_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp228714))))
                (___kont228407228408_
                 (lambda (_L222513_ _L222514_ _L222515_ _L222516_)
                   (let ((__tmp228715
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222513_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp228715))))
                (___kont228409228410_ (lambda () '#!void)))
            (let ((___match228538228539_
                   (lambda (_e222304222559_
                            _hd222303222562_
                            _tl222302222564_
                            _e222307222567_
                            _hd222306222570_
                            _tl222305222572_
                            _e222310222575_
                            _hd222309222578_
                            _tl222308222580_
                            _e222313222583_
                            _hd222312222586_
                            _tl222311222588_
                            _e222316222591_
                            _hd222315222594_
                            _tl222314222596_
                            _e222319222599_
                            _hd222318222602_
                            _tl222317222604_
                            _e222322222607_
                            _hd222321222610_
                            _tl222320222612_
                            _e222325222615_
                            _hd222324222618_
                            _tl222323222620_
                            _e222328222623_
                            _hd222327222626_
                            _tl222326222628_
                            _e222331222631_
                            _hd222330222634_
                            _tl222329222636_
                            _e222334222639_
                            _hd222333222642_
                            _tl222332222644_
                            _e222337222647_
                            _hd222336222650_
                            _tl222335222652_
                            _e222340222655_
                            _hd222339222658_
                            _tl222338222660_
                            _e222343222663_
                            _hd222342222666_
                            _tl222341222668_
                            _e222346222671_
                            _hd222345222674_
                            _tl222344222676_
                            _e222349222679_
                            _hd222348222682_
                            _tl222347222684_)
                     (let ((_L222687_ _hd222348222682_)
                           (_L222688_ _hd222339222658_)
                           (_L222689_ _hd222330222634_)
                           (_L222690_ _hd222321222610_)
                           (_L222691_ _hd222312222586_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L222691_
                              'bind-method!))
                           (___kont228405228406_
                            _L222687_
                            _L222688_
                            _L222689_
                            _L222690_
                            _L222691_)
                           (___kont228409228410_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx228403228404_))
                  (let ((_e222304222559_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx228403228404_))))
                    (let ((_tl222302222564_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222304222559_)))
                          (_hd222303222562_
                           (let ()
                             (declare (not safe))
                             (##car _e222304222559_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222302222564_))
                          (let ((_e222307222567_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222302222564_))))
                            (let ((_tl222305222572_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222307222567_)))
                                  (_hd222306222570_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222307222567_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd222306222570_))
                                  (let ((_e222310222575_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd222306222570_))))
                                    (let ((_tl222308222580_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222310222575_)))
                                          (_hd222309222578_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222310222575_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd222309222578_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd222309222578_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222308222580_))
                                                  (let ((_e222313222583_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222308222580_))))
                                                    (let ((_tl222311222588_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222313222583_)))
                                                          (_hd222312222586_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222313222583_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222311222588_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl222305222572_))
                      (let ((_e222316222591_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl222305222572_))))
                        (let ((_tl222314222596_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222316222591_)))
                              (_hd222315222594_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222316222591_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd222315222594_))
                              (let ((_e222319222599_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd222315222594_))))
                                (let ((_tl222317222604_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222319222599_)))
                                      (_hd222318222602_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222319222599_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd222318222602_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd222318222602_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl222317222604_))
                                              (let ((_e222322222607_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl222317222604_))))
                                                (let ((_tl222320222612_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222322222607_)))
                                                      (_hd222321222610_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222322222607_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222320222612_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl222314222596_))
                                                          (let ((_e222325222615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl222314222596_))))
                    (let ((_tl222323222620_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222325222615_)))
                          (_hd222324222618_
                           (let ()
                             (declare (not safe))
                             (##car _e222325222615_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd222324222618_))
                          (let ((_e222328222623_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd222324222618_))))
                            (let ((_tl222326222628_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222328222623_)))
                                  (_hd222327222626_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222328222623_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd222327222626_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd222327222626_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl222326222628_))
                                          (let ((_e222331222631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl222326222628_))))
                                            (let ((_tl222329222636_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e222331222631_)))
                                                  (_hd222330222634_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e222331222631_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl222329222636_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl222323222620_))
                                                      (let ((_e222334222639_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl222323222620_))))
                (let ((_tl222332222644_
                       (let () (declare (not safe)) (##cdr _e222334222639_)))
                      (_hd222333222642_
                       (let () (declare (not safe)) (##car _e222334222639_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222333222642_))
                      (let ((_e222337222647_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222333222642_))))
                        (let ((_tl222335222652_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222337222647_)))
                              (_hd222336222650_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222337222647_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd222336222650_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd222336222650_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222335222652_))
                                      (let ((_e222340222655_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222335222652_))))
                                        (let ((_tl222338222660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222340222655_)))
                                              (_hd222339222658_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222340222655_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222338222660_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222332222644_))
                                                  (let ((_e222343222663_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222332222644_))))
                                                    (let ((_tl222341222668_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222343222663_)))
                                                          (_hd222342222666_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222343222663_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd222342222666_))
                                                          (let ((_e222346222671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd222342222666_))))
                    (let ((_tl222344222676_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222346222671_)))
                          (_hd222345222674_
                           (let ()
                             (declare (not safe))
                             (##car _e222346222671_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd222345222674_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd222345222674_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222344222676_))
                                  (let ((_e222349222679_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222344222676_))))
                                    (let ((_tl222347222684_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222349222679_)))
                                          (_hd222348222682_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222349222679_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222347222684_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222341222668_))
                                              (___match228538228539_
                                               _e222304222559_
                                               _hd222303222562_
                                               _tl222302222564_
                                               _e222307222567_
                                               _hd222306222570_
                                               _tl222305222572_
                                               _e222310222575_
                                               _hd222309222578_
                                               _tl222308222580_
                                               _e222313222583_
                                               _hd222312222586_
                                               _tl222311222588_
                                               _e222316222591_
                                               _hd222315222594_
                                               _tl222314222596_
                                               _e222319222599_
                                               _hd222318222602_
                                               _tl222317222604_
                                               _e222322222607_
                                               _hd222321222610_
                                               _tl222320222612_
                                               _e222325222615_
                                               _hd222324222618_
                                               _tl222323222620_
                                               _e222328222623_
                                               _hd222327222626_
                                               _tl222326222628_
                                               _e222331222631_
                                               _hd222330222634_
                                               _tl222329222636_
                                               _e222334222639_
                                               _hd222333222642_
                                               _tl222332222644_
                                               _e222337222647_
                                               _hd222336222650_
                                               _tl222335222652_
                                               _e222340222655_
                                               _hd222339222658_
                                               _tl222338222660_
                                               _e222343222663_
                                               _hd222342222666_
                                               _tl222341222668_
                                               _e222346222671_
                                               _hd222345222674_
                                               _tl222344222676_
                                               _e222349222679_
                                               _hd222348222682_
                                               _tl222347222684_)
                                              (___kont228409228410_))
                                          (___kont228409228410_))))
                                  (___kont228409228410_))
                              (___kont228409228410_))
                          (___kont228409228410_))))
                  (___kont228409228410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222332222644_))
                                                      (if (let ((__tmp228716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp228716 'bind-method!))
                  (let ((_L222513_ _hd222339222658_)
                        (_L222514_ _hd222330222634_)
                        (_L222515_ _hd222321222610_)
                        (_L222516_ _hd222312222586_))
                    (___kont228407228408_
                     _L222513_
                     _L222514_
                     _L222515_
                     _L222516_))
                  (___kont228409228410_))
              (___kont228409228410_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228409228410_))))
                                      (___kont228409228410_))
                                  (___kont228409228410_))
                              (___kont228409228410_))))
                      (___kont228409228410_))))
              (___kont228409228410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228409228410_))))
                                          (___kont228409228410_))
                                      (___kont228409228410_))
                                  (___kont228409228410_))))
                          (___kont228409228410_))))
                  (___kont228409228410_))
              (___kont228409228410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228409228410_))
                                          (___kont228409228410_))
                                      (___kont228409228410_))))
                              (___kont228409228410_))))
                      (___kont228409228410_))
                  (___kont228409228410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228409228410_))
                                              (___kont228409228410_))
                                          (___kont228409228410_))))
                                  (___kont228409228410_))))
                          (___kont228409228410_))))
                  (___kont228409228410_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx222238_ _id222239_ _new-id222240_)
        (let* ((_g222242222255_
                (lambda (_g222243222252_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222243222252_))))
               (_g222241222288_
                (lambda (_g222243222258_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222243222258_))
                      (let ((_e222247222260_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222243222258_))))
                        (let ((_hd222246222263_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222247222260_)))
                              (_tl222245222265_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222247222260_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222245222265_))
                              (let ((_e222250222268_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222245222265_))))
                                (let ((_hd222249222271_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222250222268_)))
                                      (_tl222248222273_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222250222268_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222248222273_))
                                      ((lambda (_L222276_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L222276_
                                                _id222239_))
                                             (let ((__tmp228717
                                                    (let ((__tmp228718
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id222240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp228718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp228717
                                                _stx222238_))
                                             _stx222238_))
                                       _hd222249222271_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222242222255_ _g222243222258_)))))
                              (let ()
                                (declare (not safe))
                                (_g222242222255_ _g222243222258_)))))
                      (let ()
                        (declare (not safe))
                        (_g222242222255_ _g222243222258_))))))
          (declare (not safe))
          (_g222241222288_ _stx222238_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx222179_ _subst222180_)
        (let* ((_g222182222195_
                (lambda (_g222183222192_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222183222192_))))
               (_g222181222235_
                (lambda (_g222183222198_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222183222198_))
                      (let ((_e222187222200_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222183222198_))))
                        (let ((_hd222186222203_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222187222200_)))
                              (_tl222185222205_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222187222200_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222185222205_))
                              (let ((_e222190222208_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222185222205_))))
                                (let ((_hd222189222211_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222190222208_)))
                                      (_tl222188222213_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222190222208_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222188222213_))
                                      ((lambda (_L222216_)
                                         (let ((_$e222230_
                                                (let ((__tmp228719
                                                       (lambda (_sub222228_)
                                                         (let ((__tmp228720
                                                                (car _sub222228_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L222216_
                                                            __tmp228720)))))
                                                  (declare (not safe))
                                                  (find __tmp228719
                                                        _subst222180_))))
                                           (if _$e222230_
                                               ((lambda (_sub222233_)
                                                  (let ((__tmp228721
                                                         (let ((__tmp228722
                                                                (let ((__tmp228723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub222233_)))
                          (declare (not safe))
                          (cons __tmp228723 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp228722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp228721
                                                     _stx222179_)))
                                                _$e222230_)
                                               _stx222179_)))
                                       _hd222189222211_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222182222195_ _g222183222198_)))))
                              (let ()
                                (declare (not safe))
                                (_g222182222195_ _g222183222198_)))))
                      (let ()
                        (declare (not safe))
                        (_g222182222195_ _g222183222198_))))))
          (declare (not safe))
          (_g222181222235_ _stx222179_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx222107_ _id222108_ _new-id222109_)
        (let* ((_g222111222128_
                (lambda (_g222112222125_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222112222125_))))
               (_g222110222176_
                (lambda (_g222112222131_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222112222131_))
                      (let ((_e222117222133_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222112222131_))))
                        (let ((_hd222116222136_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222117222133_)))
                              (_tl222115222138_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222117222133_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222115222138_))
                              (let ((_e222120222141_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222115222138_))))
                                (let ((_hd222119222144_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222120222141_)))
                                      (_tl222118222146_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222120222141_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222118222146_))
                                      (let ((_e222123222149_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222118222146_))))
                                        (let ((_hd222122222152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222123222149_)))
                                              (_tl222121222154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222123222149_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222121222154_))
                                              ((lambda (_L222157_ _L222158_)
                                                 (let ((_new-expr222173_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L222157_
                                                           _id222108_
                                                           _new-id222109_)))
                                                       (_new-xid222174_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L222158_
                                                               _id222108_))
                                                            _new-id222109_
                                                            _L222158_)))
                                                   (let ((__tmp228724
                                                          (let ((__tmp228725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp228726
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr222173_ '()))))
                           (declare (not safe))
                           (cons _new-xid222174_ __tmp228726))))
                    (declare (not safe))
                    (cons '%#set! __tmp228725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp228724
                                                      _stx222107_))))
                                               _hd222122222152_
                                               _hd222119222144_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222111222128_
                                                 _g222112222131_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222111222128_ _g222112222131_)))))
                              (let ()
                                (declare (not safe))
                                (_g222111222128_ _g222112222131_)))))
                      (let ()
                        (declare (not safe))
                        (_g222111222128_ _g222112222131_))))))
          (declare (not safe))
          (_g222110222176_ _stx222107_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx222031_ _subst222032_)
        (let* ((_g222034222051_
                (lambda (_g222035222048_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222035222048_))))
               (_g222033222104_
                (lambda (_g222035222054_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222035222054_))
                      (let ((_e222040222056_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222035222054_))))
                        (let ((_hd222039222059_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222040222056_)))
                              (_tl222038222061_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222040222056_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222038222061_))
                              (let ((_e222043222064_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222038222061_))))
                                (let ((_hd222042222067_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222043222064_)))
                                      (_tl222041222069_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222043222064_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222041222069_))
                                      (let ((_e222046222072_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222041222069_))))
                                        (let ((_hd222045222075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222046222072_)))
                                              (_tl222044222077_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222046222072_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222044222077_))
                                              ((lambda (_L222080_ _L222081_)
                                                 (let ((_new-expr222101_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L222080_
                                                           _subst222032_)))
                                                       (_new-xid222102_
                                                        (let ((_$e222098_
                                                               (let ((__tmp228727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub222096_)
                                (let ((__tmp228728 (car _sub222096_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L222081_
                                   __tmp228728)))))
                         (declare (not safe))
                         (find __tmp228727 _subst222032_))))
                  (if _$e222098_ (cdr _$e222098_) _L222081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp228729
                                                          (let ((__tmp228730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp228731
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr222101_ '()))))
                           (declare (not safe))
                           (cons _new-xid222102_ __tmp228731))))
                    (declare (not safe))
                    (cons '%#set! __tmp228730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp228729
                                                      _stx222031_))))
                                               _hd222045222075_
                                               _hd222042222067_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222034222051_
                                                 _g222035222054_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222034222051_ _g222035222054_)))))
                              (let ()
                                (declare (not safe))
                                (_g222034222051_ _g222035222054_)))))
                      (let ()
                        (declare (not safe))
                        (_g222034222051_ _g222035222054_))))))
          (declare (not safe))
          (_g222033222104_ _stx222031_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx221977_ _ht221978_)
        (let* ((_g221980221993_
                (lambda (_g221981221990_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221981221990_))))
               (_g221979222028_
                (lambda (_g221981221996_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221981221996_))
                      (let ((_e221985221998_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221981221996_))))
                        (let ((_hd221984222001_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221985221998_)))
                              (_tl221983222003_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221985221998_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221983222003_))
                              (let ((_e221988222006_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221983222003_))))
                                (let ((_hd221987222009_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221988222006_)))
                                      (_tl221986222011_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221988222006_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221986222011_))
                                      ((lambda (_L222014_)
                                         (let ((_eid222026_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L222014_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht221978_
                                            _eid222026_
                                            1+
                                            '0)))
                                       _hd221987222009_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221980221993_ _g221981221996_)))))
                              (let ()
                                (declare (not safe))
                                (_g221980221993_ _g221981221996_)))))
                      (let ()
                        (declare (not safe))
                        (_g221980221993_ _g221981221996_))))))
          (declare (not safe))
          (_g221979222028_ _stx221977_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx221907_ _ht221908_)
        (let* ((_g221910221927_
                (lambda (_g221911221924_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221911221924_))))
               (_g221909221974_
                (lambda (_g221911221930_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221911221930_))
                      (let ((_e221916221932_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221911221930_))))
                        (let ((_hd221915221935_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221916221932_)))
                              (_tl221914221937_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221916221932_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221914221937_))
                              (let ((_e221919221940_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221914221937_))))
                                (let ((_hd221918221943_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221919221940_)))
                                      (_tl221917221945_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221919221940_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221917221945_))
                                      (let ((_e221922221948_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221917221945_))))
                                        (let ((_hd221921221951_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221922221948_)))
                                              (_tl221920221953_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221922221948_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221920221953_))
                                              ((lambda (_L221956_ _L221957_)
                                                 (let ((_eid221972_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L221957_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht221908_
                                                      _eid221972_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L221956_
                                                      _ht221908_))))
                                               _hd221921221951_
                                               _hd221918221943_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221910221927_
                                                 _g221911221930_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221910221927_ _g221911221930_)))))
                              (let ()
                                (declare (not safe))
                                (_g221910221927_ _g221911221930_)))))
                      (let ()
                        (declare (not safe))
                        (_g221910221927_ _g221911221930_))))))
          (declare (not safe))
          (_g221909221974_ _stx221907_))))
    (define gxc#find-body%
      (lambda (_stx221820_ _arg221821_)
        (let* ((_g221823221842_
                (lambda (_g221824221839_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221824221839_))))
               (_g221822221904_
                (lambda (_g221824221845_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221824221845_))
                      (let ((_e221828221847_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221824221845_))))
                        (let ((_hd221827221850_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221828221847_)))
                              (_tl221826221852_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221828221847_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221826221852_))
                              (let ((_g228732_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221826221852_
                                        '0))))
                                (begin
                                  (let ((_g228733_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228732_)
                                               (##vector-length _g228732_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228733_ 2)))
                                        (error "Context expects 2 values"
                                               _g228733_)))
                                  (let ((_target221829221855_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228732_ 0)))
                                        (_tl221831221857_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228732_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221831221857_))
                                        (letrec ((_loop221832221860_
                                                  (lambda (_hd221830221863_
                                                           _expr221836221865_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221830221863_))
                                                        (let ((_e221833221868_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221830221863_))))
                  (let ((_lp-hd221834221871_
                         (let () (declare (not safe)) (##car _e221833221868_)))
                        (_lp-tl221835221873_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221833221868_))))
                    (let ((__tmp228737
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd221834221871_ _expr221836221865_))))
                      (declare (not safe))
                      (_loop221832221860_ _lp-tl221835221873_ __tmp228737))))
                (let ((_expr221837221876_ (reverse _expr221836221865_)))
                  ((lambda (_L221879_)
                     (let ((__tmp228736
                            (lambda (_g221892221894_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221892221894_
                                 _arg221821_))))
                           (__tmp228734
                            (let ((__tmp228735
                                   (lambda (_g221896221899_ _g221897221901_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221896221899_
                                             _g221897221901_)))))
                              (declare (not safe))
                              (foldr1 __tmp228735 '() _L221879_))))
                       (declare (not safe))
                       (ormap1 __tmp228736 __tmp228734)))
                   _expr221837221876_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221832221860_
                                             _target221829221855_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221823221842_
                                           _g221824221845_))))))
                              (let ()
                                (declare (not safe))
                                (_g221823221842_ _g221824221845_)))))
                      (let ()
                        (declare (not safe))
                        (_g221823221842_ _g221824221845_))))))
          (declare (not safe))
          (_g221822221904_ _stx221820_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx221752_ _arg221753_)
        (let* ((_g221755221772_
                (lambda (_g221756221769_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221756221769_))))
               (_g221754221817_
                (lambda (_g221756221775_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221756221775_))
                      (let ((_e221761221777_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221756221775_))))
                        (let ((_hd221760221780_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221761221777_)))
                              (_tl221759221782_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221761221777_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221759221782_))
                              (let ((_e221764221785_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221759221782_))))
                                (let ((_hd221763221788_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221764221785_)))
                                      (_tl221762221790_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221764221785_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221762221790_))
                                      (let ((_e221767221793_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221762221790_))))
                                        (let ((_hd221766221796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221767221793_)))
                                              (_tl221765221798_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221767221793_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221765221798_))
                                              ((lambda (_L221801_ _L221802_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221801_
                                                    _arg221753_)))
                                               _hd221766221796_
                                               _hd221763221788_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221755221772_
                                                 _g221756221775_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221755221772_ _g221756221775_)))))
                              (let ()
                                (declare (not safe))
                                (_g221755221772_ _g221756221775_)))))
                      (let ()
                        (declare (not safe))
                        (_g221755221772_ _g221756221775_))))))
          (declare (not safe))
          (_g221754221817_ _stx221752_))))
    (define gxc#find-lambda%
      (lambda (_stx221684_ _arg221685_)
        (let* ((_g221687221704_
                (lambda (_g221688221701_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221688221701_))))
               (_g221686221749_
                (lambda (_g221688221707_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221688221707_))
                      (let ((_e221693221709_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221688221707_))))
                        (let ((_hd221692221712_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221693221709_)))
                              (_tl221691221714_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221693221709_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221691221714_))
                              (let ((_e221696221717_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221691221714_))))
                                (let ((_hd221695221720_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221696221717_)))
                                      (_tl221694221722_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221696221717_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221694221722_))
                                      (let ((_e221699221725_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221694221722_))))
                                        (let ((_hd221698221728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221699221725_)))
                                              (_tl221697221730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221699221725_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221697221730_))
                                              ((lambda (_L221733_ _L221734_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221733_
                                                    _arg221685_)))
                                               _hd221698221728_
                                               _hd221695221720_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221687221704_
                                                 _g221688221707_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221687221704_ _g221688221707_)))))
                              (let ()
                                (declare (not safe))
                                (_g221687221704_ _g221688221707_)))))
                      (let ()
                        (declare (not safe))
                        (_g221687221704_ _g221688221707_))))))
          (declare (not safe))
          (_g221686221749_ _stx221684_))))
    (define gxc#find-case-lambda%
      (lambda (_stx221566_ _arg221567_)
        (let* ((_g221569221597_
                (lambda (_g221570221594_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221570221594_))))
               (_g221568221681_
                (lambda (_g221570221600_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221570221600_))
                      (let ((_e221575221602_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221570221600_))))
                        (let ((_hd221574221605_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221575221602_)))
                              (_tl221573221607_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221575221602_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221573221607_))
                              (let ((_g228738_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221573221607_
                                        '0))))
                                (begin
                                  (let ((_g228739_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228738_)
                                               (##vector-length _g228738_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228739_ 2)))
                                        (error "Context expects 2 values"
                                               _g228739_)))
                                  (let ((_target221576221610_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228738_ 0)))
                                        (_tl221578221612_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228738_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221578221612_))
                                        (letrec ((_loop221579221615_
                                                  (lambda (_hd221577221618_
                                                           _body221583221620_
                                                           _hd221584221622_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221577221618_))
                                                        (let ((_e221580221625_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221577221618_))))
                  (let ((_lp-hd221581221628_
                         (let () (declare (not safe)) (##car _e221580221625_)))
                        (_lp-tl221582221630_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221580221625_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd221581221628_))
                        (let ((_e221589221633_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd221581221628_))))
                          (let ((_hd221588221636_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221589221633_)))
                                (_tl221587221638_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221589221633_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221587221638_))
                                (let ((_e221592221641_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221587221638_))))
                                  (let ((_hd221591221644_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221592221641_)))
                                        (_tl221590221646_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221592221641_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221590221646_))
                                        (let ((__tmp228744
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221591221644_
                                                       _body221583221620_)))
                                              (__tmp228743
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221588221636_
                                                       _hd221584221622_))))
                                          (declare (not safe))
                                          (_loop221579221615_
                                           _lp-tl221582221630_
                                           __tmp228744
                                           __tmp228743))
                                        (let ()
                                          (declare (not safe))
                                          (_g221569221597_ _g221570221600_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221569221597_ _g221570221600_)))))
                        (let ()
                          (declare (not safe))
                          (_g221569221597_ _g221570221600_)))))
                (let ((_body221585221649_ (reverse _body221583221620_))
                      (_hd221586221651_ (reverse _hd221584221622_)))
                  ((lambda (_L221654_ _L221655_)
                     (let ((__tmp228742
                            (lambda (_g221669221671_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221669221671_
                                 _arg221567_))))
                           (__tmp228740
                            (let ((__tmp228741
                                   (lambda (_g221673221676_ _g221674221678_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221673221676_
                                             _g221674221678_)))))
                              (declare (not safe))
                              (foldr1 __tmp228741 '() _L221654_))))
                       (declare (not safe))
                       (ormap1 __tmp228742 __tmp228740)))
                   _body221585221649_
                   _hd221586221651_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221579221615_
                                             _target221576221610_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221569221597_
                                           _g221570221600_))))))
                              (let ()
                                (declare (not safe))
                                (_g221569221597_ _g221570221600_)))))
                      (let ()
                        (declare (not safe))
                        (_g221569221597_ _g221570221600_))))))
          (declare (not safe))
          (_g221568221681_ _stx221566_))))
    (define gxc#find-let-values%
      (lambda (_stx221416_ _arg221417_)
        (let* ((_g221419221454_
                (lambda (_g221420221451_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221420221451_))))
               (_g221418221563_
                (lambda (_g221420221457_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221420221457_))
                      (let ((_e221426221459_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221420221457_))))
                        (let ((_hd221425221462_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221426221459_)))
                              (_tl221424221464_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221426221459_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221424221464_))
                              (let ((_e221429221467_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221424221464_))))
                                (let ((_hd221428221470_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221429221467_)))
                                      (_tl221427221472_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221429221467_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd221428221470_))
                                      (let ((_g228745_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd221428221470_
                                                '0))))
                                        (begin
                                          (let ((_g228746_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228745_)
                                                       (##vector-length
                                                        _g228745_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228746_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228746_)))
                                          (let ((_target221430221475_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g228745_ 0)))
                                                (_tl221432221477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g228745_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221432221477_))
                                                (letrec ((_loop221433221480_
                                                          (lambda (_hd221431221483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr221437221485_
                           _bind221438221487_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd221431221483_))
                        (let ((_e221434221490_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd221431221483_))))
                          (let ((_lp-hd221435221493_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221434221490_)))
                                (_lp-tl221436221495_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221434221490_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd221435221493_))
                                (let ((_e221443221498_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd221435221493_))))
                                  (let ((_hd221442221501_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221443221498_)))
                                        (_tl221441221503_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221443221498_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221441221503_))
                                        (let ((_e221446221506_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221441221503_))))
                                          (let ((_hd221445221509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221446221506_)))
                                                (_tl221444221511_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221446221506_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221444221511_))
                                                (let ((__tmp228751
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221445221509_
                                                               _expr221437221485_)))
                                                      (__tmp228750
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221442221501_
                                                               _bind221438221487_))))
                                                  (declare (not safe))
                                                  (_loop221433221480_
                                                   _lp-tl221436221495_
                                                   __tmp228751
                                                   __tmp228750))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221419221454_
                                                   _g221420221457_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g221419221454_ _g221420221457_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221419221454_ _g221420221457_)))))
                        (let ((_expr221439221514_ (reverse _expr221437221485_))
                              (_bind221440221516_
                               (reverse _bind221438221487_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221427221472_))
                              (let ((_e221449221519_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221427221472_))))
                                (let ((_hd221448221522_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221449221519_)))
                                      (_tl221447221524_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221449221519_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221447221524_))
                                      ((lambda (_L221527_ _L221528_ _L221529_)
                                         (let ((_$e221560_
                                                (let ((__tmp228749
                                                       (lambda (_g221548221550_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g221548221550_
                                                            _arg221417_))))
                                                      (__tmp228747
                                                       (let ((__tmp228748
                                                              (lambda (_g221552221555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g221553221557_)
                        (let ()
                          (declare (not safe))
                          (cons _g221552221555_ _g221553221557_)))))
                 (declare (not safe))
                 (foldr1 __tmp228748 '() _L221528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp228749
                                                          __tmp228747))))
                                           (if _$e221560_
                                               _$e221560_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L221527_
                                                  _arg221417_)))))
                                       _hd221448221522_
                                       _expr221439221514_
                                       _bind221440221516_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221419221454_ _g221420221457_)))))
                              (let ()
                                (declare (not safe))
                                (_g221419221454_ _g221420221457_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop221433221480_
                                                     _target221430221475_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221419221454_
                                                   _g221420221457_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221419221454_ _g221420221457_)))))
                              (let ()
                                (declare (not safe))
                                (_g221419221454_ _g221420221457_)))))
                      (let ()
                        (declare (not safe))
                        (_g221419221454_ _g221420221457_))))))
          (declare (not safe))
          (_g221418221563_ _stx221416_))))
    (define gxc#find-setq%
      (lambda (_stx221348_ _arg221349_)
        (let* ((_g221351221368_
                (lambda (_g221352221365_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221352221365_))))
               (_g221350221413_
                (lambda (_g221352221371_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221352221371_))
                      (let ((_e221357221373_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221352221371_))))
                        (let ((_hd221356221376_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221357221373_)))
                              (_tl221355221378_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221357221373_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221355221378_))
                              (let ((_e221360221381_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221355221378_))))
                                (let ((_hd221359221384_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221360221381_)))
                                      (_tl221358221386_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221360221381_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221358221386_))
                                      (let ((_e221363221389_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221358221386_))))
                                        (let ((_hd221362221392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221363221389_)))
                                              (_tl221361221394_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221363221389_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221361221394_))
                                              ((lambda (_L221397_ _L221398_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221397_
                                                    _arg221349_)))
                                               _hd221362221392_
                                               _hd221359221384_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221351221368_
                                                 _g221352221371_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221351221368_ _g221352221371_)))))
                              (let ()
                                (declare (not safe))
                                (_g221351221368_ _g221352221371_)))))
                      (let ()
                        (declare (not safe))
                        (_g221351221368_ _g221352221371_))))))
          (declare (not safe))
          (_g221350221413_ _stx221348_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx221292_ _ids221293_)
        (let* ((_g221295221308_
                (lambda (_g221296221305_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221296221305_))))
               (_g221294221345_
                (lambda (_g221296221311_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221296221311_))
                      (let ((_e221300221313_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221296221311_))))
                        (let ((_hd221299221316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221300221313_)))
                              (_tl221298221318_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221300221313_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221298221318_))
                              (let ((_e221303221321_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221298221318_))))
                                (let ((_hd221302221324_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221303221321_)))
                                      (_tl221301221326_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221303221321_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221301221326_))
                                      ((lambda (_L221329_)
                                         (let ((__tmp228752
                                                (lambda (_g221340221342_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L221329_
                                                     _g221340221342_)))))
                                           (declare (not safe))
                                           (find __tmp228752 _ids221293_)))
                                       _hd221302221324_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221295221308_ _g221296221311_)))))
                              (let ()
                                (declare (not safe))
                                (_g221295221308_ _g221296221311_)))))
                      (let ()
                        (declare (not safe))
                        (_g221295221308_ _g221296221311_))))))
          (declare (not safe))
          (_g221294221345_ _stx221292_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx221216_ _ids221217_)
        (let* ((_g221219221236_
                (lambda (_g221220221233_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221220221233_))))
               (_g221218221289_
                (lambda (_g221220221239_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221220221239_))
                      (let ((_e221225221241_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221220221239_))))
                        (let ((_hd221224221244_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221225221241_)))
                              (_tl221223221246_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221225221241_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221223221246_))
                              (let ((_e221228221249_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221223221246_))))
                                (let ((_hd221227221252_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221228221249_)))
                                      (_tl221226221254_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221228221249_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221226221254_))
                                      (let ((_e221231221257_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221226221254_))))
                                        (let ((_hd221230221260_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221231221257_)))
                                              (_tl221229221262_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221231221257_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221229221262_))
                                              ((lambda (_L221265_ _L221266_)
                                                 (let ((_$e221286_
                                                        (let ((__tmp228753
                                                               (lambda (_g221281221283_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L221266_ _g221281221283_)))))
                  (declare (not safe))
                  (find __tmp228753 _ids221217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e221286_
                                                       _$e221286_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L221265_
                                                          _ids221217_)))))
                                               _hd221230221260_
                                               _hd221227221252_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221219221236_
                                                 _g221220221239_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221219221236_ _g221220221239_)))))
                              (let ()
                                (declare (not safe))
                                (_g221219221236_ _g221220221239_)))))
                      (let ()
                        (declare (not safe))
                        (_g221219221236_ _g221220221239_))))))
          (declare (not safe))
          (_g221218221289_ _stx221216_))))))
