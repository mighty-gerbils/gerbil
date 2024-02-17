(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708210943)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl217757_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217757_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217757_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217757_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217757_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl217757_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl217753_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217753_ '%#declare gxc#xform-identity))
           _tbl217753_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl217749_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222070 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl217749_ __tmp222070))
           (let ((__tmp222071 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl217749_ __tmp222071))
           _tbl217749_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl217745_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217745_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217745_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217745_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217745_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217745_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl217745_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl217741_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222072 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl217741_ __tmp222072))
           (let ((__tmp222073 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl217741_ __tmp222073))
           (let ()
             (declare (not safe))
             (table-set! _tbl217741_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217741_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217741_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217741_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217741_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl217741_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl217737_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222074 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl217737_ __tmp222074))
           (let ()
             (declare (not safe))
             (table-set! _tbl217737_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217737_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217737_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217737_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217737_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217737_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217737_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217737_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217737_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl217737_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217737_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl217737_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx217720_ . _args217722_)
        (let ((__tmp222076
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217722_)
                     (gxc#compile-e__0 _stx217720_)
                     (let ((_arg1217727_ (car _args217722_))
                           (_rest217729_ (cdr _args217722_)))
                       (if (null? _rest217729_)
                           (gxc#compile-e__1 _stx217720_ _arg1217727_)
                           (let ((_arg2217732_ (car _rest217729_))
                                 (_rest217734_ (cdr _rest217729_)))
                             (if (null? _rest217734_)
                                 (gxc#compile-e__2
                                  _stx217720_
                                  _arg1217727_
                                  _arg2217732_)
                                 (apply gxc#compile-e
                                        _stx217720_
                                        _arg1217727_
                                        _arg2217732_
                                        _rest217734_))))))))
              (__tmp222075 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp222076
           gxc#current-compile-methods
           __tmp222075))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl217717_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222077 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl217717_ __tmp222077))
           (let ()
             (declare (not safe))
             (table-set! _tbl217717_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217717_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217717_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217717_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217717_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl217717_))))
    (define gxc#apply-collect-methods
      (lambda (_stx217700_ . _args217702_)
        (let ((__tmp222079
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217702_)
                     (gxc#compile-e__0 _stx217700_)
                     (let ((_arg1217707_ (car _args217702_))
                           (_rest217709_ (cdr _args217702_)))
                       (if (null? _rest217709_)
                           (gxc#compile-e__1 _stx217700_ _arg1217707_)
                           (let ((_arg2217712_ (car _rest217709_))
                                 (_rest217714_ (cdr _rest217709_)))
                             (if (null? _rest217714_)
                                 (gxc#compile-e__2
                                  _stx217700_
                                  _arg1217707_
                                  _arg2217712_)
                                 (apply gxc#compile-e
                                        _stx217700_
                                        _arg1217707_
                                        _arg2217712_
                                        _rest217714_))))))))
              (__tmp222078 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp222079
           gxc#current-compile-methods
           __tmp222078))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl217697_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222080 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl217697_ __tmp222080))
           (let ()
             (declare (not safe))
             (table-set! _tbl217697_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217697_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217697_ '%#set! gxc#expression-subst-setq%))
           _tbl217697_))))
    (define gxc#apply-expression-subst
      (lambda (_stx217680_ . _args217682_)
        (let ((__tmp222082
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217682_)
                     (gxc#compile-e__0 _stx217680_)
                     (let ((_arg1217687_ (car _args217682_))
                           (_rest217689_ (cdr _args217682_)))
                       (if (null? _rest217689_)
                           (gxc#compile-e__1 _stx217680_ _arg1217687_)
                           (let ((_arg2217692_ (car _rest217689_))
                                 (_rest217694_ (cdr _rest217689_)))
                             (if (null? _rest217694_)
                                 (gxc#compile-e__2
                                  _stx217680_
                                  _arg1217687_
                                  _arg2217692_)
                                 (apply gxc#compile-e
                                        _stx217680_
                                        _arg1217687_
                                        _arg2217692_
                                        _rest217694_))))))))
              (__tmp222081 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp222082
           gxc#current-compile-methods
           __tmp222081))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl217677_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222083 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl217677_ __tmp222083))
           (let ()
             (declare (not safe))
             (table-set! _tbl217677_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217677_ '%#set! gxc#expression-subst*-setq%))
           _tbl217677_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx217660_ . _args217662_)
        (let ((__tmp222085
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217662_)
                     (gxc#compile-e__0 _stx217660_)
                     (let ((_arg1217667_ (car _args217662_))
                           (_rest217669_ (cdr _args217662_)))
                       (if (null? _rest217669_)
                           (gxc#compile-e__1 _stx217660_ _arg1217667_)
                           (let ((_arg2217672_ (car _rest217669_))
                                 (_rest217674_ (cdr _rest217669_)))
                             (if (null? _rest217674_)
                                 (gxc#compile-e__2
                                  _stx217660_
                                  _arg1217667_
                                  _arg2217672_)
                                 (apply gxc#compile-e
                                        _stx217660_
                                        _arg1217667_
                                        _arg2217672_
                                        _rest217674_))))))))
              (__tmp222084 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp222085
           gxc#current-compile-methods
           __tmp222084))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl217657_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222086 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl217657_ __tmp222086))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217657_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl217657_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217657_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl217657_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl217653_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222087 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl217653_ __tmp222087))
           (let ()
             (declare (not safe))
             (table-set! _tbl217653_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217653_ '%#set! gxc#find-var-refs-setq%))
           _tbl217653_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx217636_ . _args217638_)
        (let ((__tmp222089
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217638_)
                     (gxc#compile-e__0 _stx217636_)
                     (let ((_arg1217643_ (car _args217638_))
                           (_rest217645_ (cdr _args217638_)))
                       (if (null? _rest217645_)
                           (gxc#compile-e__1 _stx217636_ _arg1217643_)
                           (let ((_arg2217648_ (car _rest217645_))
                                 (_rest217650_ (cdr _rest217645_)))
                             (if (null? _rest217650_)
                                 (gxc#compile-e__2
                                  _stx217636_
                                  _arg1217643_
                                  _arg2217648_)
                                 (apply gxc#compile-e
                                        _stx217636_
                                        _arg1217643_
                                        _arg2217648_
                                        _rest217650_))))))))
              (__tmp222088 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp222089
           gxc#current-compile-methods
           __tmp222088))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl217633_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp222090 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl217633_ __tmp222090))
           (let ()
             (declare (not safe))
             (table-set! _tbl217633_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl217633_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl217633_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx217616_ . _args217618_)
        (let ((__tmp222092
               (lambda ()
                 (declare (not safe))
                 (if (null? _args217618_)
                     (gxc#compile-e__0 _stx217616_)
                     (let ((_arg1217623_ (car _args217618_))
                           (_rest217625_ (cdr _args217618_)))
                       (if (null? _rest217625_)
                           (gxc#compile-e__1 _stx217616_ _arg1217623_)
                           (let ((_arg2217628_ (car _rest217625_))
                                 (_rest217630_ (cdr _rest217625_)))
                             (if (null? _rest217630_)
                                 (gxc#compile-e__2
                                  _stx217616_
                                  _arg1217623_
                                  _arg2217628_)
                                 (apply gxc#compile-e
                                        _stx217616_
                                        _arg1217623_
                                        _arg2217628_
                                        _rest217630_))))))))
              (__tmp222091 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp222092
           gxc#current-compile-methods
           __tmp222091))))
    (define gxc#xform-identity
      (lambda (_stx217613_ . _args217614_) _stx217613_))
    (define gxc#xform-wrap-source
      (lambda (_stx217610_ _src-stx217611_)
        (let ((__tmp222093
               (let () (declare (not safe)) (gx#stx-source _src-stx217611_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx217610_ __tmp222093))))
    (define gxc#xform-apply-compile-e
      (lambda (_args217597_)
        (lambda (_stx217599_)
          (if (let () (declare (not safe)) (null? _args217597_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx217599_))
              (let ((_arg1217601_ (car _args217597_))
                    (_rest217603_ (cdr _args217597_)))
                (if (let () (declare (not safe)) (null? _rest217603_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx217599_ _arg1217601_))
                    (let ((_arg2217606_ (car _rest217603_))
                          (_rest217608_ (cdr _rest217603_)))
                      (if (let () (declare (not safe)) (null? _rest217608_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx217599_
                             _arg1217601_
                             _arg2217606_))
                          (apply gxc#compile-e
                                 _stx217599_
                                 _arg1217601_
                                 _arg2217606_
                                 _rest217608_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx217556_ . _args217557_)
        (let* ((_g217559217569_
                (lambda (_g217560217566_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217560217566_))))
               (_g217558217594_
                (lambda (_g217560217572_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217560217572_))
                      (let ((_e217564217574_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217560217572_))))
                        (let ((_hd217563217577_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217564217574_)))
                              (_tl217562217579_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217564217574_))))
                          ((lambda (_L217582_)
                             (let* ((_forms217592_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args217557_))
                                          _L217582_))
                                    (__tmp222094
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms217592_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp222094
                                _stx217556_)))
                           _tl217562217579_)))
                      (let ()
                        (declare (not safe))
                        (_g217559217569_ _g217560217572_))))))
          (declare (not safe))
          (_g217558217594_ _stx217556_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx217514_ . _args217515_)
        (let* ((_g217517217527_
                (lambda (_g217518217524_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217518217524_))))
               (_g217516217553_
                (lambda (_g217518217530_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217518217530_))
                      (let ((_e217522217532_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217518217530_))))
                        (let ((_hd217521217535_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217522217532_)))
                              (_tl217520217537_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217522217532_))))
                          ((lambda (_L217540_)
                             (let ((__tmp222097
                                    (lambda ()
                                      (let* ((_forms217551_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args217515_))
                                                   _L217540_))
                                             (__tmp222098
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms217551_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp222098
                                         _stx217514_))))
                                   (__tmp222095
                                    (let ((__tmp222096
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp222096 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp222097
                                gx#current-expander-phi
                                __tmp222095)))
                           _tl217520217537_)))
                      (let ()
                        (declare (not safe))
                        (_g217517217527_ _g217518217530_))))))
          (declare (not safe))
          (_g217516217553_ _stx217514_))))
    (define gxc#xform-module%
      (lambda (_stx217442_ . _args217443_)
        (let* ((_g217445217459_
                (lambda (_g217446217456_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217446217456_))))
               (_g217444217511_
                (lambda (_g217446217462_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217446217462_))
                      (let ((_e217451217464_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217446217462_))))
                        (let ((_hd217450217467_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217451217464_)))
                              (_tl217449217469_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217451217464_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217449217469_))
                              (let ((_e217454217472_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217449217469_))))
                                (let ((_hd217453217475_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217454217472_)))
                                      (_tl217452217477_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217454217472_))))
                                  ((lambda (_L217480_ _L217481_)
                                     (let* ((_ctx217494_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L217481_)))
                                            (_code217496_
                                             (##structure-ref
                                              _ctx217494_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code217508_
                                             (let ((__tmp222099
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args217443_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code217496_))
                                                          (let ((_arg1217499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args217443_))
                        (_rest217501_ (cdr _args217443_)))
                    (if (let () (declare (not safe)) (null? _rest217501_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code217496_ _arg1217499_))
                        (let ((_arg2217504_ (car _rest217501_))
                              (_rest217506_ (cdr _rest217501_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest217506_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code217496_
                                 _arg1217499_
                                 _arg2217504_))
                              (apply gxc#compile-e
                                     _code217496_
                                     _arg1217499_
                                     _arg2217504_
                                     _rest217506_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp222099
                                                gx#current-expander-context
                                                _ctx217494_))))
                                       (##structure-set!
                                        _ctx217494_
                                        _code217508_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp222100
                                              (let ((__tmp222101
                                                     (let ((__tmp222102
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code217508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L217481_ __tmp222102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp222101))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp222100
                                          _stx217442_))))
                                   _tl217452217477_
                                   _hd217453217475_)))
                              (let ()
                                (declare (not safe))
                                (_g217445217459_ _g217446217462_)))))
                      (let ()
                        (declare (not safe))
                        (_g217445217459_ _g217446217462_))))))
          (declare (not safe))
          (_g217444217511_ _stx217442_))))
    (define gxc#xform-define-values%
      (lambda (_stx217363_ . _args217364_)
        (let* ((_g217366217383_
                (lambda (_g217367217380_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217367217380_))))
               (_g217365217439_
                (lambda (_g217367217386_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217367217386_))
                      (let ((_e217372217388_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217367217386_))))
                        (let ((_hd217371217391_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217372217388_)))
                              (_tl217370217393_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217372217388_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217370217393_))
                              (let ((_e217375217396_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217370217393_))))
                                (let ((_hd217374217399_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217375217396_)))
                                      (_tl217373217401_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217375217396_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl217373217401_))
                                      (let ((_e217378217404_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl217373217401_))))
                                        (let ((_hd217377217407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e217378217404_)))
                                              (_tl217376217409_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e217378217404_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl217376217409_))
                                              ((lambda (_L217412_ _L217413_)
                                                 (let* ((_expr217437_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args217364_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L217412_))
                     (let ((_arg1217428_ (car _args217364_))
                           (_rest217430_ (cdr _args217364_)))
                       (if (let () (declare (not safe)) (null? _rest217430_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L217412_ _arg1217428_))
                           (let ((_arg2217433_ (car _rest217430_))
                                 (_rest217435_ (cdr _rest217430_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest217435_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L217412_
                                    _arg1217428_
                                    _arg2217433_))
                                 (apply gxc#compile-e
                                        _L217412_
                                        _arg1217428_
                                        _arg2217433_
                                        _rest217435_)))))))
                (__tmp222103
                 (let ((__tmp222104
                        (let ((__tmp222105
                               (let ()
                                 (declare (not safe))
                                 (cons _expr217437_ '()))))
                          (declare (not safe))
                          (cons _L217413_ __tmp222105))))
                   (declare (not safe))
                   (cons '%#define-values __tmp222104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp222103
                                                    _stx217363_)))
                                               _hd217377217407_
                                               _hd217374217399_)
                                              (let ()
                                                (declare (not safe))
                                                (_g217366217383_
                                                 _g217367217386_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g217366217383_ _g217367217386_)))))
                              (let ()
                                (declare (not safe))
                                (_g217366217383_ _g217367217386_)))))
                      (let ()
                        (declare (not safe))
                        (_g217366217383_ _g217367217386_))))))
          (declare (not safe))
          (_g217365217439_ _stx217363_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx217283_ . _args217284_)
        (let* ((_g217286217303_
                (lambda (_g217287217300_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217287217300_))))
               (_g217285217360_
                (lambda (_g217287217306_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217287217306_))
                      (let ((_e217292217308_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217287217306_))))
                        (let ((_hd217291217311_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217292217308_)))
                              (_tl217290217313_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217292217308_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217290217313_))
                              (let ((_e217295217316_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217290217313_))))
                                (let ((_hd217294217319_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217295217316_)))
                                      (_tl217293217321_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217295217316_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl217293217321_))
                                      (let ((_e217298217324_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl217293217321_))))
                                        (let ((_hd217297217327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e217298217324_)))
                                              (_tl217296217329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e217298217324_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl217296217329_))
                                              ((lambda (_L217332_ _L217333_)
                                                 (let ((__tmp222108
                                                        (lambda ()
                                                          (let* ((_expr217358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args217284_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L217332_))
                              (let ((_arg1217349_ (car _args217284_))
                                    (_rest217351_ (cdr _args217284_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest217351_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L217332_
                                       _arg1217349_))
                                    (let ((_arg2217354_ (car _rest217351_))
                                          (_rest217356_ (cdr _rest217351_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest217356_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L217332_
                                             _arg1217349_
                                             _arg2217354_))
                                          (apply gxc#compile-e
                                                 _L217332_
                                                 _arg1217349_
                                                 _arg2217354_
                                                 _rest217356_)))))))
                         (__tmp222109
                          (let ((__tmp222110
                                 (let ((__tmp222111
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr217358_ '()))))
                                   (declare (not safe))
                                   (cons _L217333_ __tmp222111))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp222110))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp222109 _stx217283_))))
               (__tmp222106
                (let ((__tmp222107 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp222107 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp222108
                                                    gx#current-expander-phi
                                                    __tmp222106)))
                                               _hd217297217327_
                                               _hd217294217319_)
                                              (let ()
                                                (declare (not safe))
                                                (_g217286217303_
                                                 _g217287217306_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g217286217303_ _g217287217306_)))))
                              (let ()
                                (declare (not safe))
                                (_g217286217303_ _g217287217306_)))))
                      (let ()
                        (declare (not safe))
                        (_g217286217303_ _g217287217306_))))))
          (declare (not safe))
          (_g217285217360_ _stx217283_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx217204_ . _args217205_)
        (let* ((_g217207217224_
                (lambda (_g217208217221_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217208217221_))))
               (_g217206217280_
                (lambda (_g217208217227_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217208217227_))
                      (let ((_e217213217229_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217208217227_))))
                        (let ((_hd217212217232_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217213217229_)))
                              (_tl217211217234_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217213217229_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217211217234_))
                              (let ((_e217216217237_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217211217234_))))
                                (let ((_hd217215217240_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217216217237_)))
                                      (_tl217214217242_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217216217237_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl217214217242_))
                                      (let ((_e217219217245_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl217214217242_))))
                                        (let ((_hd217218217248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e217219217245_)))
                                              (_tl217217217250_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e217219217245_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl217217217250_))
                                              ((lambda (_L217253_ _L217254_)
                                                 (let* ((_expr217278_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args217205_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L217253_))
                     (let ((_arg1217269_ (car _args217205_))
                           (_rest217271_ (cdr _args217205_)))
                       (if (let () (declare (not safe)) (null? _rest217271_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L217253_ _arg1217269_))
                           (let ((_arg2217274_ (car _rest217271_))
                                 (_rest217276_ (cdr _rest217271_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest217276_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L217253_
                                    _arg1217269_
                                    _arg2217274_))
                                 (apply gxc#compile-e
                                        _L217253_
                                        _arg1217269_
                                        _arg2217274_
                                        _rest217276_)))))))
                (__tmp222112
                 (let ((__tmp222113
                        (let ((__tmp222114
                               (let ()
                                 (declare (not safe))
                                 (cons _expr217278_ '()))))
                          (declare (not safe))
                          (cons _L217254_ __tmp222114))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp222113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp222112
                                                    _stx217204_)))
                                               _hd217218217248_
                                               _hd217215217240_)
                                              (let ()
                                                (declare (not safe))
                                                (_g217207217224_
                                                 _g217208217227_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g217207217224_ _g217208217227_)))))
                              (let ()
                                (declare (not safe))
                                (_g217207217224_ _g217208217227_)))))
                      (let ()
                        (declare (not safe))
                        (_g217207217224_ _g217208217227_))))))
          (declare (not safe))
          (_g217206217280_ _stx217204_))))
    (define gxc#xform-lambda%
      (lambda (_stx217147_ . _args217148_)
        (let* ((_g217150217164_
                (lambda (_g217151217161_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g217151217161_))))
               (_g217149217201_
                (lambda (_g217151217167_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g217151217167_))
                      (let ((_e217156217169_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g217151217167_))))
                        (let ((_hd217155217172_
                               (let ()
                                 (declare (not safe))
                                 (##car _e217156217169_)))
                              (_tl217154217174_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e217156217169_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl217154217174_))
                              (let ((_e217159217177_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl217154217174_))))
                                (let ((_hd217158217180_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e217159217177_)))
                                      (_tl217157217182_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e217159217177_))))
                                  ((lambda (_L217185_ _L217186_)
                                     (let* ((_body217199_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args217148_))
                                                  _L217185_))
                                            (__tmp222115
                                             (let ((__tmp222116
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L217186_
                                                            _body217199_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp222116))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp222115
                                        _stx217147_)))
                                   _tl217157217182_
                                   _hd217158217180_)))
                              (let ()
                                (declare (not safe))
                                (_g217150217164_ _g217151217167_)))))
                      (let ()
                        (declare (not safe))
                        (_g217150217164_ _g217151217167_))))))
          (declare (not safe))
          (_g217149217201_ _stx217147_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx217060_ . _args217061_)
        (letrec ((_clause-e217063_
                  (lambda (_clause217104_)
                    (let* ((_g217106217117_
                            (lambda (_g217107217114_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g217107217114_))))
                           (_g217105217144_
                            (lambda (_g217107217120_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g217107217120_))
                                  (let ((_e217112217122_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g217107217120_))))
                                    (let ((_hd217111217125_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e217112217122_)))
                                          (_tl217110217127_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e217112217122_))))
                                      ((lambda (_L217130_ _L217131_)
                                         (let ((_body217142_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args217061_))
                                                     _L217130_)))
                                           (declare (not safe))
                                           (cons _L217131_ _body217142_)))
                                       _tl217110217127_
                                       _hd217111217125_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g217106217117_ _g217107217120_))))))
                      (declare (not safe))
                      (_g217105217144_ _clause217104_)))))
          (let* ((_g217065217075_
                  (lambda (_g217066217072_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g217066217072_))))
                 (_g217064217101_
                  (lambda (_g217066217078_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g217066217078_))
                        (let ((_e217070217080_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g217066217078_))))
                          (let ((_hd217069217083_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e217070217080_)))
                                (_tl217068217085_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e217070217080_))))
                            ((lambda (_L217088_)
                               (let* ((_clauses217099_
                                       (map _clause-e217063_ _L217088_))
                                      (__tmp222117
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses217099_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp222117
                                  _stx217060_)))
                             _tl217068217085_)))
                        (let ()
                          (declare (not safe))
                          (_g217065217075_ _g217066217078_))))))
            (declare (not safe))
            (_g217064217101_ _stx217060_)))))
    (define gxc#xform-let-values%
      (lambda (_stx216854_ . _args216855_)
        (let* ((_g216857216890_
                (lambda (_g216858216887_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216858216887_))))
               (_g216856217057_
                (lambda (_g216858216893_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216858216893_))
                      (let ((_e216865216895_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216858216893_))))
                        (let ((_hd216864216898_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216865216895_)))
                              (_tl216863216900_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216865216895_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216863216900_))
                              (let ((_e216868216903_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216863216900_))))
                                (let ((_hd216867216906_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216868216903_)))
                                      (_tl216866216908_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216868216903_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd216867216906_))
                                      (let ((_g222118_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd216867216906_
                                                '0))))
                                        (begin
                                          (let ((_g222119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g222118_)
                                                       (##vector-length
                                                        _g222118_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g222119_ 2)))
                                                (error "Context expects 2 values"
                                                       _g222119_)))
                                          (let ((_target216869216911_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g222118_ 0)))
                                                (_tl216871216913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g222118_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl216871216913_))
                                                (letrec ((_loop216872216916_
                                                          (lambda (_hd216870216919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr216876216921_
                           _hd216877216923_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd216870216919_))
                        (let ((_e216873216926_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd216870216919_))))
                          (let ((_lp-hd216874216929_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e216873216926_)))
                                (_lp-tl216875216931_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e216873216926_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd216874216929_))
                                (let ((_e216882216934_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd216874216929_))))
                                  (let ((_hd216881216937_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e216882216934_)))
                                        (_tl216880216939_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e216882216934_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl216880216939_))
                                        (let ((_e216885216942_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl216880216939_))))
                                          (let ((_hd216884216945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e216885216942_)))
                                                (_tl216883216947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e216885216942_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl216883216947_))
                                                (let ((__tmp222132
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd216884216945_
                                                               _expr216876216921_)))
                                                      (__tmp222131
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd216881216937_
                                                               _hd216877216923_))))
                                                  (declare (not safe))
                                                  (_loop216872216916_
                                                   _lp-tl216875216931_
                                                   __tmp222132
                                                   __tmp222131))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g216857216890_
                                                   _g216858216893_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g216857216890_ _g216858216893_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g216857216890_ _g216858216893_)))))
                        (let ((_expr216878216950_ (reverse _expr216876216921_))
                              (_hd216879216952_ (reverse _hd216877216923_)))
                          ((lambda (_L216955_ _L216956_ _L216957_ _L216958_)
                             (let* ((_g216977216993_
                                     (lambda (_g216978216990_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g216978216990_))))
                                    (_g216976217047_
                                     (lambda (_g216978216996_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g216978216996_))
                                           (let ((_g222120_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g216978216996_
                                                     '0))))
                                             (begin
                                               (let ((_g222121_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g222120_)
                                                            (##vector-length
                                                             _g222120_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g222121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g222121_)))
                                               (let ((_target216980216998_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g222120_
                                                         0)))
                                                     (_tl216982217000_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g222120_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl216982217000_))
                                                     (letrec ((_loop216983217003_
                                                               (lambda (_hd216981217006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr216987217008_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd216981217006_))
                             (let ((_e216984217011_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd216981217006_))))
                               (let ((_lp-hd216985217014_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e216984217011_)))
                                     (_lp-tl216986217016_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e216984217011_))))
                                 (let ((__tmp222128
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd216985217014_
                                                _expr216987217008_))))
                                   (declare (not safe))
                                   (_loop216983217003_
                                    _lp-tl216986217016_
                                    __tmp222128))))
                             (let ((_expr216988217019_
                                    (reverse _expr216987217008_)))
                               ((lambda (_L217022_)
                                  (let ()
                                    (let* ((_body217035_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args216855_))
                                                 _L216955_))
                                           (__tmp222122
                                            (let ((__tmp222123
                                                   (let ((__tmp222124
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L217022_
                                                               _L216957_))
                                                            (let ((__tmp222125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g217036217040_
                                    _g217037217042_
                                    _g217038217044_)
                             (let ((__tmp222126
                                    (let ((__tmp222127
                                           (let ()
                                             (declare (not safe))
                                             (cons _g217036217040_ '()))))
                                      (declare (not safe))
                                      (cons _g217037217042_ __tmp222127))))
                               (declare (not safe))
                               (cons __tmp222126 _g217038217044_)))))
                      (declare (not safe))
                      (foldr2 __tmp222125 '() _L217022_ _L216957_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp222124
                                                           _body217035_))))
                                              (declare (not safe))
                                              (cons _L216958_ __tmp222123))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp222122
                                       _stx216854_))))
                                _expr216988217019_))))))
               (let ()
                 (declare (not safe))
                 (_loop216983217003_ _target216980216998_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g216977216993_
                                                        _g216978216996_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g216977216993_
                                              _g216978216996_)))))
                                    (__tmp222129
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args216855_))
                                          (let ((__tmp222130
                                                 (lambda (_g217049217052_
                                                          _g217050217054_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g217049217052_
                                                           _g217050217054_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp222130
                                                    '()
                                                    _L216956_)))))
                               (declare (not safe))
                               (_g216976217047_ __tmp222129)))
                           _tl216866216908_
                           _expr216878216950_
                           _hd216879216952_
                           _hd216864216898_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop216872216916_
                                                     _target216869216911_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g216857216890_
                                                   _g216858216893_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g216857216890_ _g216858216893_)))))
                              (let ()
                                (declare (not safe))
                                (_g216857216890_ _g216858216893_)))))
                      (let ()
                        (declare (not safe))
                        (_g216857216890_ _g216858216893_))))))
          (declare (not safe))
          (_g216856217057_ _stx216854_))))
    (define gxc#xform-operands
      (lambda (_stx216810_ . _args216811_)
        (let* ((_g216813216824_
                (lambda (_g216814216821_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216814216821_))))
               (_g216812216851_
                (lambda (_g216814216827_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216814216827_))
                      (let ((_e216819216829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216814216827_))))
                        (let ((_hd216818216832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216819216829_)))
                              (_tl216817216834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216819216829_))))
                          ((lambda (_L216837_ _L216838_)
                             (let* ((_rands216849_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args216811_))
                                          _L216837_))
                                    (__tmp222133
                                     (let ()
                                       (declare (not safe))
                                       (cons _L216838_ _rands216849_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp222133
                                _stx216810_)))
                           _tl216817216834_
                           _hd216818216832_)))
                      (let ()
                        (declare (not safe))
                        (_g216813216824_ _g216814216827_))))))
          (declare (not safe))
          (_g216812216851_ _stx216810_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx216731_ . _args216732_)
        (let* ((_g216734216751_
                (lambda (_g216735216748_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216735216748_))))
               (_g216733216807_
                (lambda (_g216735216754_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216735216754_))
                      (let ((_e216740216756_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216735216754_))))
                        (let ((_hd216739216759_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216740216756_)))
                              (_tl216738216761_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216740216756_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216738216761_))
                              (let ((_e216743216764_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216738216761_))))
                                (let ((_hd216742216767_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216743216764_)))
                                      (_tl216741216769_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216743216764_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl216741216769_))
                                      (let ((_e216746216772_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl216741216769_))))
                                        (let ((_hd216745216775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e216746216772_)))
                                              (_tl216744216777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e216746216772_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216744216777_))
                                              ((lambda (_L216780_ _L216781_)
                                                 (let* ((_expr216805_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args216732_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L216780_))
                     (let ((_arg1216796_ (car _args216732_))
                           (_rest216798_ (cdr _args216732_)))
                       (if (let () (declare (not safe)) (null? _rest216798_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L216780_ _arg1216796_))
                           (let ((_arg2216801_ (car _rest216798_))
                                 (_rest216803_ (cdr _rest216798_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest216803_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L216780_
                                    _arg1216796_
                                    _arg2216801_))
                                 (apply gxc#compile-e
                                        _L216780_
                                        _arg1216796_
                                        _arg2216801_
                                        _rest216803_)))))))
                (__tmp222134
                 (let ((__tmp222135
                        (let ((__tmp222136
                               (let ()
                                 (declare (not safe))
                                 (cons _expr216805_ '()))))
                          (declare (not safe))
                          (cons _L216781_ __tmp222136))))
                   (declare (not safe))
                   (cons '%#set! __tmp222135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp222134
                                                    _stx216731_)))
                                               _hd216745216775_
                                               _hd216742216767_)
                                              (let ()
                                                (declare (not safe))
                                                (_g216734216751_
                                                 _g216735216754_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g216734216751_ _g216735216754_)))))
                              (let ()
                                (declare (not safe))
                                (_g216734216751_ _g216735216754_)))))
                      (let ()
                        (declare (not safe))
                        (_g216734216751_ _g216735216754_))))))
          (declare (not safe))
          (_g216733216807_ _stx216731_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx216662_)
        (let* ((_g216664216681_
                (lambda (_g216665216678_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216665216678_))))
               (_g216663216728_
                (lambda (_g216665216684_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216665216684_))
                      (let ((_e216670216686_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216665216684_))))
                        (let ((_hd216669216689_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216670216686_)))
                              (_tl216668216691_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216670216686_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216668216691_))
                              (let ((_e216673216694_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216668216691_))))
                                (let ((_hd216672216697_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216673216694_)))
                                      (_tl216671216699_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216673216694_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl216671216699_))
                                      (let ((_e216676216702_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl216671216699_))))
                                        (let ((_hd216675216705_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e216676216702_)))
                                              (_tl216674216707_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e216676216702_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216674216707_))
                                              ((lambda (_L216710_ _L216711_)
                                                 (let ((_sym216726_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L216711_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym216726_))
                                                   (let ((__tmp222137
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp222137
                                                      _sym216726_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L216710_))))
                                               _hd216675216705_
                                               _hd216672216697_)
                                              (let ()
                                                (declare (not safe))
                                                (_g216664216681_
                                                 _g216665216684_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g216664216681_ _g216665216684_)))))
                              (let ()
                                (declare (not safe))
                                (_g216664216681_ _g216665216684_)))))
                      (let ()
                        (declare (not safe))
                        (_g216664216681_ _g216665216684_))))))
          (declare (not safe))
          (_g216663216728_ _stx216662_))))
    (define gxc#collect-methods-call%
      (lambda (_stx216216_)
        (let* ((___stx221827221828_ _stx216216_)
               (_g216220216322_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx221827221828_)))))
          (let ((___kont221829221830_
                 (lambda (_L216612_ _L216613_ _L216614_ _L216615_ _L216616_)
                   (let ((__tmp222138
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L216613_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp222138))))
                (___kont221831221832_
                 (lambda (_L216438_ _L216439_ _L216440_ _L216441_)
                   (let ((__tmp222139
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L216438_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp222139))))
                (___kont221833221834_ (lambda () '#!void)))
            (let ((___match221962221963_
                   (lambda (_e216229216484_
                            _hd216228216487_
                            _tl216227216489_
                            _e216232216492_
                            _hd216231216495_
                            _tl216230216497_
                            _e216235216500_
                            _hd216234216503_
                            _tl216233216505_
                            _e216238216508_
                            _hd216237216511_
                            _tl216236216513_
                            _e216241216516_
                            _hd216240216519_
                            _tl216239216521_
                            _e216244216524_
                            _hd216243216527_
                            _tl216242216529_
                            _e216247216532_
                            _hd216246216535_
                            _tl216245216537_
                            _e216250216540_
                            _hd216249216543_
                            _tl216248216545_
                            _e216253216548_
                            _hd216252216551_
                            _tl216251216553_
                            _e216256216556_
                            _hd216255216559_
                            _tl216254216561_
                            _e216259216564_
                            _hd216258216567_
                            _tl216257216569_
                            _e216262216572_
                            _hd216261216575_
                            _tl216260216577_
                            _e216265216580_
                            _hd216264216583_
                            _tl216263216585_
                            _e216268216588_
                            _hd216267216591_
                            _tl216266216593_
                            _e216271216596_
                            _hd216270216599_
                            _tl216269216601_
                            _e216274216604_
                            _hd216273216607_
                            _tl216272216609_)
                     (let ((_L216612_ _hd216273216607_)
                           (_L216613_ _hd216264216583_)
                           (_L216614_ _hd216255216559_)
                           (_L216615_ _hd216246216535_)
                           (_L216616_ _hd216237216511_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L216616_
                              'bind-method!))
                           (___kont221829221830_
                            _L216612_
                            _L216613_
                            _L216614_
                            _L216615_
                            _L216616_)
                           (___kont221833221834_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx221827221828_))
                  (let ((_e216229216484_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx221827221828_))))
                    (let ((_tl216227216489_
                           (let ()
                             (declare (not safe))
                             (##cdr _e216229216484_)))
                          (_hd216228216487_
                           (let ()
                             (declare (not safe))
                             (##car _e216229216484_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl216227216489_))
                          (let ((_e216232216492_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl216227216489_))))
                            (let ((_tl216230216497_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e216232216492_)))
                                  (_hd216231216495_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e216232216492_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd216231216495_))
                                  (let ((_e216235216500_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd216231216495_))))
                                    (let ((_tl216233216505_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e216235216500_)))
                                          (_hd216234216503_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e216235216500_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd216234216503_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd216234216503_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl216233216505_))
                                                  (let ((_e216238216508_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl216233216505_))))
                                                    (let ((_tl216236216513_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e216238216508_)))
                                                          (_hd216237216511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e216238216508_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl216236216513_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl216230216497_))
                      (let ((_e216241216516_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl216230216497_))))
                        (let ((_tl216239216521_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216241216516_)))
                              (_hd216240216519_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216241216516_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd216240216519_))
                              (let ((_e216244216524_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd216240216519_))))
                                (let ((_tl216242216529_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216244216524_)))
                                      (_hd216243216527_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216244216524_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd216243216527_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd216243216527_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl216242216529_))
                                              (let ((_e216247216532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl216242216529_))))
                                                (let ((_tl216245216537_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e216247216532_)))
                                                      (_hd216246216535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e216247216532_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl216245216537_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl216239216521_))
                                                          (let ((_e216250216540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl216239216521_))))
                    (let ((_tl216248216545_
                           (let ()
                             (declare (not safe))
                             (##cdr _e216250216540_)))
                          (_hd216249216543_
                           (let ()
                             (declare (not safe))
                             (##car _e216250216540_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd216249216543_))
                          (let ((_e216253216548_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd216249216543_))))
                            (let ((_tl216251216553_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e216253216548_)))
                                  (_hd216252216551_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e216253216548_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd216252216551_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd216252216551_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl216251216553_))
                                          (let ((_e216256216556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl216251216553_))))
                                            (let ((_tl216254216561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e216256216556_)))
                                                  (_hd216255216559_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e216256216556_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl216254216561_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl216248216545_))
                                                      (let ((_e216259216564_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl216248216545_))))
                (let ((_tl216257216569_
                       (let () (declare (not safe)) (##cdr _e216259216564_)))
                      (_hd216258216567_
                       (let () (declare (not safe)) (##car _e216259216564_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd216258216567_))
                      (let ((_e216262216572_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd216258216567_))))
                        (let ((_tl216260216577_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216262216572_)))
                              (_hd216261216575_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216262216572_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd216261216575_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd216261216575_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl216260216577_))
                                      (let ((_e216265216580_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl216260216577_))))
                                        (let ((_tl216263216585_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e216265216580_)))
                                              (_hd216264216583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e216265216580_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216263216585_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl216257216569_))
                                                  (let ((_e216268216588_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl216257216569_))))
                                                    (let ((_tl216266216593_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e216268216588_)))
                                                          (_hd216267216591_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e216268216588_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd216267216591_))
                                                          (let ((_e216271216596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd216267216591_))))
                    (let ((_tl216269216601_
                           (let ()
                             (declare (not safe))
                             (##cdr _e216271216596_)))
                          (_hd216270216599_
                           (let ()
                             (declare (not safe))
                             (##car _e216271216596_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd216270216599_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd216270216599_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl216269216601_))
                                  (let ((_e216274216604_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl216269216601_))))
                                    (let ((_tl216272216609_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e216274216604_)))
                                          (_hd216273216607_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e216274216604_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl216272216609_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216266216593_))
                                              (___match221962221963_
                                               _e216229216484_
                                               _hd216228216487_
                                               _tl216227216489_
                                               _e216232216492_
                                               _hd216231216495_
                                               _tl216230216497_
                                               _e216235216500_
                                               _hd216234216503_
                                               _tl216233216505_
                                               _e216238216508_
                                               _hd216237216511_
                                               _tl216236216513_
                                               _e216241216516_
                                               _hd216240216519_
                                               _tl216239216521_
                                               _e216244216524_
                                               _hd216243216527_
                                               _tl216242216529_
                                               _e216247216532_
                                               _hd216246216535_
                                               _tl216245216537_
                                               _e216250216540_
                                               _hd216249216543_
                                               _tl216248216545_
                                               _e216253216548_
                                               _hd216252216551_
                                               _tl216251216553_
                                               _e216256216556_
                                               _hd216255216559_
                                               _tl216254216561_
                                               _e216259216564_
                                               _hd216258216567_
                                               _tl216257216569_
                                               _e216262216572_
                                               _hd216261216575_
                                               _tl216260216577_
                                               _e216265216580_
                                               _hd216264216583_
                                               _tl216263216585_
                                               _e216268216588_
                                               _hd216267216591_
                                               _tl216266216593_
                                               _e216271216596_
                                               _hd216270216599_
                                               _tl216269216601_
                                               _e216274216604_
                                               _hd216273216607_
                                               _tl216272216609_)
                                              (___kont221833221834_))
                                          (___kont221833221834_))))
                                  (___kont221833221834_))
                              (___kont221833221834_))
                          (___kont221833221834_))))
                  (___kont221833221834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl216257216569_))
                                                      (if (let ((__tmp222140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp222140 'bind-method!))
                  (let ((_L216438_ _hd216264216583_)
                        (_L216439_ _hd216255216559_)
                        (_L216440_ _hd216246216535_)
                        (_L216441_ _hd216237216511_))
                    (___kont221831221832_
                     _L216438_
                     _L216439_
                     _L216440_
                     _L216441_))
                  (___kont221833221834_))
              (___kont221833221834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont221833221834_))))
                                      (___kont221833221834_))
                                  (___kont221833221834_))
                              (___kont221833221834_))))
                      (___kont221833221834_))))
              (___kont221833221834_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont221833221834_))))
                                          (___kont221833221834_))
                                      (___kont221833221834_))
                                  (___kont221833221834_))))
                          (___kont221833221834_))))
                  (___kont221833221834_))
              (___kont221833221834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont221833221834_))
                                          (___kont221833221834_))
                                      (___kont221833221834_))))
                              (___kont221833221834_))))
                      (___kont221833221834_))
                  (___kont221833221834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont221833221834_))
                                              (___kont221833221834_))
                                          (___kont221833221834_))))
                                  (___kont221833221834_))))
                          (___kont221833221834_))))
                  (___kont221833221834_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx216163_ _id216164_ _new-id216165_)
        (let* ((_g216167216180_
                (lambda (_g216168216177_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216168216177_))))
               (_g216166216213_
                (lambda (_g216168216183_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216168216183_))
                      (let ((_e216172216185_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216168216183_))))
                        (let ((_hd216171216188_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216172216185_)))
                              (_tl216170216190_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216172216185_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216170216190_))
                              (let ((_e216175216193_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216170216190_))))
                                (let ((_hd216174216196_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216175216193_)))
                                      (_tl216173216198_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216175216193_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl216173216198_))
                                      ((lambda (_L216201_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L216201_
                                                _id216164_))
                                             (let ((__tmp222141
                                                    (let ((__tmp222142
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id216165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp222142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp222141
                                                _stx216163_))
                                             _stx216163_))
                                       _hd216174216196_)
                                      (let ()
                                        (declare (not safe))
                                        (_g216167216180_ _g216168216183_)))))
                              (let ()
                                (declare (not safe))
                                (_g216167216180_ _g216168216183_)))))
                      (let ()
                        (declare (not safe))
                        (_g216167216180_ _g216168216183_))))))
          (declare (not safe))
          (_g216166216213_ _stx216163_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx216104_ _subst216105_)
        (let* ((_g216107216120_
                (lambda (_g216108216117_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216108216117_))))
               (_g216106216160_
                (lambda (_g216108216123_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216108216123_))
                      (let ((_e216112216125_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216108216123_))))
                        (let ((_hd216111216128_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216112216125_)))
                              (_tl216110216130_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216112216125_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216110216130_))
                              (let ((_e216115216133_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216110216130_))))
                                (let ((_hd216114216136_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216115216133_)))
                                      (_tl216113216138_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216115216133_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl216113216138_))
                                      ((lambda (_L216141_)
                                         (let ((_$e216155_
                                                (let ((__tmp222143
                                                       (lambda (_sub216153_)
                                                         (let ((__tmp222144
                                                                (car _sub216153_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L216141_
                                                            __tmp222144)))))
                                                  (declare (not safe))
                                                  (find __tmp222143
                                                        _subst216105_))))
                                           (if _$e216155_
                                               ((lambda (_sub216158_)
                                                  (let ((__tmp222145
                                                         (let ((__tmp222146
                                                                (let ((__tmp222147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub216158_)))
                          (declare (not safe))
                          (cons __tmp222147 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp222146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp222145
                                                     _stx216104_)))
                                                _$e216155_)
                                               _stx216104_)))
                                       _hd216114216136_)
                                      (let ()
                                        (declare (not safe))
                                        (_g216107216120_ _g216108216123_)))))
                              (let ()
                                (declare (not safe))
                                (_g216107216120_ _g216108216123_)))))
                      (let ()
                        (declare (not safe))
                        (_g216107216120_ _g216108216123_))))))
          (declare (not safe))
          (_g216106216160_ _stx216104_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx216032_ _id216033_ _new-id216034_)
        (let* ((_g216036216053_
                (lambda (_g216037216050_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g216037216050_))))
               (_g216035216101_
                (lambda (_g216037216056_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g216037216056_))
                      (let ((_e216042216058_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g216037216056_))))
                        (let ((_hd216041216061_
                               (let ()
                                 (declare (not safe))
                                 (##car _e216042216058_)))
                              (_tl216040216063_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e216042216058_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl216040216063_))
                              (let ((_e216045216066_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl216040216063_))))
                                (let ((_hd216044216069_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e216045216066_)))
                                      (_tl216043216071_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e216045216066_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl216043216071_))
                                      (let ((_e216048216074_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl216043216071_))))
                                        (let ((_hd216047216077_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e216048216074_)))
                                              (_tl216046216079_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e216048216074_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl216046216079_))
                                              ((lambda (_L216082_ _L216083_)
                                                 (let ((_new-expr216098_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L216082_
                                                           _id216033_
                                                           _new-id216034_)))
                                                       (_new-xid216099_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L216083_
                                                               _id216033_))
                                                            _new-id216034_
                                                            _L216083_)))
                                                   (let ((__tmp222148
                                                          (let ((__tmp222149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp222150
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr216098_ '()))))
                           (declare (not safe))
                           (cons _new-xid216099_ __tmp222150))))
                    (declare (not safe))
                    (cons '%#set! __tmp222149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp222148
                                                      _stx216032_))))
                                               _hd216047216077_
                                               _hd216044216069_)
                                              (let ()
                                                (declare (not safe))
                                                (_g216036216053_
                                                 _g216037216056_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g216036216053_ _g216037216056_)))))
                              (let ()
                                (declare (not safe))
                                (_g216036216053_ _g216037216056_)))))
                      (let ()
                        (declare (not safe))
                        (_g216036216053_ _g216037216056_))))))
          (declare (not safe))
          (_g216035216101_ _stx216032_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx215956_ _subst215957_)
        (let* ((_g215959215976_
                (lambda (_g215960215973_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215960215973_))))
               (_g215958216029_
                (lambda (_g215960215979_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215960215979_))
                      (let ((_e215965215981_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215960215979_))))
                        (let ((_hd215964215984_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215965215981_)))
                              (_tl215963215986_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215965215981_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215963215986_))
                              (let ((_e215968215989_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215963215986_))))
                                (let ((_hd215967215992_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215968215989_)))
                                      (_tl215966215994_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215968215989_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215966215994_))
                                      (let ((_e215971215997_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215966215994_))))
                                        (let ((_hd215970216000_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215971215997_)))
                                              (_tl215969216002_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215971215997_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215969216002_))
                                              ((lambda (_L216005_ _L216006_)
                                                 (let ((_new-expr216026_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L216005_
                                                           _subst215957_)))
                                                       (_new-xid216027_
                                                        (let ((_$e216023_
                                                               (let ((__tmp222151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub216021_)
                                (let ((__tmp222152 (car _sub216021_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L216006_
                                   __tmp222152)))))
                         (declare (not safe))
                         (find __tmp222151 _subst215957_))))
                  (if _$e216023_ (cdr _$e216023_) _L216006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp222153
                                                          (let ((__tmp222154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp222155
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr216026_ '()))))
                           (declare (not safe))
                           (cons _new-xid216027_ __tmp222155))))
                    (declare (not safe))
                    (cons '%#set! __tmp222154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp222153
                                                      _stx215956_))))
                                               _hd215970216000_
                                               _hd215967215992_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215959215976_
                                                 _g215960215979_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215959215976_ _g215960215979_)))))
                              (let ()
                                (declare (not safe))
                                (_g215959215976_ _g215960215979_)))))
                      (let ()
                        (declare (not safe))
                        (_g215959215976_ _g215960215979_))))))
          (declare (not safe))
          (_g215958216029_ _stx215956_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx215902_ _ht215903_)
        (let* ((_g215905215918_
                (lambda (_g215906215915_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215906215915_))))
               (_g215904215953_
                (lambda (_g215906215921_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215906215921_))
                      (let ((_e215910215923_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215906215921_))))
                        (let ((_hd215909215926_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215910215923_)))
                              (_tl215908215928_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215910215923_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215908215928_))
                              (let ((_e215913215931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215908215928_))))
                                (let ((_hd215912215934_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215913215931_)))
                                      (_tl215911215936_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215913215931_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl215911215936_))
                                      ((lambda (_L215939_)
                                         (let ((_eid215951_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L215939_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht215903_
                                            _eid215951_
                                            1+
                                            '0)))
                                       _hd215912215934_)
                                      (let ()
                                        (declare (not safe))
                                        (_g215905215918_ _g215906215921_)))))
                              (let ()
                                (declare (not safe))
                                (_g215905215918_ _g215906215921_)))))
                      (let ()
                        (declare (not safe))
                        (_g215905215918_ _g215906215921_))))))
          (declare (not safe))
          (_g215904215953_ _stx215902_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx215832_ _ht215833_)
        (let* ((_g215835215852_
                (lambda (_g215836215849_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215836215849_))))
               (_g215834215899_
                (lambda (_g215836215855_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215836215855_))
                      (let ((_e215841215857_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215836215855_))))
                        (let ((_hd215840215860_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215841215857_)))
                              (_tl215839215862_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215841215857_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215839215862_))
                              (let ((_e215844215865_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215839215862_))))
                                (let ((_hd215843215868_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215844215865_)))
                                      (_tl215842215870_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215844215865_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215842215870_))
                                      (let ((_e215847215873_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215842215870_))))
                                        (let ((_hd215846215876_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215847215873_)))
                                              (_tl215845215878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215847215873_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215845215878_))
                                              ((lambda (_L215881_ _L215882_)
                                                 (let ((_eid215897_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L215882_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht215833_
                                                      _eid215897_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L215881_
                                                      _ht215833_))))
                                               _hd215846215876_
                                               _hd215843215868_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215835215852_
                                                 _g215836215855_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215835215852_ _g215836215855_)))))
                              (let ()
                                (declare (not safe))
                                (_g215835215852_ _g215836215855_)))))
                      (let ()
                        (declare (not safe))
                        (_g215835215852_ _g215836215855_))))))
          (declare (not safe))
          (_g215834215899_ _stx215832_))))
    (define gxc#find-body%
      (lambda (_stx215745_ _arg215746_)
        (let* ((_g215748215767_
                (lambda (_g215749215764_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215749215764_))))
               (_g215747215829_
                (lambda (_g215749215770_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215749215770_))
                      (let ((_e215753215772_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215749215770_))))
                        (let ((_hd215752215775_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215753215772_)))
                              (_tl215751215777_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215753215772_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl215751215777_))
                              (let ((_g222156_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl215751215777_
                                        '0))))
                                (begin
                                  (let ((_g222157_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g222156_)
                                               (##vector-length _g222156_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g222157_ 2)))
                                        (error "Context expects 2 values"
                                               _g222157_)))
                                  (let ((_target215754215780_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g222156_ 0)))
                                        (_tl215756215782_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g222156_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl215756215782_))
                                        (letrec ((_loop215757215785_
                                                  (lambda (_hd215755215788_
                                                           _expr215761215790_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd215755215788_))
                                                        (let ((_e215758215793_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd215755215788_))))
                  (let ((_lp-hd215759215796_
                         (let () (declare (not safe)) (##car _e215758215793_)))
                        (_lp-tl215760215798_
                         (let ()
                           (declare (not safe))
                           (##cdr _e215758215793_))))
                    (let ((__tmp222161
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd215759215796_ _expr215761215790_))))
                      (declare (not safe))
                      (_loop215757215785_ _lp-tl215760215798_ __tmp222161))))
                (let ((_expr215762215801_ (reverse _expr215761215790_)))
                  ((lambda (_L215804_)
                     (let ((__tmp222160
                            (lambda (_g215817215819_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g215817215819_
                                 _arg215746_))))
                           (__tmp222158
                            (let ((__tmp222159
                                   (lambda (_g215821215824_ _g215822215826_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g215821215824_
                                             _g215822215826_)))))
                              (declare (not safe))
                              (foldr1 __tmp222159 '() _L215804_))))
                       (declare (not safe))
                       (ormap1 __tmp222160 __tmp222158)))
                   _expr215762215801_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop215757215785_
                                             _target215754215780_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g215748215767_
                                           _g215749215770_))))))
                              (let ()
                                (declare (not safe))
                                (_g215748215767_ _g215749215770_)))))
                      (let ()
                        (declare (not safe))
                        (_g215748215767_ _g215749215770_))))))
          (declare (not safe))
          (_g215747215829_ _stx215745_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx215677_ _arg215678_)
        (let* ((_g215680215697_
                (lambda (_g215681215694_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215681215694_))))
               (_g215679215742_
                (lambda (_g215681215700_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215681215700_))
                      (let ((_e215686215702_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215681215700_))))
                        (let ((_hd215685215705_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215686215702_)))
                              (_tl215684215707_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215686215702_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215684215707_))
                              (let ((_e215689215710_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215684215707_))))
                                (let ((_hd215688215713_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215689215710_)))
                                      (_tl215687215715_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215689215710_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215687215715_))
                                      (let ((_e215692215718_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215687215715_))))
                                        (let ((_hd215691215721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215692215718_)))
                                              (_tl215690215723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215692215718_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215690215723_))
                                              ((lambda (_L215726_ _L215727_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L215726_
                                                    _arg215678_)))
                                               _hd215691215721_
                                               _hd215688215713_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215680215697_
                                                 _g215681215700_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215680215697_ _g215681215700_)))))
                              (let ()
                                (declare (not safe))
                                (_g215680215697_ _g215681215700_)))))
                      (let ()
                        (declare (not safe))
                        (_g215680215697_ _g215681215700_))))))
          (declare (not safe))
          (_g215679215742_ _stx215677_))))
    (define gxc#find-lambda%
      (lambda (_stx215609_ _arg215610_)
        (let* ((_g215612215629_
                (lambda (_g215613215626_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215613215626_))))
               (_g215611215674_
                (lambda (_g215613215632_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215613215632_))
                      (let ((_e215618215634_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215613215632_))))
                        (let ((_hd215617215637_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215618215634_)))
                              (_tl215616215639_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215618215634_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215616215639_))
                              (let ((_e215621215642_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215616215639_))))
                                (let ((_hd215620215645_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215621215642_)))
                                      (_tl215619215647_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215621215642_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215619215647_))
                                      (let ((_e215624215650_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215619215647_))))
                                        (let ((_hd215623215653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215624215650_)))
                                              (_tl215622215655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215624215650_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215622215655_))
                                              ((lambda (_L215658_ _L215659_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L215658_
                                                    _arg215610_)))
                                               _hd215623215653_
                                               _hd215620215645_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215612215629_
                                                 _g215613215632_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215612215629_ _g215613215632_)))))
                              (let ()
                                (declare (not safe))
                                (_g215612215629_ _g215613215632_)))))
                      (let ()
                        (declare (not safe))
                        (_g215612215629_ _g215613215632_))))))
          (declare (not safe))
          (_g215611215674_ _stx215609_))))
    (define gxc#find-case-lambda%
      (lambda (_stx215491_ _arg215492_)
        (let* ((_g215494215522_
                (lambda (_g215495215519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215495215519_))))
               (_g215493215606_
                (lambda (_g215495215525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215495215525_))
                      (let ((_e215500215527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215495215525_))))
                        (let ((_hd215499215530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215500215527_)))
                              (_tl215498215532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215500215527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl215498215532_))
                              (let ((_g222162_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl215498215532_
                                        '0))))
                                (begin
                                  (let ((_g222163_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g222162_)
                                               (##vector-length _g222162_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g222163_ 2)))
                                        (error "Context expects 2 values"
                                               _g222163_)))
                                  (let ((_target215501215535_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g222162_ 0)))
                                        (_tl215503215537_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g222162_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl215503215537_))
                                        (letrec ((_loop215504215540_
                                                  (lambda (_hd215502215543_
                                                           _body215508215545_
                                                           _hd215509215547_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd215502215543_))
                                                        (let ((_e215505215550_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd215502215543_))))
                  (let ((_lp-hd215506215553_
                         (let () (declare (not safe)) (##car _e215505215550_)))
                        (_lp-tl215507215555_
                         (let ()
                           (declare (not safe))
                           (##cdr _e215505215550_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd215506215553_))
                        (let ((_e215514215558_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd215506215553_))))
                          (let ((_hd215513215561_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e215514215558_)))
                                (_tl215512215563_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e215514215558_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl215512215563_))
                                (let ((_e215517215566_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl215512215563_))))
                                  (let ((_hd215516215569_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e215517215566_)))
                                        (_tl215515215571_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e215517215566_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl215515215571_))
                                        (let ((__tmp222168
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd215516215569_
                                                       _body215508215545_)))
                                              (__tmp222167
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd215513215561_
                                                       _hd215509215547_))))
                                          (declare (not safe))
                                          (_loop215504215540_
                                           _lp-tl215507215555_
                                           __tmp222168
                                           __tmp222167))
                                        (let ()
                                          (declare (not safe))
                                          (_g215494215522_ _g215495215525_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g215494215522_ _g215495215525_)))))
                        (let ()
                          (declare (not safe))
                          (_g215494215522_ _g215495215525_)))))
                (let ((_body215510215574_ (reverse _body215508215545_))
                      (_hd215511215576_ (reverse _hd215509215547_)))
                  ((lambda (_L215579_ _L215580_)
                     (let ((__tmp222166
                            (lambda (_g215594215596_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g215594215596_
                                 _arg215492_))))
                           (__tmp222164
                            (let ((__tmp222165
                                   (lambda (_g215598215601_ _g215599215603_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g215598215601_
                                             _g215599215603_)))))
                              (declare (not safe))
                              (foldr1 __tmp222165 '() _L215579_))))
                       (declare (not safe))
                       (ormap1 __tmp222166 __tmp222164)))
                   _body215510215574_
                   _hd215511215576_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop215504215540_
                                             _target215501215535_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g215494215522_
                                           _g215495215525_))))))
                              (let ()
                                (declare (not safe))
                                (_g215494215522_ _g215495215525_)))))
                      (let ()
                        (declare (not safe))
                        (_g215494215522_ _g215495215525_))))))
          (declare (not safe))
          (_g215493215606_ _stx215491_))))
    (define gxc#find-let-values%
      (lambda (_stx215341_ _arg215342_)
        (let* ((_g215344215379_
                (lambda (_g215345215376_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215345215376_))))
               (_g215343215488_
                (lambda (_g215345215382_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215345215382_))
                      (let ((_e215351215384_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215345215382_))))
                        (let ((_hd215350215387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215351215384_)))
                              (_tl215349215389_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215351215384_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215349215389_))
                              (let ((_e215354215392_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215349215389_))))
                                (let ((_hd215353215395_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215354215392_)))
                                      (_tl215352215397_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215354215392_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd215353215395_))
                                      (let ((_g222169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd215353215395_
                                                '0))))
                                        (begin
                                          (let ((_g222170_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g222169_)
                                                       (##vector-length
                                                        _g222169_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g222170_ 2)))
                                                (error "Context expects 2 values"
                                                       _g222170_)))
                                          (let ((_target215355215400_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g222169_ 0)))
                                                (_tl215357215402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g222169_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl215357215402_))
                                                (letrec ((_loop215358215405_
                                                          (lambda (_hd215356215408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr215362215410_
                           _bind215363215412_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd215356215408_))
                        (let ((_e215359215415_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd215356215408_))))
                          (let ((_lp-hd215360215418_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e215359215415_)))
                                (_lp-tl215361215420_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e215359215415_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd215360215418_))
                                (let ((_e215368215423_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd215360215418_))))
                                  (let ((_hd215367215426_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e215368215423_)))
                                        (_tl215366215428_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e215368215423_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl215366215428_))
                                        (let ((_e215371215431_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl215366215428_))))
                                          (let ((_hd215370215434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e215371215431_)))
                                                (_tl215369215436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e215371215431_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl215369215436_))
                                                (let ((__tmp222175
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd215370215434_
                                                               _expr215362215410_)))
                                                      (__tmp222174
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd215367215426_
                                                               _bind215363215412_))))
                                                  (declare (not safe))
                                                  (_loop215358215405_
                                                   _lp-tl215361215420_
                                                   __tmp222175
                                                   __tmp222174))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g215344215379_
                                                   _g215345215382_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g215344215379_ _g215345215382_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g215344215379_ _g215345215382_)))))
                        (let ((_expr215364215439_ (reverse _expr215362215410_))
                              (_bind215365215441_
                               (reverse _bind215363215412_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215352215397_))
                              (let ((_e215374215444_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215352215397_))))
                                (let ((_hd215373215447_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215374215444_)))
                                      (_tl215372215449_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215374215444_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl215372215449_))
                                      ((lambda (_L215452_ _L215453_ _L215454_)
                                         (let ((_$e215485_
                                                (let ((__tmp222173
                                                       (lambda (_g215473215475_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g215473215475_
                                                            _arg215342_))))
                                                      (__tmp222171
                                                       (let ((__tmp222172
                                                              (lambda (_g215477215480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g215478215482_)
                        (let ()
                          (declare (not safe))
                          (cons _g215477215480_ _g215478215482_)))))
                 (declare (not safe))
                 (foldr1 __tmp222172 '() _L215453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp222173
                                                          __tmp222171))))
                                           (if _$e215485_
                                               _$e215485_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L215452_
                                                  _arg215342_)))))
                                       _hd215373215447_
                                       _expr215364215439_
                                       _bind215365215441_)
                                      (let ()
                                        (declare (not safe))
                                        (_g215344215379_ _g215345215382_)))))
                              (let ()
                                (declare (not safe))
                                (_g215344215379_ _g215345215382_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop215358215405_
                                                     _target215355215400_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g215344215379_
                                                   _g215345215382_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215344215379_ _g215345215382_)))))
                              (let ()
                                (declare (not safe))
                                (_g215344215379_ _g215345215382_)))))
                      (let ()
                        (declare (not safe))
                        (_g215344215379_ _g215345215382_))))))
          (declare (not safe))
          (_g215343215488_ _stx215341_))))
    (define gxc#find-setq%
      (lambda (_stx215273_ _arg215274_)
        (let* ((_g215276215293_
                (lambda (_g215277215290_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215277215290_))))
               (_g215275215338_
                (lambda (_g215277215296_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215277215296_))
                      (let ((_e215282215298_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215277215296_))))
                        (let ((_hd215281215301_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215282215298_)))
                              (_tl215280215303_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215282215298_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215280215303_))
                              (let ((_e215285215306_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215280215303_))))
                                (let ((_hd215284215309_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215285215306_)))
                                      (_tl215283215311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215285215306_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215283215311_))
                                      (let ((_e215288215314_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215283215311_))))
                                        (let ((_hd215287215317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215288215314_)))
                                              (_tl215286215319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215288215314_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215286215319_))
                                              ((lambda (_L215322_ _L215323_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L215322_
                                                    _arg215274_)))
                                               _hd215287215317_
                                               _hd215284215309_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215276215293_
                                                 _g215277215296_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215276215293_ _g215277215296_)))))
                              (let ()
                                (declare (not safe))
                                (_g215276215293_ _g215277215296_)))))
                      (let ()
                        (declare (not safe))
                        (_g215276215293_ _g215277215296_))))))
          (declare (not safe))
          (_g215275215338_ _stx215273_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx215217_ _ids215218_)
        (let* ((_g215220215233_
                (lambda (_g215221215230_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215221215230_))))
               (_g215219215270_
                (lambda (_g215221215236_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215221215236_))
                      (let ((_e215225215238_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215221215236_))))
                        (let ((_hd215224215241_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215225215238_)))
                              (_tl215223215243_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215225215238_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215223215243_))
                              (let ((_e215228215246_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215223215243_))))
                                (let ((_hd215227215249_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215228215246_)))
                                      (_tl215226215251_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215228215246_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl215226215251_))
                                      ((lambda (_L215254_)
                                         (let ((__tmp222176
                                                (lambda (_g215265215267_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L215254_
                                                     _g215265215267_)))))
                                           (declare (not safe))
                                           (find __tmp222176 _ids215218_)))
                                       _hd215227215249_)
                                      (let ()
                                        (declare (not safe))
                                        (_g215220215233_ _g215221215236_)))))
                              (let ()
                                (declare (not safe))
                                (_g215220215233_ _g215221215236_)))))
                      (let ()
                        (declare (not safe))
                        (_g215220215233_ _g215221215236_))))))
          (declare (not safe))
          (_g215219215270_ _stx215217_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx215141_ _ids215142_)
        (let* ((_g215144215161_
                (lambda (_g215145215158_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g215145215158_))))
               (_g215143215214_
                (lambda (_g215145215164_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g215145215164_))
                      (let ((_e215150215166_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g215145215164_))))
                        (let ((_hd215149215169_
                               (let ()
                                 (declare (not safe))
                                 (##car _e215150215166_)))
                              (_tl215148215171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e215150215166_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl215148215171_))
                              (let ((_e215153215174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl215148215171_))))
                                (let ((_hd215152215177_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e215153215174_)))
                                      (_tl215151215179_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e215153215174_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl215151215179_))
                                      (let ((_e215156215182_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl215151215179_))))
                                        (let ((_hd215155215185_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e215156215182_)))
                                              (_tl215154215187_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e215156215182_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl215154215187_))
                                              ((lambda (_L215190_ _L215191_)
                                                 (let ((_$e215211_
                                                        (let ((__tmp222177
                                                               (lambda (_g215206215208_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L215191_ _g215206215208_)))))
                  (declare (not safe))
                  (find __tmp222177 _ids215142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e215211_
                                                       _$e215211_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L215190_
                                                          _ids215142_)))))
                                               _hd215155215185_
                                               _hd215152215177_)
                                              (let ()
                                                (declare (not safe))
                                                (_g215144215161_
                                                 _g215145215164_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g215144215161_ _g215145215164_)))))
                              (let ()
                                (declare (not safe))
                                (_g215144215161_ _g215145215164_)))))
                      (let ()
                        (declare (not safe))
                        (_g215144215161_ _g215145215164_))))))
          (declare (not safe))
          (_g215143215214_ _stx215141_))))))
