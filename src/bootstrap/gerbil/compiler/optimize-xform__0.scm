(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1704735497)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl23835_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23835_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23835_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23835_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23835_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl23835_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl23831_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23831_ '%#declare gxc#xform-identity))
           _tbl23831_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl23827_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp24081 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl23827_ __tmp24081))
           (let ((__tmp24082 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl23827_ __tmp24082))
           _tbl23827_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl23823_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23823_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23823_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23823_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23823_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23823_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl23823_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl23819_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp24083 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl23819_ __tmp24083))
           (let ((__tmp24084 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl23819_ __tmp24084))
           (let ()
             (declare (not safe))
             (table-set! _tbl23819_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23819_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23819_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23819_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23819_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl23819_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl23815_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp24085 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl23815_ __tmp24085))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23815_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23815_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23815_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23815_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23815_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23815_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23815_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23815_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl23815_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23815_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23815_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23815_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl23815_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx23798_ . _args23800_)
        (let ((__tmp24087
               (lambda ()
                 (declare (not safe))
                 (if (null? _args23800_)
                     (gxc#compile-e__0 _stx23798_)
                     (let ((_arg123805_ (car _args23800_))
                           (_rest23807_ (cdr _args23800_)))
                       (if (null? _rest23807_)
                           (gxc#compile-e__1 _stx23798_ _arg123805_)
                           (let ((_arg223810_ (car _rest23807_))
                                 (_rest23812_ (cdr _rest23807_)))
                             (if (null? _rest23812_)
                                 (gxc#compile-e__2
                                  _stx23798_
                                  _arg123805_
                                  _arg223810_)
                                 (apply gxc#compile-e
                                        _stx23798_
                                        _arg123805_
                                        _arg223810_
                                        _rest23812_))))))))
              (__tmp24086 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp24087
           gxc#current-compile-methods
           __tmp24086))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl23795_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp24088 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl23795_ __tmp24088))
           (let ()
             (declare (not safe))
             (table-set! _tbl23795_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23795_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23795_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23795_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23795_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl23795_))))
    (define gxc#apply-collect-methods
      (lambda (_stx23778_ . _args23780_)
        (let ((__tmp24090
               (lambda ()
                 (declare (not safe))
                 (if (null? _args23780_)
                     (gxc#compile-e__0 _stx23778_)
                     (let ((_arg123785_ (car _args23780_))
                           (_rest23787_ (cdr _args23780_)))
                       (if (null? _rest23787_)
                           (gxc#compile-e__1 _stx23778_ _arg123785_)
                           (let ((_arg223790_ (car _rest23787_))
                                 (_rest23792_ (cdr _rest23787_)))
                             (if (null? _rest23792_)
                                 (gxc#compile-e__2
                                  _stx23778_
                                  _arg123785_
                                  _arg223790_)
                                 (apply gxc#compile-e
                                        _stx23778_
                                        _arg123785_
                                        _arg223790_
                                        _rest23792_))))))))
              (__tmp24089 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp24090
           gxc#current-compile-methods
           __tmp24089))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl23775_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp24091 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl23775_ __tmp24091))
           (let ()
             (declare (not safe))
             (table-set! _tbl23775_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23775_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23775_ '%#set! gxc#expression-subst-setq%))
           _tbl23775_))))
    (define gxc#apply-expression-subst
      (lambda (_stx23758_ . _args23760_)
        (let ((__tmp24093
               (lambda ()
                 (declare (not safe))
                 (if (null? _args23760_)
                     (gxc#compile-e__0 _stx23758_)
                     (let ((_arg123765_ (car _args23760_))
                           (_rest23767_ (cdr _args23760_)))
                       (if (null? _rest23767_)
                           (gxc#compile-e__1 _stx23758_ _arg123765_)
                           (let ((_arg223770_ (car _rest23767_))
                                 (_rest23772_ (cdr _rest23767_)))
                             (if (null? _rest23772_)
                                 (gxc#compile-e__2
                                  _stx23758_
                                  _arg123765_
                                  _arg223770_)
                                 (apply gxc#compile-e
                                        _stx23758_
                                        _arg123765_
                                        _arg223770_
                                        _rest23772_))))))))
              (__tmp24092 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp24093
           gxc#current-compile-methods
           __tmp24092))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl23755_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp24094 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl23755_ __tmp24094))
           (let ()
             (declare (not safe))
             (table-set! _tbl23755_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23755_ '%#set! gxc#expression-subst*-setq%))
           _tbl23755_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx23738_ . _args23740_)
        (let ((__tmp24096
               (lambda ()
                 (declare (not safe))
                 (if (null? _args23740_)
                     (gxc#compile-e__0 _stx23738_)
                     (let ((_arg123745_ (car _args23740_))
                           (_rest23747_ (cdr _args23740_)))
                       (if (null? _rest23747_)
                           (gxc#compile-e__1 _stx23738_ _arg123745_)
                           (let ((_arg223750_ (car _rest23747_))
                                 (_rest23752_ (cdr _rest23747_)))
                             (if (null? _rest23752_)
                                 (gxc#compile-e__2
                                  _stx23738_
                                  _arg123745_
                                  _arg223750_)
                                 (apply gxc#compile-e
                                        _stx23738_
                                        _arg123745_
                                        _arg223750_
                                        _rest23752_))))))))
              (__tmp24095 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp24096
           gxc#current-compile-methods
           __tmp24095))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl23735_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp24097 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl23735_ __tmp24097))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl23735_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23735_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl23735_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl23731_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp24098 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl23731_ __tmp24098))
           (let ()
             (declare (not safe))
             (table-set! _tbl23731_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23731_ '%#set! gxc#find-var-refs-setq%))
           _tbl23731_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx23714_ . _args23716_)
        (let ((__tmp24100
               (lambda ()
                 (declare (not safe))
                 (if (null? _args23716_)
                     (gxc#compile-e__0 _stx23714_)
                     (let ((_arg123721_ (car _args23716_))
                           (_rest23723_ (cdr _args23716_)))
                       (if (null? _rest23723_)
                           (gxc#compile-e__1 _stx23714_ _arg123721_)
                           (let ((_arg223726_ (car _rest23723_))
                                 (_rest23728_ (cdr _rest23723_)))
                             (if (null? _rest23728_)
                                 (gxc#compile-e__2
                                  _stx23714_
                                  _arg123721_
                                  _arg223726_)
                                 (apply gxc#compile-e
                                        _stx23714_
                                        _arg123721_
                                        _arg223726_
                                        _rest23728_))))))))
              (__tmp24099 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp24100
           gxc#current-compile-methods
           __tmp24099))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl23711_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp24101 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl23711_ __tmp24101))
           (let ()
             (declare (not safe))
             (table-set! _tbl23711_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl23711_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl23711_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx23694_ . _args23696_)
        (let ((__tmp24103
               (lambda ()
                 (declare (not safe))
                 (if (null? _args23696_)
                     (gxc#compile-e__0 _stx23694_)
                     (let ((_arg123701_ (car _args23696_))
                           (_rest23703_ (cdr _args23696_)))
                       (if (null? _rest23703_)
                           (gxc#compile-e__1 _stx23694_ _arg123701_)
                           (let ((_arg223706_ (car _rest23703_))
                                 (_rest23708_ (cdr _rest23703_)))
                             (if (null? _rest23708_)
                                 (gxc#compile-e__2
                                  _stx23694_
                                  _arg123701_
                                  _arg223706_)
                                 (apply gxc#compile-e
                                        _stx23694_
                                        _arg123701_
                                        _arg223706_
                                        _rest23708_))))))))
              (__tmp24102 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp24103
           gxc#current-compile-methods
           __tmp24102))))
    (define gxc#xform-identity (lambda (_stx23691_ . _args23692_) _stx23691_))
    (define gxc#xform-wrap-source
      (lambda (_stx23688_ _src-stx23689_)
        (let ((__tmp24104
               (let () (declare (not safe)) (gx#stx-source _src-stx23689_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx23688_ __tmp24104))))
    (define gxc#xform-apply-compile-e
      (lambda (_args23675_)
        (lambda (_stx23677_)
          (if (let () (declare (not safe)) (null? _args23675_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx23677_))
              (let ((_arg123679_ (car _args23675_))
                    (_rest23681_ (cdr _args23675_)))
                (if (let () (declare (not safe)) (null? _rest23681_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx23677_ _arg123679_))
                    (let ((_arg223684_ (car _rest23681_))
                          (_rest23686_ (cdr _rest23681_)))
                      (if (let () (declare (not safe)) (null? _rest23686_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx23677_
                             _arg123679_
                             _arg223684_))
                          (apply gxc#compile-e
                                 _stx23677_
                                 _arg123679_
                                 _arg223684_
                                 _rest23686_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx23634_ . _args23635_)
        (let* ((_g2363723647_
                (lambda (_g2363823644_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2363823644_))))
               (_g2363623672_
                (lambda (_g2363823650_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2363823650_))
                      (let ((_e2364223652_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2363823650_))))
                        (let ((_hd2364123655_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2364223652_)))
                              (_tl2364023657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2364223652_))))
                          ((lambda (_L23660_)
                             (let* ((_forms23670_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args23635_))
                                          _L23660_))
                                    (__tmp24105
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms23670_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp24105 _stx23634_)))
                           _tl2364023657_)))
                      (let ()
                        (declare (not safe))
                        (_g2363723647_ _g2363823650_))))))
          (declare (not safe))
          (_g2363623672_ _stx23634_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx23592_ . _args23593_)
        (let* ((_g2359523605_
                (lambda (_g2359623602_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2359623602_))))
               (_g2359423631_
                (lambda (_g2359623608_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2359623608_))
                      (let ((_e2360023610_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2359623608_))))
                        (let ((_hd2359923613_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2360023610_)))
                              (_tl2359823615_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2360023610_))))
                          ((lambda (_L23618_)
                             (let ((__tmp24108
                                    (lambda ()
                                      (let* ((_forms23629_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args23593_))
                                                   _L23618_))
                                             (__tmp24109
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms23629_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp24109
                                         _stx23592_))))
                                   (__tmp24106
                                    (let ((__tmp24107
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp24107 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp24108
                                gx#current-expander-phi
                                __tmp24106)))
                           _tl2359823615_)))
                      (let ()
                        (declare (not safe))
                        (_g2359523605_ _g2359623608_))))))
          (declare (not safe))
          (_g2359423631_ _stx23592_))))
    (define gxc#xform-module%
      (lambda (_stx23520_ . _args23521_)
        (let* ((_g2352323537_
                (lambda (_g2352423534_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2352423534_))))
               (_g2352223589_
                (lambda (_g2352423540_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2352423540_))
                      (let ((_e2352923542_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2352423540_))))
                        (let ((_hd2352823545_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2352923542_)))
                              (_tl2352723547_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2352923542_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2352723547_))
                              (let ((_e2353223550_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2352723547_))))
                                (let ((_hd2353123553_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2353223550_)))
                                      (_tl2353023555_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2353223550_))))
                                  ((lambda (_L23558_ _L23559_)
                                     (let* ((_ctx23572_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L23559_)))
                                            (_code23574_
                                             (##structure-ref
                                              _ctx23572_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code23586_
                                             (let ((__tmp24110
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args23521_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code23574_))
                                                          (let ((_arg123577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args23521_))
                        (_rest23579_ (cdr _args23521_)))
                    (if (let () (declare (not safe)) (null? _rest23579_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code23574_ _arg123577_))
                        (let ((_arg223582_ (car _rest23579_))
                              (_rest23584_ (cdr _rest23579_)))
                          (if (let () (declare (not safe)) (null? _rest23584_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code23574_
                                 _arg123577_
                                 _arg223582_))
                              (apply gxc#compile-e
                                     _code23574_
                                     _arg123577_
                                     _arg223582_
                                     _rest23584_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp24110
                                                gx#current-expander-context
                                                _ctx23572_))))
                                       (##structure-set!
                                        _ctx23572_
                                        _code23586_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp24111
                                              (let ((__tmp24112
                                                     (let ((__tmp24113
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code23586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L23559_ __tmp24113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp24112))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp24111
                                          _stx23520_))))
                                   _tl2353023555_
                                   _hd2353123553_)))
                              (let ()
                                (declare (not safe))
                                (_g2352323537_ _g2352423540_)))))
                      (let ()
                        (declare (not safe))
                        (_g2352323537_ _g2352423540_))))))
          (declare (not safe))
          (_g2352223589_ _stx23520_))))
    (define gxc#xform-define-values%
      (lambda (_stx23441_ . _args23442_)
        (let* ((_g2344423461_
                (lambda (_g2344523458_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2344523458_))))
               (_g2344323517_
                (lambda (_g2344523464_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2344523464_))
                      (let ((_e2345023466_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2344523464_))))
                        (let ((_hd2344923469_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2345023466_)))
                              (_tl2344823471_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2345023466_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2344823471_))
                              (let ((_e2345323474_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2344823471_))))
                                (let ((_hd2345223477_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2345323474_)))
                                      (_tl2345123479_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2345323474_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2345123479_))
                                      (let ((_e2345623482_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2345123479_))))
                                        (let ((_hd2345523485_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2345623482_)))
                                              (_tl2345423487_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2345623482_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2345423487_))
                                              ((lambda (_L23490_ _L23491_)
                                                 (let* ((_expr23515_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args23442_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L23490_))
                     (let ((_arg123506_ (car _args23442_))
                           (_rest23508_ (cdr _args23442_)))
                       (if (let () (declare (not safe)) (null? _rest23508_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L23490_ _arg123506_))
                           (let ((_arg223511_ (car _rest23508_))
                                 (_rest23513_ (cdr _rest23508_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest23513_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L23490_
                                    _arg123506_
                                    _arg223511_))
                                 (apply gxc#compile-e
                                        _L23490_
                                        _arg123506_
                                        _arg223511_
                                        _rest23513_)))))))
                (__tmp24114
                 (let ((__tmp24115
                        (let ((__tmp24116
                               (let ()
                                 (declare (not safe))
                                 (cons _expr23515_ '()))))
                          (declare (not safe))
                          (cons _L23491_ __tmp24116))))
                   (declare (not safe))
                   (cons '%#define-values __tmp24115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp24114
                                                    _stx23441_)))
                                               _hd2345523485_
                                               _hd2345223477_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2344423461_
                                                 _g2344523464_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2344423461_ _g2344523464_)))))
                              (let ()
                                (declare (not safe))
                                (_g2344423461_ _g2344523464_)))))
                      (let ()
                        (declare (not safe))
                        (_g2344423461_ _g2344523464_))))))
          (declare (not safe))
          (_g2344323517_ _stx23441_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx23361_ . _args23362_)
        (let* ((_g2336423381_
                (lambda (_g2336523378_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2336523378_))))
               (_g2336323438_
                (lambda (_g2336523384_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2336523384_))
                      (let ((_e2337023386_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2336523384_))))
                        (let ((_hd2336923389_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2337023386_)))
                              (_tl2336823391_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2337023386_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2336823391_))
                              (let ((_e2337323394_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2336823391_))))
                                (let ((_hd2337223397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2337323394_)))
                                      (_tl2337123399_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2337323394_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2337123399_))
                                      (let ((_e2337623402_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2337123399_))))
                                        (let ((_hd2337523405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2337623402_)))
                                              (_tl2337423407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2337623402_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2337423407_))
                                              ((lambda (_L23410_ _L23411_)
                                                 (let ((__tmp24119
                                                        (lambda ()
                                                          (let* ((_expr23436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let () (declare (not safe)) (null? _args23362_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L23410_))
                              (let ((_arg123427_ (car _args23362_))
                                    (_rest23429_ (cdr _args23362_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest23429_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1 _L23410_ _arg123427_))
                                    (let ((_arg223432_ (car _rest23429_))
                                          (_rest23434_ (cdr _rest23429_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest23434_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L23410_
                                             _arg123427_
                                             _arg223432_))
                                          (apply gxc#compile-e
                                                 _L23410_
                                                 _arg123427_
                                                 _arg223432_
                                                 _rest23434_)))))))
                         (__tmp24120
                          (let ((__tmp24121
                                 (let ((__tmp24122
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr23436_ '()))))
                                   (declare (not safe))
                                   (cons _L23411_ __tmp24122))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp24121))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp24120 _stx23361_))))
               (__tmp24117
                (let ((__tmp24118 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp24118 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp24119
                                                    gx#current-expander-phi
                                                    __tmp24117)))
                                               _hd2337523405_
                                               _hd2337223397_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2336423381_
                                                 _g2336523384_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2336423381_ _g2336523384_)))))
                              (let ()
                                (declare (not safe))
                                (_g2336423381_ _g2336523384_)))))
                      (let ()
                        (declare (not safe))
                        (_g2336423381_ _g2336523384_))))))
          (declare (not safe))
          (_g2336323438_ _stx23361_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx23282_ . _args23283_)
        (let* ((_g2328523302_
                (lambda (_g2328623299_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2328623299_))))
               (_g2328423358_
                (lambda (_g2328623305_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2328623305_))
                      (let ((_e2329123307_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2328623305_))))
                        (let ((_hd2329023310_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2329123307_)))
                              (_tl2328923312_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2329123307_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2328923312_))
                              (let ((_e2329423315_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2328923312_))))
                                (let ((_hd2329323318_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2329423315_)))
                                      (_tl2329223320_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2329423315_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2329223320_))
                                      (let ((_e2329723323_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2329223320_))))
                                        (let ((_hd2329623326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2329723323_)))
                                              (_tl2329523328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2329723323_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2329523328_))
                                              ((lambda (_L23331_ _L23332_)
                                                 (let* ((_expr23356_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args23283_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L23331_))
                     (let ((_arg123347_ (car _args23283_))
                           (_rest23349_ (cdr _args23283_)))
                       (if (let () (declare (not safe)) (null? _rest23349_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L23331_ _arg123347_))
                           (let ((_arg223352_ (car _rest23349_))
                                 (_rest23354_ (cdr _rest23349_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest23354_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L23331_
                                    _arg123347_
                                    _arg223352_))
                                 (apply gxc#compile-e
                                        _L23331_
                                        _arg123347_
                                        _arg223352_
                                        _rest23354_)))))))
                (__tmp24123
                 (let ((__tmp24124
                        (let ((__tmp24125
                               (let ()
                                 (declare (not safe))
                                 (cons _expr23356_ '()))))
                          (declare (not safe))
                          (cons _L23332_ __tmp24125))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp24124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp24123
                                                    _stx23282_)))
                                               _hd2329623326_
                                               _hd2329323318_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2328523302_
                                                 _g2328623305_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2328523302_ _g2328623305_)))))
                              (let ()
                                (declare (not safe))
                                (_g2328523302_ _g2328623305_)))))
                      (let ()
                        (declare (not safe))
                        (_g2328523302_ _g2328623305_))))))
          (declare (not safe))
          (_g2328423358_ _stx23282_))))
    (define gxc#xform-lambda%
      (lambda (_stx23225_ . _args23226_)
        (let* ((_g2322823242_
                (lambda (_g2322923239_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2322923239_))))
               (_g2322723279_
                (lambda (_g2322923245_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2322923245_))
                      (let ((_e2323423247_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2322923245_))))
                        (let ((_hd2323323250_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2323423247_)))
                              (_tl2323223252_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2323423247_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2323223252_))
                              (let ((_e2323723255_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2323223252_))))
                                (let ((_hd2323623258_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2323723255_)))
                                      (_tl2323523260_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2323723255_))))
                                  ((lambda (_L23263_ _L23264_)
                                     (let* ((_body23277_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args23226_))
                                                  _L23263_))
                                            (__tmp24126
                                             (let ((__tmp24127
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L23264_
                                                            _body23277_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp24127))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp24126
                                        _stx23225_)))
                                   _tl2323523260_
                                   _hd2323623258_)))
                              (let ()
                                (declare (not safe))
                                (_g2322823242_ _g2322923245_)))))
                      (let ()
                        (declare (not safe))
                        (_g2322823242_ _g2322923245_))))))
          (declare (not safe))
          (_g2322723279_ _stx23225_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx23138_ . _args23139_)
        (letrec ((_clause-e23141_
                  (lambda (_clause23182_)
                    (let* ((_g2318423195_
                            (lambda (_g2318523192_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2318523192_))))
                           (_g2318323222_
                            (lambda (_g2318523198_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g2318523198_))
                                  (let ((_e2319023200_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g2318523198_))))
                                    (let ((_hd2318923203_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2319023200_)))
                                          (_tl2318823205_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2319023200_))))
                                      ((lambda (_L23208_ _L23209_)
                                         (let ((_body23220_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args23139_))
                                                     _L23208_)))
                                           (declare (not safe))
                                           (cons _L23209_ _body23220_)))
                                       _tl2318823205_
                                       _hd2318923203_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g2318423195_ _g2318523198_))))))
                      (declare (not safe))
                      (_g2318323222_ _clause23182_)))))
          (let* ((_g2314323153_
                  (lambda (_g2314423150_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g2314423150_))))
                 (_g2314223179_
                  (lambda (_g2314423156_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g2314423156_))
                        (let ((_e2314823158_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g2314423156_))))
                          (let ((_hd2314723161_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2314823158_)))
                                (_tl2314623163_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2314823158_))))
                            ((lambda (_L23166_)
                               (let* ((_clauses23177_
                                       (map _clause-e23141_ _L23166_))
                                      (__tmp24128
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses23177_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp24128
                                  _stx23138_)))
                             _tl2314623163_)))
                        (let ()
                          (declare (not safe))
                          (_g2314323153_ _g2314423156_))))))
            (declare (not safe))
            (_g2314223179_ _stx23138_)))))
    (define gxc#xform-let-values%
      (lambda (_stx22932_ . _args22933_)
        (let* ((_g2293522968_
                (lambda (_g2293622965_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2293622965_))))
               (_g2293423135_
                (lambda (_g2293622971_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2293622971_))
                      (let ((_e2294322973_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2293622971_))))
                        (let ((_hd2294222976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2294322973_)))
                              (_tl2294122978_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2294322973_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2294122978_))
                              (let ((_e2294622981_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2294122978_))))
                                (let ((_hd2294522984_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2294622981_)))
                                      (_tl2294422986_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2294622981_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd2294522984_))
                                      (let ((_g24129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd2294522984_
                                                '0))))
                                        (begin
                                          (let ((_g24130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24129_)
                                                       (##vector-length
                                                        _g24129_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24130_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24130_)))
                                          (let ((_target2294722989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24129_ 0)))
                                                (_tl2294922991_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24129_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2294922991_))
                                                (letrec ((_loop2295022994_
                                                          (lambda (_hd2294822997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2295422999_
                           _hd2295523001_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd2294822997_))
                        (let ((_e2295123004_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd2294822997_))))
                          (let ((_lp-hd2295223007_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2295123004_)))
                                (_lp-tl2295323009_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2295123004_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd2295223007_))
                                (let ((_e2296023012_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd2295223007_))))
                                  (let ((_hd2295923015_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2296023012_)))
                                        (_tl2295823017_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2296023012_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl2295823017_))
                                        (let ((_e2296323020_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl2295823017_))))
                                          (let ((_hd2296223023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2296323020_)))
                                                (_tl2296123025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2296323020_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2296123025_))
                                                (let ((__tmp24143
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2296223023_
                                                               _expr2295422999_)))
                                                      (__tmp24142
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2295923015_
                                                               _hd2295523001_))))
                                                  (declare (not safe))
                                                  (_loop2295022994_
                                                   _lp-tl2295323009_
                                                   __tmp24143
                                                   __tmp24142))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2293522968_
                                                   _g2293622971_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2293522968_ _g2293622971_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2293522968_ _g2293622971_)))))
                        (let ((_expr2295623028_ (reverse _expr2295422999_))
                              (_hd2295723030_ (reverse _hd2295523001_)))
                          ((lambda (_L23033_ _L23034_ _L23035_ _L23036_)
                             (let* ((_g2305523071_
                                     (lambda (_g2305623068_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2305623068_))))
                                    (_g2305423125_
                                     (lambda (_g2305623074_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null? _g2305623074_))
                                           (let ((_g24131_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g2305623074_
                                                     '0))))
                                             (begin
                                               (let ((_g24132_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g24131_)
                                                            (##vector-length
                                                             _g24131_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g24132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g24132_)))
                                               (let ((_target2305823076_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g24131_
                                                         0)))
                                                     (_tl2306023078_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g24131_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl2306023078_))
                                                     (letrec ((_loop2306123081_
                                                               (lambda (_hd2305923084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2306523086_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd2305923084_))
                             (let ((_e2306223089_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd2305923084_))))
                               (let ((_lp-hd2306323092_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2306223089_)))
                                     (_lp-tl2306423094_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2306223089_))))
                                 (let ((__tmp24139
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd2306323092_
                                                _expr2306523086_))))
                                   (declare (not safe))
                                   (_loop2306123081_
                                    _lp-tl2306423094_
                                    __tmp24139))))
                             (let ((_expr2306623097_
                                    (reverse _expr2306523086_)))
                               ((lambda (_L23100_)
                                  (let ()
                                    (let* ((_body23113_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args22933_))
                                                 _L23033_))
                                           (__tmp24133
                                            (let ((__tmp24134
                                                   (let ((__tmp24135
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L23100_
                                                               _L23035_))
                                                            (let ((__tmp24136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2311423118_ _g2311523120_ _g2311623122_)
                             (let ((__tmp24137
                                    (let ((__tmp24138
                                           (let ()
                                             (declare (not safe))
                                             (cons _g2311423118_ '()))))
                                      (declare (not safe))
                                      (cons _g2311523120_ __tmp24138))))
                               (declare (not safe))
                               (cons __tmp24137 _g2311623122_)))))
                      (declare (not safe))
                      (foldr2 __tmp24136 '() _L23100_ _L23035_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24135
                                                           _body23113_))))
                                              (declare (not safe))
                                              (cons _L23036_ __tmp24134))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp24133
                                       _stx22932_))))
                                _expr2306623097_))))))
               (let ()
                 (declare (not safe))
                 (_loop2306123081_ _target2305823076_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2305523071_
                                                        _g2305623074_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2305523071_ _g2305623074_)))))
                                    (__tmp24140
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args22933_))
                                          (let ((__tmp24141
                                                 (lambda (_g2312723130_
                                                          _g2312823132_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2312723130_
                                                           _g2312823132_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp24141
                                                    '()
                                                    _L23034_)))))
                               (declare (not safe))
                               (_g2305423125_ __tmp24140)))
                           _tl2294422986_
                           _expr2295623028_
                           _hd2295723030_
                           _hd2294222976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop2295022994_
                                                     _target2294722989_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2293522968_
                                                   _g2293622971_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2293522968_ _g2293622971_)))))
                              (let ()
                                (declare (not safe))
                                (_g2293522968_ _g2293622971_)))))
                      (let ()
                        (declare (not safe))
                        (_g2293522968_ _g2293622971_))))))
          (declare (not safe))
          (_g2293423135_ _stx22932_))))
    (define gxc#xform-operands
      (lambda (_stx22888_ . _args22889_)
        (let* ((_g2289122902_
                (lambda (_g2289222899_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2289222899_))))
               (_g2289022929_
                (lambda (_g2289222905_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2289222905_))
                      (let ((_e2289722907_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2289222905_))))
                        (let ((_hd2289622910_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2289722907_)))
                              (_tl2289522912_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2289722907_))))
                          ((lambda (_L22915_ _L22916_)
                             (let* ((_rands22927_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args22889_))
                                          _L22915_))
                                    (__tmp24144
                                     (let ()
                                       (declare (not safe))
                                       (cons _L22916_ _rands22927_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp24144 _stx22888_)))
                           _tl2289522912_
                           _hd2289622910_)))
                      (let ()
                        (declare (not safe))
                        (_g2289122902_ _g2289222905_))))))
          (declare (not safe))
          (_g2289022929_ _stx22888_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx22809_ . _args22810_)
        (let* ((_g2281222829_
                (lambda (_g2281322826_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2281322826_))))
               (_g2281122885_
                (lambda (_g2281322832_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2281322832_))
                      (let ((_e2281822834_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2281322832_))))
                        (let ((_hd2281722837_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2281822834_)))
                              (_tl2281622839_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2281822834_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2281622839_))
                              (let ((_e2282122842_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2281622839_))))
                                (let ((_hd2282022845_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2282122842_)))
                                      (_tl2281922847_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2282122842_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2281922847_))
                                      (let ((_e2282422850_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2281922847_))))
                                        (let ((_hd2282322853_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2282422850_)))
                                              (_tl2282222855_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2282422850_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2282222855_))
                                              ((lambda (_L22858_ _L22859_)
                                                 (let* ((_expr22883_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args22810_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L22858_))
                     (let ((_arg122874_ (car _args22810_))
                           (_rest22876_ (cdr _args22810_)))
                       (if (let () (declare (not safe)) (null? _rest22876_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L22858_ _arg122874_))
                           (let ((_arg222879_ (car _rest22876_))
                                 (_rest22881_ (cdr _rest22876_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest22881_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L22858_
                                    _arg122874_
                                    _arg222879_))
                                 (apply gxc#compile-e
                                        _L22858_
                                        _arg122874_
                                        _arg222879_
                                        _rest22881_)))))))
                (__tmp24145
                 (let ((__tmp24146
                        (let ((__tmp24147
                               (let ()
                                 (declare (not safe))
                                 (cons _expr22883_ '()))))
                          (declare (not safe))
                          (cons _L22859_ __tmp24147))))
                   (declare (not safe))
                   (cons '%#set! __tmp24146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp24145
                                                    _stx22809_)))
                                               _hd2282322853_
                                               _hd2282022845_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2281222829_
                                                 _g2281322832_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2281222829_ _g2281322832_)))))
                              (let ()
                                (declare (not safe))
                                (_g2281222829_ _g2281322832_)))))
                      (let ()
                        (declare (not safe))
                        (_g2281222829_ _g2281322832_))))))
          (declare (not safe))
          (_g2281122885_ _stx22809_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx22740_)
        (let* ((_g2274222759_
                (lambda (_g2274322756_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2274322756_))))
               (_g2274122806_
                (lambda (_g2274322762_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2274322762_))
                      (let ((_e2274822764_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2274322762_))))
                        (let ((_hd2274722767_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2274822764_)))
                              (_tl2274622769_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2274822764_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2274622769_))
                              (let ((_e2275122772_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2274622769_))))
                                (let ((_hd2275022775_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2275122772_)))
                                      (_tl2274922777_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2275122772_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2274922777_))
                                      (let ((_e2275422780_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2274922777_))))
                                        (let ((_hd2275322783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2275422780_)))
                                              (_tl2275222785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2275422780_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2275222785_))
                                              ((lambda (_L22788_ _L22789_)
                                                 (let ((_sym22804_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L22789_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym22804_))
                                                   (let ((__tmp24148
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp24148
                                                      _sym22804_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L22788_))))
                                               _hd2275322783_
                                               _hd2275022775_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2274222759_
                                                 _g2274322762_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2274222759_ _g2274322762_)))))
                              (let ()
                                (declare (not safe))
                                (_g2274222759_ _g2274322762_)))))
                      (let ()
                        (declare (not safe))
                        (_g2274222759_ _g2274322762_))))))
          (declare (not safe))
          (_g2274122806_ _stx22740_))))
    (define gxc#collect-methods-call%
      (lambda (_stx22294_)
        (let* ((___stx2383823839_ _stx22294_)
               (_g2229822400_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2383823839_)))))
          (let ((___kont2384023841_
                 (lambda (_L22690_ _L22691_ _L22692_ _L22693_ _L22694_)
                   (let ((__tmp24149
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L22691_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp24149))))
                (___kont2384223843_
                 (lambda (_L22516_ _L22517_ _L22518_ _L22519_)
                   (let ((__tmp24150
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L22516_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp24150))))
                (___kont2384423845_ (lambda () '#!void)))
            (let ((___match2397323974_
                   (lambda (_e2230722562_
                            _hd2230622565_
                            _tl2230522567_
                            _e2231022570_
                            _hd2230922573_
                            _tl2230822575_
                            _e2231322578_
                            _hd2231222581_
                            _tl2231122583_
                            _e2231622586_
                            _hd2231522589_
                            _tl2231422591_
                            _e2231922594_
                            _hd2231822597_
                            _tl2231722599_
                            _e2232222602_
                            _hd2232122605_
                            _tl2232022607_
                            _e2232522610_
                            _hd2232422613_
                            _tl2232322615_
                            _e2232822618_
                            _hd2232722621_
                            _tl2232622623_
                            _e2233122626_
                            _hd2233022629_
                            _tl2232922631_
                            _e2233422634_
                            _hd2233322637_
                            _tl2233222639_
                            _e2233722642_
                            _hd2233622645_
                            _tl2233522647_
                            _e2234022650_
                            _hd2233922653_
                            _tl2233822655_
                            _e2234322658_
                            _hd2234222661_
                            _tl2234122663_
                            _e2234622666_
                            _hd2234522669_
                            _tl2234422671_
                            _e2234922674_
                            _hd2234822677_
                            _tl2234722679_
                            _e2235222682_
                            _hd2235122685_
                            _tl2235022687_)
                     (let ((_L22690_ _hd2235122685_)
                           (_L22691_ _hd2234222661_)
                           (_L22692_ _hd2233322637_)
                           (_L22693_ _hd2232422613_)
                           (_L22694_ _hd2231522589_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L22694_ 'bind-method!))
                           (___kont2384023841_
                            _L22690_
                            _L22691_
                            _L22692_
                            _L22693_
                            _L22694_)
                           (___kont2384423845_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx2383823839_))
                  (let ((_e2230722562_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx2383823839_))))
                    (let ((_tl2230522567_
                           (let () (declare (not safe)) (##cdr _e2230722562_)))
                          (_hd2230622565_
                           (let ()
                             (declare (not safe))
                             (##car _e2230722562_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl2230522567_))
                          (let ((_e2231022570_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl2230522567_))))
                            (let ((_tl2230822575_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2231022570_)))
                                  (_hd2230922573_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2231022570_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd2230922573_))
                                  (let ((_e2231322578_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd2230922573_))))
                                    (let ((_tl2231122583_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2231322578_)))
                                          (_hd2231222581_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2231322578_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd2231222581_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd2231222581_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl2231122583_))
                                                  (let ((_e2231622586_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl2231122583_))))
                                                    (let ((_tl2231422591_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2231622586_)))
                                                          (_hd2231522589_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2231622586_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl2231422591_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl2230822575_))
                      (let ((_e2231922594_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl2230822575_))))
                        (let ((_tl2231722599_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2231922594_)))
                              (_hd2231822597_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2231922594_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd2231822597_))
                              (let ((_e2232222602_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd2231822597_))))
                                (let ((_tl2232022607_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2232222602_)))
                                      (_hd2232122605_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2232222602_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd2232122605_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd2232122605_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl2232022607_))
                                              (let ((_e2232522610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl2232022607_))))
                                                (let ((_tl2232322615_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2232522610_)))
                                                      (_hd2232422613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2232522610_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl2232322615_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl2231722599_))
                                                          (let ((_e2232822618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl2231722599_))))
                    (let ((_tl2232622623_
                           (let () (declare (not safe)) (##cdr _e2232822618_)))
                          (_hd2232722621_
                           (let ()
                             (declare (not safe))
                             (##car _e2232822618_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd2232722621_))
                          (let ((_e2233122626_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd2232722621_))))
                            (let ((_tl2232922631_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2233122626_)))
                                  (_hd2233022629_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2233122626_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd2233022629_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd2233022629_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl2232922631_))
                                          (let ((_e2233422634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl2232922631_))))
                                            (let ((_tl2233222639_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2233422634_)))
                                                  (_hd2233322637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2233422634_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl2233222639_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl2232622623_))
                                                      (let ((_e2233722642_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl2232622623_))))
                (let ((_tl2233522647_
                       (let () (declare (not safe)) (##cdr _e2233722642_)))
                      (_hd2233622645_
                       (let () (declare (not safe)) (##car _e2233722642_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd2233622645_))
                      (let ((_e2234022650_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd2233622645_))))
                        (let ((_tl2233822655_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2234022650_)))
                              (_hd2233922653_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2234022650_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd2233922653_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd2233922653_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2233822655_))
                                      (let ((_e2234322658_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2233822655_))))
                                        (let ((_tl2234122663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2234322658_)))
                                              (_hd2234222661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2234322658_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2234122663_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl2233522647_))
                                                  (let ((_e2234622666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl2233522647_))))
                                                    (let ((_tl2234422671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2234622666_)))
                                                          (_hd2234522669_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2234622666_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd2234522669_))
                                                          (let ((_e2234922674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd2234522669_))))
                    (let ((_tl2234722679_
                           (let () (declare (not safe)) (##cdr _e2234922674_)))
                          (_hd2234822677_
                           (let ()
                             (declare (not safe))
                             (##car _e2234922674_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd2234822677_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd2234822677_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl2234722679_))
                                  (let ((_e2235222682_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl2234722679_))))
                                    (let ((_tl2235022687_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2235222682_)))
                                          (_hd2235122685_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2235222682_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl2235022687_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2234422671_))
                                              (___match2397323974_
                                               _e2230722562_
                                               _hd2230622565_
                                               _tl2230522567_
                                               _e2231022570_
                                               _hd2230922573_
                                               _tl2230822575_
                                               _e2231322578_
                                               _hd2231222581_
                                               _tl2231122583_
                                               _e2231622586_
                                               _hd2231522589_
                                               _tl2231422591_
                                               _e2231922594_
                                               _hd2231822597_
                                               _tl2231722599_
                                               _e2232222602_
                                               _hd2232122605_
                                               _tl2232022607_
                                               _e2232522610_
                                               _hd2232422613_
                                               _tl2232322615_
                                               _e2232822618_
                                               _hd2232722621_
                                               _tl2232622623_
                                               _e2233122626_
                                               _hd2233022629_
                                               _tl2232922631_
                                               _e2233422634_
                                               _hd2233322637_
                                               _tl2233222639_
                                               _e2233722642_
                                               _hd2233622645_
                                               _tl2233522647_
                                               _e2234022650_
                                               _hd2233922653_
                                               _tl2233822655_
                                               _e2234322658_
                                               _hd2234222661_
                                               _tl2234122663_
                                               _e2234622666_
                                               _hd2234522669_
                                               _tl2234422671_
                                               _e2234922674_
                                               _hd2234822677_
                                               _tl2234722679_
                                               _e2235222682_
                                               _hd2235122685_
                                               _tl2235022687_)
                                              (___kont2384423845_))
                                          (___kont2384423845_))))
                                  (___kont2384423845_))
                              (___kont2384423845_))
                          (___kont2384423845_))))
                  (___kont2384423845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl2233522647_))
                                                      (if (let ((__tmp24151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp24151 'bind-method!))
                  (let ((_L22516_ _hd2234222661_)
                        (_L22517_ _hd2233322637_)
                        (_L22518_ _hd2232422613_)
                        (_L22519_ _hd2231522589_))
                    (___kont2384223843_ _L22516_ _L22517_ _L22518_ _L22519_))
                  (___kont2384423845_))
              (___kont2384423845_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2384423845_))))
                                      (___kont2384423845_))
                                  (___kont2384423845_))
                              (___kont2384423845_))))
                      (___kont2384423845_))))
              (___kont2384423845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2384423845_))))
                                          (___kont2384423845_))
                                      (___kont2384423845_))
                                  (___kont2384423845_))))
                          (___kont2384423845_))))
                  (___kont2384423845_))
              (___kont2384423845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2384423845_))
                                          (___kont2384423845_))
                                      (___kont2384423845_))))
                              (___kont2384423845_))))
                      (___kont2384423845_))
                  (___kont2384423845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2384423845_))
                                              (___kont2384423845_))
                                          (___kont2384423845_))))
                                  (___kont2384423845_))))
                          (___kont2384423845_))))
                  (___kont2384423845_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx22241_ _id22242_ _new-id22243_)
        (let* ((_g2224522258_
                (lambda (_g2224622255_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2224622255_))))
               (_g2224422291_
                (lambda (_g2224622261_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2224622261_))
                      (let ((_e2225022263_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2224622261_))))
                        (let ((_hd2224922266_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2225022263_)))
                              (_tl2224822268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2225022263_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2224822268_))
                              (let ((_e2225322271_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2224822268_))))
                                (let ((_hd2225222274_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2225322271_)))
                                      (_tl2225122276_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2225322271_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2225122276_))
                                      ((lambda (_L22279_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L22279_
                                                _id22242_))
                                             (let ((__tmp24152
                                                    (let ((__tmp24153
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id22243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp24153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp24152
                                                _stx22241_))
                                             _stx22241_))
                                       _hd2225222274_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2224522258_ _g2224622261_)))))
                              (let ()
                                (declare (not safe))
                                (_g2224522258_ _g2224622261_)))))
                      (let ()
                        (declare (not safe))
                        (_g2224522258_ _g2224622261_))))))
          (declare (not safe))
          (_g2224422291_ _stx22241_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx22182_ _subst22183_)
        (let* ((_g2218522198_
                (lambda (_g2218622195_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2218622195_))))
               (_g2218422238_
                (lambda (_g2218622201_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2218622201_))
                      (let ((_e2219022203_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2218622201_))))
                        (let ((_hd2218922206_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2219022203_)))
                              (_tl2218822208_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2219022203_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2218822208_))
                              (let ((_e2219322211_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2218822208_))))
                                (let ((_hd2219222214_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2219322211_)))
                                      (_tl2219122216_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2219322211_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2219122216_))
                                      ((lambda (_L22219_)
                                         (let ((_$e22233_
                                                (let ((__tmp24154
                                                       (lambda (_sub22231_)
                                                         (let ((__tmp24155
                                                                (car _sub22231_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L22219_
                                                            __tmp24155)))))
                                                  (declare (not safe))
                                                  (find __tmp24154
                                                        _subst22183_))))
                                           (if _$e22233_
                                               ((lambda (_sub22236_)
                                                  (let ((__tmp24156
                                                         (let ((__tmp24157
                                                                (let ((__tmp24158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub22236_)))
                          (declare (not safe))
                          (cons __tmp24158 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp24157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp24156
                                                     _stx22182_)))
                                                _$e22233_)
                                               _stx22182_)))
                                       _hd2219222214_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2218522198_ _g2218622201_)))))
                              (let ()
                                (declare (not safe))
                                (_g2218522198_ _g2218622201_)))))
                      (let ()
                        (declare (not safe))
                        (_g2218522198_ _g2218622201_))))))
          (declare (not safe))
          (_g2218422238_ _stx22182_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx22110_ _id22111_ _new-id22112_)
        (let* ((_g2211422131_
                (lambda (_g2211522128_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2211522128_))))
               (_g2211322179_
                (lambda (_g2211522134_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2211522134_))
                      (let ((_e2212022136_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2211522134_))))
                        (let ((_hd2211922139_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2212022136_)))
                              (_tl2211822141_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2212022136_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2211822141_))
                              (let ((_e2212322144_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2211822141_))))
                                (let ((_hd2212222147_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2212322144_)))
                                      (_tl2212122149_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2212322144_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2212122149_))
                                      (let ((_e2212622152_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2212122149_))))
                                        (let ((_hd2212522155_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2212622152_)))
                                              (_tl2212422157_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2212622152_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2212422157_))
                                              ((lambda (_L22160_ _L22161_)
                                                 (let ((_new-expr22176_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L22160_
                                                           _id22111_
                                                           _new-id22112_)))
                                                       (_new-xid22177_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L22161_
                                                               _id22111_))
                                                            _new-id22112_
                                                            _L22161_)))
                                                   (let ((__tmp24159
                                                          (let ((__tmp24160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp24161
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr22176_ '()))))
                           (declare (not safe))
                           (cons _new-xid22177_ __tmp24161))))
                    (declare (not safe))
                    (cons '%#set! __tmp24160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp24159
                                                      _stx22110_))))
                                               _hd2212522155_
                                               _hd2212222147_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2211422131_
                                                 _g2211522134_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2211422131_ _g2211522134_)))))
                              (let ()
                                (declare (not safe))
                                (_g2211422131_ _g2211522134_)))))
                      (let ()
                        (declare (not safe))
                        (_g2211422131_ _g2211522134_))))))
          (declare (not safe))
          (_g2211322179_ _stx22110_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx22034_ _subst22035_)
        (let* ((_g2203722054_
                (lambda (_g2203822051_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2203822051_))))
               (_g2203622107_
                (lambda (_g2203822057_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2203822057_))
                      (let ((_e2204322059_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2203822057_))))
                        (let ((_hd2204222062_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2204322059_)))
                              (_tl2204122064_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2204322059_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2204122064_))
                              (let ((_e2204622067_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2204122064_))))
                                (let ((_hd2204522070_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2204622067_)))
                                      (_tl2204422072_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2204622067_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2204422072_))
                                      (let ((_e2204922075_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2204422072_))))
                                        (let ((_hd2204822078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2204922075_)))
                                              (_tl2204722080_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2204922075_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2204722080_))
                                              ((lambda (_L22083_ _L22084_)
                                                 (let ((_new-expr22104_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L22083_
                                                           _subst22035_)))
                                                       (_new-xid22105_
                                                        (let ((_$e22101_
                                                               (let ((__tmp24162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub22099_)
                                (let ((__tmp24163 (car _sub22099_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L22084_
                                   __tmp24163)))))
                         (declare (not safe))
                         (find __tmp24162 _subst22035_))))
                  (if _$e22101_ (cdr _$e22101_) _L22084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp24164
                                                          (let ((__tmp24165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp24166
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr22104_ '()))))
                           (declare (not safe))
                           (cons _new-xid22105_ __tmp24166))))
                    (declare (not safe))
                    (cons '%#set! __tmp24165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp24164
                                                      _stx22034_))))
                                               _hd2204822078_
                                               _hd2204522070_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2203722054_
                                                 _g2203822057_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2203722054_ _g2203822057_)))))
                              (let ()
                                (declare (not safe))
                                (_g2203722054_ _g2203822057_)))))
                      (let ()
                        (declare (not safe))
                        (_g2203722054_ _g2203822057_))))))
          (declare (not safe))
          (_g2203622107_ _stx22034_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx21980_ _ht21981_)
        (let* ((_g2198321996_
                (lambda (_g2198421993_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2198421993_))))
               (_g2198222031_
                (lambda (_g2198421999_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2198421999_))
                      (let ((_e2198822001_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2198421999_))))
                        (let ((_hd2198722004_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2198822001_)))
                              (_tl2198622006_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2198822001_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2198622006_))
                              (let ((_e2199122009_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2198622006_))))
                                (let ((_hd2199022012_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2199122009_)))
                                      (_tl2198922014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2199122009_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2198922014_))
                                      ((lambda (_L22017_)
                                         (let ((_eid22029_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L22017_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht21981_
                                            _eid22029_
                                            1+
                                            '0)))
                                       _hd2199022012_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2198321996_ _g2198421999_)))))
                              (let ()
                                (declare (not safe))
                                (_g2198321996_ _g2198421999_)))))
                      (let ()
                        (declare (not safe))
                        (_g2198321996_ _g2198421999_))))))
          (declare (not safe))
          (_g2198222031_ _stx21980_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx21910_ _ht21911_)
        (let* ((_g2191321930_
                (lambda (_g2191421927_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2191421927_))))
               (_g2191221977_
                (lambda (_g2191421933_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2191421933_))
                      (let ((_e2191921935_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2191421933_))))
                        (let ((_hd2191821938_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2191921935_)))
                              (_tl2191721940_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2191921935_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2191721940_))
                              (let ((_e2192221943_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2191721940_))))
                                (let ((_hd2192121946_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2192221943_)))
                                      (_tl2192021948_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2192221943_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2192021948_))
                                      (let ((_e2192521951_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2192021948_))))
                                        (let ((_hd2192421954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2192521951_)))
                                              (_tl2192321956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2192521951_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2192321956_))
                                              ((lambda (_L21959_ _L21960_)
                                                 (let ((_eid21975_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L21960_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht21911_
                                                      _eid21975_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L21959_
                                                      _ht21911_))))
                                               _hd2192421954_
                                               _hd2192121946_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2191321930_
                                                 _g2191421933_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2191321930_ _g2191421933_)))))
                              (let ()
                                (declare (not safe))
                                (_g2191321930_ _g2191421933_)))))
                      (let ()
                        (declare (not safe))
                        (_g2191321930_ _g2191421933_))))))
          (declare (not safe))
          (_g2191221977_ _stx21910_))))
    (define gxc#find-body%
      (lambda (_stx21823_ _arg21824_)
        (let* ((_g2182621845_
                (lambda (_g2182721842_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2182721842_))))
               (_g2182521907_
                (lambda (_g2182721848_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2182721848_))
                      (let ((_e2183121850_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2182721848_))))
                        (let ((_hd2183021853_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2183121850_)))
                              (_tl2182921855_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2183121850_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl2182921855_))
                              (let ((_g24167_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl2182921855_
                                        '0))))
                                (begin
                                  (let ((_g24168_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g24167_)
                                               (##vector-length _g24167_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g24168_ 2)))
                                        (error "Context expects 2 values"
                                               _g24168_)))
                                  (let ((_target2183221858_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g24167_ 0)))
                                        (_tl2183421860_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g24167_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2183421860_))
                                        (letrec ((_loop2183521863_
                                                  (lambda (_hd2183321866_
                                                           _expr2183921868_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd2183321866_))
                                                        (let ((_e2183621871_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd2183321866_))))
                  (let ((_lp-hd2183721874_
                         (let () (declare (not safe)) (##car _e2183621871_)))
                        (_lp-tl2183821876_
                         (let () (declare (not safe)) (##cdr _e2183621871_))))
                    (let ((__tmp24172
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd2183721874_ _expr2183921868_))))
                      (declare (not safe))
                      (_loop2183521863_ _lp-tl2183821876_ __tmp24172))))
                (let ((_expr2184021879_ (reverse _expr2183921868_)))
                  ((lambda (_L21882_)
                     (let ((__tmp24171
                            (lambda (_g2189521897_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _g2189521897_ _arg21824_))))
                           (__tmp24169
                            (let ((__tmp24170
                                   (lambda (_g2189921902_ _g2190021904_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2189921902_ _g2190021904_)))))
                              (declare (not safe))
                              (foldr1 __tmp24170 '() _L21882_))))
                       (declare (not safe))
                       (ormap1 __tmp24171 __tmp24169)))
                   _expr2184021879_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2183521863_
                                             _target2183221858_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2182621845_ _g2182721848_))))))
                              (let ()
                                (declare (not safe))
                                (_g2182621845_ _g2182721848_)))))
                      (let ()
                        (declare (not safe))
                        (_g2182621845_ _g2182721848_))))))
          (declare (not safe))
          (_g2182521907_ _stx21823_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx21755_ _arg21756_)
        (let* ((_g2175821775_
                (lambda (_g2175921772_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2175921772_))))
               (_g2175721820_
                (lambda (_g2175921778_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2175921778_))
                      (let ((_e2176421780_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2175921778_))))
                        (let ((_hd2176321783_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2176421780_)))
                              (_tl2176221785_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2176421780_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2176221785_))
                              (let ((_e2176721788_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2176221785_))))
                                (let ((_hd2176621791_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2176721788_)))
                                      (_tl2176521793_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2176721788_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2176521793_))
                                      (let ((_e2177021796_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2176521793_))))
                                        (let ((_hd2176921799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2177021796_)))
                                              (_tl2176821801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2177021796_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2176821801_))
                                              ((lambda (_L21804_ _L21805_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L21804_
                                                    _arg21756_)))
                                               _hd2176921799_
                                               _hd2176621791_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2175821775_
                                                 _g2175921778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2175821775_ _g2175921778_)))))
                              (let ()
                                (declare (not safe))
                                (_g2175821775_ _g2175921778_)))))
                      (let ()
                        (declare (not safe))
                        (_g2175821775_ _g2175921778_))))))
          (declare (not safe))
          (_g2175721820_ _stx21755_))))
    (define gxc#find-lambda%
      (lambda (_stx21687_ _arg21688_)
        (let* ((_g2169021707_
                (lambda (_g2169121704_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2169121704_))))
               (_g2168921752_
                (lambda (_g2169121710_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2169121710_))
                      (let ((_e2169621712_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2169121710_))))
                        (let ((_hd2169521715_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2169621712_)))
                              (_tl2169421717_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2169621712_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2169421717_))
                              (let ((_e2169921720_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2169421717_))))
                                (let ((_hd2169821723_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2169921720_)))
                                      (_tl2169721725_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2169921720_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2169721725_))
                                      (let ((_e2170221728_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2169721725_))))
                                        (let ((_hd2170121731_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2170221728_)))
                                              (_tl2170021733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2170221728_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2170021733_))
                                              ((lambda (_L21736_ _L21737_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L21736_
                                                    _arg21688_)))
                                               _hd2170121731_
                                               _hd2169821723_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2169021707_
                                                 _g2169121710_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2169021707_ _g2169121710_)))))
                              (let ()
                                (declare (not safe))
                                (_g2169021707_ _g2169121710_)))))
                      (let ()
                        (declare (not safe))
                        (_g2169021707_ _g2169121710_))))))
          (declare (not safe))
          (_g2168921752_ _stx21687_))))
    (define gxc#find-case-lambda%
      (lambda (_stx21569_ _arg21570_)
        (let* ((_g2157221600_
                (lambda (_g2157321597_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2157321597_))))
               (_g2157121684_
                (lambda (_g2157321603_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2157321603_))
                      (let ((_e2157821605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2157321603_))))
                        (let ((_hd2157721608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2157821605_)))
                              (_tl2157621610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2157821605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl2157621610_))
                              (let ((_g24173_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl2157621610_
                                        '0))))
                                (begin
                                  (let ((_g24174_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g24173_)
                                               (##vector-length _g24173_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g24174_ 2)))
                                        (error "Context expects 2 values"
                                               _g24174_)))
                                  (let ((_target2157921613_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g24173_ 0)))
                                        (_tl2158121615_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g24173_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2158121615_))
                                        (letrec ((_loop2158221618_
                                                  (lambda (_hd2158021621_
                                                           _body2158621623_
                                                           _hd2158721625_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd2158021621_))
                                                        (let ((_e2158321628_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd2158021621_))))
                  (let ((_lp-hd2158421631_
                         (let () (declare (not safe)) (##car _e2158321628_)))
                        (_lp-tl2158521633_
                         (let () (declare (not safe)) (##cdr _e2158321628_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd2158421631_))
                        (let ((_e2159221636_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd2158421631_))))
                          (let ((_hd2159121639_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2159221636_)))
                                (_tl2159021641_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2159221636_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl2159021641_))
                                (let ((_e2159521644_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl2159021641_))))
                                  (let ((_hd2159421647_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2159521644_)))
                                        (_tl2159321649_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2159521644_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2159321649_))
                                        (let ((__tmp24179
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd2159421647_
                                                       _body2158621623_)))
                                              (__tmp24178
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd2159121639_
                                                       _hd2158721625_))))
                                          (declare (not safe))
                                          (_loop2158221618_
                                           _lp-tl2158521633_
                                           __tmp24179
                                           __tmp24178))
                                        (let ()
                                          (declare (not safe))
                                          (_g2157221600_ _g2157321603_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2157221600_ _g2157321603_)))))
                        (let ()
                          (declare (not safe))
                          (_g2157221600_ _g2157321603_)))))
                (let ((_body2158821652_ (reverse _body2158621623_))
                      (_hd2158921654_ (reverse _hd2158721625_)))
                  ((lambda (_L21657_ _L21658_)
                     (let ((__tmp24177
                            (lambda (_g2167221674_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _g2167221674_ _arg21570_))))
                           (__tmp24175
                            (let ((__tmp24176
                                   (lambda (_g2167621679_ _g2167721681_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2167621679_ _g2167721681_)))))
                              (declare (not safe))
                              (foldr1 __tmp24176 '() _L21657_))))
                       (declare (not safe))
                       (ormap1 __tmp24177 __tmp24175)))
                   _body2158821652_
                   _hd2158921654_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2158221618_
                                             _target2157921613_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2157221600_ _g2157321603_))))))
                              (let ()
                                (declare (not safe))
                                (_g2157221600_ _g2157321603_)))))
                      (let ()
                        (declare (not safe))
                        (_g2157221600_ _g2157321603_))))))
          (declare (not safe))
          (_g2157121684_ _stx21569_))))
    (define gxc#find-let-values%
      (lambda (_stx21419_ _arg21420_)
        (let* ((_g2142221457_
                (lambda (_g2142321454_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2142321454_))))
               (_g2142121566_
                (lambda (_g2142321460_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2142321460_))
                      (let ((_e2142921462_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2142321460_))))
                        (let ((_hd2142821465_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2142921462_)))
                              (_tl2142721467_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2142921462_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2142721467_))
                              (let ((_e2143221470_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2142721467_))))
                                (let ((_hd2143121473_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2143221470_)))
                                      (_tl2143021475_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2143221470_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd2143121473_))
                                      (let ((_g24180_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd2143121473_
                                                '0))))
                                        (begin
                                          (let ((_g24181_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24180_)
                                                       (##vector-length
                                                        _g24180_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24181_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24181_)))
                                          (let ((_target2143321478_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24180_ 0)))
                                                (_tl2143521480_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24180_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2143521480_))
                                                (letrec ((_loop2143621483_
                                                          (lambda (_hd2143421486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2144021488_
                           _bind2144121490_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd2143421486_))
                        (let ((_e2143721493_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd2143421486_))))
                          (let ((_lp-hd2143821496_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2143721493_)))
                                (_lp-tl2143921498_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2143721493_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd2143821496_))
                                (let ((_e2144621501_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd2143821496_))))
                                  (let ((_hd2144521504_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2144621501_)))
                                        (_tl2144421506_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2144621501_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl2144421506_))
                                        (let ((_e2144921509_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl2144421506_))))
                                          (let ((_hd2144821512_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2144921509_)))
                                                (_tl2144721514_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2144921509_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2144721514_))
                                                (let ((__tmp24186
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2144821512_
                                                               _expr2144021488_)))
                                                      (__tmp24185
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2144521504_
                                                               _bind2144121490_))))
                                                  (declare (not safe))
                                                  (_loop2143621483_
                                                   _lp-tl2143921498_
                                                   __tmp24186
                                                   __tmp24185))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2142221457_
                                                   _g2142321460_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2142221457_ _g2142321460_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2142221457_ _g2142321460_)))))
                        (let ((_expr2144221517_ (reverse _expr2144021488_))
                              (_bind2144321519_ (reverse _bind2144121490_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2143021475_))
                              (let ((_e2145221522_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2143021475_))))
                                (let ((_hd2145121525_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2145221522_)))
                                      (_tl2145021527_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2145221522_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2145021527_))
                                      ((lambda (_L21530_ _L21531_ _L21532_)
                                         (let ((_$e21563_
                                                (let ((__tmp24184
                                                       (lambda (_g2155121553_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g2155121553_
                                                            _arg21420_))))
                                                      (__tmp24182
                                                       (let ((__tmp24183
                                                              (lambda (_g2155521558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2155621560_)
                        (let ()
                          (declare (not safe))
                          (cons _g2155521558_ _g2155621560_)))))
                 (declare (not safe))
                 (foldr1 __tmp24183 '() _L21531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp24184
                                                          __tmp24182))))
                                           (if _$e21563_
                                               _$e21563_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L21530_
                                                  _arg21420_)))))
                                       _hd2145121525_
                                       _expr2144221517_
                                       _bind2144321519_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2142221457_ _g2142321460_)))))
                              (let ()
                                (declare (not safe))
                                (_g2142221457_ _g2142321460_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop2143621483_
                                                     _target2143321478_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2142221457_
                                                   _g2142321460_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2142221457_ _g2142321460_)))))
                              (let ()
                                (declare (not safe))
                                (_g2142221457_ _g2142321460_)))))
                      (let ()
                        (declare (not safe))
                        (_g2142221457_ _g2142321460_))))))
          (declare (not safe))
          (_g2142121566_ _stx21419_))))
    (define gxc#find-setq%
      (lambda (_stx21351_ _arg21352_)
        (let* ((_g2135421371_
                (lambda (_g2135521368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2135521368_))))
               (_g2135321416_
                (lambda (_g2135521374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2135521374_))
                      (let ((_e2136021376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2135521374_))))
                        (let ((_hd2135921379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2136021376_)))
                              (_tl2135821381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2136021376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2135821381_))
                              (let ((_e2136321384_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2135821381_))))
                                (let ((_hd2136221387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2136321384_)))
                                      (_tl2136121389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2136321384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2136121389_))
                                      (let ((_e2136621392_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2136121389_))))
                                        (let ((_hd2136521395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2136621392_)))
                                              (_tl2136421397_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2136621392_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2136421397_))
                                              ((lambda (_L21400_ _L21401_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L21400_
                                                    _arg21352_)))
                                               _hd2136521395_
                                               _hd2136221387_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2135421371_
                                                 _g2135521374_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2135421371_ _g2135521374_)))))
                              (let ()
                                (declare (not safe))
                                (_g2135421371_ _g2135521374_)))))
                      (let ()
                        (declare (not safe))
                        (_g2135421371_ _g2135521374_))))))
          (declare (not safe))
          (_g2135321416_ _stx21351_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx21295_ _ids21296_)
        (let* ((_g2129821311_
                (lambda (_g2129921308_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2129921308_))))
               (_g2129721348_
                (lambda (_g2129921314_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2129921314_))
                      (let ((_e2130321316_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2129921314_))))
                        (let ((_hd2130221319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2130321316_)))
                              (_tl2130121321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2130321316_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2130121321_))
                              (let ((_e2130621324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2130121321_))))
                                (let ((_hd2130521327_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2130621324_)))
                                      (_tl2130421329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2130621324_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2130421329_))
                                      ((lambda (_L21332_)
                                         (let ((__tmp24187
                                                (lambda (_g2134321345_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L21332_
                                                     _g2134321345_)))))
                                           (declare (not safe))
                                           (find __tmp24187 _ids21296_)))
                                       _hd2130521327_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2129821311_ _g2129921314_)))))
                              (let ()
                                (declare (not safe))
                                (_g2129821311_ _g2129921314_)))))
                      (let ()
                        (declare (not safe))
                        (_g2129821311_ _g2129921314_))))))
          (declare (not safe))
          (_g2129721348_ _stx21295_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx21219_ _ids21220_)
        (let* ((_g2122221239_
                (lambda (_g2122321236_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2122321236_))))
               (_g2122121292_
                (lambda (_g2122321242_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2122321242_))
                      (let ((_e2122821244_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2122321242_))))
                        (let ((_hd2122721247_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2122821244_)))
                              (_tl2122621249_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2122821244_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2122621249_))
                              (let ((_e2123121252_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2122621249_))))
                                (let ((_hd2123021255_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2123121252_)))
                                      (_tl2122921257_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2123121252_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2122921257_))
                                      (let ((_e2123421260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2122921257_))))
                                        (let ((_hd2123321263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2123421260_)))
                                              (_tl2123221265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2123421260_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2123221265_))
                                              ((lambda (_L21268_ _L21269_)
                                                 (let ((_$e21289_
                                                        (let ((__tmp24188
                                                               (lambda (_g2128421286_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L21269_ _g2128421286_)))))
                  (declare (not safe))
                  (find __tmp24188 _ids21220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e21289_
                                                       _$e21289_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L21268_
                                                          _ids21220_)))))
                                               _hd2123321263_
                                               _hd2123021255_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2122221239_
                                                 _g2122321242_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2122221239_ _g2122321242_)))))
                              (let ()
                                (declare (not safe))
                                (_g2122221239_ _g2122321242_)))))
                      (let ()
                        (declare (not safe))
                        (_g2122221239_ _g2122321242_))))))
          (declare (not safe))
          (_g2122121292_ _stx21219_))))))
