(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710064749)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl114787_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114787_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114787_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114787_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114787_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl114787_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl114783_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114783_ '%#declare gxc#xform-identity))
           _tbl114783_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl114779_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp115033 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl114779_ __tmp115033))
           (let ((__tmp115034 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl114779_ __tmp115034))
           _tbl114779_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl114775_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114775_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114775_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114775_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114775_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114775_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl114775_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl114771_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp115035 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl114771_ __tmp115035))
           (let ((__tmp115036 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl114771_ __tmp115036))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114771_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114771_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114771_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114771_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114771_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl114771_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl114767_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp115037 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl114767_ __tmp115037))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114767_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114767_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114767_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114767_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114767_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114767_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114767_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114767_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114767_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114767_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114767_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114767_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl114767_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx114750_ . _args114752_)
        (let ((__tmp115039
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114752_)
                     (gxc#compile-e__0 _stx114750_)
                     (let ((_arg1114757_ (car _args114752_))
                           (_rest114759_ (cdr _args114752_)))
                       (if (null? _rest114759_)
                           (gxc#compile-e__1 _stx114750_ _arg1114757_)
                           (let ((_arg2114762_ (car _rest114759_))
                                 (_rest114764_ (cdr _rest114759_)))
                             (if (null? _rest114764_)
                                 (gxc#compile-e__2
                                  _stx114750_
                                  _arg1114757_
                                  _arg2114762_)
                                 (apply gxc#compile-e
                                        _stx114750_
                                        _arg1114757_
                                        _arg2114762_
                                        _rest114764_))))))))
              (__tmp115038 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp115039
           gxc#current-compile-methods
           __tmp115038))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl114747_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp115040 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl114747_ __tmp115040))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114747_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114747_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114747_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114747_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114747_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl114747_))))
    (define gxc#apply-collect-methods
      (lambda (_stx114730_ . _args114732_)
        (let ((__tmp115042
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114732_)
                     (gxc#compile-e__0 _stx114730_)
                     (let ((_arg1114737_ (car _args114732_))
                           (_rest114739_ (cdr _args114732_)))
                       (if (null? _rest114739_)
                           (gxc#compile-e__1 _stx114730_ _arg1114737_)
                           (let ((_arg2114742_ (car _rest114739_))
                                 (_rest114744_ (cdr _rest114739_)))
                             (if (null? _rest114744_)
                                 (gxc#compile-e__2
                                  _stx114730_
                                  _arg1114737_
                                  _arg2114742_)
                                 (apply gxc#compile-e
                                        _stx114730_
                                        _arg1114737_
                                        _arg2114742_
                                        _rest114744_))))))))
              (__tmp115041 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp115042
           gxc#current-compile-methods
           __tmp115041))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl114727_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp115043 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl114727_ __tmp115043))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114727_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114727_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114727_ '%#set! gxc#expression-subst-setq%))
           _tbl114727_))))
    (define gxc#apply-expression-subst
      (lambda (_stx114710_ . _args114712_)
        (let ((__tmp115045
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114712_)
                     (gxc#compile-e__0 _stx114710_)
                     (let ((_arg1114717_ (car _args114712_))
                           (_rest114719_ (cdr _args114712_)))
                       (if (null? _rest114719_)
                           (gxc#compile-e__1 _stx114710_ _arg1114717_)
                           (let ((_arg2114722_ (car _rest114719_))
                                 (_rest114724_ (cdr _rest114719_)))
                             (if (null? _rest114724_)
                                 (gxc#compile-e__2
                                  _stx114710_
                                  _arg1114717_
                                  _arg2114722_)
                                 (apply gxc#compile-e
                                        _stx114710_
                                        _arg1114717_
                                        _arg2114722_
                                        _rest114724_))))))))
              (__tmp115044 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp115045
           gxc#current-compile-methods
           __tmp115044))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl114707_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp115046 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl114707_ __tmp115046))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114707_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114707_ '%#set! gxc#expression-subst*-setq%))
           _tbl114707_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx114690_ . _args114692_)
        (let ((__tmp115048
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114692_)
                     (gxc#compile-e__0 _stx114690_)
                     (let ((_arg1114697_ (car _args114692_))
                           (_rest114699_ (cdr _args114692_)))
                       (if (null? _rest114699_)
                           (gxc#compile-e__1 _stx114690_ _arg1114697_)
                           (let ((_arg2114702_ (car _rest114699_))
                                 (_rest114704_ (cdr _rest114699_)))
                             (if (null? _rest114704_)
                                 (gxc#compile-e__2
                                  _stx114690_
                                  _arg1114697_
                                  _arg2114702_)
                                 (apply gxc#compile-e
                                        _stx114690_
                                        _arg1114697_
                                        _arg2114702_
                                        _rest114704_))))))))
              (__tmp115047 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp115048
           gxc#current-compile-methods
           __tmp115047))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl114687_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp115049 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl114687_ __tmp115049))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114687_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114687_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl114687_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl114683_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp115050 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl114683_ __tmp115050))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114683_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114683_ '%#set! gxc#find-var-refs-setq%))
           _tbl114683_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx114666_ . _args114668_)
        (let ((__tmp115052
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114668_)
                     (gxc#compile-e__0 _stx114666_)
                     (let ((_arg1114673_ (car _args114668_))
                           (_rest114675_ (cdr _args114668_)))
                       (if (null? _rest114675_)
                           (gxc#compile-e__1 _stx114666_ _arg1114673_)
                           (let ((_arg2114678_ (car _rest114675_))
                                 (_rest114680_ (cdr _rest114675_)))
                             (if (null? _rest114680_)
                                 (gxc#compile-e__2
                                  _stx114666_
                                  _arg1114673_
                                  _arg2114678_)
                                 (apply gxc#compile-e
                                        _stx114666_
                                        _arg1114673_
                                        _arg2114678_
                                        _rest114680_))))))))
              (__tmp115051 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp115052
           gxc#current-compile-methods
           __tmp115051))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl114663_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp115053 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl114663_ __tmp115053))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114663_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114663_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl114663_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx114646_ . _args114648_)
        (let ((__tmp115055
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114648_)
                     (gxc#compile-e__0 _stx114646_)
                     (let ((_arg1114653_ (car _args114648_))
                           (_rest114655_ (cdr _args114648_)))
                       (if (null? _rest114655_)
                           (gxc#compile-e__1 _stx114646_ _arg1114653_)
                           (let ((_arg2114658_ (car _rest114655_))
                                 (_rest114660_ (cdr _rest114655_)))
                             (if (null? _rest114660_)
                                 (gxc#compile-e__2
                                  _stx114646_
                                  _arg1114653_
                                  _arg2114658_)
                                 (apply gxc#compile-e
                                        _stx114646_
                                        _arg1114653_
                                        _arg2114658_
                                        _rest114660_))))))))
              (__tmp115054 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp115055
           gxc#current-compile-methods
           __tmp115054))))
    (define gxc#xform-identity
      (lambda (_stx114643_ . _args114644_) _stx114643_))
    (define gxc#xform-wrap-source
      (lambda (_stx114640_ _src-stx114641_)
        (let ((__tmp115056
               (let () (declare (not safe)) (gx#stx-source _src-stx114641_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx114640_ __tmp115056))))
    (define gxc#xform-apply-compile-e
      (lambda (_args114627_)
        (lambda (_stx114629_)
          (if (let () (declare (not safe)) (null? _args114627_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx114629_))
              (let ((_arg1114631_ (car _args114627_))
                    (_rest114633_ (cdr _args114627_)))
                (if (let () (declare (not safe)) (null? _rest114633_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx114629_ _arg1114631_))
                    (let ((_arg2114636_ (car _rest114633_))
                          (_rest114638_ (cdr _rest114633_)))
                      (if (let () (declare (not safe)) (null? _rest114638_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx114629_
                             _arg1114631_
                             _arg2114636_))
                          (apply gxc#compile-e
                                 _stx114629_
                                 _arg1114631_
                                 _arg2114636_
                                 _rest114638_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx114586_ . _args114587_)
        (let* ((_g114589114599_
                (lambda (_g114590114596_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114590114596_))))
               (_g114588114624_
                (lambda (_g114590114602_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114590114602_))
                      (let ((_e114592114604_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114590114602_))))
                        (let ((_hd114593114607_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114592114604_)))
                              (_tl114594114609_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114592114604_))))
                          ((lambda (_L114612_)
                             (let* ((_forms114622_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args114587_))
                                          _L114612_))
                                    (__tmp115057
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms114622_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp115057
                                _stx114586_)))
                           _tl114594114609_)))
                      (let ()
                        (declare (not safe))
                        (_g114589114599_ _g114590114602_))))))
          (declare (not safe))
          (_g114588114624_ _stx114586_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx114544_ . _args114545_)
        (let* ((_g114547114557_
                (lambda (_g114548114554_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114548114554_))))
               (_g114546114583_
                (lambda (_g114548114560_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114548114560_))
                      (let ((_e114550114562_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114548114560_))))
                        (let ((_hd114551114565_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114550114562_)))
                              (_tl114552114567_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114550114562_))))
                          ((lambda (_L114570_)
                             (let ((__tmp115060
                                    (lambda ()
                                      (let* ((_forms114581_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args114545_))
                                                   _L114570_))
                                             (__tmp115061
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms114581_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp115061
                                         _stx114544_))))
                                   (__tmp115058
                                    (let ((__tmp115059
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp115059 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp115060
                                gx#current-expander-phi
                                __tmp115058)))
                           _tl114552114567_)))
                      (let ()
                        (declare (not safe))
                        (_g114547114557_ _g114548114560_))))))
          (declare (not safe))
          (_g114546114583_ _stx114544_))))
    (define gxc#xform-module%
      (lambda (_stx114472_ . _args114473_)
        (let* ((_g114475114489_
                (lambda (_g114476114486_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114476114486_))))
               (_g114474114541_
                (lambda (_g114476114492_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114476114492_))
                      (let ((_e114479114494_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114476114492_))))
                        (let ((_hd114480114497_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114479114494_)))
                              (_tl114481114499_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114479114494_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114481114499_))
                              (let ((_e114482114502_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114481114499_))))
                                (let ((_hd114483114505_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114482114502_)))
                                      (_tl114484114507_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114482114502_))))
                                  ((lambda (_L114510_ _L114511_)
                                     (let* ((_ctx114524_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L114511_)))
                                            (_code114526_
                                             (##structure-ref
                                              _ctx114524_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code114538_
                                             (let ((__tmp115062
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args114473_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code114526_))
                                                          (let ((_arg1114529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args114473_))
                        (_rest114531_ (cdr _args114473_)))
                    (if (let () (declare (not safe)) (null? _rest114531_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code114526_ _arg1114529_))
                        (let ((_arg2114534_ (car _rest114531_))
                              (_rest114536_ (cdr _rest114531_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest114536_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code114526_
                                 _arg1114529_
                                 _arg2114534_))
                              (apply gxc#compile-e
                                     _code114526_
                                     _arg1114529_
                                     _arg2114534_
                                     _rest114536_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp115062
                                                gx#current-expander-context
                                                _ctx114524_))))
                                       (##structure-set!
                                        _ctx114524_
                                        _code114538_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp115063
                                              (let ((__tmp115064
                                                     (let ((__tmp115065
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code114538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L114511_ __tmp115065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp115064))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp115063
                                          _stx114472_))))
                                   _tl114484114507_
                                   _hd114483114505_)))
                              (let ()
                                (declare (not safe))
                                (_g114475114489_ _g114476114492_)))))
                      (let ()
                        (declare (not safe))
                        (_g114475114489_ _g114476114492_))))))
          (declare (not safe))
          (_g114474114541_ _stx114472_))))
    (define gxc#xform-define-values%
      (lambda (_stx114393_ . _args114394_)
        (let* ((_g114396114413_
                (lambda (_g114397114410_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114397114410_))))
               (_g114395114469_
                (lambda (_g114397114416_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114397114416_))
                      (let ((_e114400114418_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114397114416_))))
                        (let ((_hd114401114421_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114400114418_)))
                              (_tl114402114423_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114400114418_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114402114423_))
                              (let ((_e114403114426_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114402114423_))))
                                (let ((_hd114404114429_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114403114426_)))
                                      (_tl114405114431_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114403114426_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114405114431_))
                                      (let ((_e114406114434_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114405114431_))))
                                        (let ((_hd114407114437_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114406114434_)))
                                              (_tl114408114439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114406114434_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114408114439_))
                                              ((lambda (_L114442_ _L114443_)
                                                 (let* ((_expr114467_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args114394_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L114442_))
                     (let ((_arg1114458_ (car _args114394_))
                           (_rest114460_ (cdr _args114394_)))
                       (if (let () (declare (not safe)) (null? _rest114460_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L114442_ _arg1114458_))
                           (let ((_arg2114463_ (car _rest114460_))
                                 (_rest114465_ (cdr _rest114460_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest114465_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L114442_
                                    _arg1114458_
                                    _arg2114463_))
                                 (apply gxc#compile-e
                                        _L114442_
                                        _arg1114458_
                                        _arg2114463_
                                        _rest114465_)))))))
                (__tmp115066
                 (let ((__tmp115067
                        (let ((__tmp115068
                               (let ()
                                 (declare (not safe))
                                 (cons _expr114467_ '()))))
                          (declare (not safe))
                          (cons _L114443_ __tmp115068))))
                   (declare (not safe))
                   (cons '%#define-values __tmp115067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp115066
                                                    _stx114393_)))
                                               _hd114407114437_
                                               _hd114404114429_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114396114413_
                                                 _g114397114416_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114396114413_ _g114397114416_)))))
                              (let ()
                                (declare (not safe))
                                (_g114396114413_ _g114397114416_)))))
                      (let ()
                        (declare (not safe))
                        (_g114396114413_ _g114397114416_))))))
          (declare (not safe))
          (_g114395114469_ _stx114393_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx114313_ . _args114314_)
        (let* ((_g114316114333_
                (lambda (_g114317114330_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114317114330_))))
               (_g114315114390_
                (lambda (_g114317114336_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114317114336_))
                      (let ((_e114320114338_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114317114336_))))
                        (let ((_hd114321114341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114320114338_)))
                              (_tl114322114343_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114320114338_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114322114343_))
                              (let ((_e114323114346_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114322114343_))))
                                (let ((_hd114324114349_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114323114346_)))
                                      (_tl114325114351_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114323114346_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114325114351_))
                                      (let ((_e114326114354_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114325114351_))))
                                        (let ((_hd114327114357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114326114354_)))
                                              (_tl114328114359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114326114354_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114328114359_))
                                              ((lambda (_L114362_ _L114363_)
                                                 (let ((__tmp115071
                                                        (lambda ()
                                                          (let* ((_expr114388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args114314_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L114362_))
                              (let ((_arg1114379_ (car _args114314_))
                                    (_rest114381_ (cdr _args114314_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest114381_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L114362_
                                       _arg1114379_))
                                    (let ((_arg2114384_ (car _rest114381_))
                                          (_rest114386_ (cdr _rest114381_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest114386_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L114362_
                                             _arg1114379_
                                             _arg2114384_))
                                          (apply gxc#compile-e
                                                 _L114362_
                                                 _arg1114379_
                                                 _arg2114384_
                                                 _rest114386_)))))))
                         (__tmp115072
                          (let ((__tmp115073
                                 (let ((__tmp115074
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr114388_ '()))))
                                   (declare (not safe))
                                   (cons _L114363_ __tmp115074))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp115073))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp115072 _stx114313_))))
               (__tmp115069
                (let ((__tmp115070 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp115070 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp115071
                                                    gx#current-expander-phi
                                                    __tmp115069)))
                                               _hd114327114357_
                                               _hd114324114349_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114316114333_
                                                 _g114317114336_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114316114333_ _g114317114336_)))))
                              (let ()
                                (declare (not safe))
                                (_g114316114333_ _g114317114336_)))))
                      (let ()
                        (declare (not safe))
                        (_g114316114333_ _g114317114336_))))))
          (declare (not safe))
          (_g114315114390_ _stx114313_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx114234_ . _args114235_)
        (let* ((_g114237114254_
                (lambda (_g114238114251_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114238114251_))))
               (_g114236114310_
                (lambda (_g114238114257_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114238114257_))
                      (let ((_e114241114259_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114238114257_))))
                        (let ((_hd114242114262_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114241114259_)))
                              (_tl114243114264_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114241114259_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114243114264_))
                              (let ((_e114244114267_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114243114264_))))
                                (let ((_hd114245114270_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114244114267_)))
                                      (_tl114246114272_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114244114267_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114246114272_))
                                      (let ((_e114247114275_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114246114272_))))
                                        (let ((_hd114248114278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114247114275_)))
                                              (_tl114249114280_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114247114275_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114249114280_))
                                              ((lambda (_L114283_ _L114284_)
                                                 (let* ((_expr114308_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args114235_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L114283_))
                     (let ((_arg1114299_ (car _args114235_))
                           (_rest114301_ (cdr _args114235_)))
                       (if (let () (declare (not safe)) (null? _rest114301_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L114283_ _arg1114299_))
                           (let ((_arg2114304_ (car _rest114301_))
                                 (_rest114306_ (cdr _rest114301_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest114306_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L114283_
                                    _arg1114299_
                                    _arg2114304_))
                                 (apply gxc#compile-e
                                        _L114283_
                                        _arg1114299_
                                        _arg2114304_
                                        _rest114306_)))))))
                (__tmp115075
                 (let ((__tmp115076
                        (let ((__tmp115077
                               (let ()
                                 (declare (not safe))
                                 (cons _expr114308_ '()))))
                          (declare (not safe))
                          (cons _L114284_ __tmp115077))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp115076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp115075
                                                    _stx114234_)))
                                               _hd114248114278_
                                               _hd114245114270_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114237114254_
                                                 _g114238114257_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114237114254_ _g114238114257_)))))
                              (let ()
                                (declare (not safe))
                                (_g114237114254_ _g114238114257_)))))
                      (let ()
                        (declare (not safe))
                        (_g114237114254_ _g114238114257_))))))
          (declare (not safe))
          (_g114236114310_ _stx114234_))))
    (define gxc#xform-lambda%
      (lambda (_stx114177_ . _args114178_)
        (let* ((_g114180114194_
                (lambda (_g114181114191_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114181114191_))))
               (_g114179114231_
                (lambda (_g114181114197_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114181114197_))
                      (let ((_e114184114199_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114181114197_))))
                        (let ((_hd114185114202_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114184114199_)))
                              (_tl114186114204_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114184114199_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114186114204_))
                              (let ((_e114187114207_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114186114204_))))
                                (let ((_hd114188114210_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114187114207_)))
                                      (_tl114189114212_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114187114207_))))
                                  ((lambda (_L114215_ _L114216_)
                                     (let* ((_body114229_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args114178_))
                                                  _L114215_))
                                            (__tmp115078
                                             (let ((__tmp115079
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L114216_
                                                            _body114229_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp115079))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp115078
                                        _stx114177_)))
                                   _tl114189114212_
                                   _hd114188114210_)))
                              (let ()
                                (declare (not safe))
                                (_g114180114194_ _g114181114197_)))))
                      (let ()
                        (declare (not safe))
                        (_g114180114194_ _g114181114197_))))))
          (declare (not safe))
          (_g114179114231_ _stx114177_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx114090_ . _args114091_)
        (letrec ((_clause-e114093_
                  (lambda (_clause114134_)
                    (let* ((_g114136114147_
                            (lambda (_g114137114144_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g114137114144_))))
                           (_g114135114174_
                            (lambda (_g114137114150_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g114137114150_))
                                  (let ((_e114140114152_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g114137114150_))))
                                    (let ((_hd114141114155_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e114140114152_)))
                                          (_tl114142114157_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e114140114152_))))
                                      ((lambda (_L114160_ _L114161_)
                                         (let ((_body114172_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args114091_))
                                                     _L114160_)))
                                           (declare (not safe))
                                           (cons _L114161_ _body114172_)))
                                       _tl114142114157_
                                       _hd114141114155_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g114136114147_ _g114137114150_))))))
                      (declare (not safe))
                      (_g114135114174_ _clause114134_)))))
          (let* ((_g114095114105_
                  (lambda (_g114096114102_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g114096114102_))))
                 (_g114094114131_
                  (lambda (_g114096114108_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g114096114108_))
                        (let ((_e114098114110_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g114096114108_))))
                          (let ((_hd114099114113_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114098114110_)))
                                (_tl114100114115_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114098114110_))))
                            ((lambda (_L114118_)
                               (let* ((_clauses114129_
                                       (map _clause-e114093_ _L114118_))
                                      (__tmp115080
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses114129_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp115080
                                  _stx114090_)))
                             _tl114100114115_)))
                        (let ()
                          (declare (not safe))
                          (_g114095114105_ _g114096114108_))))))
            (declare (not safe))
            (_g114094114131_ _stx114090_)))))
    (define gxc#xform-let-values%
      (lambda (_stx113884_ . _args113885_)
        (let* ((_g113887113920_
                (lambda (_g113888113917_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113888113917_))))
               (_g113886114087_
                (lambda (_g113888113923_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113888113923_))
                      (let ((_e113893113925_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113888113923_))))
                        (let ((_hd113894113928_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113893113925_)))
                              (_tl113895113930_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113893113925_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl113895113930_))
                              (let ((_e113896113933_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl113895113930_))))
                                (let ((_hd113897113936_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113896113933_)))
                                      (_tl113898113938_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113896113933_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd113897113936_))
                                      (let ((_g115081_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd113897113936_
                                                '0))))
                                        (begin
                                          (let ((_g115082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g115081_)
                                                       (##vector-length
                                                        _g115081_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g115082_ 2)))
                                                (error "Context expects 2 values"
                                                       _g115082_)))
                                          (let ((_target113899113941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g115081_ 0)))
                                                (_tl113901113943_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g115081_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl113901113943_))
                                                (letrec ((_loop113902113946_
                                                          (lambda (_hd113900113949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr113906113951_
                           _hd113907113953_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd113900113949_))
                        (let ((_e113903113956_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd113900113949_))))
                          (let ((_lp-hd113904113959_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e113903113956_)))
                                (_lp-tl113905113961_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e113903113956_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd113904113959_))
                                (let ((_e113910113964_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd113904113959_))))
                                  (let ((_hd113911113967_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e113910113964_)))
                                        (_tl113912113969_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e113910113964_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl113912113969_))
                                        (let ((_e113913113972_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl113912113969_))))
                                          (let ((_hd113914113975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e113913113972_)))
                                                (_tl113915113977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e113913113972_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl113915113977_))
                                                (let ((__tmp115084
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd113914113975_
                                                               _expr113906113951_)))
                                                      (__tmp115083
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd113911113967_
                                                               _hd113907113953_))))
                                                  (declare (not safe))
                                                  (_loop113902113946_
                                                   _lp-tl113905113961_
                                                   __tmp115084
                                                   __tmp115083))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g113887113920_
                                                   _g113888113923_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g113887113920_ _g113888113923_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g113887113920_ _g113888113923_)))))
                        (let ((_expr113908113980_ (reverse _expr113906113951_))
                              (_hd113909113982_ (reverse _hd113907113953_)))
                          ((lambda (_L113985_ _L113986_ _L113987_ _L113988_)
                             (let* ((_g114007114023_
                                     (lambda (_g114008114020_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g114008114020_))))
                                    (_g114006114077_
                                     (lambda (_g114008114026_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g114008114026_))
                                           (let ((_g115085_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g114008114026_
                                                     '0))))
                                             (begin
                                               (let ((_g115086_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g115085_)
                                                            (##vector-length
                                                             _g115085_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g115086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g115086_)))
                                               (let ((_target114010114028_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g115085_
                                                         0)))
                                                     (_tl114012114030_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g115085_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl114012114030_))
                                                     (letrec ((_loop114013114033_
                                                               (lambda (_hd114011114036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr114017114038_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd114011114036_))
                             (let ((_e114014114041_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd114011114036_))))
                               (let ((_lp-hd114015114044_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e114014114041_)))
                                     (_lp-tl114016114046_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e114014114041_))))
                                 (let ((__tmp115087
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd114015114044_
                                                _expr114017114038_))))
                                   (declare (not safe))
                                   (_loop114013114033_
                                    _lp-tl114016114046_
                                    __tmp115087))))
                             (let ((_expr114018114049_
                                    (reverse _expr114017114038_)))
                               ((lambda (_L114052_)
                                  (let ()
                                    (let* ((_body114065_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args113885_))
                                                 _L113985_))
                                           (__tmp115088
                                            (let ((__tmp115089
                                                   (let ((__tmp115090
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L114052_
                                                               _L113987_))
                                                            (let ((__tmp115091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g114066114070_
                                    _g114067114072_
                                    _g114068114074_)
                             (let ((__tmp115092
                                    (let ((__tmp115093
                                           (let ()
                                             (declare (not safe))
                                             (cons _g114066114070_ '()))))
                                      (declare (not safe))
                                      (cons _g114067114072_ __tmp115093))))
                               (declare (not safe))
                               (cons __tmp115092 _g114068114074_)))))
                      (declare (not safe))
                      (foldr2 __tmp115091 '() _L114052_ _L113987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp115090
                                                           _body114065_))))
                                              (declare (not safe))
                                              (cons _L113988_ __tmp115089))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp115088
                                       _stx113884_))))
                                _expr114018114049_))))))
               (let ()
                 (declare (not safe))
                 (_loop114013114033_ _target114010114028_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g114007114023_
                                                        _g114008114026_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g114007114023_
                                              _g114008114026_)))))
                                    (__tmp115094
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args113885_))
                                          (let ((__tmp115095
                                                 (lambda (_g114079114082_
                                                          _g114080114084_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g114079114082_
                                                           _g114080114084_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp115095
                                                    '()
                                                    _L113986_)))))
                               (declare (not safe))
                               (_g114006114077_ __tmp115094)))
                           _tl113898113938_
                           _expr113908113980_
                           _hd113909113982_
                           _hd113894113928_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop113902113946_
                                                     _target113899113941_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g113887113920_
                                                   _g113888113923_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g113887113920_ _g113888113923_)))))
                              (let ()
                                (declare (not safe))
                                (_g113887113920_ _g113888113923_)))))
                      (let ()
                        (declare (not safe))
                        (_g113887113920_ _g113888113923_))))))
          (declare (not safe))
          (_g113886114087_ _stx113884_))))
    (define gxc#xform-operands
      (lambda (_stx113840_ . _args113841_)
        (let* ((_g113843113854_
                (lambda (_g113844113851_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113844113851_))))
               (_g113842113881_
                (lambda (_g113844113857_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113844113857_))
                      (let ((_e113847113859_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113844113857_))))
                        (let ((_hd113848113862_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113847113859_)))
                              (_tl113849113864_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113847113859_))))
                          ((lambda (_L113867_ _L113868_)
                             (let* ((_rands113879_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args113841_))
                                          _L113867_))
                                    (__tmp115096
                                     (let ()
                                       (declare (not safe))
                                       (cons _L113868_ _rands113879_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp115096
                                _stx113840_)))
                           _tl113849113864_
                           _hd113848113862_)))
                      (let ()
                        (declare (not safe))
                        (_g113843113854_ _g113844113857_))))))
          (declare (not safe))
          (_g113842113881_ _stx113840_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx113761_ . _args113762_)
        (let* ((_g113764113781_
                (lambda (_g113765113778_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113765113778_))))
               (_g113763113837_
                (lambda (_g113765113784_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113765113784_))
                      (let ((_e113768113786_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113765113784_))))
                        (let ((_hd113769113789_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113768113786_)))
                              (_tl113770113791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113768113786_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl113770113791_))
                              (let ((_e113771113794_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl113770113791_))))
                                (let ((_hd113772113797_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113771113794_)))
                                      (_tl113773113799_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113771113794_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl113773113799_))
                                      (let ((_e113774113802_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl113773113799_))))
                                        (let ((_hd113775113805_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e113774113802_)))
                                              (_tl113776113807_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e113774113802_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl113776113807_))
                                              ((lambda (_L113810_ _L113811_)
                                                 (let* ((_expr113835_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args113762_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L113810_))
                     (let ((_arg1113826_ (car _args113762_))
                           (_rest113828_ (cdr _args113762_)))
                       (if (let () (declare (not safe)) (null? _rest113828_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L113810_ _arg1113826_))
                           (let ((_arg2113831_ (car _rest113828_))
                                 (_rest113833_ (cdr _rest113828_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest113833_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L113810_
                                    _arg1113826_
                                    _arg2113831_))
                                 (apply gxc#compile-e
                                        _L113810_
                                        _arg1113826_
                                        _arg2113831_
                                        _rest113833_)))))))
                (__tmp115097
                 (let ((__tmp115098
                        (let ((__tmp115099
                               (let ()
                                 (declare (not safe))
                                 (cons _expr113835_ '()))))
                          (declare (not safe))
                          (cons _L113811_ __tmp115099))))
                   (declare (not safe))
                   (cons '%#set! __tmp115098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp115097
                                                    _stx113761_)))
                                               _hd113775113805_
                                               _hd113772113797_)
                                              (let ()
                                                (declare (not safe))
                                                (_g113764113781_
                                                 _g113765113784_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g113764113781_ _g113765113784_)))))
                              (let ()
                                (declare (not safe))
                                (_g113764113781_ _g113765113784_)))))
                      (let ()
                        (declare (not safe))
                        (_g113764113781_ _g113765113784_))))))
          (declare (not safe))
          (_g113763113837_ _stx113761_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx113692_)
        (let* ((_g113694113711_
                (lambda (_g113695113708_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113695113708_))))
               (_g113693113758_
                (lambda (_g113695113714_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113695113714_))
                      (let ((_e113698113716_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113695113714_))))
                        (let ((_hd113699113719_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113698113716_)))
                              (_tl113700113721_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113698113716_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl113700113721_))
                              (let ((_e113701113724_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl113700113721_))))
                                (let ((_hd113702113727_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113701113724_)))
                                      (_tl113703113729_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113701113724_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl113703113729_))
                                      (let ((_e113704113732_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl113703113729_))))
                                        (let ((_hd113705113735_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e113704113732_)))
                                              (_tl113706113737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e113704113732_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl113706113737_))
                                              ((lambda (_L113740_ _L113741_)
                                                 (let ((_sym113756_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L113741_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym113756_))
                                                   (let ((__tmp115100
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp115100
                                                      _sym113756_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L113740_))))
                                               _hd113705113735_
                                               _hd113702113727_)
                                              (let ()
                                                (declare (not safe))
                                                (_g113694113711_
                                                 _g113695113714_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g113694113711_ _g113695113714_)))))
                              (let ()
                                (declare (not safe))
                                (_g113694113711_ _g113695113714_)))))
                      (let ()
                        (declare (not safe))
                        (_g113694113711_ _g113695113714_))))))
          (declare (not safe))
          (_g113693113758_ _stx113692_))))
    (define gxc#collect-methods-call%
      (lambda (_stx113246_)
        (let* ((___stx114790114791_ _stx113246_)
               (_g113250113352_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx114790114791_)))))
          (let ((___kont114792114793_
                 (lambda (_L113642_ _L113643_ _L113644_ _L113645_ _L113646_)
                   (let ((__tmp115101
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L113643_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp115101))))
                (___kont114794114795_
                 (lambda (_L113468_ _L113469_ _L113470_ _L113471_)
                   (let ((__tmp115102
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L113468_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp115102))))
                (___kont114796114797_ (lambda () '#!void)))
            (let ((___match114925114926_
                   (lambda (_e113257113514_
                            _hd113258113517_
                            _tl113259113519_
                            _e113260113522_
                            _hd113261113525_
                            _tl113262113527_
                            _e113263113530_
                            _hd113264113533_
                            _tl113265113535_
                            _e113266113538_
                            _hd113267113541_
                            _tl113268113543_
                            _e113269113546_
                            _hd113270113549_
                            _tl113271113551_
                            _e113272113554_
                            _hd113273113557_
                            _tl113274113559_
                            _e113275113562_
                            _hd113276113565_
                            _tl113277113567_
                            _e113278113570_
                            _hd113279113573_
                            _tl113280113575_
                            _e113281113578_
                            _hd113282113581_
                            _tl113283113583_
                            _e113284113586_
                            _hd113285113589_
                            _tl113286113591_
                            _e113287113594_
                            _hd113288113597_
                            _tl113289113599_
                            _e113290113602_
                            _hd113291113605_
                            _tl113292113607_
                            _e113293113610_
                            _hd113294113613_
                            _tl113295113615_
                            _e113296113618_
                            _hd113297113621_
                            _tl113298113623_
                            _e113299113626_
                            _hd113300113629_
                            _tl113301113631_
                            _e113302113634_
                            _hd113303113637_
                            _tl113304113639_)
                     (let ((_L113642_ _hd113303113637_)
                           (_L113643_ _hd113294113613_)
                           (_L113644_ _hd113285113589_)
                           (_L113645_ _hd113276113565_)
                           (_L113646_ _hd113267113541_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L113646_
                              'bind-method!))
                           (___kont114792114793_
                            _L113642_
                            _L113643_
                            _L113644_
                            _L113645_
                            _L113646_)
                           (___kont114796114797_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx114790114791_))
                  (let ((_e113257113514_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx114790114791_))))
                    (let ((_tl113259113519_
                           (let ()
                             (declare (not safe))
                             (##cdr _e113257113514_)))
                          (_hd113258113517_
                           (let ()
                             (declare (not safe))
                             (##car _e113257113514_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl113259113519_))
                          (let ((_e113260113522_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl113259113519_))))
                            (let ((_tl113262113527_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e113260113522_)))
                                  (_hd113261113525_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e113260113522_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd113261113525_))
                                  (let ((_e113263113530_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd113261113525_))))
                                    (let ((_tl113265113535_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e113263113530_)))
                                          (_hd113264113533_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e113263113530_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd113264113533_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd113264113533_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl113265113535_))
                                                  (let ((_e113266113538_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl113265113535_))))
                                                    (let ((_tl113268113543_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e113266113538_)))
                                                          (_hd113267113541_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e113266113538_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl113268113543_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl113262113527_))
                      (let ((_e113269113546_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl113262113527_))))
                        (let ((_tl113271113551_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113269113546_)))
                              (_hd113270113549_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113269113546_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd113270113549_))
                              (let ((_e113272113554_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd113270113549_))))
                                (let ((_tl113274113559_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113272113554_)))
                                      (_hd113273113557_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113272113554_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd113273113557_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd113273113557_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl113274113559_))
                                              (let ((_e113275113562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl113274113559_))))
                                                (let ((_tl113277113567_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e113275113562_)))
                                                      (_hd113276113565_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e113275113562_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl113277113567_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl113271113551_))
                                                          (let ((_e113278113570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl113271113551_))))
                    (let ((_tl113280113575_
                           (let ()
                             (declare (not safe))
                             (##cdr _e113278113570_)))
                          (_hd113279113573_
                           (let ()
                             (declare (not safe))
                             (##car _e113278113570_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd113279113573_))
                          (let ((_e113281113578_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd113279113573_))))
                            (let ((_tl113283113583_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e113281113578_)))
                                  (_hd113282113581_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e113281113578_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd113282113581_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd113282113581_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl113283113583_))
                                          (let ((_e113284113586_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl113283113583_))))
                                            (let ((_tl113286113591_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e113284113586_)))
                                                  (_hd113285113589_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e113284113586_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl113286113591_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl113280113575_))
                                                      (let ((_e113287113594_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl113280113575_))))
                (let ((_tl113289113599_
                       (let () (declare (not safe)) (##cdr _e113287113594_)))
                      (_hd113288113597_
                       (let () (declare (not safe)) (##car _e113287113594_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd113288113597_))
                      (let ((_e113290113602_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd113288113597_))))
                        (let ((_tl113292113607_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113290113602_)))
                              (_hd113291113605_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113290113602_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd113291113605_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd113291113605_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl113292113607_))
                                      (let ((_e113293113610_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl113292113607_))))
                                        (let ((_tl113295113615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e113293113610_)))
                                              (_hd113294113613_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e113293113610_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl113295113615_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl113289113599_))
                                                  (let ((_e113296113618_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl113289113599_))))
                                                    (let ((_tl113298113623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e113296113618_)))
                                                          (_hd113297113621_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e113296113618_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd113297113621_))
                                                          (let ((_e113299113626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd113297113621_))))
                    (let ((_tl113301113631_
                           (let ()
                             (declare (not safe))
                             (##cdr _e113299113626_)))
                          (_hd113300113629_
                           (let ()
                             (declare (not safe))
                             (##car _e113299113626_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd113300113629_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd113300113629_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl113301113631_))
                                  (let ((_e113302113634_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl113301113631_))))
                                    (let ((_tl113304113639_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e113302113634_)))
                                          (_hd113303113637_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e113302113634_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl113304113639_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl113298113623_))
                                              (___match114925114926_
                                               _e113257113514_
                                               _hd113258113517_
                                               _tl113259113519_
                                               _e113260113522_
                                               _hd113261113525_
                                               _tl113262113527_
                                               _e113263113530_
                                               _hd113264113533_
                                               _tl113265113535_
                                               _e113266113538_
                                               _hd113267113541_
                                               _tl113268113543_
                                               _e113269113546_
                                               _hd113270113549_
                                               _tl113271113551_
                                               _e113272113554_
                                               _hd113273113557_
                                               _tl113274113559_
                                               _e113275113562_
                                               _hd113276113565_
                                               _tl113277113567_
                                               _e113278113570_
                                               _hd113279113573_
                                               _tl113280113575_
                                               _e113281113578_
                                               _hd113282113581_
                                               _tl113283113583_
                                               _e113284113586_
                                               _hd113285113589_
                                               _tl113286113591_
                                               _e113287113594_
                                               _hd113288113597_
                                               _tl113289113599_
                                               _e113290113602_
                                               _hd113291113605_
                                               _tl113292113607_
                                               _e113293113610_
                                               _hd113294113613_
                                               _tl113295113615_
                                               _e113296113618_
                                               _hd113297113621_
                                               _tl113298113623_
                                               _e113299113626_
                                               _hd113300113629_
                                               _tl113301113631_
                                               _e113302113634_
                                               _hd113303113637_
                                               _tl113304113639_)
                                              (___kont114796114797_))
                                          (___kont114796114797_))))
                                  (___kont114796114797_))
                              (___kont114796114797_))
                          (___kont114796114797_))))
                  (___kont114796114797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl113289113599_))
                                                      (if (let ((__tmp115103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp115103 'bind-method!))
                  (let ((_L113468_ _hd113294113613_)
                        (_L113469_ _hd113285113589_)
                        (_L113470_ _hd113276113565_)
                        (_L113471_ _hd113267113541_))
                    (___kont114794114795_
                     _L113468_
                     _L113469_
                     _L113470_
                     _L113471_))
                  (___kont114796114797_))
              (___kont114796114797_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont114796114797_))))
                                      (___kont114796114797_))
                                  (___kont114796114797_))
                              (___kont114796114797_))))
                      (___kont114796114797_))))
              (___kont114796114797_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont114796114797_))))
                                          (___kont114796114797_))
                                      (___kont114796114797_))
                                  (___kont114796114797_))))
                          (___kont114796114797_))))
                  (___kont114796114797_))
              (___kont114796114797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont114796114797_))
                                          (___kont114796114797_))
                                      (___kont114796114797_))))
                              (___kont114796114797_))))
                      (___kont114796114797_))
                  (___kont114796114797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont114796114797_))
                                              (___kont114796114797_))
                                          (___kont114796114797_))))
                                  (___kont114796114797_))))
                          (___kont114796114797_))))
                  (___kont114796114797_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx113193_ _id113194_ _new-id113195_)
        (let* ((_g113197113210_
                (lambda (_g113198113207_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113198113207_))))
               (_g113196113243_
                (lambda (_g113198113213_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113198113213_))
                      (let ((_e113200113215_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113198113213_))))
                        (let ((_hd113201113218_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113200113215_)))
                              (_tl113202113220_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113200113215_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl113202113220_))
                              (let ((_e113203113223_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl113202113220_))))
                                (let ((_hd113204113226_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113203113223_)))
                                      (_tl113205113228_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113203113223_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl113205113228_))
                                      ((lambda (_L113231_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L113231_
                                                _id113194_))
                                             (let ((__tmp115104
                                                    (let ((__tmp115105
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id113195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp115105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp115104
                                                _stx113193_))
                                             _stx113193_))
                                       _hd113204113226_)
                                      (let ()
                                        (declare (not safe))
                                        (_g113197113210_ _g113198113213_)))))
                              (let ()
                                (declare (not safe))
                                (_g113197113210_ _g113198113213_)))))
                      (let ()
                        (declare (not safe))
                        (_g113197113210_ _g113198113213_))))))
          (declare (not safe))
          (_g113196113243_ _stx113193_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx113134_ _subst113135_)
        (let* ((_g113137113150_
                (lambda (_g113138113147_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113138113147_))))
               (_g113136113190_
                (lambda (_g113138113153_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113138113153_))
                      (let ((_e113140113155_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113138113153_))))
                        (let ((_hd113141113158_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113140113155_)))
                              (_tl113142113160_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113140113155_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl113142113160_))
                              (let ((_e113143113163_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl113142113160_))))
                                (let ((_hd113144113166_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113143113163_)))
                                      (_tl113145113168_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113143113163_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl113145113168_))
                                      ((lambda (_L113171_)
                                         (let ((_$e113185_
                                                (let ((__tmp115106
                                                       (lambda (_sub113183_)
                                                         (let ((__tmp115107
                                                                (car _sub113183_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L113171_
                                                            __tmp115107)))))
                                                  (declare (not safe))
                                                  (find __tmp115106
                                                        _subst113135_))))
                                           (if _$e113185_
                                               ((lambda (_sub113188_)
                                                  (let ((__tmp115108
                                                         (let ((__tmp115109
                                                                (let ((__tmp115110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub113188_)))
                          (declare (not safe))
                          (cons __tmp115110 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp115109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp115108
                                                     _stx113134_)))
                                                _$e113185_)
                                               _stx113134_)))
                                       _hd113144113166_)
                                      (let ()
                                        (declare (not safe))
                                        (_g113137113150_ _g113138113153_)))))
                              (let ()
                                (declare (not safe))
                                (_g113137113150_ _g113138113153_)))))
                      (let ()
                        (declare (not safe))
                        (_g113137113150_ _g113138113153_))))))
          (declare (not safe))
          (_g113136113190_ _stx113134_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx113062_ _id113063_ _new-id113064_)
        (let* ((_g113066113083_
                (lambda (_g113067113080_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113067113080_))))
               (_g113065113131_
                (lambda (_g113067113086_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113067113086_))
                      (let ((_e113070113088_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113067113086_))))
                        (let ((_hd113071113091_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113070113088_)))
                              (_tl113072113093_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113070113088_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl113072113093_))
                              (let ((_e113073113096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl113072113093_))))
                                (let ((_hd113074113099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113073113096_)))
                                      (_tl113075113101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113073113096_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl113075113101_))
                                      (let ((_e113076113104_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl113075113101_))))
                                        (let ((_hd113077113107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e113076113104_)))
                                              (_tl113078113109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e113076113104_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl113078113109_))
                                              ((lambda (_L113112_ _L113113_)
                                                 (let ((_new-expr113128_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L113112_
                                                           _id113063_
                                                           _new-id113064_)))
                                                       (_new-xid113129_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L113113_
                                                               _id113063_))
                                                            _new-id113064_
                                                            _L113113_)))
                                                   (let ((__tmp115111
                                                          (let ((__tmp115112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp115113
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr113128_ '()))))
                           (declare (not safe))
                           (cons _new-xid113129_ __tmp115113))))
                    (declare (not safe))
                    (cons '%#set! __tmp115112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp115111
                                                      _stx113062_))))
                                               _hd113077113107_
                                               _hd113074113099_)
                                              (let ()
                                                (declare (not safe))
                                                (_g113066113083_
                                                 _g113067113086_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g113066113083_ _g113067113086_)))))
                              (let ()
                                (declare (not safe))
                                (_g113066113083_ _g113067113086_)))))
                      (let ()
                        (declare (not safe))
                        (_g113066113083_ _g113067113086_))))))
          (declare (not safe))
          (_g113065113131_ _stx113062_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx112986_ _subst112987_)
        (let* ((_g112989113006_
                (lambda (_g112990113003_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112990113003_))))
               (_g112988113059_
                (lambda (_g112990113009_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112990113009_))
                      (let ((_e112993113011_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112990113009_))))
                        (let ((_hd112994113014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112993113011_)))
                              (_tl112995113016_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112993113011_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112995113016_))
                              (let ((_e112996113019_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112995113016_))))
                                (let ((_hd112997113022_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112996113019_)))
                                      (_tl112998113024_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112996113019_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112998113024_))
                                      (let ((_e112999113027_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112998113024_))))
                                        (let ((_hd113000113030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112999113027_)))
                                              (_tl113001113032_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112999113027_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl113001113032_))
                                              ((lambda (_L113035_ _L113036_)
                                                 (let ((_new-expr113056_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L113035_
                                                           _subst112987_)))
                                                       (_new-xid113057_
                                                        (let ((_$e113053_
                                                               (let ((__tmp115114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub113051_)
                                (let ((__tmp115115 (car _sub113051_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L113036_
                                   __tmp115115)))))
                         (declare (not safe))
                         (find __tmp115114 _subst112987_))))
                  (if _$e113053_ (cdr _$e113053_) _L113036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp115116
                                                          (let ((__tmp115117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp115118
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr113056_ '()))))
                           (declare (not safe))
                           (cons _new-xid113057_ __tmp115118))))
                    (declare (not safe))
                    (cons '%#set! __tmp115117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp115116
                                                      _stx112986_))))
                                               _hd113000113030_
                                               _hd112997113022_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112989113006_
                                                 _g112990113009_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112989113006_ _g112990113009_)))))
                              (let ()
                                (declare (not safe))
                                (_g112989113006_ _g112990113009_)))))
                      (let ()
                        (declare (not safe))
                        (_g112989113006_ _g112990113009_))))))
          (declare (not safe))
          (_g112988113059_ _stx112986_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx112932_ _ht112933_)
        (let* ((_g112935112948_
                (lambda (_g112936112945_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112936112945_))))
               (_g112934112983_
                (lambda (_g112936112951_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112936112951_))
                      (let ((_e112938112953_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112936112951_))))
                        (let ((_hd112939112956_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112938112953_)))
                              (_tl112940112958_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112938112953_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112940112958_))
                              (let ((_e112941112961_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112940112958_))))
                                (let ((_hd112942112964_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112941112961_)))
                                      (_tl112943112966_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112941112961_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl112943112966_))
                                      ((lambda (_L112969_)
                                         (let ((_eid112981_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L112969_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht112933_
                                            _eid112981_
                                            1+
                                            '0)))
                                       _hd112942112964_)
                                      (let ()
                                        (declare (not safe))
                                        (_g112935112948_ _g112936112951_)))))
                              (let ()
                                (declare (not safe))
                                (_g112935112948_ _g112936112951_)))))
                      (let ()
                        (declare (not safe))
                        (_g112935112948_ _g112936112951_))))))
          (declare (not safe))
          (_g112934112983_ _stx112932_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx112862_ _ht112863_)
        (let* ((_g112865112882_
                (lambda (_g112866112879_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112866112879_))))
               (_g112864112929_
                (lambda (_g112866112885_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112866112885_))
                      (let ((_e112869112887_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112866112885_))))
                        (let ((_hd112870112890_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112869112887_)))
                              (_tl112871112892_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112869112887_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112871112892_))
                              (let ((_e112872112895_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112871112892_))))
                                (let ((_hd112873112898_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112872112895_)))
                                      (_tl112874112900_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112872112895_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112874112900_))
                                      (let ((_e112875112903_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112874112900_))))
                                        (let ((_hd112876112906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112875112903_)))
                                              (_tl112877112908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112875112903_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112877112908_))
                                              ((lambda (_L112911_ _L112912_)
                                                 (let ((_eid112927_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L112912_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht112863_
                                                      _eid112927_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L112911_
                                                      _ht112863_))))
                                               _hd112876112906_
                                               _hd112873112898_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112865112882_
                                                 _g112866112885_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112865112882_ _g112866112885_)))))
                              (let ()
                                (declare (not safe))
                                (_g112865112882_ _g112866112885_)))))
                      (let ()
                        (declare (not safe))
                        (_g112865112882_ _g112866112885_))))))
          (declare (not safe))
          (_g112864112929_ _stx112862_))))
    (define gxc#find-body%
      (lambda (_stx112775_ _arg112776_)
        (let* ((_g112778112797_
                (lambda (_g112779112794_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112779112794_))))
               (_g112777112859_
                (lambda (_g112779112800_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112779112800_))
                      (let ((_e112781112802_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112779112800_))))
                        (let ((_hd112782112805_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112781112802_)))
                              (_tl112783112807_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112781112802_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl112783112807_))
                              (let ((_g115119_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl112783112807_
                                        '0))))
                                (begin
                                  (let ((_g115120_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g115119_)
                                               (##vector-length _g115119_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g115120_ 2)))
                                        (error "Context expects 2 values"
                                               _g115120_)))
                                  (let ((_target112784112810_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115119_ 0)))
                                        (_tl112786112812_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115119_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl112786112812_))
                                        (letrec ((_loop112787112815_
                                                  (lambda (_hd112785112818_
                                                           _expr112791112820_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd112785112818_))
                                                        (let ((_e112788112823_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd112785112818_))))
                  (let ((_lp-hd112789112826_
                         (let () (declare (not safe)) (##car _e112788112823_)))
                        (_lp-tl112790112828_
                         (let ()
                           (declare (not safe))
                           (##cdr _e112788112823_))))
                    (let ((__tmp115121
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd112789112826_ _expr112791112820_))))
                      (declare (not safe))
                      (_loop112787112815_ _lp-tl112790112828_ __tmp115121))))
                (let ((_expr112792112831_ (reverse _expr112791112820_)))
                  ((lambda (_L112834_)
                     (let ((__tmp115124
                            (lambda (_g112847112849_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g112847112849_
                                 _arg112776_))))
                           (__tmp115122
                            (let ((__tmp115123
                                   (lambda (_g112851112854_ _g112852112856_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g112851112854_
                                             _g112852112856_)))))
                              (declare (not safe))
                              (foldr1 __tmp115123 '() _L112834_))))
                       (declare (not safe))
                       (ormap1 __tmp115124 __tmp115122)))
                   _expr112792112831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop112787112815_
                                             _target112784112810_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g112778112797_
                                           _g112779112800_))))))
                              (let ()
                                (declare (not safe))
                                (_g112778112797_ _g112779112800_)))))
                      (let ()
                        (declare (not safe))
                        (_g112778112797_ _g112779112800_))))))
          (declare (not safe))
          (_g112777112859_ _stx112775_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx112707_ _arg112708_)
        (let* ((_g112710112727_
                (lambda (_g112711112724_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112711112724_))))
               (_g112709112772_
                (lambda (_g112711112730_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112711112730_))
                      (let ((_e112714112732_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112711112730_))))
                        (let ((_hd112715112735_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112714112732_)))
                              (_tl112716112737_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112714112732_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112716112737_))
                              (let ((_e112717112740_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112716112737_))))
                                (let ((_hd112718112743_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112717112740_)))
                                      (_tl112719112745_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112717112740_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112719112745_))
                                      (let ((_e112720112748_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112719112745_))))
                                        (let ((_hd112721112751_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112720112748_)))
                                              (_tl112722112753_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112720112748_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112722112753_))
                                              ((lambda (_L112756_ _L112757_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L112756_
                                                    _arg112708_)))
                                               _hd112721112751_
                                               _hd112718112743_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112710112727_
                                                 _g112711112730_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112710112727_ _g112711112730_)))))
                              (let ()
                                (declare (not safe))
                                (_g112710112727_ _g112711112730_)))))
                      (let ()
                        (declare (not safe))
                        (_g112710112727_ _g112711112730_))))))
          (declare (not safe))
          (_g112709112772_ _stx112707_))))
    (define gxc#find-lambda%
      (lambda (_stx112639_ _arg112640_)
        (let* ((_g112642112659_
                (lambda (_g112643112656_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112643112656_))))
               (_g112641112704_
                (lambda (_g112643112662_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112643112662_))
                      (let ((_e112646112664_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112643112662_))))
                        (let ((_hd112647112667_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112646112664_)))
                              (_tl112648112669_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112646112664_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112648112669_))
                              (let ((_e112649112672_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112648112669_))))
                                (let ((_hd112650112675_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112649112672_)))
                                      (_tl112651112677_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112649112672_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112651112677_))
                                      (let ((_e112652112680_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112651112677_))))
                                        (let ((_hd112653112683_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112652112680_)))
                                              (_tl112654112685_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112652112680_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112654112685_))
                                              ((lambda (_L112688_ _L112689_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L112688_
                                                    _arg112640_)))
                                               _hd112653112683_
                                               _hd112650112675_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112642112659_
                                                 _g112643112662_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112642112659_ _g112643112662_)))))
                              (let ()
                                (declare (not safe))
                                (_g112642112659_ _g112643112662_)))))
                      (let ()
                        (declare (not safe))
                        (_g112642112659_ _g112643112662_))))))
          (declare (not safe))
          (_g112641112704_ _stx112639_))))
    (define gxc#find-case-lambda%
      (lambda (_stx112521_ _arg112522_)
        (let* ((_g112524112552_
                (lambda (_g112525112549_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112525112549_))))
               (_g112523112636_
                (lambda (_g112525112555_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112525112555_))
                      (let ((_e112528112557_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112525112555_))))
                        (let ((_hd112529112560_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112528112557_)))
                              (_tl112530112562_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112528112557_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl112530112562_))
                              (let ((_g115125_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl112530112562_
                                        '0))))
                                (begin
                                  (let ((_g115126_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g115125_)
                                               (##vector-length _g115125_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g115126_ 2)))
                                        (error "Context expects 2 values"
                                               _g115126_)))
                                  (let ((_target112531112565_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115125_ 0)))
                                        (_tl112533112567_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115125_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl112533112567_))
                                        (letrec ((_loop112534112570_
                                                  (lambda (_hd112532112573_
                                                           _body112538112575_
                                                           _hd112539112577_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd112532112573_))
                                                        (let ((_e112535112580_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd112532112573_))))
                  (let ((_lp-hd112536112583_
                         (let () (declare (not safe)) (##car _e112535112580_)))
                        (_lp-tl112537112585_
                         (let ()
                           (declare (not safe))
                           (##cdr _e112535112580_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd112536112583_))
                        (let ((_e112542112588_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd112536112583_))))
                          (let ((_hd112543112591_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e112542112588_)))
                                (_tl112544112593_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e112542112588_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl112544112593_))
                                (let ((_e112545112596_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl112544112593_))))
                                  (let ((_hd112546112599_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e112545112596_)))
                                        (_tl112547112601_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e112545112596_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl112547112601_))
                                        (let ((__tmp115128
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd112546112599_
                                                       _body112538112575_)))
                                              (__tmp115127
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd112543112591_
                                                       _hd112539112577_))))
                                          (declare (not safe))
                                          (_loop112534112570_
                                           _lp-tl112537112585_
                                           __tmp115128
                                           __tmp115127))
                                        (let ()
                                          (declare (not safe))
                                          (_g112524112552_ _g112525112555_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g112524112552_ _g112525112555_)))))
                        (let ()
                          (declare (not safe))
                          (_g112524112552_ _g112525112555_)))))
                (let ((_body112540112604_ (reverse _body112538112575_))
                      (_hd112541112606_ (reverse _hd112539112577_)))
                  ((lambda (_L112609_ _L112610_)
                     (let ((__tmp115131
                            (lambda (_g112624112626_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g112624112626_
                                 _arg112522_))))
                           (__tmp115129
                            (let ((__tmp115130
                                   (lambda (_g112628112631_ _g112629112633_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g112628112631_
                                             _g112629112633_)))))
                              (declare (not safe))
                              (foldr1 __tmp115130 '() _L112609_))))
                       (declare (not safe))
                       (ormap1 __tmp115131 __tmp115129)))
                   _body112540112604_
                   _hd112541112606_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop112534112570_
                                             _target112531112565_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g112524112552_
                                           _g112525112555_))))))
                              (let ()
                                (declare (not safe))
                                (_g112524112552_ _g112525112555_)))))
                      (let ()
                        (declare (not safe))
                        (_g112524112552_ _g112525112555_))))))
          (declare (not safe))
          (_g112523112636_ _stx112521_))))
    (define gxc#find-let-values%
      (lambda (_stx112371_ _arg112372_)
        (let* ((_g112374112409_
                (lambda (_g112375112406_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112375112406_))))
               (_g112373112518_
                (lambda (_g112375112412_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112375112412_))
                      (let ((_e112379112414_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112375112412_))))
                        (let ((_hd112380112417_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112379112414_)))
                              (_tl112381112419_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112379112414_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112381112419_))
                              (let ((_e112382112422_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112381112419_))))
                                (let ((_hd112383112425_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112382112422_)))
                                      (_tl112384112427_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112382112422_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd112383112425_))
                                      (let ((_g115132_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd112383112425_
                                                '0))))
                                        (begin
                                          (let ((_g115133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g115132_)
                                                       (##vector-length
                                                        _g115132_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g115133_ 2)))
                                                (error "Context expects 2 values"
                                                       _g115133_)))
                                          (let ((_target112385112430_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g115132_ 0)))
                                                (_tl112387112432_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g115132_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl112387112432_))
                                                (letrec ((_loop112388112435_
                                                          (lambda (_hd112386112438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr112392112440_
                           _bind112393112442_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd112386112438_))
                        (let ((_e112389112445_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd112386112438_))))
                          (let ((_lp-hd112390112448_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e112389112445_)))
                                (_lp-tl112391112450_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e112389112445_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd112390112448_))
                                (let ((_e112396112453_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd112390112448_))))
                                  (let ((_hd112397112456_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e112396112453_)))
                                        (_tl112398112458_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e112396112453_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl112398112458_))
                                        (let ((_e112399112461_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl112398112458_))))
                                          (let ((_hd112400112464_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e112399112461_)))
                                                (_tl112401112466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e112399112461_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl112401112466_))
                                                (let ((__tmp115135
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd112400112464_
                                                               _expr112392112440_)))
                                                      (__tmp115134
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd112397112456_
                                                               _bind112393112442_))))
                                                  (declare (not safe))
                                                  (_loop112388112435_
                                                   _lp-tl112391112450_
                                                   __tmp115135
                                                   __tmp115134))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g112374112409_
                                                   _g112375112412_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g112374112409_ _g112375112412_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g112374112409_ _g112375112412_)))))
                        (let ((_expr112394112469_ (reverse _expr112392112440_))
                              (_bind112395112471_
                               (reverse _bind112393112442_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112384112427_))
                              (let ((_e112402112474_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112384112427_))))
                                (let ((_hd112403112477_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112402112474_)))
                                      (_tl112404112479_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112402112474_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl112404112479_))
                                      ((lambda (_L112482_ _L112483_ _L112484_)
                                         (let ((_$e112515_
                                                (let ((__tmp115138
                                                       (lambda (_g112503112505_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g112503112505_
                                                            _arg112372_))))
                                                      (__tmp115136
                                                       (let ((__tmp115137
                                                              (lambda (_g112507112510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g112508112512_)
                        (let ()
                          (declare (not safe))
                          (cons _g112507112510_ _g112508112512_)))))
                 (declare (not safe))
                 (foldr1 __tmp115137 '() _L112483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp115138
                                                          __tmp115136))))
                                           (if _$e112515_
                                               _$e112515_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L112482_
                                                  _arg112372_)))))
                                       _hd112403112477_
                                       _expr112394112469_
                                       _bind112395112471_)
                                      (let ()
                                        (declare (not safe))
                                        (_g112374112409_ _g112375112412_)))))
                              (let ()
                                (declare (not safe))
                                (_g112374112409_ _g112375112412_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop112388112435_
                                                     _target112385112430_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g112374112409_
                                                   _g112375112412_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112374112409_ _g112375112412_)))))
                              (let ()
                                (declare (not safe))
                                (_g112374112409_ _g112375112412_)))))
                      (let ()
                        (declare (not safe))
                        (_g112374112409_ _g112375112412_))))))
          (declare (not safe))
          (_g112373112518_ _stx112371_))))
    (define gxc#find-setq%
      (lambda (_stx112303_ _arg112304_)
        (let* ((_g112306112323_
                (lambda (_g112307112320_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112307112320_))))
               (_g112305112368_
                (lambda (_g112307112326_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112307112326_))
                      (let ((_e112310112328_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112307112326_))))
                        (let ((_hd112311112331_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112310112328_)))
                              (_tl112312112333_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112310112328_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112312112333_))
                              (let ((_e112313112336_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112312112333_))))
                                (let ((_hd112314112339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112313112336_)))
                                      (_tl112315112341_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112313112336_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112315112341_))
                                      (let ((_e112316112344_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112315112341_))))
                                        (let ((_hd112317112347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112316112344_)))
                                              (_tl112318112349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112316112344_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112318112349_))
                                              ((lambda (_L112352_ _L112353_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L112352_
                                                    _arg112304_)))
                                               _hd112317112347_
                                               _hd112314112339_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112306112323_
                                                 _g112307112326_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112306112323_ _g112307112326_)))))
                              (let ()
                                (declare (not safe))
                                (_g112306112323_ _g112307112326_)))))
                      (let ()
                        (declare (not safe))
                        (_g112306112323_ _g112307112326_))))))
          (declare (not safe))
          (_g112305112368_ _stx112303_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx112247_ _ids112248_)
        (let* ((_g112250112263_
                (lambda (_g112251112260_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112251112260_))))
               (_g112249112300_
                (lambda (_g112251112266_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112251112266_))
                      (let ((_e112253112268_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112251112266_))))
                        (let ((_hd112254112271_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112253112268_)))
                              (_tl112255112273_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112253112268_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112255112273_))
                              (let ((_e112256112276_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112255112273_))))
                                (let ((_hd112257112279_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112256112276_)))
                                      (_tl112258112281_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112256112276_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl112258112281_))
                                      ((lambda (_L112284_)
                                         (let ((__tmp115139
                                                (lambda (_g112295112297_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L112284_
                                                     _g112295112297_)))))
                                           (declare (not safe))
                                           (find __tmp115139 _ids112248_)))
                                       _hd112257112279_)
                                      (let ()
                                        (declare (not safe))
                                        (_g112250112263_ _g112251112266_)))))
                              (let ()
                                (declare (not safe))
                                (_g112250112263_ _g112251112266_)))))
                      (let ()
                        (declare (not safe))
                        (_g112250112263_ _g112251112266_))))))
          (declare (not safe))
          (_g112249112300_ _stx112247_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx112171_ _ids112172_)
        (let* ((_g112174112191_
                (lambda (_g112175112188_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112175112188_))))
               (_g112173112244_
                (lambda (_g112175112194_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112175112194_))
                      (let ((_e112178112196_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112175112194_))))
                        (let ((_hd112179112199_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112178112196_)))
                              (_tl112180112201_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112178112196_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112180112201_))
                              (let ((_e112181112204_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112180112201_))))
                                (let ((_hd112182112207_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112181112204_)))
                                      (_tl112183112209_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112181112204_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112183112209_))
                                      (let ((_e112184112212_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112183112209_))))
                                        (let ((_hd112185112215_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112184112212_)))
                                              (_tl112186112217_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112184112212_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112186112217_))
                                              ((lambda (_L112220_ _L112221_)
                                                 (let ((_$e112241_
                                                        (let ((__tmp115140
                                                               (lambda (_g112236112238_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L112221_ _g112236112238_)))))
                  (declare (not safe))
                  (find __tmp115140 _ids112172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e112241_
                                                       _$e112241_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L112220_
                                                          _ids112172_)))))
                                               _hd112185112215_
                                               _hd112182112207_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112174112191_
                                                 _g112175112194_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112174112191_ _g112175112194_)))))
                              (let ()
                                (declare (not safe))
                                (_g112174112191_ _g112175112194_)))))
                      (let ()
                        (declare (not safe))
                        (_g112174112191_ _g112175112194_))))))
          (declare (not safe))
          (_g112173112244_ _stx112171_))))))
