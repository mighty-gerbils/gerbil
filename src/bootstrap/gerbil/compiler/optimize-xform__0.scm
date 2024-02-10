(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707601718)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl221392_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221392_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221392_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221392_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221392_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl221392_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl221388_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#declare gxc#xform-identity))
           _tbl221388_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl221384_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226106 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl221384_ __tmp226106))
           (let ((__tmp226107 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl221384_ __tmp226107))
           _tbl221384_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl221380_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221380_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221380_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221380_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221380_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221380_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl221380_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl221376_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226108 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl221376_ __tmp226108))
           (let ((__tmp226109 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl221376_ __tmp226109))
           (let ()
             (declare (not safe))
             (table-set! _tbl221376_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221376_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221376_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221376_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221376_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl221376_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl221372_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226110 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl221372_ __tmp226110))
           (let ()
             (declare (not safe))
             (table-set! _tbl221372_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221372_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221372_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221372_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221372_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221372_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221372_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221372_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221372_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221372_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221372_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl221372_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx221355_ . _args221357_)
        (let ((__tmp226112
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221357_)
                     (gxc#compile-e__0 _stx221355_)
                     (let ((_arg1221362_ (car _args221357_))
                           (_rest221364_ (cdr _args221357_)))
                       (if (null? _rest221364_)
                           (gxc#compile-e__1 _stx221355_ _arg1221362_)
                           (let ((_arg2221367_ (car _rest221364_))
                                 (_rest221369_ (cdr _rest221364_)))
                             (if (null? _rest221369_)
                                 (gxc#compile-e__2
                                  _stx221355_
                                  _arg1221362_
                                  _arg2221367_)
                                 (apply gxc#compile-e
                                        _stx221355_
                                        _arg1221362_
                                        _arg2221367_
                                        _rest221369_))))))))
              (__tmp226111 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp226112
           gxc#current-compile-methods
           __tmp226111))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl221352_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226113 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl221352_ __tmp226113))
           (let ()
             (declare (not safe))
             (table-set! _tbl221352_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221352_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221352_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221352_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221352_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl221352_))))
    (define gxc#apply-collect-methods
      (lambda (_stx221335_ . _args221337_)
        (let ((__tmp226115
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221337_)
                     (gxc#compile-e__0 _stx221335_)
                     (let ((_arg1221342_ (car _args221337_))
                           (_rest221344_ (cdr _args221337_)))
                       (if (null? _rest221344_)
                           (gxc#compile-e__1 _stx221335_ _arg1221342_)
                           (let ((_arg2221347_ (car _rest221344_))
                                 (_rest221349_ (cdr _rest221344_)))
                             (if (null? _rest221349_)
                                 (gxc#compile-e__2
                                  _stx221335_
                                  _arg1221342_
                                  _arg2221347_)
                                 (apply gxc#compile-e
                                        _stx221335_
                                        _arg1221342_
                                        _arg2221347_
                                        _rest221349_))))))))
              (__tmp226114 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp226115
           gxc#current-compile-methods
           __tmp226114))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl221332_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226116 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl221332_ __tmp226116))
           (let ()
             (declare (not safe))
             (table-set! _tbl221332_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221332_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221332_ '%#set! gxc#expression-subst-setq%))
           _tbl221332_))))
    (define gxc#apply-expression-subst
      (lambda (_stx221315_ . _args221317_)
        (let ((__tmp226118
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221317_)
                     (gxc#compile-e__0 _stx221315_)
                     (let ((_arg1221322_ (car _args221317_))
                           (_rest221324_ (cdr _args221317_)))
                       (if (null? _rest221324_)
                           (gxc#compile-e__1 _stx221315_ _arg1221322_)
                           (let ((_arg2221327_ (car _rest221324_))
                                 (_rest221329_ (cdr _rest221324_)))
                             (if (null? _rest221329_)
                                 (gxc#compile-e__2
                                  _stx221315_
                                  _arg1221322_
                                  _arg2221327_)
                                 (apply gxc#compile-e
                                        _stx221315_
                                        _arg1221322_
                                        _arg2221327_
                                        _rest221329_))))))))
              (__tmp226117 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp226118
           gxc#current-compile-methods
           __tmp226117))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl221312_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226119 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl221312_ __tmp226119))
           (let ()
             (declare (not safe))
             (table-set! _tbl221312_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221312_ '%#set! gxc#expression-subst*-setq%))
           _tbl221312_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx221295_ . _args221297_)
        (let ((__tmp226121
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221297_)
                     (gxc#compile-e__0 _stx221295_)
                     (let ((_arg1221302_ (car _args221297_))
                           (_rest221304_ (cdr _args221297_)))
                       (if (null? _rest221304_)
                           (gxc#compile-e__1 _stx221295_ _arg1221302_)
                           (let ((_arg2221307_ (car _rest221304_))
                                 (_rest221309_ (cdr _rest221304_)))
                             (if (null? _rest221309_)
                                 (gxc#compile-e__2
                                  _stx221295_
                                  _arg1221302_
                                  _arg2221307_)
                                 (apply gxc#compile-e
                                        _stx221295_
                                        _arg1221302_
                                        _arg2221307_
                                        _rest221309_))))))))
              (__tmp226120 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp226121
           gxc#current-compile-methods
           __tmp226120))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl221292_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226122 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl221292_ __tmp226122))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221292_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221292_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221292_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl221292_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl221288_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226123 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl221288_ __tmp226123))
           (let ()
             (declare (not safe))
             (table-set! _tbl221288_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221288_ '%#set! gxc#find-var-refs-setq%))
           _tbl221288_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx221271_ . _args221273_)
        (let ((__tmp226125
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221273_)
                     (gxc#compile-e__0 _stx221271_)
                     (let ((_arg1221278_ (car _args221273_))
                           (_rest221280_ (cdr _args221273_)))
                       (if (null? _rest221280_)
                           (gxc#compile-e__1 _stx221271_ _arg1221278_)
                           (let ((_arg2221283_ (car _rest221280_))
                                 (_rest221285_ (cdr _rest221280_)))
                             (if (null? _rest221285_)
                                 (gxc#compile-e__2
                                  _stx221271_
                                  _arg1221278_
                                  _arg2221283_)
                                 (apply gxc#compile-e
                                        _stx221271_
                                        _arg1221278_
                                        _arg2221283_
                                        _rest221285_))))))))
              (__tmp226124 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp226125
           gxc#current-compile-methods
           __tmp226124))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl221268_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226126 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl221268_ __tmp226126))
           (let ()
             (declare (not safe))
             (table-set! _tbl221268_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221268_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl221268_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx221251_ . _args221253_)
        (let ((__tmp226128
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221253_)
                     (gxc#compile-e__0 _stx221251_)
                     (let ((_arg1221258_ (car _args221253_))
                           (_rest221260_ (cdr _args221253_)))
                       (if (null? _rest221260_)
                           (gxc#compile-e__1 _stx221251_ _arg1221258_)
                           (let ((_arg2221263_ (car _rest221260_))
                                 (_rest221265_ (cdr _rest221260_)))
                             (if (null? _rest221265_)
                                 (gxc#compile-e__2
                                  _stx221251_
                                  _arg1221258_
                                  _arg2221263_)
                                 (apply gxc#compile-e
                                        _stx221251_
                                        _arg1221258_
                                        _arg2221263_
                                        _rest221265_))))))))
              (__tmp226127 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp226128
           gxc#current-compile-methods
           __tmp226127))))
    (define gxc#xform-identity
      (lambda (_stx221248_ . _args221249_) _stx221248_))
    (define gxc#xform-wrap-source
      (lambda (_stx221245_ _src-stx221246_)
        (let ((__tmp226129
               (let () (declare (not safe)) (gx#stx-source _src-stx221246_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx221245_ __tmp226129))))
    (define gxc#xform-apply-compile-e
      (lambda (_args221232_)
        (lambda (_stx221234_)
          (if (let () (declare (not safe)) (null? _args221232_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx221234_))
              (let ((_arg1221236_ (car _args221232_))
                    (_rest221238_ (cdr _args221232_)))
                (if (let () (declare (not safe)) (null? _rest221238_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx221234_ _arg1221236_))
                    (let ((_arg2221241_ (car _rest221238_))
                          (_rest221243_ (cdr _rest221238_)))
                      (if (let () (declare (not safe)) (null? _rest221243_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx221234_
                             _arg1221236_
                             _arg2221241_))
                          (apply gxc#compile-e
                                 _stx221234_
                                 _arg1221236_
                                 _arg2221241_
                                 _rest221243_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx221191_ . _args221192_)
        (let* ((_g221194221204_
                (lambda (_g221195221201_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221195221201_))))
               (_g221193221229_
                (lambda (_g221195221207_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221195221207_))
                      (let ((_e221199221209_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221195221207_))))
                        (let ((_hd221198221212_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221199221209_)))
                              (_tl221197221214_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221199221209_))))
                          ((lambda (_L221217_)
                             (let* ((_forms221227_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args221192_))
                                          _L221217_))
                                    (__tmp226130
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms221227_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp226130
                                _stx221191_)))
                           _tl221197221214_)))
                      (let ()
                        (declare (not safe))
                        (_g221194221204_ _g221195221207_))))))
          (declare (not safe))
          (_g221193221229_ _stx221191_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx221149_ . _args221150_)
        (let* ((_g221152221162_
                (lambda (_g221153221159_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221153221159_))))
               (_g221151221188_
                (lambda (_g221153221165_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221153221165_))
                      (let ((_e221157221167_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221153221165_))))
                        (let ((_hd221156221170_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221157221167_)))
                              (_tl221155221172_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221157221167_))))
                          ((lambda (_L221175_)
                             (let ((__tmp226133
                                    (lambda ()
                                      (let* ((_forms221186_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args221150_))
                                                   _L221175_))
                                             (__tmp226134
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms221186_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp226134
                                         _stx221149_))))
                                   (__tmp226131
                                    (let ((__tmp226132
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp226132 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp226133
                                gx#current-expander-phi
                                __tmp226131)))
                           _tl221155221172_)))
                      (let ()
                        (declare (not safe))
                        (_g221152221162_ _g221153221165_))))))
          (declare (not safe))
          (_g221151221188_ _stx221149_))))
    (define gxc#xform-module%
      (lambda (_stx221077_ . _args221078_)
        (let* ((_g221080221094_
                (lambda (_g221081221091_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221081221091_))))
               (_g221079221146_
                (lambda (_g221081221097_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221081221097_))
                      (let ((_e221086221099_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221081221097_))))
                        (let ((_hd221085221102_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221086221099_)))
                              (_tl221084221104_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221086221099_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221084221104_))
                              (let ((_e221089221107_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221084221104_))))
                                (let ((_hd221088221110_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221089221107_)))
                                      (_tl221087221112_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221089221107_))))
                                  ((lambda (_L221115_ _L221116_)
                                     (let* ((_ctx221129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L221116_)))
                                            (_code221131_
                                             (##structure-ref
                                              _ctx221129_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code221143_
                                             (let ((__tmp226135
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args221078_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code221131_))
                                                          (let ((_arg1221134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args221078_))
                        (_rest221136_ (cdr _args221078_)))
                    (if (let () (declare (not safe)) (null? _rest221136_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code221131_ _arg1221134_))
                        (let ((_arg2221139_ (car _rest221136_))
                              (_rest221141_ (cdr _rest221136_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest221141_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code221131_
                                 _arg1221134_
                                 _arg2221139_))
                              (apply gxc#compile-e
                                     _code221131_
                                     _arg1221134_
                                     _arg2221139_
                                     _rest221141_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp226135
                                                gx#current-expander-context
                                                _ctx221129_))))
                                       (##structure-set!
                                        _ctx221129_
                                        _code221143_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp226136
                                              (let ((__tmp226137
                                                     (let ((__tmp226138
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code221143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L221116_ __tmp226138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp226137))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp226136
                                          _stx221077_))))
                                   _tl221087221112_
                                   _hd221088221110_)))
                              (let ()
                                (declare (not safe))
                                (_g221080221094_ _g221081221097_)))))
                      (let ()
                        (declare (not safe))
                        (_g221080221094_ _g221081221097_))))))
          (declare (not safe))
          (_g221079221146_ _stx221077_))))
    (define gxc#xform-define-values%
      (lambda (_stx220998_ . _args220999_)
        (let* ((_g221001221018_
                (lambda (_g221002221015_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221002221015_))))
               (_g221000221074_
                (lambda (_g221002221021_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221002221021_))
                      (let ((_e221007221023_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221002221021_))))
                        (let ((_hd221006221026_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221007221023_)))
                              (_tl221005221028_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221007221023_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221005221028_))
                              (let ((_e221010221031_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221005221028_))))
                                (let ((_hd221009221034_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221010221031_)))
                                      (_tl221008221036_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221010221031_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221008221036_))
                                      (let ((_e221013221039_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221008221036_))))
                                        (let ((_hd221012221042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221013221039_)))
                                              (_tl221011221044_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221013221039_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221011221044_))
                                              ((lambda (_L221047_ _L221048_)
                                                 (let* ((_expr221072_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220999_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L221047_))
                     (let ((_arg1221063_ (car _args220999_))
                           (_rest221065_ (cdr _args220999_)))
                       (if (let () (declare (not safe)) (null? _rest221065_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L221047_ _arg1221063_))
                           (let ((_arg2221068_ (car _rest221065_))
                                 (_rest221070_ (cdr _rest221065_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest221070_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L221047_
                                    _arg1221063_
                                    _arg2221068_))
                                 (apply gxc#compile-e
                                        _L221047_
                                        _arg1221063_
                                        _arg2221068_
                                        _rest221070_)))))))
                (__tmp226139
                 (let ((__tmp226140
                        (let ((__tmp226141
                               (let ()
                                 (declare (not safe))
                                 (cons _expr221072_ '()))))
                          (declare (not safe))
                          (cons _L221048_ __tmp226141))))
                   (declare (not safe))
                   (cons '%#define-values __tmp226140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp226139
                                                    _stx220998_)))
                                               _hd221012221042_
                                               _hd221009221034_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221001221018_
                                                 _g221002221021_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221001221018_ _g221002221021_)))))
                              (let ()
                                (declare (not safe))
                                (_g221001221018_ _g221002221021_)))))
                      (let ()
                        (declare (not safe))
                        (_g221001221018_ _g221002221021_))))))
          (declare (not safe))
          (_g221000221074_ _stx220998_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx220918_ . _args220919_)
        (let* ((_g220921220938_
                (lambda (_g220922220935_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220922220935_))))
               (_g220920220995_
                (lambda (_g220922220941_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220922220941_))
                      (let ((_e220927220943_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220922220941_))))
                        (let ((_hd220926220946_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220927220943_)))
                              (_tl220925220948_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220927220943_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220925220948_))
                              (let ((_e220930220951_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220925220948_))))
                                (let ((_hd220929220954_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220930220951_)))
                                      (_tl220928220956_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220930220951_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220928220956_))
                                      (let ((_e220933220959_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220928220956_))))
                                        (let ((_hd220932220962_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220933220959_)))
                                              (_tl220931220964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220933220959_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220931220964_))
                                              ((lambda (_L220967_ _L220968_)
                                                 (let ((__tmp226144
                                                        (lambda ()
                                                          (let* ((_expr220993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args220919_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L220967_))
                              (let ((_arg1220984_ (car _args220919_))
                                    (_rest220986_ (cdr _args220919_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest220986_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L220967_
                                       _arg1220984_))
                                    (let ((_arg2220989_ (car _rest220986_))
                                          (_rest220991_ (cdr _rest220986_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest220991_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L220967_
                                             _arg1220984_
                                             _arg2220989_))
                                          (apply gxc#compile-e
                                                 _L220967_
                                                 _arg1220984_
                                                 _arg2220989_
                                                 _rest220991_)))))))
                         (__tmp226145
                          (let ((__tmp226146
                                 (let ((__tmp226147
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr220993_ '()))))
                                   (declare (not safe))
                                   (cons _L220968_ __tmp226147))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp226146))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp226145 _stx220918_))))
               (__tmp226142
                (let ((__tmp226143 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp226143 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp226144
                                                    gx#current-expander-phi
                                                    __tmp226142)))
                                               _hd220932220962_
                                               _hd220929220954_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220921220938_
                                                 _g220922220941_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220921220938_ _g220922220941_)))))
                              (let ()
                                (declare (not safe))
                                (_g220921220938_ _g220922220941_)))))
                      (let ()
                        (declare (not safe))
                        (_g220921220938_ _g220922220941_))))))
          (declare (not safe))
          (_g220920220995_ _stx220918_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx220839_ . _args220840_)
        (let* ((_g220842220859_
                (lambda (_g220843220856_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220843220856_))))
               (_g220841220915_
                (lambda (_g220843220862_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220843220862_))
                      (let ((_e220848220864_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220843220862_))))
                        (let ((_hd220847220867_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220848220864_)))
                              (_tl220846220869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220848220864_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220846220869_))
                              (let ((_e220851220872_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220846220869_))))
                                (let ((_hd220850220875_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220851220872_)))
                                      (_tl220849220877_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220851220872_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220849220877_))
                                      (let ((_e220854220880_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220849220877_))))
                                        (let ((_hd220853220883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220854220880_)))
                                              (_tl220852220885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220854220880_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220852220885_))
                                              ((lambda (_L220888_ _L220889_)
                                                 (let* ((_expr220913_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220840_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220888_))
                     (let ((_arg1220904_ (car _args220840_))
                           (_rest220906_ (cdr _args220840_)))
                       (if (let () (declare (not safe)) (null? _rest220906_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220888_ _arg1220904_))
                           (let ((_arg2220909_ (car _rest220906_))
                                 (_rest220911_ (cdr _rest220906_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220911_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220888_
                                    _arg1220904_
                                    _arg2220909_))
                                 (apply gxc#compile-e
                                        _L220888_
                                        _arg1220904_
                                        _arg2220909_
                                        _rest220911_)))))))
                (__tmp226148
                 (let ((__tmp226149
                        (let ((__tmp226150
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220913_ '()))))
                          (declare (not safe))
                          (cons _L220889_ __tmp226150))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp226149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp226148
                                                    _stx220839_)))
                                               _hd220853220883_
                                               _hd220850220875_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220842220859_
                                                 _g220843220862_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220842220859_ _g220843220862_)))))
                              (let ()
                                (declare (not safe))
                                (_g220842220859_ _g220843220862_)))))
                      (let ()
                        (declare (not safe))
                        (_g220842220859_ _g220843220862_))))))
          (declare (not safe))
          (_g220841220915_ _stx220839_))))
    (define gxc#xform-lambda%
      (lambda (_stx220782_ . _args220783_)
        (let* ((_g220785220799_
                (lambda (_g220786220796_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220786220796_))))
               (_g220784220836_
                (lambda (_g220786220802_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220786220802_))
                      (let ((_e220791220804_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220786220802_))))
                        (let ((_hd220790220807_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220791220804_)))
                              (_tl220789220809_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220791220804_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220789220809_))
                              (let ((_e220794220812_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220789220809_))))
                                (let ((_hd220793220815_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220794220812_)))
                                      (_tl220792220817_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220794220812_))))
                                  ((lambda (_L220820_ _L220821_)
                                     (let* ((_body220834_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args220783_))
                                                  _L220820_))
                                            (__tmp226151
                                             (let ((__tmp226152
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L220821_
                                                            _body220834_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp226152))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp226151
                                        _stx220782_)))
                                   _tl220792220817_
                                   _hd220793220815_)))
                              (let ()
                                (declare (not safe))
                                (_g220785220799_ _g220786220802_)))))
                      (let ()
                        (declare (not safe))
                        (_g220785220799_ _g220786220802_))))))
          (declare (not safe))
          (_g220784220836_ _stx220782_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx220695_ . _args220696_)
        (letrec ((_clause-e220698_
                  (lambda (_clause220739_)
                    (let* ((_g220741220752_
                            (lambda (_g220742220749_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g220742220749_))))
                           (_g220740220779_
                            (lambda (_g220742220755_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g220742220755_))
                                  (let ((_e220747220757_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g220742220755_))))
                                    (let ((_hd220746220760_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e220747220757_)))
                                          (_tl220745220762_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e220747220757_))))
                                      ((lambda (_L220765_ _L220766_)
                                         (let ((_body220777_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args220696_))
                                                     _L220765_)))
                                           (declare (not safe))
                                           (cons _L220766_ _body220777_)))
                                       _tl220745220762_
                                       _hd220746220760_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g220741220752_ _g220742220755_))))))
                      (declare (not safe))
                      (_g220740220779_ _clause220739_)))))
          (let* ((_g220700220710_
                  (lambda (_g220701220707_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g220701220707_))))
                 (_g220699220736_
                  (lambda (_g220701220713_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g220701220713_))
                        (let ((_e220705220715_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g220701220713_))))
                          (let ((_hd220704220718_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220705220715_)))
                                (_tl220703220720_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220705220715_))))
                            ((lambda (_L220723_)
                               (let* ((_clauses220734_
                                       (map _clause-e220698_ _L220723_))
                                      (__tmp226153
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses220734_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp226153
                                  _stx220695_)))
                             _tl220703220720_)))
                        (let ()
                          (declare (not safe))
                          (_g220700220710_ _g220701220713_))))))
            (declare (not safe))
            (_g220699220736_ _stx220695_)))))
    (define gxc#xform-let-values%
      (lambda (_stx220489_ . _args220490_)
        (let* ((_g220492220525_
                (lambda (_g220493220522_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220493220522_))))
               (_g220491220692_
                (lambda (_g220493220528_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220493220528_))
                      (let ((_e220500220530_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220493220528_))))
                        (let ((_hd220499220533_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220500220530_)))
                              (_tl220498220535_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220500220530_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220498220535_))
                              (let ((_e220503220538_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220498220535_))))
                                (let ((_hd220502220541_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220503220538_)))
                                      (_tl220501220543_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220503220538_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd220502220541_))
                                      (let ((_g226154_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd220502220541_
                                                '0))))
                                        (begin
                                          (let ((_g226155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g226154_)
                                                       (##vector-length
                                                        _g226154_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g226155_ 2)))
                                                (error "Context expects 2 values"
                                                       _g226155_)))
                                          (let ((_target220504220546_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g226154_ 0)))
                                                (_tl220506220548_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g226154_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220506220548_))
                                                (letrec ((_loop220507220551_
                                                          (lambda (_hd220505220554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr220511220556_
                           _hd220512220558_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd220505220554_))
                        (let ((_e220508220561_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd220505220554_))))
                          (let ((_lp-hd220509220564_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220508220561_)))
                                (_lp-tl220510220566_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220508220561_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd220509220564_))
                                (let ((_e220517220569_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd220509220564_))))
                                  (let ((_hd220516220572_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e220517220569_)))
                                        (_tl220515220574_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e220517220569_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl220515220574_))
                                        (let ((_e220520220577_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl220515220574_))))
                                          (let ((_hd220519220580_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e220520220577_)))
                                                (_tl220518220582_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e220520220577_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220518220582_))
                                                (let ((__tmp226168
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220519220580_
                                                               _expr220511220556_)))
                                                      (__tmp226167
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220516220572_
                                                               _hd220512220558_))))
                                                  (declare (not safe))
                                                  (_loop220507220551_
                                                   _lp-tl220510220566_
                                                   __tmp226168
                                                   __tmp226167))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220492220525_
                                                   _g220493220528_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g220492220525_ _g220493220528_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g220492220525_ _g220493220528_)))))
                        (let ((_expr220513220585_ (reverse _expr220511220556_))
                              (_hd220514220587_ (reverse _hd220512220558_)))
                          ((lambda (_L220590_ _L220591_ _L220592_ _L220593_)
                             (let* ((_g220612220628_
                                     (lambda (_g220613220625_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g220613220625_))))
                                    (_g220611220682_
                                     (lambda (_g220613220631_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g220613220631_))
                                           (let ((_g226156_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g220613220631_
                                                     '0))))
                                             (begin
                                               (let ((_g226157_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g226156_)
                                                            (##vector-length
                                                             _g226156_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g226157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g226157_)))
                                               (let ((_target220615220633_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g226156_
                                                         0)))
                                                     (_tl220617220635_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g226156_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl220617220635_))
                                                     (letrec ((_loop220618220638_
                                                               (lambda (_hd220616220641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr220622220643_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd220616220641_))
                             (let ((_e220619220646_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd220616220641_))))
                               (let ((_lp-hd220620220649_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e220619220646_)))
                                     (_lp-tl220621220651_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e220619220646_))))
                                 (let ((__tmp226164
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd220620220649_
                                                _expr220622220643_))))
                                   (declare (not safe))
                                   (_loop220618220638_
                                    _lp-tl220621220651_
                                    __tmp226164))))
                             (let ((_expr220623220654_
                                    (reverse _expr220622220643_)))
                               ((lambda (_L220657_)
                                  (let ()
                                    (let* ((_body220670_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args220490_))
                                                 _L220590_))
                                           (__tmp226158
                                            (let ((__tmp226159
                                                   (let ((__tmp226160
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L220657_
                                                               _L220592_))
                                                            (let ((__tmp226161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g220671220675_
                                    _g220672220677_
                                    _g220673220679_)
                             (let ((__tmp226162
                                    (let ((__tmp226163
                                           (let ()
                                             (declare (not safe))
                                             (cons _g220671220675_ '()))))
                                      (declare (not safe))
                                      (cons _g220672220677_ __tmp226163))))
                               (declare (not safe))
                               (cons __tmp226162 _g220673220679_)))))
                      (declare (not safe))
                      (foldr2 __tmp226161 '() _L220657_ _L220592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp226160
                                                           _body220670_))))
                                              (declare (not safe))
                                              (cons _L220593_ __tmp226159))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp226158
                                       _stx220489_))))
                                _expr220623220654_))))))
               (let ()
                 (declare (not safe))
                 (_loop220618220638_ _target220615220633_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g220612220628_
                                                        _g220613220631_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g220612220628_
                                              _g220613220631_)))))
                                    (__tmp226165
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220490_))
                                          (let ((__tmp226166
                                                 (lambda (_g220684220687_
                                                          _g220685220689_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g220684220687_
                                                           _g220685220689_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp226166
                                                    '()
                                                    _L220591_)))))
                               (declare (not safe))
                               (_g220611220682_ __tmp226165)))
                           _tl220501220543_
                           _expr220513220585_
                           _hd220514220587_
                           _hd220499220533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop220507220551_
                                                     _target220504220546_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220492220525_
                                                   _g220493220528_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220492220525_ _g220493220528_)))))
                              (let ()
                                (declare (not safe))
                                (_g220492220525_ _g220493220528_)))))
                      (let ()
                        (declare (not safe))
                        (_g220492220525_ _g220493220528_))))))
          (declare (not safe))
          (_g220491220692_ _stx220489_))))
    (define gxc#xform-operands
      (lambda (_stx220445_ . _args220446_)
        (let* ((_g220448220459_
                (lambda (_g220449220456_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220449220456_))))
               (_g220447220486_
                (lambda (_g220449220462_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220449220462_))
                      (let ((_e220454220464_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220449220462_))))
                        (let ((_hd220453220467_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220454220464_)))
                              (_tl220452220469_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220454220464_))))
                          ((lambda (_L220472_ _L220473_)
                             (let* ((_rands220484_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220446_))
                                          _L220472_))
                                    (__tmp226169
                                     (let ()
                                       (declare (not safe))
                                       (cons _L220473_ _rands220484_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp226169
                                _stx220445_)))
                           _tl220452220469_
                           _hd220453220467_)))
                      (let ()
                        (declare (not safe))
                        (_g220448220459_ _g220449220462_))))))
          (declare (not safe))
          (_g220447220486_ _stx220445_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx220366_ . _args220367_)
        (let* ((_g220369220386_
                (lambda (_g220370220383_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220370220383_))))
               (_g220368220442_
                (lambda (_g220370220389_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220370220389_))
                      (let ((_e220375220391_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220370220389_))))
                        (let ((_hd220374220394_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220375220391_)))
                              (_tl220373220396_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220375220391_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220373220396_))
                              (let ((_e220378220399_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220373220396_))))
                                (let ((_hd220377220402_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220378220399_)))
                                      (_tl220376220404_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220378220399_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220376220404_))
                                      (let ((_e220381220407_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220376220404_))))
                                        (let ((_hd220380220410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220381220407_)))
                                              (_tl220379220412_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220381220407_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220379220412_))
                                              ((lambda (_L220415_ _L220416_)
                                                 (let* ((_expr220440_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220367_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220415_))
                     (let ((_arg1220431_ (car _args220367_))
                           (_rest220433_ (cdr _args220367_)))
                       (if (let () (declare (not safe)) (null? _rest220433_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220415_ _arg1220431_))
                           (let ((_arg2220436_ (car _rest220433_))
                                 (_rest220438_ (cdr _rest220433_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220438_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220415_
                                    _arg1220431_
                                    _arg2220436_))
                                 (apply gxc#compile-e
                                        _L220415_
                                        _arg1220431_
                                        _arg2220436_
                                        _rest220438_)))))))
                (__tmp226170
                 (let ((__tmp226171
                        (let ((__tmp226172
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220440_ '()))))
                          (declare (not safe))
                          (cons _L220416_ __tmp226172))))
                   (declare (not safe))
                   (cons '%#set! __tmp226171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp226170
                                                    _stx220366_)))
                                               _hd220380220410_
                                               _hd220377220402_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220369220386_
                                                 _g220370220389_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220369220386_ _g220370220389_)))))
                              (let ()
                                (declare (not safe))
                                (_g220369220386_ _g220370220389_)))))
                      (let ()
                        (declare (not safe))
                        (_g220369220386_ _g220370220389_))))))
          (declare (not safe))
          (_g220368220442_ _stx220366_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx220297_)
        (let* ((_g220299220316_
                (lambda (_g220300220313_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220300220313_))))
               (_g220298220363_
                (lambda (_g220300220319_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220300220319_))
                      (let ((_e220305220321_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220300220319_))))
                        (let ((_hd220304220324_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220305220321_)))
                              (_tl220303220326_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220305220321_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220303220326_))
                              (let ((_e220308220329_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220303220326_))))
                                (let ((_hd220307220332_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220308220329_)))
                                      (_tl220306220334_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220308220329_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220306220334_))
                                      (let ((_e220311220337_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220306220334_))))
                                        (let ((_hd220310220340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220311220337_)))
                                              (_tl220309220342_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220311220337_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220309220342_))
                                              ((lambda (_L220345_ _L220346_)
                                                 (let ((_sym220361_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L220346_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym220361_))
                                                   (let ((__tmp226173
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp226173
                                                      _sym220361_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L220345_))))
                                               _hd220310220340_
                                               _hd220307220332_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220299220316_
                                                 _g220300220319_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220299220316_ _g220300220319_)))))
                              (let ()
                                (declare (not safe))
                                (_g220299220316_ _g220300220319_)))))
                      (let ()
                        (declare (not safe))
                        (_g220299220316_ _g220300220319_))))))
          (declare (not safe))
          (_g220298220363_ _stx220297_))))
    (define gxc#collect-methods-call%
      (lambda (_stx219851_)
        (let* ((___stx225863225864_ _stx219851_)
               (_g219855219957_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx225863225864_)))))
          (let ((___kont225865225866_
                 (lambda (_L220247_ _L220248_ _L220249_ _L220250_ _L220251_)
                   (let ((__tmp226174
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L220248_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp226174))))
                (___kont225867225868_
                 (lambda (_L220073_ _L220074_ _L220075_ _L220076_)
                   (let ((__tmp226175
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L220073_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp226175))))
                (___kont225869225870_ (lambda () '#!void)))
            (let ((___match225998225999_
                   (lambda (_e219864220119_
                            _hd219863220122_
                            _tl219862220124_
                            _e219867220127_
                            _hd219866220130_
                            _tl219865220132_
                            _e219870220135_
                            _hd219869220138_
                            _tl219868220140_
                            _e219873220143_
                            _hd219872220146_
                            _tl219871220148_
                            _e219876220151_
                            _hd219875220154_
                            _tl219874220156_
                            _e219879220159_
                            _hd219878220162_
                            _tl219877220164_
                            _e219882220167_
                            _hd219881220170_
                            _tl219880220172_
                            _e219885220175_
                            _hd219884220178_
                            _tl219883220180_
                            _e219888220183_
                            _hd219887220186_
                            _tl219886220188_
                            _e219891220191_
                            _hd219890220194_
                            _tl219889220196_
                            _e219894220199_
                            _hd219893220202_
                            _tl219892220204_
                            _e219897220207_
                            _hd219896220210_
                            _tl219895220212_
                            _e219900220215_
                            _hd219899220218_
                            _tl219898220220_
                            _e219903220223_
                            _hd219902220226_
                            _tl219901220228_
                            _e219906220231_
                            _hd219905220234_
                            _tl219904220236_
                            _e219909220239_
                            _hd219908220242_
                            _tl219907220244_)
                     (let ((_L220247_ _hd219908220242_)
                           (_L220248_ _hd219899220218_)
                           (_L220249_ _hd219890220194_)
                           (_L220250_ _hd219881220170_)
                           (_L220251_ _hd219872220146_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L220251_
                              'bind-method!))
                           (___kont225865225866_
                            _L220247_
                            _L220248_
                            _L220249_
                            _L220250_
                            _L220251_)
                           (___kont225869225870_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx225863225864_))
                  (let ((_e219864220119_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx225863225864_))))
                    (let ((_tl219862220124_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219864220119_)))
                          (_hd219863220122_
                           (let ()
                             (declare (not safe))
                             (##car _e219864220119_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219862220124_))
                          (let ((_e219867220127_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219862220124_))))
                            (let ((_tl219865220132_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219867220127_)))
                                  (_hd219866220130_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219867220127_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219866220130_))
                                  (let ((_e219870220135_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219866220130_))))
                                    (let ((_tl219868220140_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219870220135_)))
                                          (_hd219869220138_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219870220135_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd219869220138_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd219869220138_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219868220140_))
                                                  (let ((_e219873220143_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219868220140_))))
                                                    (let ((_tl219871220148_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219873220143_)))
                                                          (_hd219872220146_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219873220143_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219871220148_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219865220132_))
                      (let ((_e219876220151_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219865220132_))))
                        (let ((_tl219874220156_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219876220151_)))
                              (_hd219875220154_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219876220151_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219875220154_))
                              (let ((_e219879220159_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219875220154_))))
                                (let ((_tl219877220164_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219879220159_)))
                                      (_hd219878220162_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219879220159_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd219878220162_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd219878220162_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl219877220164_))
                                              (let ((_e219882220167_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl219877220164_))))
                                                (let ((_tl219880220172_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219882220167_)))
                                                      (_hd219881220170_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219882220167_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219880220172_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl219874220156_))
                                                          (let ((_e219885220175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl219874220156_))))
                    (let ((_tl219883220180_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219885220175_)))
                          (_hd219884220178_
                           (let ()
                             (declare (not safe))
                             (##car _e219885220175_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd219884220178_))
                          (let ((_e219888220183_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd219884220178_))))
                            (let ((_tl219886220188_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219888220183_)))
                                  (_hd219887220186_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219888220183_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd219887220186_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd219887220186_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl219886220188_))
                                          (let ((_e219891220191_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl219886220188_))))
                                            (let ((_tl219889220196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219891220191_)))
                                                  (_hd219890220194_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219891220191_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl219889220196_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl219883220180_))
                                                      (let ((_e219894220199_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl219883220180_))))
                (let ((_tl219892220204_
                       (let () (declare (not safe)) (##cdr _e219894220199_)))
                      (_hd219893220202_
                       (let () (declare (not safe)) (##car _e219894220199_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219893220202_))
                      (let ((_e219897220207_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219893220202_))))
                        (let ((_tl219895220212_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219897220207_)))
                              (_hd219896220210_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219897220207_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd219896220210_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd219896220210_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219895220212_))
                                      (let ((_e219900220215_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219895220212_))))
                                        (let ((_tl219898220220_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219900220215_)))
                                              (_hd219899220218_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219900220215_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219898220220_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219892220204_))
                                                  (let ((_e219903220223_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219892220204_))))
                                                    (let ((_tl219901220228_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219903220223_)))
                                                          (_hd219902220226_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219903220223_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd219902220226_))
                                                          (let ((_e219906220231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd219902220226_))))
                    (let ((_tl219904220236_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219906220231_)))
                          (_hd219905220234_
                           (let ()
                             (declare (not safe))
                             (##car _e219906220231_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd219905220234_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd219905220234_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219904220236_))
                                  (let ((_e219909220239_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219904220236_))))
                                    (let ((_tl219907220244_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219909220239_)))
                                          (_hd219908220242_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219909220239_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219907220244_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219901220228_))
                                              (___match225998225999_
                                               _e219864220119_
                                               _hd219863220122_
                                               _tl219862220124_
                                               _e219867220127_
                                               _hd219866220130_
                                               _tl219865220132_
                                               _e219870220135_
                                               _hd219869220138_
                                               _tl219868220140_
                                               _e219873220143_
                                               _hd219872220146_
                                               _tl219871220148_
                                               _e219876220151_
                                               _hd219875220154_
                                               _tl219874220156_
                                               _e219879220159_
                                               _hd219878220162_
                                               _tl219877220164_
                                               _e219882220167_
                                               _hd219881220170_
                                               _tl219880220172_
                                               _e219885220175_
                                               _hd219884220178_
                                               _tl219883220180_
                                               _e219888220183_
                                               _hd219887220186_
                                               _tl219886220188_
                                               _e219891220191_
                                               _hd219890220194_
                                               _tl219889220196_
                                               _e219894220199_
                                               _hd219893220202_
                                               _tl219892220204_
                                               _e219897220207_
                                               _hd219896220210_
                                               _tl219895220212_
                                               _e219900220215_
                                               _hd219899220218_
                                               _tl219898220220_
                                               _e219903220223_
                                               _hd219902220226_
                                               _tl219901220228_
                                               _e219906220231_
                                               _hd219905220234_
                                               _tl219904220236_
                                               _e219909220239_
                                               _hd219908220242_
                                               _tl219907220244_)
                                              (___kont225869225870_))
                                          (___kont225869225870_))))
                                  (___kont225869225870_))
                              (___kont225869225870_))
                          (___kont225869225870_))))
                  (___kont225869225870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219892220204_))
                                                      (if (let ((__tmp226176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp226176 'bind-method!))
                  (let ((_L220073_ _hd219899220218_)
                        (_L220074_ _hd219890220194_)
                        (_L220075_ _hd219881220170_)
                        (_L220076_ _hd219872220146_))
                    (___kont225867225868_
                     _L220073_
                     _L220074_
                     _L220075_
                     _L220076_))
                  (___kont225869225870_))
              (___kont225869225870_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225869225870_))))
                                      (___kont225869225870_))
                                  (___kont225869225870_))
                              (___kont225869225870_))))
                      (___kont225869225870_))))
              (___kont225869225870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225869225870_))))
                                          (___kont225869225870_))
                                      (___kont225869225870_))
                                  (___kont225869225870_))))
                          (___kont225869225870_))))
                  (___kont225869225870_))
              (___kont225869225870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225869225870_))
                                          (___kont225869225870_))
                                      (___kont225869225870_))))
                              (___kont225869225870_))))
                      (___kont225869225870_))
                  (___kont225869225870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225869225870_))
                                              (___kont225869225870_))
                                          (___kont225869225870_))))
                                  (___kont225869225870_))))
                          (___kont225869225870_))))
                  (___kont225869225870_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx219798_ _id219799_ _new-id219800_)
        (let* ((_g219802219815_
                (lambda (_g219803219812_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219803219812_))))
               (_g219801219848_
                (lambda (_g219803219818_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219803219818_))
                      (let ((_e219807219820_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219803219818_))))
                        (let ((_hd219806219823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219807219820_)))
                              (_tl219805219825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219807219820_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219805219825_))
                              (let ((_e219810219828_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219805219825_))))
                                (let ((_hd219809219831_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219810219828_)))
                                      (_tl219808219833_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219810219828_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219808219833_))
                                      ((lambda (_L219836_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L219836_
                                                _id219799_))
                                             (let ((__tmp226177
                                                    (let ((__tmp226178
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id219800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp226178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp226177
                                                _stx219798_))
                                             _stx219798_))
                                       _hd219809219831_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219802219815_ _g219803219818_)))))
                              (let ()
                                (declare (not safe))
                                (_g219802219815_ _g219803219818_)))))
                      (let ()
                        (declare (not safe))
                        (_g219802219815_ _g219803219818_))))))
          (declare (not safe))
          (_g219801219848_ _stx219798_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx219739_ _subst219740_)
        (let* ((_g219742219755_
                (lambda (_g219743219752_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219743219752_))))
               (_g219741219795_
                (lambda (_g219743219758_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219743219758_))
                      (let ((_e219747219760_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219743219758_))))
                        (let ((_hd219746219763_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219747219760_)))
                              (_tl219745219765_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219747219760_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219745219765_))
                              (let ((_e219750219768_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219745219765_))))
                                (let ((_hd219749219771_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219750219768_)))
                                      (_tl219748219773_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219750219768_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219748219773_))
                                      ((lambda (_L219776_)
                                         (let ((_$e219790_
                                                (let ((__tmp226179
                                                       (lambda (_sub219788_)
                                                         (let ((__tmp226180
                                                                (car _sub219788_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L219776_
                                                            __tmp226180)))))
                                                  (declare (not safe))
                                                  (find __tmp226179
                                                        _subst219740_))))
                                           (if _$e219790_
                                               ((lambda (_sub219793_)
                                                  (let ((__tmp226181
                                                         (let ((__tmp226182
                                                                (let ((__tmp226183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub219793_)))
                          (declare (not safe))
                          (cons __tmp226183 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp226182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp226181
                                                     _stx219739_)))
                                                _$e219790_)
                                               _stx219739_)))
                                       _hd219749219771_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219742219755_ _g219743219758_)))))
                              (let ()
                                (declare (not safe))
                                (_g219742219755_ _g219743219758_)))))
                      (let ()
                        (declare (not safe))
                        (_g219742219755_ _g219743219758_))))))
          (declare (not safe))
          (_g219741219795_ _stx219739_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx219667_ _id219668_ _new-id219669_)
        (let* ((_g219671219688_
                (lambda (_g219672219685_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219672219685_))))
               (_g219670219736_
                (lambda (_g219672219691_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219672219691_))
                      (let ((_e219677219693_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219672219691_))))
                        (let ((_hd219676219696_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219677219693_)))
                              (_tl219675219698_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219677219693_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219675219698_))
                              (let ((_e219680219701_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219675219698_))))
                                (let ((_hd219679219704_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219680219701_)))
                                      (_tl219678219706_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219680219701_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219678219706_))
                                      (let ((_e219683219709_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219678219706_))))
                                        (let ((_hd219682219712_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219683219709_)))
                                              (_tl219681219714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219683219709_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219681219714_))
                                              ((lambda (_L219717_ _L219718_)
                                                 (let ((_new-expr219733_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L219717_
                                                           _id219668_
                                                           _new-id219669_)))
                                                       (_new-xid219734_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L219718_
                                                               _id219668_))
                                                            _new-id219669_
                                                            _L219718_)))
                                                   (let ((__tmp226184
                                                          (let ((__tmp226185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226186
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219733_ '()))))
                           (declare (not safe))
                           (cons _new-xid219734_ __tmp226186))))
                    (declare (not safe))
                    (cons '%#set! __tmp226185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp226184
                                                      _stx219667_))))
                                               _hd219682219712_
                                               _hd219679219704_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219671219688_
                                                 _g219672219691_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219671219688_ _g219672219691_)))))
                              (let ()
                                (declare (not safe))
                                (_g219671219688_ _g219672219691_)))))
                      (let ()
                        (declare (not safe))
                        (_g219671219688_ _g219672219691_))))))
          (declare (not safe))
          (_g219670219736_ _stx219667_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx219591_ _subst219592_)
        (let* ((_g219594219611_
                (lambda (_g219595219608_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219595219608_))))
               (_g219593219664_
                (lambda (_g219595219614_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219595219614_))
                      (let ((_e219600219616_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219595219614_))))
                        (let ((_hd219599219619_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219600219616_)))
                              (_tl219598219621_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219600219616_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219598219621_))
                              (let ((_e219603219624_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219598219621_))))
                                (let ((_hd219602219627_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219603219624_)))
                                      (_tl219601219629_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219603219624_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219601219629_))
                                      (let ((_e219606219632_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219601219629_))))
                                        (let ((_hd219605219635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219606219632_)))
                                              (_tl219604219637_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219606219632_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219604219637_))
                                              ((lambda (_L219640_ _L219641_)
                                                 (let ((_new-expr219661_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L219640_
                                                           _subst219592_)))
                                                       (_new-xid219662_
                                                        (let ((_$e219658_
                                                               (let ((__tmp226187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub219656_)
                                (let ((__tmp226188 (car _sub219656_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L219641_
                                   __tmp226188)))))
                         (declare (not safe))
                         (find __tmp226187 _subst219592_))))
                  (if _$e219658_ (cdr _$e219658_) _L219641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp226189
                                                          (let ((__tmp226190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226191
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219661_ '()))))
                           (declare (not safe))
                           (cons _new-xid219662_ __tmp226191))))
                    (declare (not safe))
                    (cons '%#set! __tmp226190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp226189
                                                      _stx219591_))))
                                               _hd219605219635_
                                               _hd219602219627_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219594219611_
                                                 _g219595219614_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219594219611_ _g219595219614_)))))
                              (let ()
                                (declare (not safe))
                                (_g219594219611_ _g219595219614_)))))
                      (let ()
                        (declare (not safe))
                        (_g219594219611_ _g219595219614_))))))
          (declare (not safe))
          (_g219593219664_ _stx219591_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx219537_ _ht219538_)
        (let* ((_g219540219553_
                (lambda (_g219541219550_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219541219550_))))
               (_g219539219588_
                (lambda (_g219541219556_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219541219556_))
                      (let ((_e219545219558_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219541219556_))))
                        (let ((_hd219544219561_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219545219558_)))
                              (_tl219543219563_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219545219558_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219543219563_))
                              (let ((_e219548219566_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219543219563_))))
                                (let ((_hd219547219569_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219548219566_)))
                                      (_tl219546219571_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219548219566_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219546219571_))
                                      ((lambda (_L219574_)
                                         (let ((_eid219586_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L219574_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht219538_
                                            _eid219586_
                                            1+
                                            '0)))
                                       _hd219547219569_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219540219553_ _g219541219556_)))))
                              (let ()
                                (declare (not safe))
                                (_g219540219553_ _g219541219556_)))))
                      (let ()
                        (declare (not safe))
                        (_g219540219553_ _g219541219556_))))))
          (declare (not safe))
          (_g219539219588_ _stx219537_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx219467_ _ht219468_)
        (let* ((_g219470219487_
                (lambda (_g219471219484_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219471219484_))))
               (_g219469219534_
                (lambda (_g219471219490_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219471219490_))
                      (let ((_e219476219492_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219471219490_))))
                        (let ((_hd219475219495_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219476219492_)))
                              (_tl219474219497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219476219492_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219474219497_))
                              (let ((_e219479219500_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219474219497_))))
                                (let ((_hd219478219503_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219479219500_)))
                                      (_tl219477219505_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219479219500_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219477219505_))
                                      (let ((_e219482219508_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219477219505_))))
                                        (let ((_hd219481219511_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219482219508_)))
                                              (_tl219480219513_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219482219508_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219480219513_))
                                              ((lambda (_L219516_ _L219517_)
                                                 (let ((_eid219532_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L219517_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht219468_
                                                      _eid219532_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L219516_
                                                      _ht219468_))))
                                               _hd219481219511_
                                               _hd219478219503_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219470219487_
                                                 _g219471219490_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219470219487_ _g219471219490_)))))
                              (let ()
                                (declare (not safe))
                                (_g219470219487_ _g219471219490_)))))
                      (let ()
                        (declare (not safe))
                        (_g219470219487_ _g219471219490_))))))
          (declare (not safe))
          (_g219469219534_ _stx219467_))))
    (define gxc#find-body%
      (lambda (_stx219380_ _arg219381_)
        (let* ((_g219383219402_
                (lambda (_g219384219399_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219384219399_))))
               (_g219382219464_
                (lambda (_g219384219405_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219384219405_))
                      (let ((_e219388219407_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219384219405_))))
                        (let ((_hd219387219410_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219388219407_)))
                              (_tl219386219412_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219388219407_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl219386219412_))
                              (let ((_g226192_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl219386219412_
                                        '0))))
                                (begin
                                  (let ((_g226193_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226192_)
                                               (##vector-length _g226192_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226193_ 2)))
                                        (error "Context expects 2 values"
                                               _g226193_)))
                                  (let ((_target219389219415_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226192_ 0)))
                                        (_tl219391219417_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226192_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219391219417_))
                                        (letrec ((_loop219392219420_
                                                  (lambda (_hd219390219423_
                                                           _expr219396219425_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd219390219423_))
                                                        (let ((_e219393219428_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd219390219423_))))
                  (let ((_lp-hd219394219431_
                         (let () (declare (not safe)) (##car _e219393219428_)))
                        (_lp-tl219395219433_
                         (let ()
                           (declare (not safe))
                           (##cdr _e219393219428_))))
                    (let ((__tmp226197
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd219394219431_ _expr219396219425_))))
                      (declare (not safe))
                      (_loop219392219420_ _lp-tl219395219433_ __tmp226197))))
                (let ((_expr219397219436_ (reverse _expr219396219425_)))
                  ((lambda (_L219439_)
                     (let ((__tmp226196
                            (lambda (_g219452219454_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g219452219454_
                                 _arg219381_))))
                           (__tmp226194
                            (let ((__tmp226195
                                   (lambda (_g219456219459_ _g219457219461_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g219456219459_
                                             _g219457219461_)))))
                              (declare (not safe))
                              (foldr1 __tmp226195 '() _L219439_))))
                       (declare (not safe))
                       (ormap1 __tmp226196 __tmp226194)))
                   _expr219397219436_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop219392219420_
                                             _target219389219415_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g219383219402_
                                           _g219384219405_))))))
                              (let ()
                                (declare (not safe))
                                (_g219383219402_ _g219384219405_)))))
                      (let ()
                        (declare (not safe))
                        (_g219383219402_ _g219384219405_))))))
          (declare (not safe))
          (_g219382219464_ _stx219380_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx219312_ _arg219313_)
        (let* ((_g219315219332_
                (lambda (_g219316219329_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219316219329_))))
               (_g219314219377_
                (lambda (_g219316219335_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219316219335_))
                      (let ((_e219321219337_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219316219335_))))
                        (let ((_hd219320219340_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219321219337_)))
                              (_tl219319219342_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219321219337_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219319219342_))
                              (let ((_e219324219345_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219319219342_))))
                                (let ((_hd219323219348_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219324219345_)))
                                      (_tl219322219350_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219324219345_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219322219350_))
                                      (let ((_e219327219353_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219322219350_))))
                                        (let ((_hd219326219356_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219327219353_)))
                                              (_tl219325219358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219327219353_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219325219358_))
                                              ((lambda (_L219361_ _L219362_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L219361_
                                                    _arg219313_)))
                                               _hd219326219356_
                                               _hd219323219348_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219315219332_
                                                 _g219316219335_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219315219332_ _g219316219335_)))))
                              (let ()
                                (declare (not safe))
                                (_g219315219332_ _g219316219335_)))))
                      (let ()
                        (declare (not safe))
                        (_g219315219332_ _g219316219335_))))))
          (declare (not safe))
          (_g219314219377_ _stx219312_))))
    (define gxc#find-lambda%
      (lambda (_stx219244_ _arg219245_)
        (let* ((_g219247219264_
                (lambda (_g219248219261_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219248219261_))))
               (_g219246219309_
                (lambda (_g219248219267_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219248219267_))
                      (let ((_e219253219269_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219248219267_))))
                        (let ((_hd219252219272_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219253219269_)))
                              (_tl219251219274_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219253219269_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219251219274_))
                              (let ((_e219256219277_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219251219274_))))
                                (let ((_hd219255219280_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219256219277_)))
                                      (_tl219254219282_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219256219277_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219254219282_))
                                      (let ((_e219259219285_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219254219282_))))
                                        (let ((_hd219258219288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219259219285_)))
                                              (_tl219257219290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219259219285_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219257219290_))
                                              ((lambda (_L219293_ _L219294_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L219293_
                                                    _arg219245_)))
                                               _hd219258219288_
                                               _hd219255219280_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219247219264_
                                                 _g219248219267_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219247219264_ _g219248219267_)))))
                              (let ()
                                (declare (not safe))
                                (_g219247219264_ _g219248219267_)))))
                      (let ()
                        (declare (not safe))
                        (_g219247219264_ _g219248219267_))))))
          (declare (not safe))
          (_g219246219309_ _stx219244_))))
    (define gxc#find-case-lambda%
      (lambda (_stx219126_ _arg219127_)
        (let* ((_g219129219157_
                (lambda (_g219130219154_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219130219154_))))
               (_g219128219241_
                (lambda (_g219130219160_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219130219160_))
                      (let ((_e219135219162_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219130219160_))))
                        (let ((_hd219134219165_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219135219162_)))
                              (_tl219133219167_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219135219162_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl219133219167_))
                              (let ((_g226198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl219133219167_
                                        '0))))
                                (begin
                                  (let ((_g226199_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226198_)
                                               (##vector-length _g226198_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226199_ 2)))
                                        (error "Context expects 2 values"
                                               _g226199_)))
                                  (let ((_target219136219170_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226198_ 0)))
                                        (_tl219138219172_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226198_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219138219172_))
                                        (letrec ((_loop219139219175_
                                                  (lambda (_hd219137219178_
                                                           _body219143219180_
                                                           _hd219144219182_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd219137219178_))
                                                        (let ((_e219140219185_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd219137219178_))))
                  (let ((_lp-hd219141219188_
                         (let () (declare (not safe)) (##car _e219140219185_)))
                        (_lp-tl219142219190_
                         (let ()
                           (declare (not safe))
                           (##cdr _e219140219185_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd219141219188_))
                        (let ((_e219149219193_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd219141219188_))))
                          (let ((_hd219148219196_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e219149219193_)))
                                (_tl219147219198_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e219149219193_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl219147219198_))
                                (let ((_e219152219201_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl219147219198_))))
                                  (let ((_hd219151219204_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e219152219201_)))
                                        (_tl219150219206_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e219152219201_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219150219206_))
                                        (let ((__tmp226204
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd219151219204_
                                                       _body219143219180_)))
                                              (__tmp226203
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd219148219196_
                                                       _hd219144219182_))))
                                          (declare (not safe))
                                          (_loop219139219175_
                                           _lp-tl219142219190_
                                           __tmp226204
                                           __tmp226203))
                                        (let ()
                                          (declare (not safe))
                                          (_g219129219157_ _g219130219160_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g219129219157_ _g219130219160_)))))
                        (let ()
                          (declare (not safe))
                          (_g219129219157_ _g219130219160_)))))
                (let ((_body219145219209_ (reverse _body219143219180_))
                      (_hd219146219211_ (reverse _hd219144219182_)))
                  ((lambda (_L219214_ _L219215_)
                     (let ((__tmp226202
                            (lambda (_g219229219231_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g219229219231_
                                 _arg219127_))))
                           (__tmp226200
                            (let ((__tmp226201
                                   (lambda (_g219233219236_ _g219234219238_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g219233219236_
                                             _g219234219238_)))))
                              (declare (not safe))
                              (foldr1 __tmp226201 '() _L219214_))))
                       (declare (not safe))
                       (ormap1 __tmp226202 __tmp226200)))
                   _body219145219209_
                   _hd219146219211_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop219139219175_
                                             _target219136219170_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g219129219157_
                                           _g219130219160_))))))
                              (let ()
                                (declare (not safe))
                                (_g219129219157_ _g219130219160_)))))
                      (let ()
                        (declare (not safe))
                        (_g219129219157_ _g219130219160_))))))
          (declare (not safe))
          (_g219128219241_ _stx219126_))))
    (define gxc#find-let-values%
      (lambda (_stx218976_ _arg218977_)
        (let* ((_g218979219014_
                (lambda (_g218980219011_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218980219011_))))
               (_g218978219123_
                (lambda (_g218980219017_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218980219017_))
                      (let ((_e218986219019_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218980219017_))))
                        (let ((_hd218985219022_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218986219019_)))
                              (_tl218984219024_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218986219019_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218984219024_))
                              (let ((_e218989219027_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218984219024_))))
                                (let ((_hd218988219030_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218989219027_)))
                                      (_tl218987219032_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218989219027_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd218988219030_))
                                      (let ((_g226205_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd218988219030_
                                                '0))))
                                        (begin
                                          (let ((_g226206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g226205_)
                                                       (##vector-length
                                                        _g226205_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g226206_ 2)))
                                                (error "Context expects 2 values"
                                                       _g226206_)))
                                          (let ((_target218990219035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g226205_ 0)))
                                                (_tl218992219037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g226205_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl218992219037_))
                                                (letrec ((_loop218993219040_
                                                          (lambda (_hd218991219043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr218997219045_
                           _bind218998219047_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd218991219043_))
                        (let ((_e218994219050_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd218991219043_))))
                          (let ((_lp-hd218995219053_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218994219050_)))
                                (_lp-tl218996219055_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218994219050_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd218995219053_))
                                (let ((_e219003219058_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd218995219053_))))
                                  (let ((_hd219002219061_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e219003219058_)))
                                        (_tl219001219063_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e219003219058_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl219001219063_))
                                        (let ((_e219006219066_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl219001219063_))))
                                          (let ((_hd219005219069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e219006219066_)))
                                                (_tl219004219071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e219006219066_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl219004219071_))
                                                (let ((__tmp226211
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd219005219069_
                                                               _expr218997219045_)))
                                                      (__tmp226210
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd219002219061_
                                                               _bind218998219047_))))
                                                  (declare (not safe))
                                                  (_loop218993219040_
                                                   _lp-tl218996219055_
                                                   __tmp226211
                                                   __tmp226210))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g218979219014_
                                                   _g218980219017_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g218979219014_ _g218980219017_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g218979219014_ _g218980219017_)))))
                        (let ((_expr218999219074_ (reverse _expr218997219045_))
                              (_bind219000219076_
                               (reverse _bind218998219047_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218987219032_))
                              (let ((_e219009219079_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218987219032_))))
                                (let ((_hd219008219082_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219009219079_)))
                                      (_tl219007219084_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219009219079_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219007219084_))
                                      ((lambda (_L219087_ _L219088_ _L219089_)
                                         (let ((_$e219120_
                                                (let ((__tmp226209
                                                       (lambda (_g219108219110_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g219108219110_
                                                            _arg218977_))))
                                                      (__tmp226207
                                                       (let ((__tmp226208
                                                              (lambda (_g219112219115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g219113219117_)
                        (let ()
                          (declare (not safe))
                          (cons _g219112219115_ _g219113219117_)))))
                 (declare (not safe))
                 (foldr1 __tmp226208 '() _L219088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp226209
                                                          __tmp226207))))
                                           (if _$e219120_
                                               _$e219120_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L219087_
                                                  _arg218977_)))))
                                       _hd219008219082_
                                       _expr218999219074_
                                       _bind219000219076_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218979219014_ _g218980219017_)))))
                              (let ()
                                (declare (not safe))
                                (_g218979219014_ _g218980219017_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop218993219040_
                                                     _target218990219035_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g218979219014_
                                                   _g218980219017_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218979219014_ _g218980219017_)))))
                              (let ()
                                (declare (not safe))
                                (_g218979219014_ _g218980219017_)))))
                      (let ()
                        (declare (not safe))
                        (_g218979219014_ _g218980219017_))))))
          (declare (not safe))
          (_g218978219123_ _stx218976_))))
    (define gxc#find-setq%
      (lambda (_stx218908_ _arg218909_)
        (let* ((_g218911218928_
                (lambda (_g218912218925_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218912218925_))))
               (_g218910218973_
                (lambda (_g218912218931_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218912218931_))
                      (let ((_e218917218933_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218912218931_))))
                        (let ((_hd218916218936_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218917218933_)))
                              (_tl218915218938_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218917218933_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218915218938_))
                              (let ((_e218920218941_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218915218938_))))
                                (let ((_hd218919218944_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218920218941_)))
                                      (_tl218918218946_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218920218941_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218918218946_))
                                      (let ((_e218923218949_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218918218946_))))
                                        (let ((_hd218922218952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218923218949_)))
                                              (_tl218921218954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218923218949_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218921218954_))
                                              ((lambda (_L218957_ _L218958_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L218957_
                                                    _arg218909_)))
                                               _hd218922218952_
                                               _hd218919218944_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218911218928_
                                                 _g218912218931_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218911218928_ _g218912218931_)))))
                              (let ()
                                (declare (not safe))
                                (_g218911218928_ _g218912218931_)))))
                      (let ()
                        (declare (not safe))
                        (_g218911218928_ _g218912218931_))))))
          (declare (not safe))
          (_g218910218973_ _stx218908_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx218852_ _ids218853_)
        (let* ((_g218855218868_
                (lambda (_g218856218865_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218856218865_))))
               (_g218854218905_
                (lambda (_g218856218871_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218856218871_))
                      (let ((_e218860218873_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218856218871_))))
                        (let ((_hd218859218876_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218860218873_)))
                              (_tl218858218878_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218860218873_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218858218878_))
                              (let ((_e218863218881_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218858218878_))))
                                (let ((_hd218862218884_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218863218881_)))
                                      (_tl218861218886_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218863218881_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218861218886_))
                                      ((lambda (_L218889_)
                                         (let ((__tmp226212
                                                (lambda (_g218900218902_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L218889_
                                                     _g218900218902_)))))
                                           (declare (not safe))
                                           (find __tmp226212 _ids218853_)))
                                       _hd218862218884_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218855218868_ _g218856218871_)))))
                              (let ()
                                (declare (not safe))
                                (_g218855218868_ _g218856218871_)))))
                      (let ()
                        (declare (not safe))
                        (_g218855218868_ _g218856218871_))))))
          (declare (not safe))
          (_g218854218905_ _stx218852_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx218776_ _ids218777_)
        (let* ((_g218779218796_
                (lambda (_g218780218793_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218780218793_))))
               (_g218778218849_
                (lambda (_g218780218799_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218780218799_))
                      (let ((_e218785218801_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218780218799_))))
                        (let ((_hd218784218804_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218785218801_)))
                              (_tl218783218806_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218785218801_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218783218806_))
                              (let ((_e218788218809_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218783218806_))))
                                (let ((_hd218787218812_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218788218809_)))
                                      (_tl218786218814_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218788218809_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218786218814_))
                                      (let ((_e218791218817_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218786218814_))))
                                        (let ((_hd218790218820_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218791218817_)))
                                              (_tl218789218822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218791218817_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218789218822_))
                                              ((lambda (_L218825_ _L218826_)
                                                 (let ((_$e218846_
                                                        (let ((__tmp226213
                                                               (lambda (_g218841218843_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L218826_ _g218841218843_)))))
                  (declare (not safe))
                  (find __tmp226213 _ids218777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e218846_
                                                       _$e218846_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L218825_
                                                          _ids218777_)))))
                                               _hd218790218820_
                                               _hd218787218812_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218779218796_
                                                 _g218780218799_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218779218796_ _g218780218799_)))))
                              (let ()
                                (declare (not safe))
                                (_g218779218796_ _g218780218799_)))))
                      (let ()
                        (declare (not safe))
                        (_g218779218796_ _g218780218799_))))))
          (declare (not safe))
          (_g218778218849_ _stx218776_))))))
