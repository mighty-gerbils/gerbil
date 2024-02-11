(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707610216)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl221424_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221424_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221424_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221424_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl221424_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl221420_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221420_ '%#declare gxc#xform-identity))
           _tbl221420_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl221416_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226138 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl221416_ __tmp226138))
           (let ((__tmp226139 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl221416_ __tmp226139))
           _tbl221416_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl221412_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221412_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221412_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221412_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221412_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl221412_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl221408_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226140 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl221408_ __tmp226140))
           (let ((__tmp226141 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl221408_ __tmp226141))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl221408_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl221404_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226142 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl221404_ __tmp226142))
           (let ()
             (declare (not safe))
             (table-set! _tbl221404_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221404_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221404_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221404_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221404_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221404_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221404_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221404_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221404_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221404_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221404_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl221404_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx221387_ . _args221389_)
        (let ((__tmp226144
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221389_)
                     (gxc#compile-e__0 _stx221387_)
                     (let ((_arg1221394_ (car _args221389_))
                           (_rest221396_ (cdr _args221389_)))
                       (if (null? _rest221396_)
                           (gxc#compile-e__1 _stx221387_ _arg1221394_)
                           (let ((_arg2221399_ (car _rest221396_))
                                 (_rest221401_ (cdr _rest221396_)))
                             (if (null? _rest221401_)
                                 (gxc#compile-e__2
                                  _stx221387_
                                  _arg1221394_
                                  _arg2221399_)
                                 (apply gxc#compile-e
                                        _stx221387_
                                        _arg1221394_
                                        _arg2221399_
                                        _rest221401_))))))))
              (__tmp226143 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp226144
           gxc#current-compile-methods
           __tmp226143))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl221384_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226145 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl221384_ __tmp226145))
           (let ()
             (declare (not safe))
             (table-set! _tbl221384_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221384_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221384_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221384_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221384_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl221384_))))
    (define gxc#apply-collect-methods
      (lambda (_stx221367_ . _args221369_)
        (let ((__tmp226147
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221369_)
                     (gxc#compile-e__0 _stx221367_)
                     (let ((_arg1221374_ (car _args221369_))
                           (_rest221376_ (cdr _args221369_)))
                       (if (null? _rest221376_)
                           (gxc#compile-e__1 _stx221367_ _arg1221374_)
                           (let ((_arg2221379_ (car _rest221376_))
                                 (_rest221381_ (cdr _rest221376_)))
                             (if (null? _rest221381_)
                                 (gxc#compile-e__2
                                  _stx221367_
                                  _arg1221374_
                                  _arg2221379_)
                                 (apply gxc#compile-e
                                        _stx221367_
                                        _arg1221374_
                                        _arg2221379_
                                        _rest221381_))))))))
              (__tmp226146 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp226147
           gxc#current-compile-methods
           __tmp226146))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl221364_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226148 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl221364_ __tmp226148))
           (let ()
             (declare (not safe))
             (table-set! _tbl221364_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221364_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221364_ '%#set! gxc#expression-subst-setq%))
           _tbl221364_))))
    (define gxc#apply-expression-subst
      (lambda (_stx221347_ . _args221349_)
        (let ((__tmp226150
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221349_)
                     (gxc#compile-e__0 _stx221347_)
                     (let ((_arg1221354_ (car _args221349_))
                           (_rest221356_ (cdr _args221349_)))
                       (if (null? _rest221356_)
                           (gxc#compile-e__1 _stx221347_ _arg1221354_)
                           (let ((_arg2221359_ (car _rest221356_))
                                 (_rest221361_ (cdr _rest221356_)))
                             (if (null? _rest221361_)
                                 (gxc#compile-e__2
                                  _stx221347_
                                  _arg1221354_
                                  _arg2221359_)
                                 (apply gxc#compile-e
                                        _stx221347_
                                        _arg1221354_
                                        _arg2221359_
                                        _rest221361_))))))))
              (__tmp226149 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp226150
           gxc#current-compile-methods
           __tmp226149))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl221344_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226151 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl221344_ __tmp226151))
           (let ()
             (declare (not safe))
             (table-set! _tbl221344_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221344_ '%#set! gxc#expression-subst*-setq%))
           _tbl221344_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx221327_ . _args221329_)
        (let ((__tmp226153
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221329_)
                     (gxc#compile-e__0 _stx221327_)
                     (let ((_arg1221334_ (car _args221329_))
                           (_rest221336_ (cdr _args221329_)))
                       (if (null? _rest221336_)
                           (gxc#compile-e__1 _stx221327_ _arg1221334_)
                           (let ((_arg2221339_ (car _rest221336_))
                                 (_rest221341_ (cdr _rest221336_)))
                             (if (null? _rest221341_)
                                 (gxc#compile-e__2
                                  _stx221327_
                                  _arg1221334_
                                  _arg2221339_)
                                 (apply gxc#compile-e
                                        _stx221327_
                                        _arg1221334_
                                        _arg2221339_
                                        _rest221341_))))))))
              (__tmp226152 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp226153
           gxc#current-compile-methods
           __tmp226152))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl221324_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226154 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl221324_ __tmp226154))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221324_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221324_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl221324_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl221320_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226155 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl221320_ __tmp226155))
           (let ()
             (declare (not safe))
             (table-set! _tbl221320_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221320_ '%#set! gxc#find-var-refs-setq%))
           _tbl221320_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx221303_ . _args221305_)
        (let ((__tmp226157
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221305_)
                     (gxc#compile-e__0 _stx221303_)
                     (let ((_arg1221310_ (car _args221305_))
                           (_rest221312_ (cdr _args221305_)))
                       (if (null? _rest221312_)
                           (gxc#compile-e__1 _stx221303_ _arg1221310_)
                           (let ((_arg2221315_ (car _rest221312_))
                                 (_rest221317_ (cdr _rest221312_)))
                             (if (null? _rest221317_)
                                 (gxc#compile-e__2
                                  _stx221303_
                                  _arg1221310_
                                  _arg2221315_)
                                 (apply gxc#compile-e
                                        _stx221303_
                                        _arg1221310_
                                        _arg2221315_
                                        _rest221317_))))))))
              (__tmp226156 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp226157
           gxc#current-compile-methods
           __tmp226156))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl221300_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226158 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl221300_ __tmp226158))
           (let ()
             (declare (not safe))
             (table-set! _tbl221300_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221300_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl221300_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx221283_ . _args221285_)
        (let ((__tmp226160
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221285_)
                     (gxc#compile-e__0 _stx221283_)
                     (let ((_arg1221290_ (car _args221285_))
                           (_rest221292_ (cdr _args221285_)))
                       (if (null? _rest221292_)
                           (gxc#compile-e__1 _stx221283_ _arg1221290_)
                           (let ((_arg2221295_ (car _rest221292_))
                                 (_rest221297_ (cdr _rest221292_)))
                             (if (null? _rest221297_)
                                 (gxc#compile-e__2
                                  _stx221283_
                                  _arg1221290_
                                  _arg2221295_)
                                 (apply gxc#compile-e
                                        _stx221283_
                                        _arg1221290_
                                        _arg2221295_
                                        _rest221297_))))))))
              (__tmp226159 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp226160
           gxc#current-compile-methods
           __tmp226159))))
    (define gxc#xform-identity
      (lambda (_stx221280_ . _args221281_) _stx221280_))
    (define gxc#xform-wrap-source
      (lambda (_stx221277_ _src-stx221278_)
        (let ((__tmp226161
               (let () (declare (not safe)) (gx#stx-source _src-stx221278_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx221277_ __tmp226161))))
    (define gxc#xform-apply-compile-e
      (lambda (_args221264_)
        (lambda (_stx221266_)
          (if (let () (declare (not safe)) (null? _args221264_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx221266_))
              (let ((_arg1221268_ (car _args221264_))
                    (_rest221270_ (cdr _args221264_)))
                (if (let () (declare (not safe)) (null? _rest221270_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx221266_ _arg1221268_))
                    (let ((_arg2221273_ (car _rest221270_))
                          (_rest221275_ (cdr _rest221270_)))
                      (if (let () (declare (not safe)) (null? _rest221275_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx221266_
                             _arg1221268_
                             _arg2221273_))
                          (apply gxc#compile-e
                                 _stx221266_
                                 _arg1221268_
                                 _arg2221273_
                                 _rest221275_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx221223_ . _args221224_)
        (let* ((_g221226221236_
                (lambda (_g221227221233_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221227221233_))))
               (_g221225221261_
                (lambda (_g221227221239_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221227221239_))
                      (let ((_e221231221241_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221227221239_))))
                        (let ((_hd221230221244_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221231221241_)))
                              (_tl221229221246_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221231221241_))))
                          ((lambda (_L221249_)
                             (let* ((_forms221259_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args221224_))
                                          _L221249_))
                                    (__tmp226162
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms221259_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp226162
                                _stx221223_)))
                           _tl221229221246_)))
                      (let ()
                        (declare (not safe))
                        (_g221226221236_ _g221227221239_))))))
          (declare (not safe))
          (_g221225221261_ _stx221223_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx221181_ . _args221182_)
        (let* ((_g221184221194_
                (lambda (_g221185221191_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221185221191_))))
               (_g221183221220_
                (lambda (_g221185221197_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221185221197_))
                      (let ((_e221189221199_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221185221197_))))
                        (let ((_hd221188221202_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221189221199_)))
                              (_tl221187221204_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221189221199_))))
                          ((lambda (_L221207_)
                             (let ((__tmp226165
                                    (lambda ()
                                      (let* ((_forms221218_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args221182_))
                                                   _L221207_))
                                             (__tmp226166
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms221218_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp226166
                                         _stx221181_))))
                                   (__tmp226163
                                    (let ((__tmp226164
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp226164 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp226165
                                gx#current-expander-phi
                                __tmp226163)))
                           _tl221187221204_)))
                      (let ()
                        (declare (not safe))
                        (_g221184221194_ _g221185221197_))))))
          (declare (not safe))
          (_g221183221220_ _stx221181_))))
    (define gxc#xform-module%
      (lambda (_stx221109_ . _args221110_)
        (let* ((_g221112221126_
                (lambda (_g221113221123_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221113221123_))))
               (_g221111221178_
                (lambda (_g221113221129_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221113221129_))
                      (let ((_e221118221131_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221113221129_))))
                        (let ((_hd221117221134_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221118221131_)))
                              (_tl221116221136_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221118221131_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221116221136_))
                              (let ((_e221121221139_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221116221136_))))
                                (let ((_hd221120221142_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221121221139_)))
                                      (_tl221119221144_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221121221139_))))
                                  ((lambda (_L221147_ _L221148_)
                                     (let* ((_ctx221161_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L221148_)))
                                            (_code221163_
                                             (##structure-ref
                                              _ctx221161_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code221175_
                                             (let ((__tmp226167
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args221110_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code221163_))
                                                          (let ((_arg1221166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args221110_))
                        (_rest221168_ (cdr _args221110_)))
                    (if (let () (declare (not safe)) (null? _rest221168_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code221163_ _arg1221166_))
                        (let ((_arg2221171_ (car _rest221168_))
                              (_rest221173_ (cdr _rest221168_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest221173_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code221163_
                                 _arg1221166_
                                 _arg2221171_))
                              (apply gxc#compile-e
                                     _code221163_
                                     _arg1221166_
                                     _arg2221171_
                                     _rest221173_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp226167
                                                gx#current-expander-context
                                                _ctx221161_))))
                                       (##structure-set!
                                        _ctx221161_
                                        _code221175_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp226168
                                              (let ((__tmp226169
                                                     (let ((__tmp226170
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code221175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L221148_ __tmp226170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp226169))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp226168
                                          _stx221109_))))
                                   _tl221119221144_
                                   _hd221120221142_)))
                              (let ()
                                (declare (not safe))
                                (_g221112221126_ _g221113221129_)))))
                      (let ()
                        (declare (not safe))
                        (_g221112221126_ _g221113221129_))))))
          (declare (not safe))
          (_g221111221178_ _stx221109_))))
    (define gxc#xform-define-values%
      (lambda (_stx221030_ . _args221031_)
        (let* ((_g221033221050_
                (lambda (_g221034221047_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221034221047_))))
               (_g221032221106_
                (lambda (_g221034221053_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221034221053_))
                      (let ((_e221039221055_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221034221053_))))
                        (let ((_hd221038221058_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221039221055_)))
                              (_tl221037221060_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221039221055_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221037221060_))
                              (let ((_e221042221063_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221037221060_))))
                                (let ((_hd221041221066_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221042221063_)))
                                      (_tl221040221068_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221042221063_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221040221068_))
                                      (let ((_e221045221071_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221040221068_))))
                                        (let ((_hd221044221074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221045221071_)))
                                              (_tl221043221076_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221045221071_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221043221076_))
                                              ((lambda (_L221079_ _L221080_)
                                                 (let* ((_expr221104_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args221031_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L221079_))
                     (let ((_arg1221095_ (car _args221031_))
                           (_rest221097_ (cdr _args221031_)))
                       (if (let () (declare (not safe)) (null? _rest221097_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L221079_ _arg1221095_))
                           (let ((_arg2221100_ (car _rest221097_))
                                 (_rest221102_ (cdr _rest221097_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest221102_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L221079_
                                    _arg1221095_
                                    _arg2221100_))
                                 (apply gxc#compile-e
                                        _L221079_
                                        _arg1221095_
                                        _arg2221100_
                                        _rest221102_)))))))
                (__tmp226171
                 (let ((__tmp226172
                        (let ((__tmp226173
                               (let ()
                                 (declare (not safe))
                                 (cons _expr221104_ '()))))
                          (declare (not safe))
                          (cons _L221080_ __tmp226173))))
                   (declare (not safe))
                   (cons '%#define-values __tmp226172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp226171
                                                    _stx221030_)))
                                               _hd221044221074_
                                               _hd221041221066_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221033221050_
                                                 _g221034221053_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221033221050_ _g221034221053_)))))
                              (let ()
                                (declare (not safe))
                                (_g221033221050_ _g221034221053_)))))
                      (let ()
                        (declare (not safe))
                        (_g221033221050_ _g221034221053_))))))
          (declare (not safe))
          (_g221032221106_ _stx221030_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx220950_ . _args220951_)
        (let* ((_g220953220970_
                (lambda (_g220954220967_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220954220967_))))
               (_g220952221027_
                (lambda (_g220954220973_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220954220973_))
                      (let ((_e220959220975_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220954220973_))))
                        (let ((_hd220958220978_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220959220975_)))
                              (_tl220957220980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220959220975_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220957220980_))
                              (let ((_e220962220983_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220957220980_))))
                                (let ((_hd220961220986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220962220983_)))
                                      (_tl220960220988_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220962220983_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220960220988_))
                                      (let ((_e220965220991_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220960220988_))))
                                        (let ((_hd220964220994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220965220991_)))
                                              (_tl220963220996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220965220991_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220963220996_))
                                              ((lambda (_L220999_ _L221000_)
                                                 (let ((__tmp226176
                                                        (lambda ()
                                                          (let* ((_expr221025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args220951_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L220999_))
                              (let ((_arg1221016_ (car _args220951_))
                                    (_rest221018_ (cdr _args220951_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest221018_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L220999_
                                       _arg1221016_))
                                    (let ((_arg2221021_ (car _rest221018_))
                                          (_rest221023_ (cdr _rest221018_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest221023_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L220999_
                                             _arg1221016_
                                             _arg2221021_))
                                          (apply gxc#compile-e
                                                 _L220999_
                                                 _arg1221016_
                                                 _arg2221021_
                                                 _rest221023_)))))))
                         (__tmp226177
                          (let ((__tmp226178
                                 (let ((__tmp226179
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr221025_ '()))))
                                   (declare (not safe))
                                   (cons _L221000_ __tmp226179))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp226178))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp226177 _stx220950_))))
               (__tmp226174
                (let ((__tmp226175 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp226175 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp226176
                                                    gx#current-expander-phi
                                                    __tmp226174)))
                                               _hd220964220994_
                                               _hd220961220986_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220953220970_
                                                 _g220954220973_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220953220970_ _g220954220973_)))))
                              (let ()
                                (declare (not safe))
                                (_g220953220970_ _g220954220973_)))))
                      (let ()
                        (declare (not safe))
                        (_g220953220970_ _g220954220973_))))))
          (declare (not safe))
          (_g220952221027_ _stx220950_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx220871_ . _args220872_)
        (let* ((_g220874220891_
                (lambda (_g220875220888_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220875220888_))))
               (_g220873220947_
                (lambda (_g220875220894_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220875220894_))
                      (let ((_e220880220896_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220875220894_))))
                        (let ((_hd220879220899_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220880220896_)))
                              (_tl220878220901_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220880220896_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220878220901_))
                              (let ((_e220883220904_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220878220901_))))
                                (let ((_hd220882220907_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220883220904_)))
                                      (_tl220881220909_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220883220904_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220881220909_))
                                      (let ((_e220886220912_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220881220909_))))
                                        (let ((_hd220885220915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220886220912_)))
                                              (_tl220884220917_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220886220912_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220884220917_))
                                              ((lambda (_L220920_ _L220921_)
                                                 (let* ((_expr220945_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220872_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220920_))
                     (let ((_arg1220936_ (car _args220872_))
                           (_rest220938_ (cdr _args220872_)))
                       (if (let () (declare (not safe)) (null? _rest220938_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220920_ _arg1220936_))
                           (let ((_arg2220941_ (car _rest220938_))
                                 (_rest220943_ (cdr _rest220938_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220943_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220920_
                                    _arg1220936_
                                    _arg2220941_))
                                 (apply gxc#compile-e
                                        _L220920_
                                        _arg1220936_
                                        _arg2220941_
                                        _rest220943_)))))))
                (__tmp226180
                 (let ((__tmp226181
                        (let ((__tmp226182
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220945_ '()))))
                          (declare (not safe))
                          (cons _L220921_ __tmp226182))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp226181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp226180
                                                    _stx220871_)))
                                               _hd220885220915_
                                               _hd220882220907_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220874220891_
                                                 _g220875220894_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220874220891_ _g220875220894_)))))
                              (let ()
                                (declare (not safe))
                                (_g220874220891_ _g220875220894_)))))
                      (let ()
                        (declare (not safe))
                        (_g220874220891_ _g220875220894_))))))
          (declare (not safe))
          (_g220873220947_ _stx220871_))))
    (define gxc#xform-lambda%
      (lambda (_stx220814_ . _args220815_)
        (let* ((_g220817220831_
                (lambda (_g220818220828_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220818220828_))))
               (_g220816220868_
                (lambda (_g220818220834_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220818220834_))
                      (let ((_e220823220836_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220818220834_))))
                        (let ((_hd220822220839_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220823220836_)))
                              (_tl220821220841_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220823220836_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220821220841_))
                              (let ((_e220826220844_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220821220841_))))
                                (let ((_hd220825220847_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220826220844_)))
                                      (_tl220824220849_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220826220844_))))
                                  ((lambda (_L220852_ _L220853_)
                                     (let* ((_body220866_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args220815_))
                                                  _L220852_))
                                            (__tmp226183
                                             (let ((__tmp226184
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L220853_
                                                            _body220866_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp226184))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp226183
                                        _stx220814_)))
                                   _tl220824220849_
                                   _hd220825220847_)))
                              (let ()
                                (declare (not safe))
                                (_g220817220831_ _g220818220834_)))))
                      (let ()
                        (declare (not safe))
                        (_g220817220831_ _g220818220834_))))))
          (declare (not safe))
          (_g220816220868_ _stx220814_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx220727_ . _args220728_)
        (letrec ((_clause-e220730_
                  (lambda (_clause220771_)
                    (let* ((_g220773220784_
                            (lambda (_g220774220781_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g220774220781_))))
                           (_g220772220811_
                            (lambda (_g220774220787_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g220774220787_))
                                  (let ((_e220779220789_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g220774220787_))))
                                    (let ((_hd220778220792_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e220779220789_)))
                                          (_tl220777220794_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e220779220789_))))
                                      ((lambda (_L220797_ _L220798_)
                                         (let ((_body220809_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args220728_))
                                                     _L220797_)))
                                           (declare (not safe))
                                           (cons _L220798_ _body220809_)))
                                       _tl220777220794_
                                       _hd220778220792_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g220773220784_ _g220774220787_))))))
                      (declare (not safe))
                      (_g220772220811_ _clause220771_)))))
          (let* ((_g220732220742_
                  (lambda (_g220733220739_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g220733220739_))))
                 (_g220731220768_
                  (lambda (_g220733220745_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g220733220745_))
                        (let ((_e220737220747_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g220733220745_))))
                          (let ((_hd220736220750_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220737220747_)))
                                (_tl220735220752_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220737220747_))))
                            ((lambda (_L220755_)
                               (let* ((_clauses220766_
                                       (map _clause-e220730_ _L220755_))
                                      (__tmp226185
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses220766_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp226185
                                  _stx220727_)))
                             _tl220735220752_)))
                        (let ()
                          (declare (not safe))
                          (_g220732220742_ _g220733220745_))))))
            (declare (not safe))
            (_g220731220768_ _stx220727_)))))
    (define gxc#xform-let-values%
      (lambda (_stx220521_ . _args220522_)
        (let* ((_g220524220557_
                (lambda (_g220525220554_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220525220554_))))
               (_g220523220724_
                (lambda (_g220525220560_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220525220560_))
                      (let ((_e220532220562_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220525220560_))))
                        (let ((_hd220531220565_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220532220562_)))
                              (_tl220530220567_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220532220562_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220530220567_))
                              (let ((_e220535220570_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220530220567_))))
                                (let ((_hd220534220573_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220535220570_)))
                                      (_tl220533220575_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220535220570_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd220534220573_))
                                      (let ((_g226186_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd220534220573_
                                                '0))))
                                        (begin
                                          (let ((_g226187_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g226186_)
                                                       (##vector-length
                                                        _g226186_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g226187_ 2)))
                                                (error "Context expects 2 values"
                                                       _g226187_)))
                                          (let ((_target220536220578_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g226186_ 0)))
                                                (_tl220538220580_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g226186_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220538220580_))
                                                (letrec ((_loop220539220583_
                                                          (lambda (_hd220537220586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr220543220588_
                           _hd220544220590_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd220537220586_))
                        (let ((_e220540220593_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd220537220586_))))
                          (let ((_lp-hd220541220596_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220540220593_)))
                                (_lp-tl220542220598_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220540220593_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd220541220596_))
                                (let ((_e220549220601_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd220541220596_))))
                                  (let ((_hd220548220604_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e220549220601_)))
                                        (_tl220547220606_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e220549220601_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl220547220606_))
                                        (let ((_e220552220609_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl220547220606_))))
                                          (let ((_hd220551220612_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e220552220609_)))
                                                (_tl220550220614_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e220552220609_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220550220614_))
                                                (let ((__tmp226200
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220551220612_
                                                               _expr220543220588_)))
                                                      (__tmp226199
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220548220604_
                                                               _hd220544220590_))))
                                                  (declare (not safe))
                                                  (_loop220539220583_
                                                   _lp-tl220542220598_
                                                   __tmp226200
                                                   __tmp226199))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220524220557_
                                                   _g220525220560_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g220524220557_ _g220525220560_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g220524220557_ _g220525220560_)))))
                        (let ((_expr220545220617_ (reverse _expr220543220588_))
                              (_hd220546220619_ (reverse _hd220544220590_)))
                          ((lambda (_L220622_ _L220623_ _L220624_ _L220625_)
                             (let* ((_g220644220660_
                                     (lambda (_g220645220657_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g220645220657_))))
                                    (_g220643220714_
                                     (lambda (_g220645220663_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g220645220663_))
                                           (let ((_g226188_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g220645220663_
                                                     '0))))
                                             (begin
                                               (let ((_g226189_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g226188_)
                                                            (##vector-length
                                                             _g226188_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g226189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g226189_)))
                                               (let ((_target220647220665_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g226188_
                                                         0)))
                                                     (_tl220649220667_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g226188_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl220649220667_))
                                                     (letrec ((_loop220650220670_
                                                               (lambda (_hd220648220673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr220654220675_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd220648220673_))
                             (let ((_e220651220678_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd220648220673_))))
                               (let ((_lp-hd220652220681_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e220651220678_)))
                                     (_lp-tl220653220683_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e220651220678_))))
                                 (let ((__tmp226196
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd220652220681_
                                                _expr220654220675_))))
                                   (declare (not safe))
                                   (_loop220650220670_
                                    _lp-tl220653220683_
                                    __tmp226196))))
                             (let ((_expr220655220686_
                                    (reverse _expr220654220675_)))
                               ((lambda (_L220689_)
                                  (let ()
                                    (let* ((_body220702_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args220522_))
                                                 _L220622_))
                                           (__tmp226190
                                            (let ((__tmp226191
                                                   (let ((__tmp226192
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L220689_
                                                               _L220624_))
                                                            (let ((__tmp226193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g220703220707_
                                    _g220704220709_
                                    _g220705220711_)
                             (let ((__tmp226194
                                    (let ((__tmp226195
                                           (let ()
                                             (declare (not safe))
                                             (cons _g220703220707_ '()))))
                                      (declare (not safe))
                                      (cons _g220704220709_ __tmp226195))))
                               (declare (not safe))
                               (cons __tmp226194 _g220705220711_)))))
                      (declare (not safe))
                      (foldr2 __tmp226193 '() _L220689_ _L220624_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp226192
                                                           _body220702_))))
                                              (declare (not safe))
                                              (cons _L220625_ __tmp226191))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp226190
                                       _stx220521_))))
                                _expr220655220686_))))))
               (let ()
                 (declare (not safe))
                 (_loop220650220670_ _target220647220665_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g220644220660_
                                                        _g220645220663_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g220644220660_
                                              _g220645220663_)))))
                                    (__tmp226197
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220522_))
                                          (let ((__tmp226198
                                                 (lambda (_g220716220719_
                                                          _g220717220721_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g220716220719_
                                                           _g220717220721_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp226198
                                                    '()
                                                    _L220623_)))))
                               (declare (not safe))
                               (_g220643220714_ __tmp226197)))
                           _tl220533220575_
                           _expr220545220617_
                           _hd220546220619_
                           _hd220531220565_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop220539220583_
                                                     _target220536220578_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220524220557_
                                                   _g220525220560_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220524220557_ _g220525220560_)))))
                              (let ()
                                (declare (not safe))
                                (_g220524220557_ _g220525220560_)))))
                      (let ()
                        (declare (not safe))
                        (_g220524220557_ _g220525220560_))))))
          (declare (not safe))
          (_g220523220724_ _stx220521_))))
    (define gxc#xform-operands
      (lambda (_stx220477_ . _args220478_)
        (let* ((_g220480220491_
                (lambda (_g220481220488_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220481220488_))))
               (_g220479220518_
                (lambda (_g220481220494_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220481220494_))
                      (let ((_e220486220496_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220481220494_))))
                        (let ((_hd220485220499_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220486220496_)))
                              (_tl220484220501_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220486220496_))))
                          ((lambda (_L220504_ _L220505_)
                             (let* ((_rands220516_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220478_))
                                          _L220504_))
                                    (__tmp226201
                                     (let ()
                                       (declare (not safe))
                                       (cons _L220505_ _rands220516_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp226201
                                _stx220477_)))
                           _tl220484220501_
                           _hd220485220499_)))
                      (let ()
                        (declare (not safe))
                        (_g220480220491_ _g220481220494_))))))
          (declare (not safe))
          (_g220479220518_ _stx220477_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx220398_ . _args220399_)
        (let* ((_g220401220418_
                (lambda (_g220402220415_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220402220415_))))
               (_g220400220474_
                (lambda (_g220402220421_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220402220421_))
                      (let ((_e220407220423_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220402220421_))))
                        (let ((_hd220406220426_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220407220423_)))
                              (_tl220405220428_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220407220423_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220405220428_))
                              (let ((_e220410220431_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220405220428_))))
                                (let ((_hd220409220434_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220410220431_)))
                                      (_tl220408220436_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220410220431_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220408220436_))
                                      (let ((_e220413220439_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220408220436_))))
                                        (let ((_hd220412220442_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220413220439_)))
                                              (_tl220411220444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220413220439_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220411220444_))
                                              ((lambda (_L220447_ _L220448_)
                                                 (let* ((_expr220472_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220399_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220447_))
                     (let ((_arg1220463_ (car _args220399_))
                           (_rest220465_ (cdr _args220399_)))
                       (if (let () (declare (not safe)) (null? _rest220465_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220447_ _arg1220463_))
                           (let ((_arg2220468_ (car _rest220465_))
                                 (_rest220470_ (cdr _rest220465_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220470_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220447_
                                    _arg1220463_
                                    _arg2220468_))
                                 (apply gxc#compile-e
                                        _L220447_
                                        _arg1220463_
                                        _arg2220468_
                                        _rest220470_)))))))
                (__tmp226202
                 (let ((__tmp226203
                        (let ((__tmp226204
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220472_ '()))))
                          (declare (not safe))
                          (cons _L220448_ __tmp226204))))
                   (declare (not safe))
                   (cons '%#set! __tmp226203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp226202
                                                    _stx220398_)))
                                               _hd220412220442_
                                               _hd220409220434_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220401220418_
                                                 _g220402220421_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220401220418_ _g220402220421_)))))
                              (let ()
                                (declare (not safe))
                                (_g220401220418_ _g220402220421_)))))
                      (let ()
                        (declare (not safe))
                        (_g220401220418_ _g220402220421_))))))
          (declare (not safe))
          (_g220400220474_ _stx220398_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx220329_)
        (let* ((_g220331220348_
                (lambda (_g220332220345_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220332220345_))))
               (_g220330220395_
                (lambda (_g220332220351_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220332220351_))
                      (let ((_e220337220353_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220332220351_))))
                        (let ((_hd220336220356_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220337220353_)))
                              (_tl220335220358_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220337220353_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220335220358_))
                              (let ((_e220340220361_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220335220358_))))
                                (let ((_hd220339220364_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220340220361_)))
                                      (_tl220338220366_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220340220361_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220338220366_))
                                      (let ((_e220343220369_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220338220366_))))
                                        (let ((_hd220342220372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220343220369_)))
                                              (_tl220341220374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220343220369_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220341220374_))
                                              ((lambda (_L220377_ _L220378_)
                                                 (let ((_sym220393_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L220378_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym220393_))
                                                   (let ((__tmp226205
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp226205
                                                      _sym220393_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L220377_))))
                                               _hd220342220372_
                                               _hd220339220364_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220331220348_
                                                 _g220332220351_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220331220348_ _g220332220351_)))))
                              (let ()
                                (declare (not safe))
                                (_g220331220348_ _g220332220351_)))))
                      (let ()
                        (declare (not safe))
                        (_g220331220348_ _g220332220351_))))))
          (declare (not safe))
          (_g220330220395_ _stx220329_))))
    (define gxc#collect-methods-call%
      (lambda (_stx219883_)
        (let* ((___stx225895225896_ _stx219883_)
               (_g219887219989_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx225895225896_)))))
          (let ((___kont225897225898_
                 (lambda (_L220279_ _L220280_ _L220281_ _L220282_ _L220283_)
                   (let ((__tmp226206
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L220280_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp226206))))
                (___kont225899225900_
                 (lambda (_L220105_ _L220106_ _L220107_ _L220108_)
                   (let ((__tmp226207
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L220105_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp226207))))
                (___kont225901225902_ (lambda () '#!void)))
            (let ((___match226030226031_
                   (lambda (_e219896220151_
                            _hd219895220154_
                            _tl219894220156_
                            _e219899220159_
                            _hd219898220162_
                            _tl219897220164_
                            _e219902220167_
                            _hd219901220170_
                            _tl219900220172_
                            _e219905220175_
                            _hd219904220178_
                            _tl219903220180_
                            _e219908220183_
                            _hd219907220186_
                            _tl219906220188_
                            _e219911220191_
                            _hd219910220194_
                            _tl219909220196_
                            _e219914220199_
                            _hd219913220202_
                            _tl219912220204_
                            _e219917220207_
                            _hd219916220210_
                            _tl219915220212_
                            _e219920220215_
                            _hd219919220218_
                            _tl219918220220_
                            _e219923220223_
                            _hd219922220226_
                            _tl219921220228_
                            _e219926220231_
                            _hd219925220234_
                            _tl219924220236_
                            _e219929220239_
                            _hd219928220242_
                            _tl219927220244_
                            _e219932220247_
                            _hd219931220250_
                            _tl219930220252_
                            _e219935220255_
                            _hd219934220258_
                            _tl219933220260_
                            _e219938220263_
                            _hd219937220266_
                            _tl219936220268_
                            _e219941220271_
                            _hd219940220274_
                            _tl219939220276_)
                     (let ((_L220279_ _hd219940220274_)
                           (_L220280_ _hd219931220250_)
                           (_L220281_ _hd219922220226_)
                           (_L220282_ _hd219913220202_)
                           (_L220283_ _hd219904220178_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L220283_
                              'bind-method!))
                           (___kont225897225898_
                            _L220279_
                            _L220280_
                            _L220281_
                            _L220282_
                            _L220283_)
                           (___kont225901225902_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx225895225896_))
                  (let ((_e219896220151_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx225895225896_))))
                    (let ((_tl219894220156_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219896220151_)))
                          (_hd219895220154_
                           (let ()
                             (declare (not safe))
                             (##car _e219896220151_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219894220156_))
                          (let ((_e219899220159_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219894220156_))))
                            (let ((_tl219897220164_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219899220159_)))
                                  (_hd219898220162_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219899220159_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219898220162_))
                                  (let ((_e219902220167_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219898220162_))))
                                    (let ((_tl219900220172_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219902220167_)))
                                          (_hd219901220170_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219902220167_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd219901220170_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd219901220170_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219900220172_))
                                                  (let ((_e219905220175_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219900220172_))))
                                                    (let ((_tl219903220180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219905220175_)))
                                                          (_hd219904220178_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219905220175_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219903220180_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219897220164_))
                      (let ((_e219908220183_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219897220164_))))
                        (let ((_tl219906220188_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219908220183_)))
                              (_hd219907220186_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219908220183_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219907220186_))
                              (let ((_e219911220191_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219907220186_))))
                                (let ((_tl219909220196_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219911220191_)))
                                      (_hd219910220194_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219911220191_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd219910220194_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd219910220194_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl219909220196_))
                                              (let ((_e219914220199_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl219909220196_))))
                                                (let ((_tl219912220204_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219914220199_)))
                                                      (_hd219913220202_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219914220199_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219912220204_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl219906220188_))
                                                          (let ((_e219917220207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl219906220188_))))
                    (let ((_tl219915220212_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219917220207_)))
                          (_hd219916220210_
                           (let ()
                             (declare (not safe))
                             (##car _e219917220207_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd219916220210_))
                          (let ((_e219920220215_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd219916220210_))))
                            (let ((_tl219918220220_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219920220215_)))
                                  (_hd219919220218_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219920220215_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd219919220218_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd219919220218_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl219918220220_))
                                          (let ((_e219923220223_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl219918220220_))))
                                            (let ((_tl219921220228_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219923220223_)))
                                                  (_hd219922220226_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219923220223_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl219921220228_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl219915220212_))
                                                      (let ((_e219926220231_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl219915220212_))))
                (let ((_tl219924220236_
                       (let () (declare (not safe)) (##cdr _e219926220231_)))
                      (_hd219925220234_
                       (let () (declare (not safe)) (##car _e219926220231_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219925220234_))
                      (let ((_e219929220239_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219925220234_))))
                        (let ((_tl219927220244_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219929220239_)))
                              (_hd219928220242_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219929220239_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd219928220242_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd219928220242_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219927220244_))
                                      (let ((_e219932220247_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219927220244_))))
                                        (let ((_tl219930220252_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219932220247_)))
                                              (_hd219931220250_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219932220247_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219930220252_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219924220236_))
                                                  (let ((_e219935220255_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219924220236_))))
                                                    (let ((_tl219933220260_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219935220255_)))
                                                          (_hd219934220258_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219935220255_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd219934220258_))
                                                          (let ((_e219938220263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd219934220258_))))
                    (let ((_tl219936220268_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219938220263_)))
                          (_hd219937220266_
                           (let ()
                             (declare (not safe))
                             (##car _e219938220263_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd219937220266_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd219937220266_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219936220268_))
                                  (let ((_e219941220271_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219936220268_))))
                                    (let ((_tl219939220276_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219941220271_)))
                                          (_hd219940220274_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219941220271_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219939220276_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219933220260_))
                                              (___match226030226031_
                                               _e219896220151_
                                               _hd219895220154_
                                               _tl219894220156_
                                               _e219899220159_
                                               _hd219898220162_
                                               _tl219897220164_
                                               _e219902220167_
                                               _hd219901220170_
                                               _tl219900220172_
                                               _e219905220175_
                                               _hd219904220178_
                                               _tl219903220180_
                                               _e219908220183_
                                               _hd219907220186_
                                               _tl219906220188_
                                               _e219911220191_
                                               _hd219910220194_
                                               _tl219909220196_
                                               _e219914220199_
                                               _hd219913220202_
                                               _tl219912220204_
                                               _e219917220207_
                                               _hd219916220210_
                                               _tl219915220212_
                                               _e219920220215_
                                               _hd219919220218_
                                               _tl219918220220_
                                               _e219923220223_
                                               _hd219922220226_
                                               _tl219921220228_
                                               _e219926220231_
                                               _hd219925220234_
                                               _tl219924220236_
                                               _e219929220239_
                                               _hd219928220242_
                                               _tl219927220244_
                                               _e219932220247_
                                               _hd219931220250_
                                               _tl219930220252_
                                               _e219935220255_
                                               _hd219934220258_
                                               _tl219933220260_
                                               _e219938220263_
                                               _hd219937220266_
                                               _tl219936220268_
                                               _e219941220271_
                                               _hd219940220274_
                                               _tl219939220276_)
                                              (___kont225901225902_))
                                          (___kont225901225902_))))
                                  (___kont225901225902_))
                              (___kont225901225902_))
                          (___kont225901225902_))))
                  (___kont225901225902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219924220236_))
                                                      (if (let ((__tmp226208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp226208 'bind-method!))
                  (let ((_L220105_ _hd219931220250_)
                        (_L220106_ _hd219922220226_)
                        (_L220107_ _hd219913220202_)
                        (_L220108_ _hd219904220178_))
                    (___kont225899225900_
                     _L220105_
                     _L220106_
                     _L220107_
                     _L220108_))
                  (___kont225901225902_))
              (___kont225901225902_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225901225902_))))
                                      (___kont225901225902_))
                                  (___kont225901225902_))
                              (___kont225901225902_))))
                      (___kont225901225902_))))
              (___kont225901225902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225901225902_))))
                                          (___kont225901225902_))
                                      (___kont225901225902_))
                                  (___kont225901225902_))))
                          (___kont225901225902_))))
                  (___kont225901225902_))
              (___kont225901225902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225901225902_))
                                          (___kont225901225902_))
                                      (___kont225901225902_))))
                              (___kont225901225902_))))
                      (___kont225901225902_))
                  (___kont225901225902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225901225902_))
                                              (___kont225901225902_))
                                          (___kont225901225902_))))
                                  (___kont225901225902_))))
                          (___kont225901225902_))))
                  (___kont225901225902_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx219830_ _id219831_ _new-id219832_)
        (let* ((_g219834219847_
                (lambda (_g219835219844_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219835219844_))))
               (_g219833219880_
                (lambda (_g219835219850_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219835219850_))
                      (let ((_e219839219852_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219835219850_))))
                        (let ((_hd219838219855_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219839219852_)))
                              (_tl219837219857_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219839219852_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219837219857_))
                              (let ((_e219842219860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219837219857_))))
                                (let ((_hd219841219863_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219842219860_)))
                                      (_tl219840219865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219842219860_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219840219865_))
                                      ((lambda (_L219868_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L219868_
                                                _id219831_))
                                             (let ((__tmp226209
                                                    (let ((__tmp226210
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id219832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp226210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp226209
                                                _stx219830_))
                                             _stx219830_))
                                       _hd219841219863_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219834219847_ _g219835219850_)))))
                              (let ()
                                (declare (not safe))
                                (_g219834219847_ _g219835219850_)))))
                      (let ()
                        (declare (not safe))
                        (_g219834219847_ _g219835219850_))))))
          (declare (not safe))
          (_g219833219880_ _stx219830_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx219771_ _subst219772_)
        (let* ((_g219774219787_
                (lambda (_g219775219784_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219775219784_))))
               (_g219773219827_
                (lambda (_g219775219790_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219775219790_))
                      (let ((_e219779219792_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219775219790_))))
                        (let ((_hd219778219795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219779219792_)))
                              (_tl219777219797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219779219792_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219777219797_))
                              (let ((_e219782219800_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219777219797_))))
                                (let ((_hd219781219803_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219782219800_)))
                                      (_tl219780219805_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219782219800_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219780219805_))
                                      ((lambda (_L219808_)
                                         (let ((_$e219822_
                                                (let ((__tmp226211
                                                       (lambda (_sub219820_)
                                                         (let ((__tmp226212
                                                                (car _sub219820_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L219808_
                                                            __tmp226212)))))
                                                  (declare (not safe))
                                                  (find __tmp226211
                                                        _subst219772_))))
                                           (if _$e219822_
                                               ((lambda (_sub219825_)
                                                  (let ((__tmp226213
                                                         (let ((__tmp226214
                                                                (let ((__tmp226215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub219825_)))
                          (declare (not safe))
                          (cons __tmp226215 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp226214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp226213
                                                     _stx219771_)))
                                                _$e219822_)
                                               _stx219771_)))
                                       _hd219781219803_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219774219787_ _g219775219790_)))))
                              (let ()
                                (declare (not safe))
                                (_g219774219787_ _g219775219790_)))))
                      (let ()
                        (declare (not safe))
                        (_g219774219787_ _g219775219790_))))))
          (declare (not safe))
          (_g219773219827_ _stx219771_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx219699_ _id219700_ _new-id219701_)
        (let* ((_g219703219720_
                (lambda (_g219704219717_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219704219717_))))
               (_g219702219768_
                (lambda (_g219704219723_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219704219723_))
                      (let ((_e219709219725_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219704219723_))))
                        (let ((_hd219708219728_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219709219725_)))
                              (_tl219707219730_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219709219725_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219707219730_))
                              (let ((_e219712219733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219707219730_))))
                                (let ((_hd219711219736_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219712219733_)))
                                      (_tl219710219738_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219712219733_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219710219738_))
                                      (let ((_e219715219741_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219710219738_))))
                                        (let ((_hd219714219744_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219715219741_)))
                                              (_tl219713219746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219715219741_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219713219746_))
                                              ((lambda (_L219749_ _L219750_)
                                                 (let ((_new-expr219765_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L219749_
                                                           _id219700_
                                                           _new-id219701_)))
                                                       (_new-xid219766_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L219750_
                                                               _id219700_))
                                                            _new-id219701_
                                                            _L219750_)))
                                                   (let ((__tmp226216
                                                          (let ((__tmp226217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226218
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219765_ '()))))
                           (declare (not safe))
                           (cons _new-xid219766_ __tmp226218))))
                    (declare (not safe))
                    (cons '%#set! __tmp226217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp226216
                                                      _stx219699_))))
                                               _hd219714219744_
                                               _hd219711219736_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219703219720_
                                                 _g219704219723_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219703219720_ _g219704219723_)))))
                              (let ()
                                (declare (not safe))
                                (_g219703219720_ _g219704219723_)))))
                      (let ()
                        (declare (not safe))
                        (_g219703219720_ _g219704219723_))))))
          (declare (not safe))
          (_g219702219768_ _stx219699_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx219623_ _subst219624_)
        (let* ((_g219626219643_
                (lambda (_g219627219640_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219627219640_))))
               (_g219625219696_
                (lambda (_g219627219646_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219627219646_))
                      (let ((_e219632219648_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219627219646_))))
                        (let ((_hd219631219651_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219632219648_)))
                              (_tl219630219653_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219632219648_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219630219653_))
                              (let ((_e219635219656_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219630219653_))))
                                (let ((_hd219634219659_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219635219656_)))
                                      (_tl219633219661_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219635219656_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219633219661_))
                                      (let ((_e219638219664_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219633219661_))))
                                        (let ((_hd219637219667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219638219664_)))
                                              (_tl219636219669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219638219664_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219636219669_))
                                              ((lambda (_L219672_ _L219673_)
                                                 (let ((_new-expr219693_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L219672_
                                                           _subst219624_)))
                                                       (_new-xid219694_
                                                        (let ((_$e219690_
                                                               (let ((__tmp226219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub219688_)
                                (let ((__tmp226220 (car _sub219688_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L219673_
                                   __tmp226220)))))
                         (declare (not safe))
                         (find __tmp226219 _subst219624_))))
                  (if _$e219690_ (cdr _$e219690_) _L219673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp226221
                                                          (let ((__tmp226222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226223
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219693_ '()))))
                           (declare (not safe))
                           (cons _new-xid219694_ __tmp226223))))
                    (declare (not safe))
                    (cons '%#set! __tmp226222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp226221
                                                      _stx219623_))))
                                               _hd219637219667_
                                               _hd219634219659_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219626219643_
                                                 _g219627219646_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219626219643_ _g219627219646_)))))
                              (let ()
                                (declare (not safe))
                                (_g219626219643_ _g219627219646_)))))
                      (let ()
                        (declare (not safe))
                        (_g219626219643_ _g219627219646_))))))
          (declare (not safe))
          (_g219625219696_ _stx219623_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx219569_ _ht219570_)
        (let* ((_g219572219585_
                (lambda (_g219573219582_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219573219582_))))
               (_g219571219620_
                (lambda (_g219573219588_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219573219588_))
                      (let ((_e219577219590_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219573219588_))))
                        (let ((_hd219576219593_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219577219590_)))
                              (_tl219575219595_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219577219590_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219575219595_))
                              (let ((_e219580219598_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219575219595_))))
                                (let ((_hd219579219601_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219580219598_)))
                                      (_tl219578219603_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219580219598_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219578219603_))
                                      ((lambda (_L219606_)
                                         (let ((_eid219618_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L219606_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht219570_
                                            _eid219618_
                                            1+
                                            '0)))
                                       _hd219579219601_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219572219585_ _g219573219588_)))))
                              (let ()
                                (declare (not safe))
                                (_g219572219585_ _g219573219588_)))))
                      (let ()
                        (declare (not safe))
                        (_g219572219585_ _g219573219588_))))))
          (declare (not safe))
          (_g219571219620_ _stx219569_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx219499_ _ht219500_)
        (let* ((_g219502219519_
                (lambda (_g219503219516_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219503219516_))))
               (_g219501219566_
                (lambda (_g219503219522_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219503219522_))
                      (let ((_e219508219524_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219503219522_))))
                        (let ((_hd219507219527_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219508219524_)))
                              (_tl219506219529_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219508219524_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219506219529_))
                              (let ((_e219511219532_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219506219529_))))
                                (let ((_hd219510219535_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219511219532_)))
                                      (_tl219509219537_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219511219532_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219509219537_))
                                      (let ((_e219514219540_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219509219537_))))
                                        (let ((_hd219513219543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219514219540_)))
                                              (_tl219512219545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219514219540_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219512219545_))
                                              ((lambda (_L219548_ _L219549_)
                                                 (let ((_eid219564_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L219549_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht219500_
                                                      _eid219564_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L219548_
                                                      _ht219500_))))
                                               _hd219513219543_
                                               _hd219510219535_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219502219519_
                                                 _g219503219522_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219502219519_ _g219503219522_)))))
                              (let ()
                                (declare (not safe))
                                (_g219502219519_ _g219503219522_)))))
                      (let ()
                        (declare (not safe))
                        (_g219502219519_ _g219503219522_))))))
          (declare (not safe))
          (_g219501219566_ _stx219499_))))
    (define gxc#find-body%
      (lambda (_stx219412_ _arg219413_)
        (let* ((_g219415219434_
                (lambda (_g219416219431_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219416219431_))))
               (_g219414219496_
                (lambda (_g219416219437_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219416219437_))
                      (let ((_e219420219439_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219416219437_))))
                        (let ((_hd219419219442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219420219439_)))
                              (_tl219418219444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219420219439_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl219418219444_))
                              (let ((_g226224_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl219418219444_
                                        '0))))
                                (begin
                                  (let ((_g226225_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226224_)
                                               (##vector-length _g226224_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226225_ 2)))
                                        (error "Context expects 2 values"
                                               _g226225_)))
                                  (let ((_target219421219447_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226224_ 0)))
                                        (_tl219423219449_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226224_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219423219449_))
                                        (letrec ((_loop219424219452_
                                                  (lambda (_hd219422219455_
                                                           _expr219428219457_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd219422219455_))
                                                        (let ((_e219425219460_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd219422219455_))))
                  (let ((_lp-hd219426219463_
                         (let () (declare (not safe)) (##car _e219425219460_)))
                        (_lp-tl219427219465_
                         (let ()
                           (declare (not safe))
                           (##cdr _e219425219460_))))
                    (let ((__tmp226229
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd219426219463_ _expr219428219457_))))
                      (declare (not safe))
                      (_loop219424219452_ _lp-tl219427219465_ __tmp226229))))
                (let ((_expr219429219468_ (reverse _expr219428219457_)))
                  ((lambda (_L219471_)
                     (let ((__tmp226228
                            (lambda (_g219484219486_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g219484219486_
                                 _arg219413_))))
                           (__tmp226226
                            (let ((__tmp226227
                                   (lambda (_g219488219491_ _g219489219493_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g219488219491_
                                             _g219489219493_)))))
                              (declare (not safe))
                              (foldr1 __tmp226227 '() _L219471_))))
                       (declare (not safe))
                       (ormap1 __tmp226228 __tmp226226)))
                   _expr219429219468_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop219424219452_
                                             _target219421219447_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g219415219434_
                                           _g219416219437_))))))
                              (let ()
                                (declare (not safe))
                                (_g219415219434_ _g219416219437_)))))
                      (let ()
                        (declare (not safe))
                        (_g219415219434_ _g219416219437_))))))
          (declare (not safe))
          (_g219414219496_ _stx219412_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx219344_ _arg219345_)
        (let* ((_g219347219364_
                (lambda (_g219348219361_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219348219361_))))
               (_g219346219409_
                (lambda (_g219348219367_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219348219367_))
                      (let ((_e219353219369_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219348219367_))))
                        (let ((_hd219352219372_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219353219369_)))
                              (_tl219351219374_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219353219369_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219351219374_))
                              (let ((_e219356219377_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219351219374_))))
                                (let ((_hd219355219380_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219356219377_)))
                                      (_tl219354219382_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219356219377_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219354219382_))
                                      (let ((_e219359219385_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219354219382_))))
                                        (let ((_hd219358219388_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219359219385_)))
                                              (_tl219357219390_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219359219385_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219357219390_))
                                              ((lambda (_L219393_ _L219394_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L219393_
                                                    _arg219345_)))
                                               _hd219358219388_
                                               _hd219355219380_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219347219364_
                                                 _g219348219367_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219347219364_ _g219348219367_)))))
                              (let ()
                                (declare (not safe))
                                (_g219347219364_ _g219348219367_)))))
                      (let ()
                        (declare (not safe))
                        (_g219347219364_ _g219348219367_))))))
          (declare (not safe))
          (_g219346219409_ _stx219344_))))
    (define gxc#find-lambda%
      (lambda (_stx219276_ _arg219277_)
        (let* ((_g219279219296_
                (lambda (_g219280219293_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219280219293_))))
               (_g219278219341_
                (lambda (_g219280219299_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219280219299_))
                      (let ((_e219285219301_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219280219299_))))
                        (let ((_hd219284219304_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219285219301_)))
                              (_tl219283219306_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219285219301_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219283219306_))
                              (let ((_e219288219309_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219283219306_))))
                                (let ((_hd219287219312_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219288219309_)))
                                      (_tl219286219314_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219288219309_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219286219314_))
                                      (let ((_e219291219317_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219286219314_))))
                                        (let ((_hd219290219320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219291219317_)))
                                              (_tl219289219322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219291219317_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219289219322_))
                                              ((lambda (_L219325_ _L219326_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L219325_
                                                    _arg219277_)))
                                               _hd219290219320_
                                               _hd219287219312_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219279219296_
                                                 _g219280219299_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219279219296_ _g219280219299_)))))
                              (let ()
                                (declare (not safe))
                                (_g219279219296_ _g219280219299_)))))
                      (let ()
                        (declare (not safe))
                        (_g219279219296_ _g219280219299_))))))
          (declare (not safe))
          (_g219278219341_ _stx219276_))))
    (define gxc#find-case-lambda%
      (lambda (_stx219158_ _arg219159_)
        (let* ((_g219161219189_
                (lambda (_g219162219186_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219162219186_))))
               (_g219160219273_
                (lambda (_g219162219192_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219162219192_))
                      (let ((_e219167219194_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219162219192_))))
                        (let ((_hd219166219197_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219167219194_)))
                              (_tl219165219199_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219167219194_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl219165219199_))
                              (let ((_g226230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl219165219199_
                                        '0))))
                                (begin
                                  (let ((_g226231_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226230_)
                                               (##vector-length _g226230_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226231_ 2)))
                                        (error "Context expects 2 values"
                                               _g226231_)))
                                  (let ((_target219168219202_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226230_ 0)))
                                        (_tl219170219204_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226230_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219170219204_))
                                        (letrec ((_loop219171219207_
                                                  (lambda (_hd219169219210_
                                                           _body219175219212_
                                                           _hd219176219214_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd219169219210_))
                                                        (let ((_e219172219217_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd219169219210_))))
                  (let ((_lp-hd219173219220_
                         (let () (declare (not safe)) (##car _e219172219217_)))
                        (_lp-tl219174219222_
                         (let ()
                           (declare (not safe))
                           (##cdr _e219172219217_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd219173219220_))
                        (let ((_e219181219225_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd219173219220_))))
                          (let ((_hd219180219228_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e219181219225_)))
                                (_tl219179219230_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e219181219225_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl219179219230_))
                                (let ((_e219184219233_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl219179219230_))))
                                  (let ((_hd219183219236_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e219184219233_)))
                                        (_tl219182219238_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e219184219233_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219182219238_))
                                        (let ((__tmp226236
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd219183219236_
                                                       _body219175219212_)))
                                              (__tmp226235
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd219180219228_
                                                       _hd219176219214_))))
                                          (declare (not safe))
                                          (_loop219171219207_
                                           _lp-tl219174219222_
                                           __tmp226236
                                           __tmp226235))
                                        (let ()
                                          (declare (not safe))
                                          (_g219161219189_ _g219162219192_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g219161219189_ _g219162219192_)))))
                        (let ()
                          (declare (not safe))
                          (_g219161219189_ _g219162219192_)))))
                (let ((_body219177219241_ (reverse _body219175219212_))
                      (_hd219178219243_ (reverse _hd219176219214_)))
                  ((lambda (_L219246_ _L219247_)
                     (let ((__tmp226234
                            (lambda (_g219261219263_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g219261219263_
                                 _arg219159_))))
                           (__tmp226232
                            (let ((__tmp226233
                                   (lambda (_g219265219268_ _g219266219270_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g219265219268_
                                             _g219266219270_)))))
                              (declare (not safe))
                              (foldr1 __tmp226233 '() _L219246_))))
                       (declare (not safe))
                       (ormap1 __tmp226234 __tmp226232)))
                   _body219177219241_
                   _hd219178219243_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop219171219207_
                                             _target219168219202_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g219161219189_
                                           _g219162219192_))))))
                              (let ()
                                (declare (not safe))
                                (_g219161219189_ _g219162219192_)))))
                      (let ()
                        (declare (not safe))
                        (_g219161219189_ _g219162219192_))))))
          (declare (not safe))
          (_g219160219273_ _stx219158_))))
    (define gxc#find-let-values%
      (lambda (_stx219008_ _arg219009_)
        (let* ((_g219011219046_
                (lambda (_g219012219043_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219012219043_))))
               (_g219010219155_
                (lambda (_g219012219049_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219012219049_))
                      (let ((_e219018219051_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219012219049_))))
                        (let ((_hd219017219054_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219018219051_)))
                              (_tl219016219056_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219018219051_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219016219056_))
                              (let ((_e219021219059_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219016219056_))))
                                (let ((_hd219020219062_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219021219059_)))
                                      (_tl219019219064_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219021219059_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd219020219062_))
                                      (let ((_g226237_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd219020219062_
                                                '0))))
                                        (begin
                                          (let ((_g226238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g226237_)
                                                       (##vector-length
                                                        _g226237_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g226238_ 2)))
                                                (error "Context expects 2 values"
                                                       _g226238_)))
                                          (let ((_target219022219067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g226237_ 0)))
                                                (_tl219024219069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g226237_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl219024219069_))
                                                (letrec ((_loop219025219072_
                                                          (lambda (_hd219023219075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr219029219077_
                           _bind219030219079_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd219023219075_))
                        (let ((_e219026219082_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd219023219075_))))
                          (let ((_lp-hd219027219085_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e219026219082_)))
                                (_lp-tl219028219087_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e219026219082_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd219027219085_))
                                (let ((_e219035219090_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd219027219085_))))
                                  (let ((_hd219034219093_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e219035219090_)))
                                        (_tl219033219095_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e219035219090_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl219033219095_))
                                        (let ((_e219038219098_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl219033219095_))))
                                          (let ((_hd219037219101_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e219038219098_)))
                                                (_tl219036219103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e219038219098_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl219036219103_))
                                                (let ((__tmp226243
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd219037219101_
                                                               _expr219029219077_)))
                                                      (__tmp226242
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd219034219093_
                                                               _bind219030219079_))))
                                                  (declare (not safe))
                                                  (_loop219025219072_
                                                   _lp-tl219028219087_
                                                   __tmp226243
                                                   __tmp226242))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g219011219046_
                                                   _g219012219049_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g219011219046_ _g219012219049_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g219011219046_ _g219012219049_)))))
                        (let ((_expr219031219106_ (reverse _expr219029219077_))
                              (_bind219032219108_
                               (reverse _bind219030219079_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219019219064_))
                              (let ((_e219041219111_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219019219064_))))
                                (let ((_hd219040219114_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219041219111_)))
                                      (_tl219039219116_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219041219111_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219039219116_))
                                      ((lambda (_L219119_ _L219120_ _L219121_)
                                         (let ((_$e219152_
                                                (let ((__tmp226241
                                                       (lambda (_g219140219142_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g219140219142_
                                                            _arg219009_))))
                                                      (__tmp226239
                                                       (let ((__tmp226240
                                                              (lambda (_g219144219147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g219145219149_)
                        (let ()
                          (declare (not safe))
                          (cons _g219144219147_ _g219145219149_)))))
                 (declare (not safe))
                 (foldr1 __tmp226240 '() _L219120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp226241
                                                          __tmp226239))))
                                           (if _$e219152_
                                               _$e219152_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L219119_
                                                  _arg219009_)))))
                                       _hd219040219114_
                                       _expr219031219106_
                                       _bind219032219108_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219011219046_ _g219012219049_)))))
                              (let ()
                                (declare (not safe))
                                (_g219011219046_ _g219012219049_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop219025219072_
                                                     _target219022219067_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g219011219046_
                                                   _g219012219049_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219011219046_ _g219012219049_)))))
                              (let ()
                                (declare (not safe))
                                (_g219011219046_ _g219012219049_)))))
                      (let ()
                        (declare (not safe))
                        (_g219011219046_ _g219012219049_))))))
          (declare (not safe))
          (_g219010219155_ _stx219008_))))
    (define gxc#find-setq%
      (lambda (_stx218940_ _arg218941_)
        (let* ((_g218943218960_
                (lambda (_g218944218957_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218944218957_))))
               (_g218942219005_
                (lambda (_g218944218963_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218944218963_))
                      (let ((_e218949218965_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218944218963_))))
                        (let ((_hd218948218968_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218949218965_)))
                              (_tl218947218970_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218949218965_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218947218970_))
                              (let ((_e218952218973_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218947218970_))))
                                (let ((_hd218951218976_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218952218973_)))
                                      (_tl218950218978_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218952218973_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218950218978_))
                                      (let ((_e218955218981_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218950218978_))))
                                        (let ((_hd218954218984_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218955218981_)))
                                              (_tl218953218986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218955218981_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218953218986_))
                                              ((lambda (_L218989_ _L218990_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L218989_
                                                    _arg218941_)))
                                               _hd218954218984_
                                               _hd218951218976_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218943218960_
                                                 _g218944218963_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218943218960_ _g218944218963_)))))
                              (let ()
                                (declare (not safe))
                                (_g218943218960_ _g218944218963_)))))
                      (let ()
                        (declare (not safe))
                        (_g218943218960_ _g218944218963_))))))
          (declare (not safe))
          (_g218942219005_ _stx218940_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx218884_ _ids218885_)
        (let* ((_g218887218900_
                (lambda (_g218888218897_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218888218897_))))
               (_g218886218937_
                (lambda (_g218888218903_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218888218903_))
                      (let ((_e218892218905_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218888218903_))))
                        (let ((_hd218891218908_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218892218905_)))
                              (_tl218890218910_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218892218905_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218890218910_))
                              (let ((_e218895218913_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218890218910_))))
                                (let ((_hd218894218916_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218895218913_)))
                                      (_tl218893218918_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218895218913_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218893218918_))
                                      ((lambda (_L218921_)
                                         (let ((__tmp226244
                                                (lambda (_g218932218934_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L218921_
                                                     _g218932218934_)))))
                                           (declare (not safe))
                                           (find __tmp226244 _ids218885_)))
                                       _hd218894218916_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218887218900_ _g218888218903_)))))
                              (let ()
                                (declare (not safe))
                                (_g218887218900_ _g218888218903_)))))
                      (let ()
                        (declare (not safe))
                        (_g218887218900_ _g218888218903_))))))
          (declare (not safe))
          (_g218886218937_ _stx218884_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx218808_ _ids218809_)
        (let* ((_g218811218828_
                (lambda (_g218812218825_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218812218825_))))
               (_g218810218881_
                (lambda (_g218812218831_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218812218831_))
                      (let ((_e218817218833_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218812218831_))))
                        (let ((_hd218816218836_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218817218833_)))
                              (_tl218815218838_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218817218833_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218815218838_))
                              (let ((_e218820218841_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218815218838_))))
                                (let ((_hd218819218844_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218820218841_)))
                                      (_tl218818218846_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218820218841_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218818218846_))
                                      (let ((_e218823218849_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218818218846_))))
                                        (let ((_hd218822218852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218823218849_)))
                                              (_tl218821218854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218823218849_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218821218854_))
                                              ((lambda (_L218857_ _L218858_)
                                                 (let ((_$e218878_
                                                        (let ((__tmp226245
                                                               (lambda (_g218873218875_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L218858_ _g218873218875_)))))
                  (declare (not safe))
                  (find __tmp226245 _ids218809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e218878_
                                                       _$e218878_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L218857_
                                                          _ids218809_)))))
                                               _hd218822218852_
                                               _hd218819218844_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218811218828_
                                                 _g218812218831_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218811218828_ _g218812218831_)))))
                              (let ()
                                (declare (not safe))
                                (_g218811218828_ _g218812218831_)))))
                      (let ()
                        (declare (not safe))
                        (_g218811218828_ _g218812218831_))))))
          (declare (not safe))
          (_g218810218881_ _stx218808_))))))
