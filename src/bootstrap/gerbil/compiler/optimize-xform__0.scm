(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708337967)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl229709_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229709_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229709_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229709_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229709_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl229709_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl229705_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229705_ '%#declare gxc#xform-identity))
           _tbl229705_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl229701_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp233941 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl229701_ __tmp233941))
           (let ((__tmp233942 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl229701_ __tmp233942))
           _tbl229701_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl229697_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229697_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229697_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229697_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229697_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229697_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl229697_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl229693_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp233943 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl229693_ __tmp233943))
           (let ((__tmp233944 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl229693_ __tmp233944))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229693_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229693_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229693_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229693_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229693_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl229693_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl229689_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp233945 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl229689_ __tmp233945))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229689_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229689_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229689_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229689_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229689_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229689_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229689_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229689_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229689_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229689_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229689_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229689_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl229689_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx229672_ . _args229674_)
        (let ((__tmp233947
               (lambda ()
                 (declare (not safe))
                 (if (null? _args229674_)
                     (gxc#compile-e__0 _stx229672_)
                     (let ((_arg1229679_ (car _args229674_))
                           (_rest229681_ (cdr _args229674_)))
                       (if (null? _rest229681_)
                           (gxc#compile-e__1 _stx229672_ _arg1229679_)
                           (let ((_arg2229684_ (car _rest229681_))
                                 (_rest229686_ (cdr _rest229681_)))
                             (if (null? _rest229686_)
                                 (gxc#compile-e__2
                                  _stx229672_
                                  _arg1229679_
                                  _arg2229684_)
                                 (apply gxc#compile-e
                                        _stx229672_
                                        _arg1229679_
                                        _arg2229684_
                                        _rest229686_))))))))
              (__tmp233946 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp233947
           gxc#current-compile-methods
           __tmp233946))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl229669_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp233948 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl229669_ __tmp233948))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229669_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229669_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229669_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229669_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229669_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl229669_))))
    (define gxc#apply-collect-methods
      (lambda (_stx229652_ . _args229654_)
        (let ((__tmp233950
               (lambda ()
                 (declare (not safe))
                 (if (null? _args229654_)
                     (gxc#compile-e__0 _stx229652_)
                     (let ((_arg1229659_ (car _args229654_))
                           (_rest229661_ (cdr _args229654_)))
                       (if (null? _rest229661_)
                           (gxc#compile-e__1 _stx229652_ _arg1229659_)
                           (let ((_arg2229664_ (car _rest229661_))
                                 (_rest229666_ (cdr _rest229661_)))
                             (if (null? _rest229666_)
                                 (gxc#compile-e__2
                                  _stx229652_
                                  _arg1229659_
                                  _arg2229664_)
                                 (apply gxc#compile-e
                                        _stx229652_
                                        _arg1229659_
                                        _arg2229664_
                                        _rest229666_))))))))
              (__tmp233949 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp233950
           gxc#current-compile-methods
           __tmp233949))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl229649_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp233951 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl229649_ __tmp233951))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229649_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229649_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229649_ '%#set! gxc#expression-subst-setq%))
           _tbl229649_))))
    (define gxc#apply-expression-subst
      (lambda (_stx229632_ . _args229634_)
        (let ((__tmp233953
               (lambda ()
                 (declare (not safe))
                 (if (null? _args229634_)
                     (gxc#compile-e__0 _stx229632_)
                     (let ((_arg1229639_ (car _args229634_))
                           (_rest229641_ (cdr _args229634_)))
                       (if (null? _rest229641_)
                           (gxc#compile-e__1 _stx229632_ _arg1229639_)
                           (let ((_arg2229644_ (car _rest229641_))
                                 (_rest229646_ (cdr _rest229641_)))
                             (if (null? _rest229646_)
                                 (gxc#compile-e__2
                                  _stx229632_
                                  _arg1229639_
                                  _arg2229644_)
                                 (apply gxc#compile-e
                                        _stx229632_
                                        _arg1229639_
                                        _arg2229644_
                                        _rest229646_))))))))
              (__tmp233952 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp233953
           gxc#current-compile-methods
           __tmp233952))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl229629_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp233954 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl229629_ __tmp233954))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229629_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229629_ '%#set! gxc#expression-subst*-setq%))
           _tbl229629_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx229612_ . _args229614_)
        (let ((__tmp233956
               (lambda ()
                 (declare (not safe))
                 (if (null? _args229614_)
                     (gxc#compile-e__0 _stx229612_)
                     (let ((_arg1229619_ (car _args229614_))
                           (_rest229621_ (cdr _args229614_)))
                       (if (null? _rest229621_)
                           (gxc#compile-e__1 _stx229612_ _arg1229619_)
                           (let ((_arg2229624_ (car _rest229621_))
                                 (_rest229626_ (cdr _rest229621_)))
                             (if (null? _rest229626_)
                                 (gxc#compile-e__2
                                  _stx229612_
                                  _arg1229619_
                                  _arg2229624_)
                                 (apply gxc#compile-e
                                        _stx229612_
                                        _arg1229619_
                                        _arg2229624_
                                        _rest229626_))))))))
              (__tmp233955 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp233956
           gxc#current-compile-methods
           __tmp233955))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl229609_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp233957 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl229609_ __tmp233957))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl229609_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229609_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl229609_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl229605_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp233958 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl229605_ __tmp233958))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229605_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229605_ '%#set! gxc#find-var-refs-setq%))
           _tbl229605_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx229588_ . _args229590_)
        (let ((__tmp233960
               (lambda ()
                 (declare (not safe))
                 (if (null? _args229590_)
                     (gxc#compile-e__0 _stx229588_)
                     (let ((_arg1229595_ (car _args229590_))
                           (_rest229597_ (cdr _args229590_)))
                       (if (null? _rest229597_)
                           (gxc#compile-e__1 _stx229588_ _arg1229595_)
                           (let ((_arg2229600_ (car _rest229597_))
                                 (_rest229602_ (cdr _rest229597_)))
                             (if (null? _rest229602_)
                                 (gxc#compile-e__2
                                  _stx229588_
                                  _arg1229595_
                                  _arg2229600_)
                                 (apply gxc#compile-e
                                        _stx229588_
                                        _arg1229595_
                                        _arg2229600_
                                        _rest229602_))))))))
              (__tmp233959 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp233960
           gxc#current-compile-methods
           __tmp233959))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl229585_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp233961 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl229585_ __tmp233961))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229585_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl229585_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl229585_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx229568_ . _args229570_)
        (let ((__tmp233963
               (lambda ()
                 (declare (not safe))
                 (if (null? _args229570_)
                     (gxc#compile-e__0 _stx229568_)
                     (let ((_arg1229575_ (car _args229570_))
                           (_rest229577_ (cdr _args229570_)))
                       (if (null? _rest229577_)
                           (gxc#compile-e__1 _stx229568_ _arg1229575_)
                           (let ((_arg2229580_ (car _rest229577_))
                                 (_rest229582_ (cdr _rest229577_)))
                             (if (null? _rest229582_)
                                 (gxc#compile-e__2
                                  _stx229568_
                                  _arg1229575_
                                  _arg2229580_)
                                 (apply gxc#compile-e
                                        _stx229568_
                                        _arg1229575_
                                        _arg2229580_
                                        _rest229582_))))))))
              (__tmp233962 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp233963
           gxc#current-compile-methods
           __tmp233962))))
    (define gxc#xform-identity
      (lambda (_stx229565_ . _args229566_) _stx229565_))
    (define gxc#xform-wrap-source
      (lambda (_stx229562_ _src-stx229563_)
        (let ((__tmp233964
               (let () (declare (not safe)) (gx#stx-source _src-stx229563_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx229562_ __tmp233964))))
    (define gxc#xform-apply-compile-e
      (lambda (_args229549_)
        (lambda (_stx229551_)
          (if (let () (declare (not safe)) (null? _args229549_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx229551_))
              (let ((_arg1229553_ (car _args229549_))
                    (_rest229555_ (cdr _args229549_)))
                (if (let () (declare (not safe)) (null? _rest229555_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx229551_ _arg1229553_))
                    (let ((_arg2229558_ (car _rest229555_))
                          (_rest229560_ (cdr _rest229555_)))
                      (if (let () (declare (not safe)) (null? _rest229560_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx229551_
                             _arg1229553_
                             _arg2229558_))
                          (apply gxc#compile-e
                                 _stx229551_
                                 _arg1229553_
                                 _arg2229558_
                                 _rest229560_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx229508_ . _args229509_)
        (let* ((_g229511229521_
                (lambda (_g229512229518_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229512229518_))))
               (_g229510229546_
                (lambda (_g229512229524_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229512229524_))
                      (let ((_e229516229526_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229512229524_))))
                        (let ((_hd229515229529_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229516229526_)))
                              (_tl229514229531_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229516229526_))))
                          ((lambda (_L229534_)
                             (let* ((_forms229544_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args229509_))
                                          _L229534_))
                                    (__tmp233965
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms229544_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp233965
                                _stx229508_)))
                           _tl229514229531_)))
                      (let ()
                        (declare (not safe))
                        (_g229511229521_ _g229512229524_))))))
          (declare (not safe))
          (_g229510229546_ _stx229508_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx229466_ . _args229467_)
        (let* ((_g229469229479_
                (lambda (_g229470229476_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229470229476_))))
               (_g229468229505_
                (lambda (_g229470229482_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229470229482_))
                      (let ((_e229474229484_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229470229482_))))
                        (let ((_hd229473229487_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229474229484_)))
                              (_tl229472229489_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229474229484_))))
                          ((lambda (_L229492_)
                             (let ((__tmp233968
                                    (lambda ()
                                      (let* ((_forms229503_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args229467_))
                                                   _L229492_))
                                             (__tmp233969
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms229503_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp233969
                                         _stx229466_))))
                                   (__tmp233966
                                    (let ((__tmp233967
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp233967 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp233968
                                gx#current-expander-phi
                                __tmp233966)))
                           _tl229472229489_)))
                      (let ()
                        (declare (not safe))
                        (_g229469229479_ _g229470229482_))))))
          (declare (not safe))
          (_g229468229505_ _stx229466_))))
    (define gxc#xform-module%
      (lambda (_stx229394_ . _args229395_)
        (let* ((_g229397229411_
                (lambda (_g229398229408_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229398229408_))))
               (_g229396229463_
                (lambda (_g229398229414_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229398229414_))
                      (let ((_e229403229416_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229398229414_))))
                        (let ((_hd229402229419_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229403229416_)))
                              (_tl229401229421_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229403229416_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229401229421_))
                              (let ((_e229406229424_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229401229421_))))
                                (let ((_hd229405229427_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229406229424_)))
                                      (_tl229404229429_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229406229424_))))
                                  ((lambda (_L229432_ _L229433_)
                                     (let* ((_ctx229446_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L229433_)))
                                            (_code229448_
                                             (##structure-ref
                                              _ctx229446_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code229460_
                                             (let ((__tmp233970
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args229395_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code229448_))
                                                          (let ((_arg1229451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args229395_))
                        (_rest229453_ (cdr _args229395_)))
                    (if (let () (declare (not safe)) (null? _rest229453_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code229448_ _arg1229451_))
                        (let ((_arg2229456_ (car _rest229453_))
                              (_rest229458_ (cdr _rest229453_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest229458_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code229448_
                                 _arg1229451_
                                 _arg2229456_))
                              (apply gxc#compile-e
                                     _code229448_
                                     _arg1229451_
                                     _arg2229456_
                                     _rest229458_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp233970
                                                gx#current-expander-context
                                                _ctx229446_))))
                                       (##structure-set!
                                        _ctx229446_
                                        _code229460_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp233971
                                              (let ((__tmp233972
                                                     (let ((__tmp233973
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code229460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L229433_ __tmp233973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp233972))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp233971
                                          _stx229394_))))
                                   _tl229404229429_
                                   _hd229405229427_)))
                              (let ()
                                (declare (not safe))
                                (_g229397229411_ _g229398229414_)))))
                      (let ()
                        (declare (not safe))
                        (_g229397229411_ _g229398229414_))))))
          (declare (not safe))
          (_g229396229463_ _stx229394_))))
    (define gxc#xform-define-values%
      (lambda (_stx229315_ . _args229316_)
        (let* ((_g229318229335_
                (lambda (_g229319229332_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229319229332_))))
               (_g229317229391_
                (lambda (_g229319229338_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229319229338_))
                      (let ((_e229324229340_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229319229338_))))
                        (let ((_hd229323229343_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229324229340_)))
                              (_tl229322229345_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229324229340_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229322229345_))
                              (let ((_e229327229348_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229322229345_))))
                                (let ((_hd229326229351_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229327229348_)))
                                      (_tl229325229353_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229327229348_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229325229353_))
                                      (let ((_e229330229356_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229325229353_))))
                                        (let ((_hd229329229359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229330229356_)))
                                              (_tl229328229361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229330229356_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229328229361_))
                                              ((lambda (_L229364_ _L229365_)
                                                 (let* ((_expr229389_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args229316_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L229364_))
                     (let ((_arg1229380_ (car _args229316_))
                           (_rest229382_ (cdr _args229316_)))
                       (if (let () (declare (not safe)) (null? _rest229382_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L229364_ _arg1229380_))
                           (let ((_arg2229385_ (car _rest229382_))
                                 (_rest229387_ (cdr _rest229382_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest229387_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L229364_
                                    _arg1229380_
                                    _arg2229385_))
                                 (apply gxc#compile-e
                                        _L229364_
                                        _arg1229380_
                                        _arg2229385_
                                        _rest229387_)))))))
                (__tmp233974
                 (let ((__tmp233975
                        (let ((__tmp233976
                               (let ()
                                 (declare (not safe))
                                 (cons _expr229389_ '()))))
                          (declare (not safe))
                          (cons _L229365_ __tmp233976))))
                   (declare (not safe))
                   (cons '%#define-values __tmp233975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp233974
                                                    _stx229315_)))
                                               _hd229329229359_
                                               _hd229326229351_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229318229335_
                                                 _g229319229338_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229318229335_ _g229319229338_)))))
                              (let ()
                                (declare (not safe))
                                (_g229318229335_ _g229319229338_)))))
                      (let ()
                        (declare (not safe))
                        (_g229318229335_ _g229319229338_))))))
          (declare (not safe))
          (_g229317229391_ _stx229315_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx229235_ . _args229236_)
        (let* ((_g229238229255_
                (lambda (_g229239229252_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229239229252_))))
               (_g229237229312_
                (lambda (_g229239229258_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229239229258_))
                      (let ((_e229244229260_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229239229258_))))
                        (let ((_hd229243229263_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229244229260_)))
                              (_tl229242229265_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229244229260_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229242229265_))
                              (let ((_e229247229268_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229242229265_))))
                                (let ((_hd229246229271_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229247229268_)))
                                      (_tl229245229273_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229247229268_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229245229273_))
                                      (let ((_e229250229276_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229245229273_))))
                                        (let ((_hd229249229279_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229250229276_)))
                                              (_tl229248229281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229250229276_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229248229281_))
                                              ((lambda (_L229284_ _L229285_)
                                                 (let ((__tmp233979
                                                        (lambda ()
                                                          (let* ((_expr229310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args229236_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L229284_))
                              (let ((_arg1229301_ (car _args229236_))
                                    (_rest229303_ (cdr _args229236_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest229303_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L229284_
                                       _arg1229301_))
                                    (let ((_arg2229306_ (car _rest229303_))
                                          (_rest229308_ (cdr _rest229303_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest229308_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L229284_
                                             _arg1229301_
                                             _arg2229306_))
                                          (apply gxc#compile-e
                                                 _L229284_
                                                 _arg1229301_
                                                 _arg2229306_
                                                 _rest229308_)))))))
                         (__tmp233980
                          (let ((__tmp233981
                                 (let ((__tmp233982
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr229310_ '()))))
                                   (declare (not safe))
                                   (cons _L229285_ __tmp233982))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp233981))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp233980 _stx229235_))))
               (__tmp233977
                (let ((__tmp233978 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp233978 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp233979
                                                    gx#current-expander-phi
                                                    __tmp233977)))
                                               _hd229249229279_
                                               _hd229246229271_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229238229255_
                                                 _g229239229258_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229238229255_ _g229239229258_)))))
                              (let ()
                                (declare (not safe))
                                (_g229238229255_ _g229239229258_)))))
                      (let ()
                        (declare (not safe))
                        (_g229238229255_ _g229239229258_))))))
          (declare (not safe))
          (_g229237229312_ _stx229235_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx229156_ . _args229157_)
        (let* ((_g229159229176_
                (lambda (_g229160229173_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229160229173_))))
               (_g229158229232_
                (lambda (_g229160229179_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229160229179_))
                      (let ((_e229165229181_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229160229179_))))
                        (let ((_hd229164229184_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229165229181_)))
                              (_tl229163229186_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229165229181_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229163229186_))
                              (let ((_e229168229189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229163229186_))))
                                (let ((_hd229167229192_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229168229189_)))
                                      (_tl229166229194_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229168229189_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229166229194_))
                                      (let ((_e229171229197_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229166229194_))))
                                        (let ((_hd229170229200_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229171229197_)))
                                              (_tl229169229202_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229171229197_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229169229202_))
                                              ((lambda (_L229205_ _L229206_)
                                                 (let* ((_expr229230_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args229157_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L229205_))
                     (let ((_arg1229221_ (car _args229157_))
                           (_rest229223_ (cdr _args229157_)))
                       (if (let () (declare (not safe)) (null? _rest229223_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L229205_ _arg1229221_))
                           (let ((_arg2229226_ (car _rest229223_))
                                 (_rest229228_ (cdr _rest229223_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest229228_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L229205_
                                    _arg1229221_
                                    _arg2229226_))
                                 (apply gxc#compile-e
                                        _L229205_
                                        _arg1229221_
                                        _arg2229226_
                                        _rest229228_)))))))
                (__tmp233983
                 (let ((__tmp233984
                        (let ((__tmp233985
                               (let ()
                                 (declare (not safe))
                                 (cons _expr229230_ '()))))
                          (declare (not safe))
                          (cons _L229206_ __tmp233985))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp233984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp233983
                                                    _stx229156_)))
                                               _hd229170229200_
                                               _hd229167229192_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229159229176_
                                                 _g229160229179_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229159229176_ _g229160229179_)))))
                              (let ()
                                (declare (not safe))
                                (_g229159229176_ _g229160229179_)))))
                      (let ()
                        (declare (not safe))
                        (_g229159229176_ _g229160229179_))))))
          (declare (not safe))
          (_g229158229232_ _stx229156_))))
    (define gxc#xform-lambda%
      (lambda (_stx229099_ . _args229100_)
        (let* ((_g229102229116_
                (lambda (_g229103229113_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229103229113_))))
               (_g229101229153_
                (lambda (_g229103229119_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229103229119_))
                      (let ((_e229108229121_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229103229119_))))
                        (let ((_hd229107229124_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229108229121_)))
                              (_tl229106229126_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229108229121_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229106229126_))
                              (let ((_e229111229129_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229106229126_))))
                                (let ((_hd229110229132_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229111229129_)))
                                      (_tl229109229134_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229111229129_))))
                                  ((lambda (_L229137_ _L229138_)
                                     (let* ((_body229151_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args229100_))
                                                  _L229137_))
                                            (__tmp233986
                                             (let ((__tmp233987
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L229138_
                                                            _body229151_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp233987))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp233986
                                        _stx229099_)))
                                   _tl229109229134_
                                   _hd229110229132_)))
                              (let ()
                                (declare (not safe))
                                (_g229102229116_ _g229103229119_)))))
                      (let ()
                        (declare (not safe))
                        (_g229102229116_ _g229103229119_))))))
          (declare (not safe))
          (_g229101229153_ _stx229099_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx229012_ . _args229013_)
        (letrec ((_clause-e229015_
                  (lambda (_clause229056_)
                    (let* ((_g229058229069_
                            (lambda (_g229059229066_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g229059229066_))))
                           (_g229057229096_
                            (lambda (_g229059229072_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g229059229072_))
                                  (let ((_e229064229074_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g229059229072_))))
                                    (let ((_hd229063229077_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229064229074_)))
                                          (_tl229062229079_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229064229074_))))
                                      ((lambda (_L229082_ _L229083_)
                                         (let ((_body229094_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args229013_))
                                                     _L229082_)))
                                           (declare (not safe))
                                           (cons _L229083_ _body229094_)))
                                       _tl229062229079_
                                       _hd229063229077_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g229058229069_ _g229059229072_))))))
                      (declare (not safe))
                      (_g229057229096_ _clause229056_)))))
          (let* ((_g229017229027_
                  (lambda (_g229018229024_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g229018229024_))))
                 (_g229016229053_
                  (lambda (_g229018229030_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g229018229030_))
                        (let ((_e229022229032_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g229018229030_))))
                          (let ((_hd229021229035_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229022229032_)))
                                (_tl229020229037_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229022229032_))))
                            ((lambda (_L229040_)
                               (let* ((_clauses229051_
                                       (map _clause-e229015_ _L229040_))
                                      (__tmp233988
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses229051_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp233988
                                  _stx229012_)))
                             _tl229020229037_)))
                        (let ()
                          (declare (not safe))
                          (_g229017229027_ _g229018229030_))))))
            (declare (not safe))
            (_g229016229053_ _stx229012_)))))
    (define gxc#xform-let-values%
      (lambda (_stx228806_ . _args228807_)
        (let* ((_g228809228842_
                (lambda (_g228810228839_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228810228839_))))
               (_g228808229009_
                (lambda (_g228810228845_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228810228845_))
                      (let ((_e228817228847_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228810228845_))))
                        (let ((_hd228816228850_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228817228847_)))
                              (_tl228815228852_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228817228847_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228815228852_))
                              (let ((_e228820228855_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228815228852_))))
                                (let ((_hd228819228858_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228820228855_)))
                                      (_tl228818228860_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228820228855_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd228819228858_))
                                      (let ((_g233989_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd228819228858_
                                                '0))))
                                        (begin
                                          (let ((_g233990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g233989_)
                                                       (##vector-length
                                                        _g233989_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g233990_ 2)))
                                                (error "Context expects 2 values"
                                                       _g233990_)))
                                          (let ((_target228821228863_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g233989_ 0)))
                                                (_tl228823228865_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g233989_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228823228865_))
                                                (letrec ((_loop228824228868_
                                                          (lambda (_hd228822228871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr228828228873_
                           _hd228829228875_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd228822228871_))
                        (let ((_e228825228878_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd228822228871_))))
                          (let ((_lp-hd228826228881_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228825228878_)))
                                (_lp-tl228827228883_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228825228878_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd228826228881_))
                                (let ((_e228834228886_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd228826228881_))))
                                  (let ((_hd228833228889_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e228834228886_)))
                                        (_tl228832228891_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e228834228886_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl228832228891_))
                                        (let ((_e228837228894_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl228832228891_))))
                                          (let ((_hd228836228897_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e228837228894_)))
                                                (_tl228835228899_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e228837228894_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228835228899_))
                                                (let ((__tmp234003
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd228836228897_
                                                               _expr228828228873_)))
                                                      (__tmp234002
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd228833228889_
                                                               _hd228829228875_))))
                                                  (declare (not safe))
                                                  (_loop228824228868_
                                                   _lp-tl228827228883_
                                                   __tmp234003
                                                   __tmp234002))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228809228842_
                                                   _g228810228845_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g228809228842_ _g228810228845_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g228809228842_ _g228810228845_)))))
                        (let ((_expr228830228902_ (reverse _expr228828228873_))
                              (_hd228831228904_ (reverse _hd228829228875_)))
                          ((lambda (_L228907_ _L228908_ _L228909_ _L228910_)
                             (let* ((_g228929228945_
                                     (lambda (_g228930228942_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g228930228942_))))
                                    (_g228928228999_
                                     (lambda (_g228930228948_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g228930228948_))
                                           (let ((_g233991_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g228930228948_
                                                     '0))))
                                             (begin
                                               (let ((_g233992_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g233991_)
                                                            (##vector-length
                                                             _g233991_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g233992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g233992_)))
                                               (let ((_target228932228950_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g233991_
                                                         0)))
                                                     (_tl228934228952_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g233991_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl228934228952_))
                                                     (letrec ((_loop228935228955_
                                                               (lambda (_hd228933228958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr228939228960_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd228933228958_))
                             (let ((_e228936228963_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd228933228958_))))
                               (let ((_lp-hd228937228966_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e228936228963_)))
                                     (_lp-tl228938228968_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e228936228963_))))
                                 (let ((__tmp233999
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd228937228966_
                                                _expr228939228960_))))
                                   (declare (not safe))
                                   (_loop228935228955_
                                    _lp-tl228938228968_
                                    __tmp233999))))
                             (let ((_expr228940228971_
                                    (reverse _expr228939228960_)))
                               ((lambda (_L228974_)
                                  (let ()
                                    (let* ((_body228987_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args228807_))
                                                 _L228907_))
                                           (__tmp233993
                                            (let ((__tmp233994
                                                   (let ((__tmp233995
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L228974_
                                                               _L228909_))
                                                            (let ((__tmp233996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g228988228992_
                                    _g228989228994_
                                    _g228990228996_)
                             (let ((__tmp233997
                                    (let ((__tmp233998
                                           (let ()
                                             (declare (not safe))
                                             (cons _g228988228992_ '()))))
                                      (declare (not safe))
                                      (cons _g228989228994_ __tmp233998))))
                               (declare (not safe))
                               (cons __tmp233997 _g228990228996_)))))
                      (declare (not safe))
                      (foldr2 __tmp233996 '() _L228974_ _L228909_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233995
                                                           _body228987_))))
                                              (declare (not safe))
                                              (cons _L228910_ __tmp233994))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp233993
                                       _stx228806_))))
                                _expr228940228971_))))))
               (let ()
                 (declare (not safe))
                 (_loop228935228955_ _target228932228950_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g228929228945_
                                                        _g228930228948_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228929228945_
                                              _g228930228948_)))))
                                    (__tmp234000
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args228807_))
                                          (let ((__tmp234001
                                                 (lambda (_g229001229004_
                                                          _g229002229006_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g229001229004_
                                                           _g229002229006_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp234001
                                                    '()
                                                    _L228908_)))))
                               (declare (not safe))
                               (_g228928228999_ __tmp234000)))
                           _tl228818228860_
                           _expr228830228902_
                           _hd228831228904_
                           _hd228816228850_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop228824228868_
                                                     _target228821228863_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228809228842_
                                                   _g228810228845_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228809228842_ _g228810228845_)))))
                              (let ()
                                (declare (not safe))
                                (_g228809228842_ _g228810228845_)))))
                      (let ()
                        (declare (not safe))
                        (_g228809228842_ _g228810228845_))))))
          (declare (not safe))
          (_g228808229009_ _stx228806_))))
    (define gxc#xform-operands
      (lambda (_stx228762_ . _args228763_)
        (let* ((_g228765228776_
                (lambda (_g228766228773_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228766228773_))))
               (_g228764228803_
                (lambda (_g228766228779_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228766228779_))
                      (let ((_e228771228781_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228766228779_))))
                        (let ((_hd228770228784_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228771228781_)))
                              (_tl228769228786_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228771228781_))))
                          ((lambda (_L228789_ _L228790_)
                             (let* ((_rands228801_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args228763_))
                                          _L228789_))
                                    (__tmp234004
                                     (let ()
                                       (declare (not safe))
                                       (cons _L228790_ _rands228801_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp234004
                                _stx228762_)))
                           _tl228769228786_
                           _hd228770228784_)))
                      (let ()
                        (declare (not safe))
                        (_g228765228776_ _g228766228779_))))))
          (declare (not safe))
          (_g228764228803_ _stx228762_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx228683_ . _args228684_)
        (let* ((_g228686228703_
                (lambda (_g228687228700_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228687228700_))))
               (_g228685228759_
                (lambda (_g228687228706_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228687228706_))
                      (let ((_e228692228708_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228687228706_))))
                        (let ((_hd228691228711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228692228708_)))
                              (_tl228690228713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228692228708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228690228713_))
                              (let ((_e228695228716_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228690228713_))))
                                (let ((_hd228694228719_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228695228716_)))
                                      (_tl228693228721_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228695228716_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228693228721_))
                                      (let ((_e228698228724_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228693228721_))))
                                        (let ((_hd228697228727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228698228724_)))
                                              (_tl228696228729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228698228724_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228696228729_))
                                              ((lambda (_L228732_ _L228733_)
                                                 (let* ((_expr228757_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args228684_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L228732_))
                     (let ((_arg1228748_ (car _args228684_))
                           (_rest228750_ (cdr _args228684_)))
                       (if (let () (declare (not safe)) (null? _rest228750_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L228732_ _arg1228748_))
                           (let ((_arg2228753_ (car _rest228750_))
                                 (_rest228755_ (cdr _rest228750_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest228755_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L228732_
                                    _arg1228748_
                                    _arg2228753_))
                                 (apply gxc#compile-e
                                        _L228732_
                                        _arg1228748_
                                        _arg2228753_
                                        _rest228755_)))))))
                (__tmp234005
                 (let ((__tmp234006
                        (let ((__tmp234007
                               (let ()
                                 (declare (not safe))
                                 (cons _expr228757_ '()))))
                          (declare (not safe))
                          (cons _L228733_ __tmp234007))))
                   (declare (not safe))
                   (cons '%#set! __tmp234006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp234005
                                                    _stx228683_)))
                                               _hd228697228727_
                                               _hd228694228719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228686228703_
                                                 _g228687228706_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228686228703_ _g228687228706_)))))
                              (let ()
                                (declare (not safe))
                                (_g228686228703_ _g228687228706_)))))
                      (let ()
                        (declare (not safe))
                        (_g228686228703_ _g228687228706_))))))
          (declare (not safe))
          (_g228685228759_ _stx228683_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx228614_)
        (let* ((_g228616228633_
                (lambda (_g228617228630_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228617228630_))))
               (_g228615228680_
                (lambda (_g228617228636_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228617228636_))
                      (let ((_e228622228638_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228617228636_))))
                        (let ((_hd228621228641_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228622228638_)))
                              (_tl228620228643_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228622228638_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228620228643_))
                              (let ((_e228625228646_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228620228643_))))
                                (let ((_hd228624228649_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228625228646_)))
                                      (_tl228623228651_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228625228646_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228623228651_))
                                      (let ((_e228628228654_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228623228651_))))
                                        (let ((_hd228627228657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228628228654_)))
                                              (_tl228626228659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228628228654_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228626228659_))
                                              ((lambda (_L228662_ _L228663_)
                                                 (let ((_sym228678_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L228663_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym228678_))
                                                   (let ((__tmp234008
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp234008
                                                      _sym228678_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L228662_))))
                                               _hd228627228657_
                                               _hd228624228649_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228616228633_
                                                 _g228617228636_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228616228633_ _g228617228636_)))))
                              (let ()
                                (declare (not safe))
                                (_g228616228633_ _g228617228636_)))))
                      (let ()
                        (declare (not safe))
                        (_g228616228633_ _g228617228636_))))))
          (declare (not safe))
          (_g228615228680_ _stx228614_))))
    (define gxc#collect-methods-call%
      (lambda (_stx228168_)
        (let* ((___stx233698233699_ _stx228168_)
               (_g228172228274_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx233698233699_)))))
          (let ((___kont233700233701_
                 (lambda (_L228564_ _L228565_ _L228566_ _L228567_ _L228568_)
                   (let ((__tmp234009
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L228565_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp234009))))
                (___kont233702233703_
                 (lambda (_L228390_ _L228391_ _L228392_ _L228393_)
                   (let ((__tmp234010
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L228390_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp234010))))
                (___kont233704233705_ (lambda () '#!void)))
            (let ((___match233833233834_
                   (lambda (_e228181228436_
                            _hd228180228439_
                            _tl228179228441_
                            _e228184228444_
                            _hd228183228447_
                            _tl228182228449_
                            _e228187228452_
                            _hd228186228455_
                            _tl228185228457_
                            _e228190228460_
                            _hd228189228463_
                            _tl228188228465_
                            _e228193228468_
                            _hd228192228471_
                            _tl228191228473_
                            _e228196228476_
                            _hd228195228479_
                            _tl228194228481_
                            _e228199228484_
                            _hd228198228487_
                            _tl228197228489_
                            _e228202228492_
                            _hd228201228495_
                            _tl228200228497_
                            _e228205228500_
                            _hd228204228503_
                            _tl228203228505_
                            _e228208228508_
                            _hd228207228511_
                            _tl228206228513_
                            _e228211228516_
                            _hd228210228519_
                            _tl228209228521_
                            _e228214228524_
                            _hd228213228527_
                            _tl228212228529_
                            _e228217228532_
                            _hd228216228535_
                            _tl228215228537_
                            _e228220228540_
                            _hd228219228543_
                            _tl228218228545_
                            _e228223228548_
                            _hd228222228551_
                            _tl228221228553_
                            _e228226228556_
                            _hd228225228559_
                            _tl228224228561_)
                     (let ((_L228564_ _hd228225228559_)
                           (_L228565_ _hd228216228535_)
                           (_L228566_ _hd228207228511_)
                           (_L228567_ _hd228198228487_)
                           (_L228568_ _hd228189228463_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L228568_
                              'bind-method!))
                           (___kont233700233701_
                            _L228564_
                            _L228565_
                            _L228566_
                            _L228567_
                            _L228568_)
                           (___kont233704233705_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx233698233699_))
                  (let ((_e228181228436_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx233698233699_))))
                    (let ((_tl228179228441_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228181228436_)))
                          (_hd228180228439_
                           (let ()
                             (declare (not safe))
                             (##car _e228181228436_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228179228441_))
                          (let ((_e228184228444_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228179228441_))))
                            (let ((_tl228182228449_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228184228444_)))
                                  (_hd228183228447_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228184228444_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd228183228447_))
                                  (let ((_e228187228452_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd228183228447_))))
                                    (let ((_tl228185228457_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228187228452_)))
                                          (_hd228186228455_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228187228452_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd228186228455_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd228186228455_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl228185228457_))
                                                  (let ((_e228190228460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl228185228457_))))
                                                    (let ((_tl228188228465_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228190228460_)))
                                                          (_hd228189228463_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228190228460_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl228188228465_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl228182228449_))
                      (let ((_e228193228468_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl228182228449_))))
                        (let ((_tl228191228473_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228193228468_)))
                              (_hd228192228471_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228193228468_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd228192228471_))
                              (let ((_e228196228476_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd228192228471_))))
                                (let ((_tl228194228481_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228196228476_)))
                                      (_hd228195228479_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228196228476_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd228195228479_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd228195228479_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl228194228481_))
                                              (let ((_e228199228484_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl228194228481_))))
                                                (let ((_tl228197228489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228199228484_)))
                                                      (_hd228198228487_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228199228484_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228197228489_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228191228473_))
                                                          (let ((_e228202228492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228191228473_))))
                    (let ((_tl228200228497_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228202228492_)))
                          (_hd228201228495_
                           (let ()
                             (declare (not safe))
                             (##car _e228202228492_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228201228495_))
                          (let ((_e228205228500_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228201228495_))))
                            (let ((_tl228203228505_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228205228500_)))
                                  (_hd228204228503_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228205228500_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228204228503_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd228204228503_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228203228505_))
                                          (let ((_e228208228508_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228203228505_))))
                                            (let ((_tl228206228513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228208228508_)))
                                                  (_hd228207228511_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228208228508_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228206228513_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl228200228497_))
                                                      (let ((_e228211228516_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl228200228497_))))
                (let ((_tl228209228521_
                       (let () (declare (not safe)) (##cdr _e228211228516_)))
                      (_hd228210228519_
                       (let () (declare (not safe)) (##car _e228211228516_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd228210228519_))
                      (let ((_e228214228524_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd228210228519_))))
                        (let ((_tl228212228529_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228214228524_)))
                              (_hd228213228527_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228214228524_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd228213228527_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd228213228527_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228212228529_))
                                      (let ((_e228217228532_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228212228529_))))
                                        (let ((_tl228215228537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228217228532_)))
                                              (_hd228216228535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228217228532_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228215228537_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl228209228521_))
                                                  (let ((_e228220228540_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl228209228521_))))
                                                    (let ((_tl228218228545_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228220228540_)))
                                                          (_hd228219228543_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228220228540_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd228219228543_))
                                                          (let ((_e228223228548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd228219228543_))))
                    (let ((_tl228221228553_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228223228548_)))
                          (_hd228222228551_
                           (let ()
                             (declare (not safe))
                             (##car _e228223228548_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd228222228551_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd228222228551_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228221228553_))
                                  (let ((_e228226228556_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228221228553_))))
                                    (let ((_tl228224228561_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228226228556_)))
                                          (_hd228225228559_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228226228556_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228224228561_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228218228545_))
                                              (___match233833233834_
                                               _e228181228436_
                                               _hd228180228439_
                                               _tl228179228441_
                                               _e228184228444_
                                               _hd228183228447_
                                               _tl228182228449_
                                               _e228187228452_
                                               _hd228186228455_
                                               _tl228185228457_
                                               _e228190228460_
                                               _hd228189228463_
                                               _tl228188228465_
                                               _e228193228468_
                                               _hd228192228471_
                                               _tl228191228473_
                                               _e228196228476_
                                               _hd228195228479_
                                               _tl228194228481_
                                               _e228199228484_
                                               _hd228198228487_
                                               _tl228197228489_
                                               _e228202228492_
                                               _hd228201228495_
                                               _tl228200228497_
                                               _e228205228500_
                                               _hd228204228503_
                                               _tl228203228505_
                                               _e228208228508_
                                               _hd228207228511_
                                               _tl228206228513_
                                               _e228211228516_
                                               _hd228210228519_
                                               _tl228209228521_
                                               _e228214228524_
                                               _hd228213228527_
                                               _tl228212228529_
                                               _e228217228532_
                                               _hd228216228535_
                                               _tl228215228537_
                                               _e228220228540_
                                               _hd228219228543_
                                               _tl228218228545_
                                               _e228223228548_
                                               _hd228222228551_
                                               _tl228221228553_
                                               _e228226228556_
                                               _hd228225228559_
                                               _tl228224228561_)
                                              (___kont233704233705_))
                                          (___kont233704233705_))))
                                  (___kont233704233705_))
                              (___kont233704233705_))
                          (___kont233704233705_))))
                  (___kont233704233705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228209228521_))
                                                      (if (let ((__tmp234011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp234011 'bind-method!))
                  (let ((_L228390_ _hd228216228535_)
                        (_L228391_ _hd228207228511_)
                        (_L228392_ _hd228198228487_)
                        (_L228393_ _hd228189228463_))
                    (___kont233702233703_
                     _L228390_
                     _L228391_
                     _L228392_
                     _L228393_))
                  (___kont233704233705_))
              (___kont233704233705_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont233704233705_))))
                                      (___kont233704233705_))
                                  (___kont233704233705_))
                              (___kont233704233705_))))
                      (___kont233704233705_))))
              (___kont233704233705_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont233704233705_))))
                                          (___kont233704233705_))
                                      (___kont233704233705_))
                                  (___kont233704233705_))))
                          (___kont233704233705_))))
                  (___kont233704233705_))
              (___kont233704233705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont233704233705_))
                                          (___kont233704233705_))
                                      (___kont233704233705_))))
                              (___kont233704233705_))))
                      (___kont233704233705_))
                  (___kont233704233705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont233704233705_))
                                              (___kont233704233705_))
                                          (___kont233704233705_))))
                                  (___kont233704233705_))))
                          (___kont233704233705_))))
                  (___kont233704233705_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx228115_ _id228116_ _new-id228117_)
        (let* ((_g228119228132_
                (lambda (_g228120228129_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228120228129_))))
               (_g228118228165_
                (lambda (_g228120228135_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228120228135_))
                      (let ((_e228124228137_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228120228135_))))
                        (let ((_hd228123228140_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228124228137_)))
                              (_tl228122228142_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228124228137_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228122228142_))
                              (let ((_e228127228145_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228122228142_))))
                                (let ((_hd228126228148_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228127228145_)))
                                      (_tl228125228150_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228127228145_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228125228150_))
                                      ((lambda (_L228153_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L228153_
                                                _id228116_))
                                             (let ((__tmp234012
                                                    (let ((__tmp234013
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id228117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp234013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp234012
                                                _stx228115_))
                                             _stx228115_))
                                       _hd228126228148_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228119228132_ _g228120228135_)))))
                              (let ()
                                (declare (not safe))
                                (_g228119228132_ _g228120228135_)))))
                      (let ()
                        (declare (not safe))
                        (_g228119228132_ _g228120228135_))))))
          (declare (not safe))
          (_g228118228165_ _stx228115_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx228056_ _subst228057_)
        (let* ((_g228059228072_
                (lambda (_g228060228069_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228060228069_))))
               (_g228058228112_
                (lambda (_g228060228075_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228060228075_))
                      (let ((_e228064228077_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228060228075_))))
                        (let ((_hd228063228080_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228064228077_)))
                              (_tl228062228082_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228064228077_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228062228082_))
                              (let ((_e228067228085_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228062228082_))))
                                (let ((_hd228066228088_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228067228085_)))
                                      (_tl228065228090_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228067228085_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228065228090_))
                                      ((lambda (_L228093_)
                                         (let ((_$e228107_
                                                (let ((__tmp234014
                                                       (lambda (_sub228105_)
                                                         (let ((__tmp234015
                                                                (car _sub228105_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L228093_
                                                            __tmp234015)))))
                                                  (declare (not safe))
                                                  (find __tmp234014
                                                        _subst228057_))))
                                           (if _$e228107_
                                               ((lambda (_sub228110_)
                                                  (let ((__tmp234016
                                                         (let ((__tmp234017
                                                                (let ((__tmp234018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub228110_)))
                          (declare (not safe))
                          (cons __tmp234018 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp234017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp234016
                                                     _stx228056_)))
                                                _$e228107_)
                                               _stx228056_)))
                                       _hd228066228088_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228059228072_ _g228060228075_)))))
                              (let ()
                                (declare (not safe))
                                (_g228059228072_ _g228060228075_)))))
                      (let ()
                        (declare (not safe))
                        (_g228059228072_ _g228060228075_))))))
          (declare (not safe))
          (_g228058228112_ _stx228056_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx227984_ _id227985_ _new-id227986_)
        (let* ((_g227988228005_
                (lambda (_g227989228002_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227989228002_))))
               (_g227987228053_
                (lambda (_g227989228008_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227989228008_))
                      (let ((_e227994228010_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227989228008_))))
                        (let ((_hd227993228013_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227994228010_)))
                              (_tl227992228015_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227994228010_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227992228015_))
                              (let ((_e227997228018_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227992228015_))))
                                (let ((_hd227996228021_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227997228018_)))
                                      (_tl227995228023_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227997228018_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227995228023_))
                                      (let ((_e228000228026_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227995228023_))))
                                        (let ((_hd227999228029_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228000228026_)))
                                              (_tl227998228031_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228000228026_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227998228031_))
                                              ((lambda (_L228034_ _L228035_)
                                                 (let ((_new-expr228050_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L228034_
                                                           _id227985_
                                                           _new-id227986_)))
                                                       (_new-xid228051_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L228035_
                                                               _id227985_))
                                                            _new-id227986_
                                                            _L228035_)))
                                                   (let ((__tmp234019
                                                          (let ((__tmp234020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp234021
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr228050_ '()))))
                           (declare (not safe))
                           (cons _new-xid228051_ __tmp234021))))
                    (declare (not safe))
                    (cons '%#set! __tmp234020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp234019
                                                      _stx227984_))))
                                               _hd227999228029_
                                               _hd227996228021_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227988228005_
                                                 _g227989228008_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227988228005_ _g227989228008_)))))
                              (let ()
                                (declare (not safe))
                                (_g227988228005_ _g227989228008_)))))
                      (let ()
                        (declare (not safe))
                        (_g227988228005_ _g227989228008_))))))
          (declare (not safe))
          (_g227987228053_ _stx227984_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx227908_ _subst227909_)
        (let* ((_g227911227928_
                (lambda (_g227912227925_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227912227925_))))
               (_g227910227981_
                (lambda (_g227912227931_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227912227931_))
                      (let ((_e227917227933_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227912227931_))))
                        (let ((_hd227916227936_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227917227933_)))
                              (_tl227915227938_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227917227933_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227915227938_))
                              (let ((_e227920227941_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227915227938_))))
                                (let ((_hd227919227944_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227920227941_)))
                                      (_tl227918227946_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227920227941_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227918227946_))
                                      (let ((_e227923227949_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227918227946_))))
                                        (let ((_hd227922227952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227923227949_)))
                                              (_tl227921227954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227923227949_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227921227954_))
                                              ((lambda (_L227957_ _L227958_)
                                                 (let ((_new-expr227978_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L227957_
                                                           _subst227909_)))
                                                       (_new-xid227979_
                                                        (let ((_$e227975_
                                                               (let ((__tmp234022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub227973_)
                                (let ((__tmp234023 (car _sub227973_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L227958_
                                   __tmp234023)))))
                         (declare (not safe))
                         (find __tmp234022 _subst227909_))))
                  (if _$e227975_ (cdr _$e227975_) _L227958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp234024
                                                          (let ((__tmp234025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp234026
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr227978_ '()))))
                           (declare (not safe))
                           (cons _new-xid227979_ __tmp234026))))
                    (declare (not safe))
                    (cons '%#set! __tmp234025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp234024
                                                      _stx227908_))))
                                               _hd227922227952_
                                               _hd227919227944_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227911227928_
                                                 _g227912227931_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227911227928_ _g227912227931_)))))
                              (let ()
                                (declare (not safe))
                                (_g227911227928_ _g227912227931_)))))
                      (let ()
                        (declare (not safe))
                        (_g227911227928_ _g227912227931_))))))
          (declare (not safe))
          (_g227910227981_ _stx227908_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx227854_ _ht227855_)
        (let* ((_g227857227870_
                (lambda (_g227858227867_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227858227867_))))
               (_g227856227905_
                (lambda (_g227858227873_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227858227873_))
                      (let ((_e227862227875_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227858227873_))))
                        (let ((_hd227861227878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227862227875_)))
                              (_tl227860227880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227862227875_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227860227880_))
                              (let ((_e227865227883_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227860227880_))))
                                (let ((_hd227864227886_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227865227883_)))
                                      (_tl227863227888_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227865227883_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227863227888_))
                                      ((lambda (_L227891_)
                                         (let ((_eid227903_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L227891_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht227855_
                                            _eid227903_
                                            1+
                                            '0)))
                                       _hd227864227886_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227857227870_ _g227858227873_)))))
                              (let ()
                                (declare (not safe))
                                (_g227857227870_ _g227858227873_)))))
                      (let ()
                        (declare (not safe))
                        (_g227857227870_ _g227858227873_))))))
          (declare (not safe))
          (_g227856227905_ _stx227854_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx227784_ _ht227785_)
        (let* ((_g227787227804_
                (lambda (_g227788227801_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227788227801_))))
               (_g227786227851_
                (lambda (_g227788227807_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227788227807_))
                      (let ((_e227793227809_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227788227807_))))
                        (let ((_hd227792227812_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227793227809_)))
                              (_tl227791227814_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227793227809_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227791227814_))
                              (let ((_e227796227817_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227791227814_))))
                                (let ((_hd227795227820_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227796227817_)))
                                      (_tl227794227822_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227796227817_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227794227822_))
                                      (let ((_e227799227825_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227794227822_))))
                                        (let ((_hd227798227828_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227799227825_)))
                                              (_tl227797227830_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227799227825_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227797227830_))
                                              ((lambda (_L227833_ _L227834_)
                                                 (let ((_eid227849_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L227834_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht227785_
                                                      _eid227849_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L227833_
                                                      _ht227785_))))
                                               _hd227798227828_
                                               _hd227795227820_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227787227804_
                                                 _g227788227807_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227787227804_ _g227788227807_)))))
                              (let ()
                                (declare (not safe))
                                (_g227787227804_ _g227788227807_)))))
                      (let ()
                        (declare (not safe))
                        (_g227787227804_ _g227788227807_))))))
          (declare (not safe))
          (_g227786227851_ _stx227784_))))
    (define gxc#find-body%
      (lambda (_stx227697_ _arg227698_)
        (let* ((_g227700227719_
                (lambda (_g227701227716_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227701227716_))))
               (_g227699227781_
                (lambda (_g227701227722_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227701227722_))
                      (let ((_e227705227724_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227701227722_))))
                        (let ((_hd227704227727_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227705227724_)))
                              (_tl227703227729_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227705227724_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl227703227729_))
                              (let ((_g234027_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl227703227729_
                                        '0))))
                                (begin
                                  (let ((_g234028_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g234027_)
                                               (##vector-length _g234027_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g234028_ 2)))
                                        (error "Context expects 2 values"
                                               _g234028_)))
                                  (let ((_target227706227732_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g234027_ 0)))
                                        (_tl227708227734_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g234027_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl227708227734_))
                                        (letrec ((_loop227709227737_
                                                  (lambda (_hd227707227740_
                                                           _expr227713227742_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd227707227740_))
                                                        (let ((_e227710227745_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd227707227740_))))
                  (let ((_lp-hd227711227748_
                         (let () (declare (not safe)) (##car _e227710227745_)))
                        (_lp-tl227712227750_
                         (let ()
                           (declare (not safe))
                           (##cdr _e227710227745_))))
                    (let ((__tmp234032
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd227711227748_ _expr227713227742_))))
                      (declare (not safe))
                      (_loop227709227737_ _lp-tl227712227750_ __tmp234032))))
                (let ((_expr227714227753_ (reverse _expr227713227742_)))
                  ((lambda (_L227756_)
                     (let ((__tmp234031
                            (lambda (_g227769227771_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g227769227771_
                                 _arg227698_))))
                           (__tmp234029
                            (let ((__tmp234030
                                   (lambda (_g227773227776_ _g227774227778_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g227773227776_
                                             _g227774227778_)))))
                              (declare (not safe))
                              (foldr1 __tmp234030 '() _L227756_))))
                       (declare (not safe))
                       (ormap1 __tmp234031 __tmp234029)))
                   _expr227714227753_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop227709227737_
                                             _target227706227732_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g227700227719_
                                           _g227701227722_))))))
                              (let ()
                                (declare (not safe))
                                (_g227700227719_ _g227701227722_)))))
                      (let ()
                        (declare (not safe))
                        (_g227700227719_ _g227701227722_))))))
          (declare (not safe))
          (_g227699227781_ _stx227697_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx227629_ _arg227630_)
        (let* ((_g227632227649_
                (lambda (_g227633227646_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227633227646_))))
               (_g227631227694_
                (lambda (_g227633227652_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227633227652_))
                      (let ((_e227638227654_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227633227652_))))
                        (let ((_hd227637227657_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227638227654_)))
                              (_tl227636227659_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227638227654_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227636227659_))
                              (let ((_e227641227662_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227636227659_))))
                                (let ((_hd227640227665_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227641227662_)))
                                      (_tl227639227667_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227641227662_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227639227667_))
                                      (let ((_e227644227670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227639227667_))))
                                        (let ((_hd227643227673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227644227670_)))
                                              (_tl227642227675_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227644227670_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227642227675_))
                                              ((lambda (_L227678_ _L227679_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L227678_
                                                    _arg227630_)))
                                               _hd227643227673_
                                               _hd227640227665_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227632227649_
                                                 _g227633227652_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227632227649_ _g227633227652_)))))
                              (let ()
                                (declare (not safe))
                                (_g227632227649_ _g227633227652_)))))
                      (let ()
                        (declare (not safe))
                        (_g227632227649_ _g227633227652_))))))
          (declare (not safe))
          (_g227631227694_ _stx227629_))))
    (define gxc#find-lambda%
      (lambda (_stx227561_ _arg227562_)
        (let* ((_g227564227581_
                (lambda (_g227565227578_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227565227578_))))
               (_g227563227626_
                (lambda (_g227565227584_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227565227584_))
                      (let ((_e227570227586_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227565227584_))))
                        (let ((_hd227569227589_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227570227586_)))
                              (_tl227568227591_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227570227586_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227568227591_))
                              (let ((_e227573227594_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227568227591_))))
                                (let ((_hd227572227597_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227573227594_)))
                                      (_tl227571227599_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227573227594_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227571227599_))
                                      (let ((_e227576227602_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227571227599_))))
                                        (let ((_hd227575227605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227576227602_)))
                                              (_tl227574227607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227576227602_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227574227607_))
                                              ((lambda (_L227610_ _L227611_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L227610_
                                                    _arg227562_)))
                                               _hd227575227605_
                                               _hd227572227597_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227564227581_
                                                 _g227565227584_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227564227581_ _g227565227584_)))))
                              (let ()
                                (declare (not safe))
                                (_g227564227581_ _g227565227584_)))))
                      (let ()
                        (declare (not safe))
                        (_g227564227581_ _g227565227584_))))))
          (declare (not safe))
          (_g227563227626_ _stx227561_))))
    (define gxc#find-case-lambda%
      (lambda (_stx227443_ _arg227444_)
        (let* ((_g227446227474_
                (lambda (_g227447227471_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227447227471_))))
               (_g227445227558_
                (lambda (_g227447227477_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227447227477_))
                      (let ((_e227452227479_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227447227477_))))
                        (let ((_hd227451227482_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227452227479_)))
                              (_tl227450227484_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227452227479_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl227450227484_))
                              (let ((_g234033_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl227450227484_
                                        '0))))
                                (begin
                                  (let ((_g234034_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g234033_)
                                               (##vector-length _g234033_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g234034_ 2)))
                                        (error "Context expects 2 values"
                                               _g234034_)))
                                  (let ((_target227453227487_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g234033_ 0)))
                                        (_tl227455227489_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g234033_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl227455227489_))
                                        (letrec ((_loop227456227492_
                                                  (lambda (_hd227454227495_
                                                           _body227460227497_
                                                           _hd227461227499_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd227454227495_))
                                                        (let ((_e227457227502_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd227454227495_))))
                  (let ((_lp-hd227458227505_
                         (let () (declare (not safe)) (##car _e227457227502_)))
                        (_lp-tl227459227507_
                         (let ()
                           (declare (not safe))
                           (##cdr _e227457227502_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd227458227505_))
                        (let ((_e227466227510_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd227458227505_))))
                          (let ((_hd227465227513_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e227466227510_)))
                                (_tl227464227515_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e227466227510_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl227464227515_))
                                (let ((_e227469227518_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl227464227515_))))
                                  (let ((_hd227468227521_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227469227518_)))
                                        (_tl227467227523_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227469227518_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl227467227523_))
                                        (let ((__tmp234039
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd227468227521_
                                                       _body227460227497_)))
                                              (__tmp234038
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd227465227513_
                                                       _hd227461227499_))))
                                          (declare (not safe))
                                          (_loop227456227492_
                                           _lp-tl227459227507_
                                           __tmp234039
                                           __tmp234038))
                                        (let ()
                                          (declare (not safe))
                                          (_g227446227474_ _g227447227477_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g227446227474_ _g227447227477_)))))
                        (let ()
                          (declare (not safe))
                          (_g227446227474_ _g227447227477_)))))
                (let ((_body227462227526_ (reverse _body227460227497_))
                      (_hd227463227528_ (reverse _hd227461227499_)))
                  ((lambda (_L227531_ _L227532_)
                     (let ((__tmp234037
                            (lambda (_g227546227548_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g227546227548_
                                 _arg227444_))))
                           (__tmp234035
                            (let ((__tmp234036
                                   (lambda (_g227550227553_ _g227551227555_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g227550227553_
                                             _g227551227555_)))))
                              (declare (not safe))
                              (foldr1 __tmp234036 '() _L227531_))))
                       (declare (not safe))
                       (ormap1 __tmp234037 __tmp234035)))
                   _body227462227526_
                   _hd227463227528_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop227456227492_
                                             _target227453227487_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g227446227474_
                                           _g227447227477_))))))
                              (let ()
                                (declare (not safe))
                                (_g227446227474_ _g227447227477_)))))
                      (let ()
                        (declare (not safe))
                        (_g227446227474_ _g227447227477_))))))
          (declare (not safe))
          (_g227445227558_ _stx227443_))))
    (define gxc#find-let-values%
      (lambda (_stx227293_ _arg227294_)
        (let* ((_g227296227331_
                (lambda (_g227297227328_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227297227328_))))
               (_g227295227440_
                (lambda (_g227297227334_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227297227334_))
                      (let ((_e227303227336_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227297227334_))))
                        (let ((_hd227302227339_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227303227336_)))
                              (_tl227301227341_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227303227336_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227301227341_))
                              (let ((_e227306227344_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227301227341_))))
                                (let ((_hd227305227347_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227306227344_)))
                                      (_tl227304227349_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227306227344_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd227305227347_))
                                      (let ((_g234040_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd227305227347_
                                                '0))))
                                        (begin
                                          (let ((_g234041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g234040_)
                                                       (##vector-length
                                                        _g234040_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g234041_ 2)))
                                                (error "Context expects 2 values"
                                                       _g234041_)))
                                          (let ((_target227307227352_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g234040_ 0)))
                                                (_tl227309227354_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g234040_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl227309227354_))
                                                (letrec ((_loop227310227357_
                                                          (lambda (_hd227308227360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr227314227362_
                           _bind227315227364_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd227308227360_))
                        (let ((_e227311227367_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd227308227360_))))
                          (let ((_lp-hd227312227370_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e227311227367_)))
                                (_lp-tl227313227372_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e227311227367_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd227312227370_))
                                (let ((_e227320227375_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd227312227370_))))
                                  (let ((_hd227319227378_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227320227375_)))
                                        (_tl227318227380_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227320227375_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl227318227380_))
                                        (let ((_e227323227383_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl227318227380_))))
                                          (let ((_hd227322227386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e227323227383_)))
                                                (_tl227321227388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e227323227383_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl227321227388_))
                                                (let ((__tmp234046
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd227322227386_
                                                               _expr227314227362_)))
                                                      (__tmp234045
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd227319227378_
                                                               _bind227315227364_))))
                                                  (declare (not safe))
                                                  (_loop227310227357_
                                                   _lp-tl227313227372_
                                                   __tmp234046
                                                   __tmp234045))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g227296227331_
                                                   _g227297227334_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g227296227331_ _g227297227334_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g227296227331_ _g227297227334_)))))
                        (let ((_expr227316227391_ (reverse _expr227314227362_))
                              (_bind227317227393_
                               (reverse _bind227315227364_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227304227349_))
                              (let ((_e227326227396_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227304227349_))))
                                (let ((_hd227325227399_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227326227396_)))
                                      (_tl227324227401_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227326227396_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227324227401_))
                                      ((lambda (_L227404_ _L227405_ _L227406_)
                                         (let ((_$e227437_
                                                (let ((__tmp234044
                                                       (lambda (_g227425227427_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g227425227427_
                                                            _arg227294_))))
                                                      (__tmp234042
                                                       (let ((__tmp234043
                                                              (lambda (_g227429227432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g227430227434_)
                        (let ()
                          (declare (not safe))
                          (cons _g227429227432_ _g227430227434_)))))
                 (declare (not safe))
                 (foldr1 __tmp234043 '() _L227405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp234044
                                                          __tmp234042))))
                                           (if _$e227437_
                                               _$e227437_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L227404_
                                                  _arg227294_)))))
                                       _hd227325227399_
                                       _expr227316227391_
                                       _bind227317227393_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227296227331_ _g227297227334_)))))
                              (let ()
                                (declare (not safe))
                                (_g227296227331_ _g227297227334_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop227310227357_
                                                     _target227307227352_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g227296227331_
                                                   _g227297227334_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227296227331_ _g227297227334_)))))
                              (let ()
                                (declare (not safe))
                                (_g227296227331_ _g227297227334_)))))
                      (let ()
                        (declare (not safe))
                        (_g227296227331_ _g227297227334_))))))
          (declare (not safe))
          (_g227295227440_ _stx227293_))))
    (define gxc#find-setq%
      (lambda (_stx227225_ _arg227226_)
        (let* ((_g227228227245_
                (lambda (_g227229227242_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227229227242_))))
               (_g227227227290_
                (lambda (_g227229227248_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227229227248_))
                      (let ((_e227234227250_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227229227248_))))
                        (let ((_hd227233227253_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227234227250_)))
                              (_tl227232227255_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227234227250_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227232227255_))
                              (let ((_e227237227258_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227232227255_))))
                                (let ((_hd227236227261_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227237227258_)))
                                      (_tl227235227263_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227237227258_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227235227263_))
                                      (let ((_e227240227266_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227235227263_))))
                                        (let ((_hd227239227269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227240227266_)))
                                              (_tl227238227271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227240227266_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227238227271_))
                                              ((lambda (_L227274_ _L227275_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L227274_
                                                    _arg227226_)))
                                               _hd227239227269_
                                               _hd227236227261_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227228227245_
                                                 _g227229227248_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227228227245_ _g227229227248_)))))
                              (let ()
                                (declare (not safe))
                                (_g227228227245_ _g227229227248_)))))
                      (let ()
                        (declare (not safe))
                        (_g227228227245_ _g227229227248_))))))
          (declare (not safe))
          (_g227227227290_ _stx227225_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx227169_ _ids227170_)
        (let* ((_g227172227185_
                (lambda (_g227173227182_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227173227182_))))
               (_g227171227222_
                (lambda (_g227173227188_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227173227188_))
                      (let ((_e227177227190_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227173227188_))))
                        (let ((_hd227176227193_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227177227190_)))
                              (_tl227175227195_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227177227190_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227175227195_))
                              (let ((_e227180227198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227175227195_))))
                                (let ((_hd227179227201_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227180227198_)))
                                      (_tl227178227203_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227180227198_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227178227203_))
                                      ((lambda (_L227206_)
                                         (let ((__tmp234047
                                                (lambda (_g227217227219_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L227206_
                                                     _g227217227219_)))))
                                           (declare (not safe))
                                           (find __tmp234047 _ids227170_)))
                                       _hd227179227201_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227172227185_ _g227173227188_)))))
                              (let ()
                                (declare (not safe))
                                (_g227172227185_ _g227173227188_)))))
                      (let ()
                        (declare (not safe))
                        (_g227172227185_ _g227173227188_))))))
          (declare (not safe))
          (_g227171227222_ _stx227169_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx227093_ _ids227094_)
        (let* ((_g227096227113_
                (lambda (_g227097227110_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227097227110_))))
               (_g227095227166_
                (lambda (_g227097227116_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227097227116_))
                      (let ((_e227102227118_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227097227116_))))
                        (let ((_hd227101227121_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227102227118_)))
                              (_tl227100227123_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227102227118_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227100227123_))
                              (let ((_e227105227126_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227100227123_))))
                                (let ((_hd227104227129_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227105227126_)))
                                      (_tl227103227131_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227105227126_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227103227131_))
                                      (let ((_e227108227134_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227103227131_))))
                                        (let ((_hd227107227137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227108227134_)))
                                              (_tl227106227139_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227108227134_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227106227139_))
                                              ((lambda (_L227142_ _L227143_)
                                                 (let ((_$e227163_
                                                        (let ((__tmp234048
                                                               (lambda (_g227158227160_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L227143_ _g227158227160_)))))
                  (declare (not safe))
                  (find __tmp234048 _ids227094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e227163_
                                                       _$e227163_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L227142_
                                                          _ids227094_)))))
                                               _hd227107227137_
                                               _hd227104227129_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227096227113_
                                                 _g227097227116_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227096227113_ _g227097227116_)))))
                              (let ()
                                (declare (not safe))
                                (_g227096227113_ _g227097227116_)))))
                      (let ()
                        (declare (not safe))
                        (_g227096227113_ _g227097227116_))))))
          (declare (not safe))
          (_g227095227166_ _stx227093_))))))
