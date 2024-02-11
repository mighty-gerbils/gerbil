(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707616239)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl221428_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221428_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221428_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221428_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221428_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl221428_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl221424_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221424_ '%#declare gxc#xform-identity))
           _tbl221424_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl221420_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226142 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl221420_ __tmp226142))
           (let ((__tmp226143 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl221420_ __tmp226143))
           _tbl221420_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl221416_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221416_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221416_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221416_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221416_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221416_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl221416_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl221412_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226144 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl221412_ __tmp226144))
           (let ((__tmp226145 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl221412_ __tmp226145))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221412_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221412_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221412_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl221412_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl221408_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226146 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl221408_ __tmp226146))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221408_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221408_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl221408_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx221391_ . _args221393_)
        (let ((__tmp226148
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221393_)
                     (gxc#compile-e__0 _stx221391_)
                     (let ((_arg1221398_ (car _args221393_))
                           (_rest221400_ (cdr _args221393_)))
                       (if (null? _rest221400_)
                           (gxc#compile-e__1 _stx221391_ _arg1221398_)
                           (let ((_arg2221403_ (car _rest221400_))
                                 (_rest221405_ (cdr _rest221400_)))
                             (if (null? _rest221405_)
                                 (gxc#compile-e__2
                                  _stx221391_
                                  _arg1221398_
                                  _arg2221403_)
                                 (apply gxc#compile-e
                                        _stx221391_
                                        _arg1221398_
                                        _arg2221403_
                                        _rest221405_))))))))
              (__tmp226147 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp226148
           gxc#current-compile-methods
           __tmp226147))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl221388_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226149 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl221388_ __tmp226149))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221388_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221388_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221388_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl221388_))))
    (define gxc#apply-collect-methods
      (lambda (_stx221371_ . _args221373_)
        (let ((__tmp226151
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221373_)
                     (gxc#compile-e__0 _stx221371_)
                     (let ((_arg1221378_ (car _args221373_))
                           (_rest221380_ (cdr _args221373_)))
                       (if (null? _rest221380_)
                           (gxc#compile-e__1 _stx221371_ _arg1221378_)
                           (let ((_arg2221383_ (car _rest221380_))
                                 (_rest221385_ (cdr _rest221380_)))
                             (if (null? _rest221385_)
                                 (gxc#compile-e__2
                                  _stx221371_
                                  _arg1221378_
                                  _arg2221383_)
                                 (apply gxc#compile-e
                                        _stx221371_
                                        _arg1221378_
                                        _arg2221383_
                                        _rest221385_))))))))
              (__tmp226150 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp226151
           gxc#current-compile-methods
           __tmp226150))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl221368_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226152 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl221368_ __tmp226152))
           (let ()
             (declare (not safe))
             (table-set! _tbl221368_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221368_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221368_ '%#set! gxc#expression-subst-setq%))
           _tbl221368_))))
    (define gxc#apply-expression-subst
      (lambda (_stx221351_ . _args221353_)
        (let ((__tmp226154
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221353_)
                     (gxc#compile-e__0 _stx221351_)
                     (let ((_arg1221358_ (car _args221353_))
                           (_rest221360_ (cdr _args221353_)))
                       (if (null? _rest221360_)
                           (gxc#compile-e__1 _stx221351_ _arg1221358_)
                           (let ((_arg2221363_ (car _rest221360_))
                                 (_rest221365_ (cdr _rest221360_)))
                             (if (null? _rest221365_)
                                 (gxc#compile-e__2
                                  _stx221351_
                                  _arg1221358_
                                  _arg2221363_)
                                 (apply gxc#compile-e
                                        _stx221351_
                                        _arg1221358_
                                        _arg2221363_
                                        _rest221365_))))))))
              (__tmp226153 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp226154
           gxc#current-compile-methods
           __tmp226153))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl221348_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226155 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl221348_ __tmp226155))
           (let ()
             (declare (not safe))
             (table-set! _tbl221348_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221348_ '%#set! gxc#expression-subst*-setq%))
           _tbl221348_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx221331_ . _args221333_)
        (let ((__tmp226157
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221333_)
                     (gxc#compile-e__0 _stx221331_)
                     (let ((_arg1221338_ (car _args221333_))
                           (_rest221340_ (cdr _args221333_)))
                       (if (null? _rest221340_)
                           (gxc#compile-e__1 _stx221331_ _arg1221338_)
                           (let ((_arg2221343_ (car _rest221340_))
                                 (_rest221345_ (cdr _rest221340_)))
                             (if (null? _rest221345_)
                                 (gxc#compile-e__2
                                  _stx221331_
                                  _arg1221338_
                                  _arg2221343_)
                                 (apply gxc#compile-e
                                        _stx221331_
                                        _arg1221338_
                                        _arg2221343_
                                        _rest221345_))))))))
              (__tmp226156 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp226157
           gxc#current-compile-methods
           __tmp226156))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl221328_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226158 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl221328_ __tmp226158))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221328_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221328_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221328_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl221328_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl221324_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226159 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl221324_ __tmp226159))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221324_ '%#set! gxc#find-var-refs-setq%))
           _tbl221324_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx221307_ . _args221309_)
        (let ((__tmp226161
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221309_)
                     (gxc#compile-e__0 _stx221307_)
                     (let ((_arg1221314_ (car _args221309_))
                           (_rest221316_ (cdr _args221309_)))
                       (if (null? _rest221316_)
                           (gxc#compile-e__1 _stx221307_ _arg1221314_)
                           (let ((_arg2221319_ (car _rest221316_))
                                 (_rest221321_ (cdr _rest221316_)))
                             (if (null? _rest221321_)
                                 (gxc#compile-e__2
                                  _stx221307_
                                  _arg1221314_
                                  _arg2221319_)
                                 (apply gxc#compile-e
                                        _stx221307_
                                        _arg1221314_
                                        _arg2221319_
                                        _rest221321_))))))))
              (__tmp226160 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp226161
           gxc#current-compile-methods
           __tmp226160))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl221304_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp226162 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl221304_ __tmp226162))
           (let ()
             (declare (not safe))
             (table-set! _tbl221304_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221304_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl221304_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx221287_ . _args221289_)
        (let ((__tmp226164
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221289_)
                     (gxc#compile-e__0 _stx221287_)
                     (let ((_arg1221294_ (car _args221289_))
                           (_rest221296_ (cdr _args221289_)))
                       (if (null? _rest221296_)
                           (gxc#compile-e__1 _stx221287_ _arg1221294_)
                           (let ((_arg2221299_ (car _rest221296_))
                                 (_rest221301_ (cdr _rest221296_)))
                             (if (null? _rest221301_)
                                 (gxc#compile-e__2
                                  _stx221287_
                                  _arg1221294_
                                  _arg2221299_)
                                 (apply gxc#compile-e
                                        _stx221287_
                                        _arg1221294_
                                        _arg2221299_
                                        _rest221301_))))))))
              (__tmp226163 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp226164
           gxc#current-compile-methods
           __tmp226163))))
    (define gxc#xform-identity
      (lambda (_stx221284_ . _args221285_) _stx221284_))
    (define gxc#xform-wrap-source
      (lambda (_stx221281_ _src-stx221282_)
        (let ((__tmp226165
               (let () (declare (not safe)) (gx#stx-source _src-stx221282_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx221281_ __tmp226165))))
    (define gxc#xform-apply-compile-e
      (lambda (_args221268_)
        (lambda (_stx221270_)
          (if (let () (declare (not safe)) (null? _args221268_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx221270_))
              (let ((_arg1221272_ (car _args221268_))
                    (_rest221274_ (cdr _args221268_)))
                (if (let () (declare (not safe)) (null? _rest221274_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx221270_ _arg1221272_))
                    (let ((_arg2221277_ (car _rest221274_))
                          (_rest221279_ (cdr _rest221274_)))
                      (if (let () (declare (not safe)) (null? _rest221279_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx221270_
                             _arg1221272_
                             _arg2221277_))
                          (apply gxc#compile-e
                                 _stx221270_
                                 _arg1221272_
                                 _arg2221277_
                                 _rest221279_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx221227_ . _args221228_)
        (let* ((_g221230221240_
                (lambda (_g221231221237_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221231221237_))))
               (_g221229221265_
                (lambda (_g221231221243_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221231221243_))
                      (let ((_e221235221245_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221231221243_))))
                        (let ((_hd221234221248_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221235221245_)))
                              (_tl221233221250_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221235221245_))))
                          ((lambda (_L221253_)
                             (let* ((_forms221263_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args221228_))
                                          _L221253_))
                                    (__tmp226166
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms221263_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp226166
                                _stx221227_)))
                           _tl221233221250_)))
                      (let ()
                        (declare (not safe))
                        (_g221230221240_ _g221231221243_))))))
          (declare (not safe))
          (_g221229221265_ _stx221227_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx221185_ . _args221186_)
        (let* ((_g221188221198_
                (lambda (_g221189221195_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221189221195_))))
               (_g221187221224_
                (lambda (_g221189221201_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221189221201_))
                      (let ((_e221193221203_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221189221201_))))
                        (let ((_hd221192221206_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221193221203_)))
                              (_tl221191221208_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221193221203_))))
                          ((lambda (_L221211_)
                             (let ((__tmp226169
                                    (lambda ()
                                      (let* ((_forms221222_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args221186_))
                                                   _L221211_))
                                             (__tmp226170
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms221222_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp226170
                                         _stx221185_))))
                                   (__tmp226167
                                    (let ((__tmp226168
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp226168 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp226169
                                gx#current-expander-phi
                                __tmp226167)))
                           _tl221191221208_)))
                      (let ()
                        (declare (not safe))
                        (_g221188221198_ _g221189221201_))))))
          (declare (not safe))
          (_g221187221224_ _stx221185_))))
    (define gxc#xform-module%
      (lambda (_stx221113_ . _args221114_)
        (let* ((_g221116221130_
                (lambda (_g221117221127_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221117221127_))))
               (_g221115221182_
                (lambda (_g221117221133_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221117221133_))
                      (let ((_e221122221135_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221117221133_))))
                        (let ((_hd221121221138_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221122221135_)))
                              (_tl221120221140_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221122221135_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221120221140_))
                              (let ((_e221125221143_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221120221140_))))
                                (let ((_hd221124221146_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221125221143_)))
                                      (_tl221123221148_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221125221143_))))
                                  ((lambda (_L221151_ _L221152_)
                                     (let* ((_ctx221165_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L221152_)))
                                            (_code221167_
                                             (##structure-ref
                                              _ctx221165_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code221179_
                                             (let ((__tmp226171
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args221114_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code221167_))
                                                          (let ((_arg1221170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args221114_))
                        (_rest221172_ (cdr _args221114_)))
                    (if (let () (declare (not safe)) (null? _rest221172_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code221167_ _arg1221170_))
                        (let ((_arg2221175_ (car _rest221172_))
                              (_rest221177_ (cdr _rest221172_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest221177_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code221167_
                                 _arg1221170_
                                 _arg2221175_))
                              (apply gxc#compile-e
                                     _code221167_
                                     _arg1221170_
                                     _arg2221175_
                                     _rest221177_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp226171
                                                gx#current-expander-context
                                                _ctx221165_))))
                                       (##structure-set!
                                        _ctx221165_
                                        _code221179_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp226172
                                              (let ((__tmp226173
                                                     (let ((__tmp226174
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code221179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L221152_ __tmp226174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp226173))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp226172
                                          _stx221113_))))
                                   _tl221123221148_
                                   _hd221124221146_)))
                              (let ()
                                (declare (not safe))
                                (_g221116221130_ _g221117221133_)))))
                      (let ()
                        (declare (not safe))
                        (_g221116221130_ _g221117221133_))))))
          (declare (not safe))
          (_g221115221182_ _stx221113_))))
    (define gxc#xform-define-values%
      (lambda (_stx221034_ . _args221035_)
        (let* ((_g221037221054_
                (lambda (_g221038221051_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221038221051_))))
               (_g221036221110_
                (lambda (_g221038221057_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221038221057_))
                      (let ((_e221043221059_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221038221057_))))
                        (let ((_hd221042221062_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221043221059_)))
                              (_tl221041221064_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221043221059_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221041221064_))
                              (let ((_e221046221067_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221041221064_))))
                                (let ((_hd221045221070_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221046221067_)))
                                      (_tl221044221072_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221046221067_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221044221072_))
                                      (let ((_e221049221075_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221044221072_))))
                                        (let ((_hd221048221078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221049221075_)))
                                              (_tl221047221080_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221049221075_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221047221080_))
                                              ((lambda (_L221083_ _L221084_)
                                                 (let* ((_expr221108_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args221035_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L221083_))
                     (let ((_arg1221099_ (car _args221035_))
                           (_rest221101_ (cdr _args221035_)))
                       (if (let () (declare (not safe)) (null? _rest221101_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L221083_ _arg1221099_))
                           (let ((_arg2221104_ (car _rest221101_))
                                 (_rest221106_ (cdr _rest221101_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest221106_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L221083_
                                    _arg1221099_
                                    _arg2221104_))
                                 (apply gxc#compile-e
                                        _L221083_
                                        _arg1221099_
                                        _arg2221104_
                                        _rest221106_)))))))
                (__tmp226175
                 (let ((__tmp226176
                        (let ((__tmp226177
                               (let ()
                                 (declare (not safe))
                                 (cons _expr221108_ '()))))
                          (declare (not safe))
                          (cons _L221084_ __tmp226177))))
                   (declare (not safe))
                   (cons '%#define-values __tmp226176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp226175
                                                    _stx221034_)))
                                               _hd221048221078_
                                               _hd221045221070_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221037221054_
                                                 _g221038221057_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221037221054_ _g221038221057_)))))
                              (let ()
                                (declare (not safe))
                                (_g221037221054_ _g221038221057_)))))
                      (let ()
                        (declare (not safe))
                        (_g221037221054_ _g221038221057_))))))
          (declare (not safe))
          (_g221036221110_ _stx221034_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx220954_ . _args220955_)
        (let* ((_g220957220974_
                (lambda (_g220958220971_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220958220971_))))
               (_g220956221031_
                (lambda (_g220958220977_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220958220977_))
                      (let ((_e220963220979_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220958220977_))))
                        (let ((_hd220962220982_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220963220979_)))
                              (_tl220961220984_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220963220979_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220961220984_))
                              (let ((_e220966220987_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220961220984_))))
                                (let ((_hd220965220990_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220966220987_)))
                                      (_tl220964220992_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220966220987_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220964220992_))
                                      (let ((_e220969220995_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220964220992_))))
                                        (let ((_hd220968220998_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220969220995_)))
                                              (_tl220967221000_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220969220995_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220967221000_))
                                              ((lambda (_L221003_ _L221004_)
                                                 (let ((__tmp226180
                                                        (lambda ()
                                                          (let* ((_expr221029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args220955_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L221003_))
                              (let ((_arg1221020_ (car _args220955_))
                                    (_rest221022_ (cdr _args220955_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest221022_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L221003_
                                       _arg1221020_))
                                    (let ((_arg2221025_ (car _rest221022_))
                                          (_rest221027_ (cdr _rest221022_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest221027_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L221003_
                                             _arg1221020_
                                             _arg2221025_))
                                          (apply gxc#compile-e
                                                 _L221003_
                                                 _arg1221020_
                                                 _arg2221025_
                                                 _rest221027_)))))))
                         (__tmp226181
                          (let ((__tmp226182
                                 (let ((__tmp226183
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr221029_ '()))))
                                   (declare (not safe))
                                   (cons _L221004_ __tmp226183))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp226182))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp226181 _stx220954_))))
               (__tmp226178
                (let ((__tmp226179 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp226179 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp226180
                                                    gx#current-expander-phi
                                                    __tmp226178)))
                                               _hd220968220998_
                                               _hd220965220990_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220957220974_
                                                 _g220958220977_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220957220974_ _g220958220977_)))))
                              (let ()
                                (declare (not safe))
                                (_g220957220974_ _g220958220977_)))))
                      (let ()
                        (declare (not safe))
                        (_g220957220974_ _g220958220977_))))))
          (declare (not safe))
          (_g220956221031_ _stx220954_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx220875_ . _args220876_)
        (let* ((_g220878220895_
                (lambda (_g220879220892_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220879220892_))))
               (_g220877220951_
                (lambda (_g220879220898_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220879220898_))
                      (let ((_e220884220900_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220879220898_))))
                        (let ((_hd220883220903_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220884220900_)))
                              (_tl220882220905_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220884220900_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220882220905_))
                              (let ((_e220887220908_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220882220905_))))
                                (let ((_hd220886220911_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220887220908_)))
                                      (_tl220885220913_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220887220908_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220885220913_))
                                      (let ((_e220890220916_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220885220913_))))
                                        (let ((_hd220889220919_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220890220916_)))
                                              (_tl220888220921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220890220916_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220888220921_))
                                              ((lambda (_L220924_ _L220925_)
                                                 (let* ((_expr220949_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220876_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220924_))
                     (let ((_arg1220940_ (car _args220876_))
                           (_rest220942_ (cdr _args220876_)))
                       (if (let () (declare (not safe)) (null? _rest220942_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220924_ _arg1220940_))
                           (let ((_arg2220945_ (car _rest220942_))
                                 (_rest220947_ (cdr _rest220942_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220947_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220924_
                                    _arg1220940_
                                    _arg2220945_))
                                 (apply gxc#compile-e
                                        _L220924_
                                        _arg1220940_
                                        _arg2220945_
                                        _rest220947_)))))))
                (__tmp226184
                 (let ((__tmp226185
                        (let ((__tmp226186
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220949_ '()))))
                          (declare (not safe))
                          (cons _L220925_ __tmp226186))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp226185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp226184
                                                    _stx220875_)))
                                               _hd220889220919_
                                               _hd220886220911_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220878220895_
                                                 _g220879220898_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220878220895_ _g220879220898_)))))
                              (let ()
                                (declare (not safe))
                                (_g220878220895_ _g220879220898_)))))
                      (let ()
                        (declare (not safe))
                        (_g220878220895_ _g220879220898_))))))
          (declare (not safe))
          (_g220877220951_ _stx220875_))))
    (define gxc#xform-lambda%
      (lambda (_stx220818_ . _args220819_)
        (let* ((_g220821220835_
                (lambda (_g220822220832_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220822220832_))))
               (_g220820220872_
                (lambda (_g220822220838_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220822220838_))
                      (let ((_e220827220840_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220822220838_))))
                        (let ((_hd220826220843_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220827220840_)))
                              (_tl220825220845_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220827220840_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220825220845_))
                              (let ((_e220830220848_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220825220845_))))
                                (let ((_hd220829220851_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220830220848_)))
                                      (_tl220828220853_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220830220848_))))
                                  ((lambda (_L220856_ _L220857_)
                                     (let* ((_body220870_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args220819_))
                                                  _L220856_))
                                            (__tmp226187
                                             (let ((__tmp226188
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L220857_
                                                            _body220870_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp226188))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp226187
                                        _stx220818_)))
                                   _tl220828220853_
                                   _hd220829220851_)))
                              (let ()
                                (declare (not safe))
                                (_g220821220835_ _g220822220838_)))))
                      (let ()
                        (declare (not safe))
                        (_g220821220835_ _g220822220838_))))))
          (declare (not safe))
          (_g220820220872_ _stx220818_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx220731_ . _args220732_)
        (letrec ((_clause-e220734_
                  (lambda (_clause220775_)
                    (let* ((_g220777220788_
                            (lambda (_g220778220785_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g220778220785_))))
                           (_g220776220815_
                            (lambda (_g220778220791_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g220778220791_))
                                  (let ((_e220783220793_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g220778220791_))))
                                    (let ((_hd220782220796_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e220783220793_)))
                                          (_tl220781220798_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e220783220793_))))
                                      ((lambda (_L220801_ _L220802_)
                                         (let ((_body220813_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args220732_))
                                                     _L220801_)))
                                           (declare (not safe))
                                           (cons _L220802_ _body220813_)))
                                       _tl220781220798_
                                       _hd220782220796_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g220777220788_ _g220778220791_))))))
                      (declare (not safe))
                      (_g220776220815_ _clause220775_)))))
          (let* ((_g220736220746_
                  (lambda (_g220737220743_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g220737220743_))))
                 (_g220735220772_
                  (lambda (_g220737220749_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g220737220749_))
                        (let ((_e220741220751_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g220737220749_))))
                          (let ((_hd220740220754_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220741220751_)))
                                (_tl220739220756_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220741220751_))))
                            ((lambda (_L220759_)
                               (let* ((_clauses220770_
                                       (map _clause-e220734_ _L220759_))
                                      (__tmp226189
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses220770_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp226189
                                  _stx220731_)))
                             _tl220739220756_)))
                        (let ()
                          (declare (not safe))
                          (_g220736220746_ _g220737220749_))))))
            (declare (not safe))
            (_g220735220772_ _stx220731_)))))
    (define gxc#xform-let-values%
      (lambda (_stx220525_ . _args220526_)
        (let* ((_g220528220561_
                (lambda (_g220529220558_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220529220558_))))
               (_g220527220728_
                (lambda (_g220529220564_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220529220564_))
                      (let ((_e220536220566_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220529220564_))))
                        (let ((_hd220535220569_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220536220566_)))
                              (_tl220534220571_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220536220566_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220534220571_))
                              (let ((_e220539220574_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220534220571_))))
                                (let ((_hd220538220577_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220539220574_)))
                                      (_tl220537220579_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220539220574_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd220538220577_))
                                      (let ((_g226190_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd220538220577_
                                                '0))))
                                        (begin
                                          (let ((_g226191_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g226190_)
                                                       (##vector-length
                                                        _g226190_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g226191_ 2)))
                                                (error "Context expects 2 values"
                                                       _g226191_)))
                                          (let ((_target220540220582_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g226190_ 0)))
                                                (_tl220542220584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g226190_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220542220584_))
                                                (letrec ((_loop220543220587_
                                                          (lambda (_hd220541220590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr220547220592_
                           _hd220548220594_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd220541220590_))
                        (let ((_e220544220597_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd220541220590_))))
                          (let ((_lp-hd220545220600_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220544220597_)))
                                (_lp-tl220546220602_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220544220597_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd220545220600_))
                                (let ((_e220553220605_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd220545220600_))))
                                  (let ((_hd220552220608_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e220553220605_)))
                                        (_tl220551220610_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e220553220605_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl220551220610_))
                                        (let ((_e220556220613_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl220551220610_))))
                                          (let ((_hd220555220616_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e220556220613_)))
                                                (_tl220554220618_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e220556220613_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220554220618_))
                                                (let ((__tmp226204
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220555220616_
                                                               _expr220547220592_)))
                                                      (__tmp226203
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220552220608_
                                                               _hd220548220594_))))
                                                  (declare (not safe))
                                                  (_loop220543220587_
                                                   _lp-tl220546220602_
                                                   __tmp226204
                                                   __tmp226203))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220528220561_
                                                   _g220529220564_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g220528220561_ _g220529220564_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g220528220561_ _g220529220564_)))))
                        (let ((_expr220549220621_ (reverse _expr220547220592_))
                              (_hd220550220623_ (reverse _hd220548220594_)))
                          ((lambda (_L220626_ _L220627_ _L220628_ _L220629_)
                             (let* ((_g220648220664_
                                     (lambda (_g220649220661_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g220649220661_))))
                                    (_g220647220718_
                                     (lambda (_g220649220667_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g220649220667_))
                                           (let ((_g226192_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g220649220667_
                                                     '0))))
                                             (begin
                                               (let ((_g226193_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g226192_)
                                                            (##vector-length
                                                             _g226192_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g226193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g226193_)))
                                               (let ((_target220651220669_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g226192_
                                                         0)))
                                                     (_tl220653220671_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g226192_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl220653220671_))
                                                     (letrec ((_loop220654220674_
                                                               (lambda (_hd220652220677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr220658220679_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd220652220677_))
                             (let ((_e220655220682_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd220652220677_))))
                               (let ((_lp-hd220656220685_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e220655220682_)))
                                     (_lp-tl220657220687_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e220655220682_))))
                                 (let ((__tmp226200
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd220656220685_
                                                _expr220658220679_))))
                                   (declare (not safe))
                                   (_loop220654220674_
                                    _lp-tl220657220687_
                                    __tmp226200))))
                             (let ((_expr220659220690_
                                    (reverse _expr220658220679_)))
                               ((lambda (_L220693_)
                                  (let ()
                                    (let* ((_body220706_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args220526_))
                                                 _L220626_))
                                           (__tmp226194
                                            (let ((__tmp226195
                                                   (let ((__tmp226196
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L220693_
                                                               _L220628_))
                                                            (let ((__tmp226197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g220707220711_
                                    _g220708220713_
                                    _g220709220715_)
                             (let ((__tmp226198
                                    (let ((__tmp226199
                                           (let ()
                                             (declare (not safe))
                                             (cons _g220707220711_ '()))))
                                      (declare (not safe))
                                      (cons _g220708220713_ __tmp226199))))
                               (declare (not safe))
                               (cons __tmp226198 _g220709220715_)))))
                      (declare (not safe))
                      (foldr2 __tmp226197 '() _L220693_ _L220628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp226196
                                                           _body220706_))))
                                              (declare (not safe))
                                              (cons _L220629_ __tmp226195))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp226194
                                       _stx220525_))))
                                _expr220659220690_))))))
               (let ()
                 (declare (not safe))
                 (_loop220654220674_ _target220651220669_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g220648220664_
                                                        _g220649220667_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g220648220664_
                                              _g220649220667_)))))
                                    (__tmp226201
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220526_))
                                          (let ((__tmp226202
                                                 (lambda (_g220720220723_
                                                          _g220721220725_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g220720220723_
                                                           _g220721220725_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp226202
                                                    '()
                                                    _L220627_)))))
                               (declare (not safe))
                               (_g220647220718_ __tmp226201)))
                           _tl220537220579_
                           _expr220549220621_
                           _hd220550220623_
                           _hd220535220569_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop220543220587_
                                                     _target220540220582_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220528220561_
                                                   _g220529220564_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220528220561_ _g220529220564_)))))
                              (let ()
                                (declare (not safe))
                                (_g220528220561_ _g220529220564_)))))
                      (let ()
                        (declare (not safe))
                        (_g220528220561_ _g220529220564_))))))
          (declare (not safe))
          (_g220527220728_ _stx220525_))))
    (define gxc#xform-operands
      (lambda (_stx220481_ . _args220482_)
        (let* ((_g220484220495_
                (lambda (_g220485220492_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220485220492_))))
               (_g220483220522_
                (lambda (_g220485220498_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220485220498_))
                      (let ((_e220490220500_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220485220498_))))
                        (let ((_hd220489220503_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220490220500_)))
                              (_tl220488220505_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220490220500_))))
                          ((lambda (_L220508_ _L220509_)
                             (let* ((_rands220520_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220482_))
                                          _L220508_))
                                    (__tmp226205
                                     (let ()
                                       (declare (not safe))
                                       (cons _L220509_ _rands220520_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp226205
                                _stx220481_)))
                           _tl220488220505_
                           _hd220489220503_)))
                      (let ()
                        (declare (not safe))
                        (_g220484220495_ _g220485220498_))))))
          (declare (not safe))
          (_g220483220522_ _stx220481_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx220402_ . _args220403_)
        (let* ((_g220405220422_
                (lambda (_g220406220419_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220406220419_))))
               (_g220404220478_
                (lambda (_g220406220425_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220406220425_))
                      (let ((_e220411220427_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220406220425_))))
                        (let ((_hd220410220430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220411220427_)))
                              (_tl220409220432_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220411220427_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220409220432_))
                              (let ((_e220414220435_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220409220432_))))
                                (let ((_hd220413220438_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220414220435_)))
                                      (_tl220412220440_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220414220435_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220412220440_))
                                      (let ((_e220417220443_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220412220440_))))
                                        (let ((_hd220416220446_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220417220443_)))
                                              (_tl220415220448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220417220443_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220415220448_))
                                              ((lambda (_L220451_ _L220452_)
                                                 (let* ((_expr220476_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220403_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220451_))
                     (let ((_arg1220467_ (car _args220403_))
                           (_rest220469_ (cdr _args220403_)))
                       (if (let () (declare (not safe)) (null? _rest220469_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220451_ _arg1220467_))
                           (let ((_arg2220472_ (car _rest220469_))
                                 (_rest220474_ (cdr _rest220469_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220474_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220451_
                                    _arg1220467_
                                    _arg2220472_))
                                 (apply gxc#compile-e
                                        _L220451_
                                        _arg1220467_
                                        _arg2220472_
                                        _rest220474_)))))))
                (__tmp226206
                 (let ((__tmp226207
                        (let ((__tmp226208
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220476_ '()))))
                          (declare (not safe))
                          (cons _L220452_ __tmp226208))))
                   (declare (not safe))
                   (cons '%#set! __tmp226207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp226206
                                                    _stx220402_)))
                                               _hd220416220446_
                                               _hd220413220438_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220405220422_
                                                 _g220406220425_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220405220422_ _g220406220425_)))))
                              (let ()
                                (declare (not safe))
                                (_g220405220422_ _g220406220425_)))))
                      (let ()
                        (declare (not safe))
                        (_g220405220422_ _g220406220425_))))))
          (declare (not safe))
          (_g220404220478_ _stx220402_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx220333_)
        (let* ((_g220335220352_
                (lambda (_g220336220349_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220336220349_))))
               (_g220334220399_
                (lambda (_g220336220355_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220336220355_))
                      (let ((_e220341220357_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220336220355_))))
                        (let ((_hd220340220360_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220341220357_)))
                              (_tl220339220362_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220341220357_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220339220362_))
                              (let ((_e220344220365_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220339220362_))))
                                (let ((_hd220343220368_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220344220365_)))
                                      (_tl220342220370_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220344220365_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220342220370_))
                                      (let ((_e220347220373_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220342220370_))))
                                        (let ((_hd220346220376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220347220373_)))
                                              (_tl220345220378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220347220373_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220345220378_))
                                              ((lambda (_L220381_ _L220382_)
                                                 (let ((_sym220397_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L220382_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym220397_))
                                                   (let ((__tmp226209
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp226209
                                                      _sym220397_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L220381_))))
                                               _hd220346220376_
                                               _hd220343220368_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220335220352_
                                                 _g220336220355_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220335220352_ _g220336220355_)))))
                              (let ()
                                (declare (not safe))
                                (_g220335220352_ _g220336220355_)))))
                      (let ()
                        (declare (not safe))
                        (_g220335220352_ _g220336220355_))))))
          (declare (not safe))
          (_g220334220399_ _stx220333_))))
    (define gxc#collect-methods-call%
      (lambda (_stx219887_)
        (let* ((___stx225899225900_ _stx219887_)
               (_g219891219993_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx225899225900_)))))
          (let ((___kont225901225902_
                 (lambda (_L220283_ _L220284_ _L220285_ _L220286_ _L220287_)
                   (let ((__tmp226210
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L220284_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp226210))))
                (___kont225903225904_
                 (lambda (_L220109_ _L220110_ _L220111_ _L220112_)
                   (let ((__tmp226211
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L220109_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp226211))))
                (___kont225905225906_ (lambda () '#!void)))
            (let ((___match226034226035_
                   (lambda (_e219900220155_
                            _hd219899220158_
                            _tl219898220160_
                            _e219903220163_
                            _hd219902220166_
                            _tl219901220168_
                            _e219906220171_
                            _hd219905220174_
                            _tl219904220176_
                            _e219909220179_
                            _hd219908220182_
                            _tl219907220184_
                            _e219912220187_
                            _hd219911220190_
                            _tl219910220192_
                            _e219915220195_
                            _hd219914220198_
                            _tl219913220200_
                            _e219918220203_
                            _hd219917220206_
                            _tl219916220208_
                            _e219921220211_
                            _hd219920220214_
                            _tl219919220216_
                            _e219924220219_
                            _hd219923220222_
                            _tl219922220224_
                            _e219927220227_
                            _hd219926220230_
                            _tl219925220232_
                            _e219930220235_
                            _hd219929220238_
                            _tl219928220240_
                            _e219933220243_
                            _hd219932220246_
                            _tl219931220248_
                            _e219936220251_
                            _hd219935220254_
                            _tl219934220256_
                            _e219939220259_
                            _hd219938220262_
                            _tl219937220264_
                            _e219942220267_
                            _hd219941220270_
                            _tl219940220272_
                            _e219945220275_
                            _hd219944220278_
                            _tl219943220280_)
                     (let ((_L220283_ _hd219944220278_)
                           (_L220284_ _hd219935220254_)
                           (_L220285_ _hd219926220230_)
                           (_L220286_ _hd219917220206_)
                           (_L220287_ _hd219908220182_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L220287_
                              'bind-method!))
                           (___kont225901225902_
                            _L220283_
                            _L220284_
                            _L220285_
                            _L220286_
                            _L220287_)
                           (___kont225905225906_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx225899225900_))
                  (let ((_e219900220155_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx225899225900_))))
                    (let ((_tl219898220160_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219900220155_)))
                          (_hd219899220158_
                           (let ()
                             (declare (not safe))
                             (##car _e219900220155_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219898220160_))
                          (let ((_e219903220163_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219898220160_))))
                            (let ((_tl219901220168_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219903220163_)))
                                  (_hd219902220166_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219903220163_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219902220166_))
                                  (let ((_e219906220171_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219902220166_))))
                                    (let ((_tl219904220176_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219906220171_)))
                                          (_hd219905220174_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219906220171_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd219905220174_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd219905220174_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219904220176_))
                                                  (let ((_e219909220179_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219904220176_))))
                                                    (let ((_tl219907220184_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219909220179_)))
                                                          (_hd219908220182_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219909220179_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219907220184_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219901220168_))
                      (let ((_e219912220187_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219901220168_))))
                        (let ((_tl219910220192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219912220187_)))
                              (_hd219911220190_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219912220187_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219911220190_))
                              (let ((_e219915220195_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219911220190_))))
                                (let ((_tl219913220200_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219915220195_)))
                                      (_hd219914220198_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219915220195_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd219914220198_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd219914220198_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl219913220200_))
                                              (let ((_e219918220203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl219913220200_))))
                                                (let ((_tl219916220208_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219918220203_)))
                                                      (_hd219917220206_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219918220203_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219916220208_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl219910220192_))
                                                          (let ((_e219921220211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl219910220192_))))
                    (let ((_tl219919220216_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219921220211_)))
                          (_hd219920220214_
                           (let ()
                             (declare (not safe))
                             (##car _e219921220211_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd219920220214_))
                          (let ((_e219924220219_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd219920220214_))))
                            (let ((_tl219922220224_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219924220219_)))
                                  (_hd219923220222_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219924220219_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd219923220222_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd219923220222_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl219922220224_))
                                          (let ((_e219927220227_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl219922220224_))))
                                            (let ((_tl219925220232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219927220227_)))
                                                  (_hd219926220230_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219927220227_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl219925220232_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl219919220216_))
                                                      (let ((_e219930220235_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl219919220216_))))
                (let ((_tl219928220240_
                       (let () (declare (not safe)) (##cdr _e219930220235_)))
                      (_hd219929220238_
                       (let () (declare (not safe)) (##car _e219930220235_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219929220238_))
                      (let ((_e219933220243_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219929220238_))))
                        (let ((_tl219931220248_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219933220243_)))
                              (_hd219932220246_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219933220243_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd219932220246_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd219932220246_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219931220248_))
                                      (let ((_e219936220251_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219931220248_))))
                                        (let ((_tl219934220256_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219936220251_)))
                                              (_hd219935220254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219936220251_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219934220256_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219928220240_))
                                                  (let ((_e219939220259_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219928220240_))))
                                                    (let ((_tl219937220264_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219939220259_)))
                                                          (_hd219938220262_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219939220259_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd219938220262_))
                                                          (let ((_e219942220267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd219938220262_))))
                    (let ((_tl219940220272_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219942220267_)))
                          (_hd219941220270_
                           (let ()
                             (declare (not safe))
                             (##car _e219942220267_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd219941220270_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd219941220270_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219940220272_))
                                  (let ((_e219945220275_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219940220272_))))
                                    (let ((_tl219943220280_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219945220275_)))
                                          (_hd219944220278_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219945220275_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219943220280_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219937220264_))
                                              (___match226034226035_
                                               _e219900220155_
                                               _hd219899220158_
                                               _tl219898220160_
                                               _e219903220163_
                                               _hd219902220166_
                                               _tl219901220168_
                                               _e219906220171_
                                               _hd219905220174_
                                               _tl219904220176_
                                               _e219909220179_
                                               _hd219908220182_
                                               _tl219907220184_
                                               _e219912220187_
                                               _hd219911220190_
                                               _tl219910220192_
                                               _e219915220195_
                                               _hd219914220198_
                                               _tl219913220200_
                                               _e219918220203_
                                               _hd219917220206_
                                               _tl219916220208_
                                               _e219921220211_
                                               _hd219920220214_
                                               _tl219919220216_
                                               _e219924220219_
                                               _hd219923220222_
                                               _tl219922220224_
                                               _e219927220227_
                                               _hd219926220230_
                                               _tl219925220232_
                                               _e219930220235_
                                               _hd219929220238_
                                               _tl219928220240_
                                               _e219933220243_
                                               _hd219932220246_
                                               _tl219931220248_
                                               _e219936220251_
                                               _hd219935220254_
                                               _tl219934220256_
                                               _e219939220259_
                                               _hd219938220262_
                                               _tl219937220264_
                                               _e219942220267_
                                               _hd219941220270_
                                               _tl219940220272_
                                               _e219945220275_
                                               _hd219944220278_
                                               _tl219943220280_)
                                              (___kont225905225906_))
                                          (___kont225905225906_))))
                                  (___kont225905225906_))
                              (___kont225905225906_))
                          (___kont225905225906_))))
                  (___kont225905225906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219928220240_))
                                                      (if (let ((__tmp226212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp226212 'bind-method!))
                  (let ((_L220109_ _hd219935220254_)
                        (_L220110_ _hd219926220230_)
                        (_L220111_ _hd219917220206_)
                        (_L220112_ _hd219908220182_))
                    (___kont225903225904_
                     _L220109_
                     _L220110_
                     _L220111_
                     _L220112_))
                  (___kont225905225906_))
              (___kont225905225906_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225905225906_))))
                                      (___kont225905225906_))
                                  (___kont225905225906_))
                              (___kont225905225906_))))
                      (___kont225905225906_))))
              (___kont225905225906_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225905225906_))))
                                          (___kont225905225906_))
                                      (___kont225905225906_))
                                  (___kont225905225906_))))
                          (___kont225905225906_))))
                  (___kont225905225906_))
              (___kont225905225906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225905225906_))
                                          (___kont225905225906_))
                                      (___kont225905225906_))))
                              (___kont225905225906_))))
                      (___kont225905225906_))
                  (___kont225905225906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225905225906_))
                                              (___kont225905225906_))
                                          (___kont225905225906_))))
                                  (___kont225905225906_))))
                          (___kont225905225906_))))
                  (___kont225905225906_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx219834_ _id219835_ _new-id219836_)
        (let* ((_g219838219851_
                (lambda (_g219839219848_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219839219848_))))
               (_g219837219884_
                (lambda (_g219839219854_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219839219854_))
                      (let ((_e219843219856_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219839219854_))))
                        (let ((_hd219842219859_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219843219856_)))
                              (_tl219841219861_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219843219856_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219841219861_))
                              (let ((_e219846219864_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219841219861_))))
                                (let ((_hd219845219867_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219846219864_)))
                                      (_tl219844219869_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219846219864_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219844219869_))
                                      ((lambda (_L219872_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L219872_
                                                _id219835_))
                                             (let ((__tmp226213
                                                    (let ((__tmp226214
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id219836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp226214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp226213
                                                _stx219834_))
                                             _stx219834_))
                                       _hd219845219867_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219838219851_ _g219839219854_)))))
                              (let ()
                                (declare (not safe))
                                (_g219838219851_ _g219839219854_)))))
                      (let ()
                        (declare (not safe))
                        (_g219838219851_ _g219839219854_))))))
          (declare (not safe))
          (_g219837219884_ _stx219834_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx219775_ _subst219776_)
        (let* ((_g219778219791_
                (lambda (_g219779219788_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219779219788_))))
               (_g219777219831_
                (lambda (_g219779219794_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219779219794_))
                      (let ((_e219783219796_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219779219794_))))
                        (let ((_hd219782219799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219783219796_)))
                              (_tl219781219801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219783219796_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219781219801_))
                              (let ((_e219786219804_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219781219801_))))
                                (let ((_hd219785219807_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219786219804_)))
                                      (_tl219784219809_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219786219804_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219784219809_))
                                      ((lambda (_L219812_)
                                         (let ((_$e219826_
                                                (let ((__tmp226215
                                                       (lambda (_sub219824_)
                                                         (let ((__tmp226216
                                                                (car _sub219824_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L219812_
                                                            __tmp226216)))))
                                                  (declare (not safe))
                                                  (find __tmp226215
                                                        _subst219776_))))
                                           (if _$e219826_
                                               ((lambda (_sub219829_)
                                                  (let ((__tmp226217
                                                         (let ((__tmp226218
                                                                (let ((__tmp226219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub219829_)))
                          (declare (not safe))
                          (cons __tmp226219 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp226218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp226217
                                                     _stx219775_)))
                                                _$e219826_)
                                               _stx219775_)))
                                       _hd219785219807_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219778219791_ _g219779219794_)))))
                              (let ()
                                (declare (not safe))
                                (_g219778219791_ _g219779219794_)))))
                      (let ()
                        (declare (not safe))
                        (_g219778219791_ _g219779219794_))))))
          (declare (not safe))
          (_g219777219831_ _stx219775_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx219703_ _id219704_ _new-id219705_)
        (let* ((_g219707219724_
                (lambda (_g219708219721_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219708219721_))))
               (_g219706219772_
                (lambda (_g219708219727_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219708219727_))
                      (let ((_e219713219729_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219708219727_))))
                        (let ((_hd219712219732_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219713219729_)))
                              (_tl219711219734_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219713219729_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219711219734_))
                              (let ((_e219716219737_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219711219734_))))
                                (let ((_hd219715219740_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219716219737_)))
                                      (_tl219714219742_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219716219737_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219714219742_))
                                      (let ((_e219719219745_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219714219742_))))
                                        (let ((_hd219718219748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219719219745_)))
                                              (_tl219717219750_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219719219745_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219717219750_))
                                              ((lambda (_L219753_ _L219754_)
                                                 (let ((_new-expr219769_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L219753_
                                                           _id219704_
                                                           _new-id219705_)))
                                                       (_new-xid219770_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L219754_
                                                               _id219704_))
                                                            _new-id219705_
                                                            _L219754_)))
                                                   (let ((__tmp226220
                                                          (let ((__tmp226221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226222
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219769_ '()))))
                           (declare (not safe))
                           (cons _new-xid219770_ __tmp226222))))
                    (declare (not safe))
                    (cons '%#set! __tmp226221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp226220
                                                      _stx219703_))))
                                               _hd219718219748_
                                               _hd219715219740_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219707219724_
                                                 _g219708219727_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219707219724_ _g219708219727_)))))
                              (let ()
                                (declare (not safe))
                                (_g219707219724_ _g219708219727_)))))
                      (let ()
                        (declare (not safe))
                        (_g219707219724_ _g219708219727_))))))
          (declare (not safe))
          (_g219706219772_ _stx219703_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx219627_ _subst219628_)
        (let* ((_g219630219647_
                (lambda (_g219631219644_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219631219644_))))
               (_g219629219700_
                (lambda (_g219631219650_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219631219650_))
                      (let ((_e219636219652_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219631219650_))))
                        (let ((_hd219635219655_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219636219652_)))
                              (_tl219634219657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219636219652_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219634219657_))
                              (let ((_e219639219660_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219634219657_))))
                                (let ((_hd219638219663_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219639219660_)))
                                      (_tl219637219665_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219639219660_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219637219665_))
                                      (let ((_e219642219668_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219637219665_))))
                                        (let ((_hd219641219671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219642219668_)))
                                              (_tl219640219673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219642219668_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219640219673_))
                                              ((lambda (_L219676_ _L219677_)
                                                 (let ((_new-expr219697_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L219676_
                                                           _subst219628_)))
                                                       (_new-xid219698_
                                                        (let ((_$e219694_
                                                               (let ((__tmp226223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub219692_)
                                (let ((__tmp226224 (car _sub219692_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L219677_
                                   __tmp226224)))))
                         (declare (not safe))
                         (find __tmp226223 _subst219628_))))
                  (if _$e219694_ (cdr _$e219694_) _L219677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp226225
                                                          (let ((__tmp226226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226227
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219697_ '()))))
                           (declare (not safe))
                           (cons _new-xid219698_ __tmp226227))))
                    (declare (not safe))
                    (cons '%#set! __tmp226226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp226225
                                                      _stx219627_))))
                                               _hd219641219671_
                                               _hd219638219663_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219630219647_
                                                 _g219631219650_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219630219647_ _g219631219650_)))))
                              (let ()
                                (declare (not safe))
                                (_g219630219647_ _g219631219650_)))))
                      (let ()
                        (declare (not safe))
                        (_g219630219647_ _g219631219650_))))))
          (declare (not safe))
          (_g219629219700_ _stx219627_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx219573_ _ht219574_)
        (let* ((_g219576219589_
                (lambda (_g219577219586_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219577219586_))))
               (_g219575219624_
                (lambda (_g219577219592_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219577219592_))
                      (let ((_e219581219594_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219577219592_))))
                        (let ((_hd219580219597_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219581219594_)))
                              (_tl219579219599_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219581219594_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219579219599_))
                              (let ((_e219584219602_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219579219599_))))
                                (let ((_hd219583219605_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219584219602_)))
                                      (_tl219582219607_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219584219602_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219582219607_))
                                      ((lambda (_L219610_)
                                         (let ((_eid219622_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L219610_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht219574_
                                            _eid219622_
                                            1+
                                            '0)))
                                       _hd219583219605_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219576219589_ _g219577219592_)))))
                              (let ()
                                (declare (not safe))
                                (_g219576219589_ _g219577219592_)))))
                      (let ()
                        (declare (not safe))
                        (_g219576219589_ _g219577219592_))))))
          (declare (not safe))
          (_g219575219624_ _stx219573_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx219503_ _ht219504_)
        (let* ((_g219506219523_
                (lambda (_g219507219520_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219507219520_))))
               (_g219505219570_
                (lambda (_g219507219526_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219507219526_))
                      (let ((_e219512219528_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219507219526_))))
                        (let ((_hd219511219531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219512219528_)))
                              (_tl219510219533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219512219528_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219510219533_))
                              (let ((_e219515219536_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219510219533_))))
                                (let ((_hd219514219539_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219515219536_)))
                                      (_tl219513219541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219515219536_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219513219541_))
                                      (let ((_e219518219544_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219513219541_))))
                                        (let ((_hd219517219547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219518219544_)))
                                              (_tl219516219549_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219518219544_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219516219549_))
                                              ((lambda (_L219552_ _L219553_)
                                                 (let ((_eid219568_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L219553_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht219504_
                                                      _eid219568_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L219552_
                                                      _ht219504_))))
                                               _hd219517219547_
                                               _hd219514219539_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219506219523_
                                                 _g219507219526_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219506219523_ _g219507219526_)))))
                              (let ()
                                (declare (not safe))
                                (_g219506219523_ _g219507219526_)))))
                      (let ()
                        (declare (not safe))
                        (_g219506219523_ _g219507219526_))))))
          (declare (not safe))
          (_g219505219570_ _stx219503_))))
    (define gxc#find-body%
      (lambda (_stx219416_ _arg219417_)
        (let* ((_g219419219438_
                (lambda (_g219420219435_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219420219435_))))
               (_g219418219500_
                (lambda (_g219420219441_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219420219441_))
                      (let ((_e219424219443_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219420219441_))))
                        (let ((_hd219423219446_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219424219443_)))
                              (_tl219422219448_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219424219443_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl219422219448_))
                              (let ((_g226228_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl219422219448_
                                        '0))))
                                (begin
                                  (let ((_g226229_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226228_)
                                               (##vector-length _g226228_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226229_ 2)))
                                        (error "Context expects 2 values"
                                               _g226229_)))
                                  (let ((_target219425219451_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226228_ 0)))
                                        (_tl219427219453_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226228_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219427219453_))
                                        (letrec ((_loop219428219456_
                                                  (lambda (_hd219426219459_
                                                           _expr219432219461_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd219426219459_))
                                                        (let ((_e219429219464_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd219426219459_))))
                  (let ((_lp-hd219430219467_
                         (let () (declare (not safe)) (##car _e219429219464_)))
                        (_lp-tl219431219469_
                         (let ()
                           (declare (not safe))
                           (##cdr _e219429219464_))))
                    (let ((__tmp226233
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd219430219467_ _expr219432219461_))))
                      (declare (not safe))
                      (_loop219428219456_ _lp-tl219431219469_ __tmp226233))))
                (let ((_expr219433219472_ (reverse _expr219432219461_)))
                  ((lambda (_L219475_)
                     (let ((__tmp226232
                            (lambda (_g219488219490_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g219488219490_
                                 _arg219417_))))
                           (__tmp226230
                            (let ((__tmp226231
                                   (lambda (_g219492219495_ _g219493219497_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g219492219495_
                                             _g219493219497_)))))
                              (declare (not safe))
                              (foldr1 __tmp226231 '() _L219475_))))
                       (declare (not safe))
                       (ormap1 __tmp226232 __tmp226230)))
                   _expr219433219472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop219428219456_
                                             _target219425219451_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g219419219438_
                                           _g219420219441_))))))
                              (let ()
                                (declare (not safe))
                                (_g219419219438_ _g219420219441_)))))
                      (let ()
                        (declare (not safe))
                        (_g219419219438_ _g219420219441_))))))
          (declare (not safe))
          (_g219418219500_ _stx219416_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx219348_ _arg219349_)
        (let* ((_g219351219368_
                (lambda (_g219352219365_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219352219365_))))
               (_g219350219413_
                (lambda (_g219352219371_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219352219371_))
                      (let ((_e219357219373_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219352219371_))))
                        (let ((_hd219356219376_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219357219373_)))
                              (_tl219355219378_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219357219373_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219355219378_))
                              (let ((_e219360219381_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219355219378_))))
                                (let ((_hd219359219384_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219360219381_)))
                                      (_tl219358219386_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219360219381_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219358219386_))
                                      (let ((_e219363219389_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219358219386_))))
                                        (let ((_hd219362219392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219363219389_)))
                                              (_tl219361219394_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219363219389_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219361219394_))
                                              ((lambda (_L219397_ _L219398_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L219397_
                                                    _arg219349_)))
                                               _hd219362219392_
                                               _hd219359219384_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219351219368_
                                                 _g219352219371_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219351219368_ _g219352219371_)))))
                              (let ()
                                (declare (not safe))
                                (_g219351219368_ _g219352219371_)))))
                      (let ()
                        (declare (not safe))
                        (_g219351219368_ _g219352219371_))))))
          (declare (not safe))
          (_g219350219413_ _stx219348_))))
    (define gxc#find-lambda%
      (lambda (_stx219280_ _arg219281_)
        (let* ((_g219283219300_
                (lambda (_g219284219297_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219284219297_))))
               (_g219282219345_
                (lambda (_g219284219303_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219284219303_))
                      (let ((_e219289219305_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219284219303_))))
                        (let ((_hd219288219308_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219289219305_)))
                              (_tl219287219310_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219289219305_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219287219310_))
                              (let ((_e219292219313_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219287219310_))))
                                (let ((_hd219291219316_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219292219313_)))
                                      (_tl219290219318_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219292219313_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219290219318_))
                                      (let ((_e219295219321_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219290219318_))))
                                        (let ((_hd219294219324_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219295219321_)))
                                              (_tl219293219326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219295219321_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219293219326_))
                                              ((lambda (_L219329_ _L219330_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L219329_
                                                    _arg219281_)))
                                               _hd219294219324_
                                               _hd219291219316_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219283219300_
                                                 _g219284219303_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219283219300_ _g219284219303_)))))
                              (let ()
                                (declare (not safe))
                                (_g219283219300_ _g219284219303_)))))
                      (let ()
                        (declare (not safe))
                        (_g219283219300_ _g219284219303_))))))
          (declare (not safe))
          (_g219282219345_ _stx219280_))))
    (define gxc#find-case-lambda%
      (lambda (_stx219162_ _arg219163_)
        (let* ((_g219165219193_
                (lambda (_g219166219190_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219166219190_))))
               (_g219164219277_
                (lambda (_g219166219196_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219166219196_))
                      (let ((_e219171219198_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219166219196_))))
                        (let ((_hd219170219201_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219171219198_)))
                              (_tl219169219203_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219171219198_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl219169219203_))
                              (let ((_g226234_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl219169219203_
                                        '0))))
                                (begin
                                  (let ((_g226235_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226234_)
                                               (##vector-length _g226234_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226235_ 2)))
                                        (error "Context expects 2 values"
                                               _g226235_)))
                                  (let ((_target219172219206_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226234_ 0)))
                                        (_tl219174219208_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226234_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219174219208_))
                                        (letrec ((_loop219175219211_
                                                  (lambda (_hd219173219214_
                                                           _body219179219216_
                                                           _hd219180219218_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd219173219214_))
                                                        (let ((_e219176219221_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd219173219214_))))
                  (let ((_lp-hd219177219224_
                         (let () (declare (not safe)) (##car _e219176219221_)))
                        (_lp-tl219178219226_
                         (let ()
                           (declare (not safe))
                           (##cdr _e219176219221_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd219177219224_))
                        (let ((_e219185219229_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd219177219224_))))
                          (let ((_hd219184219232_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e219185219229_)))
                                (_tl219183219234_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e219185219229_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl219183219234_))
                                (let ((_e219188219237_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl219183219234_))))
                                  (let ((_hd219187219240_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e219188219237_)))
                                        (_tl219186219242_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e219188219237_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219186219242_))
                                        (let ((__tmp226240
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd219187219240_
                                                       _body219179219216_)))
                                              (__tmp226239
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd219184219232_
                                                       _hd219180219218_))))
                                          (declare (not safe))
                                          (_loop219175219211_
                                           _lp-tl219178219226_
                                           __tmp226240
                                           __tmp226239))
                                        (let ()
                                          (declare (not safe))
                                          (_g219165219193_ _g219166219196_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g219165219193_ _g219166219196_)))))
                        (let ()
                          (declare (not safe))
                          (_g219165219193_ _g219166219196_)))))
                (let ((_body219181219245_ (reverse _body219179219216_))
                      (_hd219182219247_ (reverse _hd219180219218_)))
                  ((lambda (_L219250_ _L219251_)
                     (let ((__tmp226238
                            (lambda (_g219265219267_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g219265219267_
                                 _arg219163_))))
                           (__tmp226236
                            (let ((__tmp226237
                                   (lambda (_g219269219272_ _g219270219274_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g219269219272_
                                             _g219270219274_)))))
                              (declare (not safe))
                              (foldr1 __tmp226237 '() _L219250_))))
                       (declare (not safe))
                       (ormap1 __tmp226238 __tmp226236)))
                   _body219181219245_
                   _hd219182219247_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop219175219211_
                                             _target219172219206_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g219165219193_
                                           _g219166219196_))))))
                              (let ()
                                (declare (not safe))
                                (_g219165219193_ _g219166219196_)))))
                      (let ()
                        (declare (not safe))
                        (_g219165219193_ _g219166219196_))))))
          (declare (not safe))
          (_g219164219277_ _stx219162_))))
    (define gxc#find-let-values%
      (lambda (_stx219012_ _arg219013_)
        (let* ((_g219015219050_
                (lambda (_g219016219047_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219016219047_))))
               (_g219014219159_
                (lambda (_g219016219053_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219016219053_))
                      (let ((_e219022219055_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219016219053_))))
                        (let ((_hd219021219058_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219022219055_)))
                              (_tl219020219060_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219022219055_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219020219060_))
                              (let ((_e219025219063_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219020219060_))))
                                (let ((_hd219024219066_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219025219063_)))
                                      (_tl219023219068_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219025219063_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd219024219066_))
                                      (let ((_g226241_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd219024219066_
                                                '0))))
                                        (begin
                                          (let ((_g226242_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g226241_)
                                                       (##vector-length
                                                        _g226241_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g226242_ 2)))
                                                (error "Context expects 2 values"
                                                       _g226242_)))
                                          (let ((_target219026219071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g226241_ 0)))
                                                (_tl219028219073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g226241_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl219028219073_))
                                                (letrec ((_loop219029219076_
                                                          (lambda (_hd219027219079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr219033219081_
                           _bind219034219083_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd219027219079_))
                        (let ((_e219030219086_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd219027219079_))))
                          (let ((_lp-hd219031219089_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e219030219086_)))
                                (_lp-tl219032219091_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e219030219086_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd219031219089_))
                                (let ((_e219039219094_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd219031219089_))))
                                  (let ((_hd219038219097_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e219039219094_)))
                                        (_tl219037219099_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e219039219094_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl219037219099_))
                                        (let ((_e219042219102_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl219037219099_))))
                                          (let ((_hd219041219105_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e219042219102_)))
                                                (_tl219040219107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e219042219102_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl219040219107_))
                                                (let ((__tmp226247
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd219041219105_
                                                               _expr219033219081_)))
                                                      (__tmp226246
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd219038219097_
                                                               _bind219034219083_))))
                                                  (declare (not safe))
                                                  (_loop219029219076_
                                                   _lp-tl219032219091_
                                                   __tmp226247
                                                   __tmp226246))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g219015219050_
                                                   _g219016219053_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g219015219050_ _g219016219053_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g219015219050_ _g219016219053_)))))
                        (let ((_expr219035219110_ (reverse _expr219033219081_))
                              (_bind219036219112_
                               (reverse _bind219034219083_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219023219068_))
                              (let ((_e219045219115_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219023219068_))))
                                (let ((_hd219044219118_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219045219115_)))
                                      (_tl219043219120_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219045219115_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219043219120_))
                                      ((lambda (_L219123_ _L219124_ _L219125_)
                                         (let ((_$e219156_
                                                (let ((__tmp226245
                                                       (lambda (_g219144219146_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g219144219146_
                                                            _arg219013_))))
                                                      (__tmp226243
                                                       (let ((__tmp226244
                                                              (lambda (_g219148219151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g219149219153_)
                        (let ()
                          (declare (not safe))
                          (cons _g219148219151_ _g219149219153_)))))
                 (declare (not safe))
                 (foldr1 __tmp226244 '() _L219124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp226245
                                                          __tmp226243))))
                                           (if _$e219156_
                                               _$e219156_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L219123_
                                                  _arg219013_)))))
                                       _hd219044219118_
                                       _expr219035219110_
                                       _bind219036219112_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219015219050_ _g219016219053_)))))
                              (let ()
                                (declare (not safe))
                                (_g219015219050_ _g219016219053_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop219029219076_
                                                     _target219026219071_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g219015219050_
                                                   _g219016219053_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219015219050_ _g219016219053_)))))
                              (let ()
                                (declare (not safe))
                                (_g219015219050_ _g219016219053_)))))
                      (let ()
                        (declare (not safe))
                        (_g219015219050_ _g219016219053_))))))
          (declare (not safe))
          (_g219014219159_ _stx219012_))))
    (define gxc#find-setq%
      (lambda (_stx218944_ _arg218945_)
        (let* ((_g218947218964_
                (lambda (_g218948218961_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218948218961_))))
               (_g218946219009_
                (lambda (_g218948218967_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218948218967_))
                      (let ((_e218953218969_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218948218967_))))
                        (let ((_hd218952218972_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218953218969_)))
                              (_tl218951218974_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218953218969_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218951218974_))
                              (let ((_e218956218977_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218951218974_))))
                                (let ((_hd218955218980_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218956218977_)))
                                      (_tl218954218982_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218956218977_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218954218982_))
                                      (let ((_e218959218985_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218954218982_))))
                                        (let ((_hd218958218988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218959218985_)))
                                              (_tl218957218990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218959218985_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218957218990_))
                                              ((lambda (_L218993_ _L218994_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L218993_
                                                    _arg218945_)))
                                               _hd218958218988_
                                               _hd218955218980_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218947218964_
                                                 _g218948218967_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218947218964_ _g218948218967_)))))
                              (let ()
                                (declare (not safe))
                                (_g218947218964_ _g218948218967_)))))
                      (let ()
                        (declare (not safe))
                        (_g218947218964_ _g218948218967_))))))
          (declare (not safe))
          (_g218946219009_ _stx218944_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx218888_ _ids218889_)
        (let* ((_g218891218904_
                (lambda (_g218892218901_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218892218901_))))
               (_g218890218941_
                (lambda (_g218892218907_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218892218907_))
                      (let ((_e218896218909_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218892218907_))))
                        (let ((_hd218895218912_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218896218909_)))
                              (_tl218894218914_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218896218909_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218894218914_))
                              (let ((_e218899218917_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218894218914_))))
                                (let ((_hd218898218920_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218899218917_)))
                                      (_tl218897218922_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218899218917_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218897218922_))
                                      ((lambda (_L218925_)
                                         (let ((__tmp226248
                                                (lambda (_g218936218938_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L218925_
                                                     _g218936218938_)))))
                                           (declare (not safe))
                                           (find __tmp226248 _ids218889_)))
                                       _hd218898218920_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218891218904_ _g218892218907_)))))
                              (let ()
                                (declare (not safe))
                                (_g218891218904_ _g218892218907_)))))
                      (let ()
                        (declare (not safe))
                        (_g218891218904_ _g218892218907_))))))
          (declare (not safe))
          (_g218890218941_ _stx218888_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx218812_ _ids218813_)
        (let* ((_g218815218832_
                (lambda (_g218816218829_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218816218829_))))
               (_g218814218885_
                (lambda (_g218816218835_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218816218835_))
                      (let ((_e218821218837_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218816218835_))))
                        (let ((_hd218820218840_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218821218837_)))
                              (_tl218819218842_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218821218837_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218819218842_))
                              (let ((_e218824218845_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218819218842_))))
                                (let ((_hd218823218848_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218824218845_)))
                                      (_tl218822218850_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218824218845_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218822218850_))
                                      (let ((_e218827218853_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218822218850_))))
                                        (let ((_hd218826218856_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218827218853_)))
                                              (_tl218825218858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218827218853_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218825218858_))
                                              ((lambda (_L218861_ _L218862_)
                                                 (let ((_$e218882_
                                                        (let ((__tmp226249
                                                               (lambda (_g218877218879_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L218862_ _g218877218879_)))))
                  (declare (not safe))
                  (find __tmp226249 _ids218813_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e218882_
                                                       _$e218882_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L218861_
                                                          _ids218813_)))))
                                               _hd218826218856_
                                               _hd218823218848_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218815218832_
                                                 _g218816218835_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218815218832_ _g218816218835_)))))
                              (let ()
                                (declare (not safe))
                                (_g218815218832_ _g218816218835_)))))
                      (let ()
                        (declare (not safe))
                        (_g218815218832_ _g218816218835_))))))
          (declare (not safe))
          (_g218814218885_ _stx218812_))))))
