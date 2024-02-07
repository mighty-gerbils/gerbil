(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707346618)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl214757_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214757_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214757_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214757_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214757_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl214757_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl214753_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214753_ '%#declare gxc#xform-identity))
           _tbl214753_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl214749_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp219197 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl214749_ __tmp219197))
           (let ((__tmp219198 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl214749_ __tmp219198))
           _tbl214749_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl214745_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214745_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214745_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214745_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214745_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214745_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl214745_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl214741_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp219199 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl214741_ __tmp219199))
           (let ((__tmp219200 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl214741_ __tmp219200))
           (let ()
             (declare (not safe))
             (table-set! _tbl214741_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214741_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214741_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214741_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214741_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl214741_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl214737_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp219201 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl214737_ __tmp219201))
           (let ()
             (declare (not safe))
             (table-set! _tbl214737_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214737_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214737_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214737_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214737_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214737_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214737_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214737_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214737_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl214737_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214737_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl214737_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx214720_ . _args214722_)
        (let ((__tmp219203
               (lambda ()
                 (declare (not safe))
                 (if (null? _args214722_)
                     (gxc#compile-e__0 _stx214720_)
                     (let ((_arg1214727_ (car _args214722_))
                           (_rest214729_ (cdr _args214722_)))
                       (if (null? _rest214729_)
                           (gxc#compile-e__1 _stx214720_ _arg1214727_)
                           (let ((_arg2214732_ (car _rest214729_))
                                 (_rest214734_ (cdr _rest214729_)))
                             (if (null? _rest214734_)
                                 (gxc#compile-e__2
                                  _stx214720_
                                  _arg1214727_
                                  _arg2214732_)
                                 (apply gxc#compile-e
                                        _stx214720_
                                        _arg1214727_
                                        _arg2214732_
                                        _rest214734_))))))))
              (__tmp219202 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp219203
           gxc#current-compile-methods
           __tmp219202))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl214717_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp219204 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl214717_ __tmp219204))
           (let ()
             (declare (not safe))
             (table-set! _tbl214717_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214717_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214717_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214717_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214717_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl214717_))))
    (define gxc#apply-collect-methods
      (lambda (_stx214700_ . _args214702_)
        (let ((__tmp219206
               (lambda ()
                 (declare (not safe))
                 (if (null? _args214702_)
                     (gxc#compile-e__0 _stx214700_)
                     (let ((_arg1214707_ (car _args214702_))
                           (_rest214709_ (cdr _args214702_)))
                       (if (null? _rest214709_)
                           (gxc#compile-e__1 _stx214700_ _arg1214707_)
                           (let ((_arg2214712_ (car _rest214709_))
                                 (_rest214714_ (cdr _rest214709_)))
                             (if (null? _rest214714_)
                                 (gxc#compile-e__2
                                  _stx214700_
                                  _arg1214707_
                                  _arg2214712_)
                                 (apply gxc#compile-e
                                        _stx214700_
                                        _arg1214707_
                                        _arg2214712_
                                        _rest214714_))))))))
              (__tmp219205 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp219206
           gxc#current-compile-methods
           __tmp219205))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl214697_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp219207 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl214697_ __tmp219207))
           (let ()
             (declare (not safe))
             (table-set! _tbl214697_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214697_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214697_ '%#set! gxc#expression-subst-setq%))
           _tbl214697_))))
    (define gxc#apply-expression-subst
      (lambda (_stx214680_ . _args214682_)
        (let ((__tmp219209
               (lambda ()
                 (declare (not safe))
                 (if (null? _args214682_)
                     (gxc#compile-e__0 _stx214680_)
                     (let ((_arg1214687_ (car _args214682_))
                           (_rest214689_ (cdr _args214682_)))
                       (if (null? _rest214689_)
                           (gxc#compile-e__1 _stx214680_ _arg1214687_)
                           (let ((_arg2214692_ (car _rest214689_))
                                 (_rest214694_ (cdr _rest214689_)))
                             (if (null? _rest214694_)
                                 (gxc#compile-e__2
                                  _stx214680_
                                  _arg1214687_
                                  _arg2214692_)
                                 (apply gxc#compile-e
                                        _stx214680_
                                        _arg1214687_
                                        _arg2214692_
                                        _rest214694_))))))))
              (__tmp219208 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp219209
           gxc#current-compile-methods
           __tmp219208))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl214677_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp219210 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl214677_ __tmp219210))
           (let ()
             (declare (not safe))
             (table-set! _tbl214677_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214677_ '%#set! gxc#expression-subst*-setq%))
           _tbl214677_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx214660_ . _args214662_)
        (let ((__tmp219212
               (lambda ()
                 (declare (not safe))
                 (if (null? _args214662_)
                     (gxc#compile-e__0 _stx214660_)
                     (let ((_arg1214667_ (car _args214662_))
                           (_rest214669_ (cdr _args214662_)))
                       (if (null? _rest214669_)
                           (gxc#compile-e__1 _stx214660_ _arg1214667_)
                           (let ((_arg2214672_ (car _rest214669_))
                                 (_rest214674_ (cdr _rest214669_)))
                             (if (null? _rest214674_)
                                 (gxc#compile-e__2
                                  _stx214660_
                                  _arg1214667_
                                  _arg2214672_)
                                 (apply gxc#compile-e
                                        _stx214660_
                                        _arg1214667_
                                        _arg2214672_
                                        _rest214674_))))))))
              (__tmp219211 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp219212
           gxc#current-compile-methods
           __tmp219211))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl214657_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp219213 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl214657_ __tmp219213))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214657_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl214657_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214657_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl214657_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl214653_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp219214 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl214653_ __tmp219214))
           (let ()
             (declare (not safe))
             (table-set! _tbl214653_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214653_ '%#set! gxc#find-var-refs-setq%))
           _tbl214653_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx214636_ . _args214638_)
        (let ((__tmp219216
               (lambda ()
                 (declare (not safe))
                 (if (null? _args214638_)
                     (gxc#compile-e__0 _stx214636_)
                     (let ((_arg1214643_ (car _args214638_))
                           (_rest214645_ (cdr _args214638_)))
                       (if (null? _rest214645_)
                           (gxc#compile-e__1 _stx214636_ _arg1214643_)
                           (let ((_arg2214648_ (car _rest214645_))
                                 (_rest214650_ (cdr _rest214645_)))
                             (if (null? _rest214650_)
                                 (gxc#compile-e__2
                                  _stx214636_
                                  _arg1214643_
                                  _arg2214648_)
                                 (apply gxc#compile-e
                                        _stx214636_
                                        _arg1214643_
                                        _arg2214648_
                                        _rest214650_))))))))
              (__tmp219215 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp219216
           gxc#current-compile-methods
           __tmp219215))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl214633_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp219217 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl214633_ __tmp219217))
           (let ()
             (declare (not safe))
             (table-set! _tbl214633_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl214633_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl214633_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx214616_ . _args214618_)
        (let ((__tmp219219
               (lambda ()
                 (declare (not safe))
                 (if (null? _args214618_)
                     (gxc#compile-e__0 _stx214616_)
                     (let ((_arg1214623_ (car _args214618_))
                           (_rest214625_ (cdr _args214618_)))
                       (if (null? _rest214625_)
                           (gxc#compile-e__1 _stx214616_ _arg1214623_)
                           (let ((_arg2214628_ (car _rest214625_))
                                 (_rest214630_ (cdr _rest214625_)))
                             (if (null? _rest214630_)
                                 (gxc#compile-e__2
                                  _stx214616_
                                  _arg1214623_
                                  _arg2214628_)
                                 (apply gxc#compile-e
                                        _stx214616_
                                        _arg1214623_
                                        _arg2214628_
                                        _rest214630_))))))))
              (__tmp219218 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp219219
           gxc#current-compile-methods
           __tmp219218))))
    (define gxc#xform-identity
      (lambda (_stx214613_ . _args214614_) _stx214613_))
    (define gxc#xform-wrap-source
      (lambda (_stx214610_ _src-stx214611_)
        (let ((__tmp219220
               (let () (declare (not safe)) (gx#stx-source _src-stx214611_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx214610_ __tmp219220))))
    (define gxc#xform-apply-compile-e
      (lambda (_args214597_)
        (lambda (_stx214599_)
          (if (let () (declare (not safe)) (null? _args214597_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx214599_))
              (let ((_arg1214601_ (car _args214597_))
                    (_rest214603_ (cdr _args214597_)))
                (if (let () (declare (not safe)) (null? _rest214603_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx214599_ _arg1214601_))
                    (let ((_arg2214606_ (car _rest214603_))
                          (_rest214608_ (cdr _rest214603_)))
                      (if (let () (declare (not safe)) (null? _rest214608_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx214599_
                             _arg1214601_
                             _arg2214606_))
                          (apply gxc#compile-e
                                 _stx214599_
                                 _arg1214601_
                                 _arg2214606_
                                 _rest214608_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx214556_ . _args214557_)
        (let* ((_g214559214569_
                (lambda (_g214560214566_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g214560214566_))))
               (_g214558214594_
                (lambda (_g214560214572_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g214560214572_))
                      (let ((_e214564214574_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g214560214572_))))
                        (let ((_hd214563214577_
                               (let ()
                                 (declare (not safe))
                                 (##car _e214564214574_)))
                              (_tl214562214579_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e214564214574_))))
                          ((lambda (_L214582_)
                             (let* ((_forms214592_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args214557_))
                                          _L214582_))
                                    (__tmp219221
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms214592_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp219221
                                _stx214556_)))
                           _tl214562214579_)))
                      (let ()
                        (declare (not safe))
                        (_g214559214569_ _g214560214572_))))))
          (declare (not safe))
          (_g214558214594_ _stx214556_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx214514_ . _args214515_)
        (let* ((_g214517214527_
                (lambda (_g214518214524_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g214518214524_))))
               (_g214516214553_
                (lambda (_g214518214530_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g214518214530_))
                      (let ((_e214522214532_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g214518214530_))))
                        (let ((_hd214521214535_
                               (let ()
                                 (declare (not safe))
                                 (##car _e214522214532_)))
                              (_tl214520214537_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e214522214532_))))
                          ((lambda (_L214540_)
                             (let ((__tmp219224
                                    (lambda ()
                                      (let* ((_forms214551_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args214515_))
                                                   _L214540_))
                                             (__tmp219225
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms214551_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp219225
                                         _stx214514_))))
                                   (__tmp219222
                                    (let ((__tmp219223
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp219223 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp219224
                                gx#current-expander-phi
                                __tmp219222)))
                           _tl214520214537_)))
                      (let ()
                        (declare (not safe))
                        (_g214517214527_ _g214518214530_))))))
          (declare (not safe))
          (_g214516214553_ _stx214514_))))
    (define gxc#xform-module%
      (lambda (_stx214442_ . _args214443_)
        (let* ((_g214445214459_
                (lambda (_g214446214456_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g214446214456_))))
               (_g214444214511_
                (lambda (_g214446214462_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g214446214462_))
                      (let ((_e214451214464_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g214446214462_))))
                        (let ((_hd214450214467_
                               (let ()
                                 (declare (not safe))
                                 (##car _e214451214464_)))
                              (_tl214449214469_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e214451214464_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl214449214469_))
                              (let ((_e214454214472_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl214449214469_))))
                                (let ((_hd214453214475_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e214454214472_)))
                                      (_tl214452214477_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e214454214472_))))
                                  ((lambda (_L214480_ _L214481_)
                                     (let* ((_ctx214494_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L214481_)))
                                            (_code214496_
                                             (##structure-ref
                                              _ctx214494_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code214508_
                                             (let ((__tmp219226
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args214443_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code214496_))
                                                          (let ((_arg1214499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args214443_))
                        (_rest214501_ (cdr _args214443_)))
                    (if (let () (declare (not safe)) (null? _rest214501_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code214496_ _arg1214499_))
                        (let ((_arg2214504_ (car _rest214501_))
                              (_rest214506_ (cdr _rest214501_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest214506_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code214496_
                                 _arg1214499_
                                 _arg2214504_))
                              (apply gxc#compile-e
                                     _code214496_
                                     _arg1214499_
                                     _arg2214504_
                                     _rest214506_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp219226
                                                gx#current-expander-context
                                                _ctx214494_))))
                                       (##structure-set!
                                        _ctx214494_
                                        _code214508_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp219227
                                              (let ((__tmp219228
                                                     (let ((__tmp219229
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code214508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L214481_ __tmp219229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp219228))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp219227
                                          _stx214442_))))
                                   _tl214452214477_
                                   _hd214453214475_)))
                              (let ()
                                (declare (not safe))
                                (_g214445214459_ _g214446214462_)))))
                      (let ()
                        (declare (not safe))
                        (_g214445214459_ _g214446214462_))))))
          (declare (not safe))
          (_g214444214511_ _stx214442_))))
    (define gxc#xform-define-values%
      (lambda (_stx214363_ . _args214364_)
        (let* ((_g214366214383_
                (lambda (_g214367214380_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g214367214380_))))
               (_g214365214439_
                (lambda (_g214367214386_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g214367214386_))
                      (let ((_e214372214388_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g214367214386_))))
                        (let ((_hd214371214391_
                               (let ()
                                 (declare (not safe))
                                 (##car _e214372214388_)))
                              (_tl214370214393_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e214372214388_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl214370214393_))
                              (let ((_e214375214396_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl214370214393_))))
                                (let ((_hd214374214399_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e214375214396_)))
                                      (_tl214373214401_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e214375214396_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl214373214401_))
                                      (let ((_e214378214404_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl214373214401_))))
                                        (let ((_hd214377214407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e214378214404_)))
                                              (_tl214376214409_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e214378214404_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl214376214409_))
                                              ((lambda (_L214412_ _L214413_)
                                                 (let* ((_expr214437_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args214364_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L214412_))
                     (let ((_arg1214428_ (car _args214364_))
                           (_rest214430_ (cdr _args214364_)))
                       (if (let () (declare (not safe)) (null? _rest214430_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L214412_ _arg1214428_))
                           (let ((_arg2214433_ (car _rest214430_))
                                 (_rest214435_ (cdr _rest214430_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest214435_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L214412_
                                    _arg1214428_
                                    _arg2214433_))
                                 (apply gxc#compile-e
                                        _L214412_
                                        _arg1214428_
                                        _arg2214433_
                                        _rest214435_)))))))
                (__tmp219230
                 (let ((__tmp219231
                        (let ((__tmp219232
                               (let ()
                                 (declare (not safe))
                                 (cons _expr214437_ '()))))
                          (declare (not safe))
                          (cons _L214413_ __tmp219232))))
                   (declare (not safe))
                   (cons '%#define-values __tmp219231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp219230
                                                    _stx214363_)))
                                               _hd214377214407_
                                               _hd214374214399_)
                                              (let ()
                                                (declare (not safe))
                                                (_g214366214383_
                                                 _g214367214386_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g214366214383_ _g214367214386_)))))
                              (let ()
                                (declare (not safe))
                                (_g214366214383_ _g214367214386_)))))
                      (let ()
                        (declare (not safe))
                        (_g214366214383_ _g214367214386_))))))
          (declare (not safe))
          (_g214365214439_ _stx214363_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx214283_ . _args214284_)
        (let* ((_g214286214303_
                (lambda (_g214287214300_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g214287214300_))))
               (_g214285214360_
                (lambda (_g214287214306_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g214287214306_))
                      (let ((_e214292214308_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g214287214306_))))
                        (let ((_hd214291214311_
                               (let ()
                                 (declare (not safe))
                                 (##car _e214292214308_)))
                              (_tl214290214313_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e214292214308_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl214290214313_))
                              (let ((_e214295214316_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl214290214313_))))
                                (let ((_hd214294214319_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e214295214316_)))
                                      (_tl214293214321_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e214295214316_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl214293214321_))
                                      (let ((_e214298214324_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl214293214321_))))
                                        (let ((_hd214297214327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e214298214324_)))
                                              (_tl214296214329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e214298214324_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl214296214329_))
                                              ((lambda (_L214332_ _L214333_)
                                                 (let ((__tmp219235
                                                        (lambda ()
                                                          (let* ((_expr214358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args214284_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L214332_))
                              (let ((_arg1214349_ (car _args214284_))
                                    (_rest214351_ (cdr _args214284_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest214351_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L214332_
                                       _arg1214349_))
                                    (let ((_arg2214354_ (car _rest214351_))
                                          (_rest214356_ (cdr _rest214351_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest214356_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L214332_
                                             _arg1214349_
                                             _arg2214354_))
                                          (apply gxc#compile-e
                                                 _L214332_
                                                 _arg1214349_
                                                 _arg2214354_
                                                 _rest214356_)))))))
                         (__tmp219236
                          (let ((__tmp219237
                                 (let ((__tmp219238
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr214358_ '()))))
                                   (declare (not safe))
                                   (cons _L214333_ __tmp219238))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp219237))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp219236 _stx214283_))))
               (__tmp219233
                (let ((__tmp219234 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp219234 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp219235
                                                    gx#current-expander-phi
                                                    __tmp219233)))
                                               _hd214297214327_
                                               _hd214294214319_)
                                              (let ()
                                                (declare (not safe))
                                                (_g214286214303_
                                                 _g214287214306_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g214286214303_ _g214287214306_)))))
                              (let ()
                                (declare (not safe))
                                (_g214286214303_ _g214287214306_)))))
                      (let ()
                        (declare (not safe))
                        (_g214286214303_ _g214287214306_))))))
          (declare (not safe))
          (_g214285214360_ _stx214283_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx214204_ . _args214205_)
        (let* ((_g214207214224_
                (lambda (_g214208214221_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g214208214221_))))
               (_g214206214280_
                (lambda (_g214208214227_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g214208214227_))
                      (let ((_e214213214229_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g214208214227_))))
                        (let ((_hd214212214232_
                               (let ()
                                 (declare (not safe))
                                 (##car _e214213214229_)))
                              (_tl214211214234_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e214213214229_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl214211214234_))
                              (let ((_e214216214237_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl214211214234_))))
                                (let ((_hd214215214240_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e214216214237_)))
                                      (_tl214214214242_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e214216214237_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl214214214242_))
                                      (let ((_e214219214245_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl214214214242_))))
                                        (let ((_hd214218214248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e214219214245_)))
                                              (_tl214217214250_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e214219214245_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl214217214250_))
                                              ((lambda (_L214253_ _L214254_)
                                                 (let* ((_expr214278_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args214205_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L214253_))
                     (let ((_arg1214269_ (car _args214205_))
                           (_rest214271_ (cdr _args214205_)))
                       (if (let () (declare (not safe)) (null? _rest214271_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L214253_ _arg1214269_))
                           (let ((_arg2214274_ (car _rest214271_))
                                 (_rest214276_ (cdr _rest214271_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest214276_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L214253_
                                    _arg1214269_
                                    _arg2214274_))
                                 (apply gxc#compile-e
                                        _L214253_
                                        _arg1214269_
                                        _arg2214274_
                                        _rest214276_)))))))
                (__tmp219239
                 (let ((__tmp219240
                        (let ((__tmp219241
                               (let ()
                                 (declare (not safe))
                                 (cons _expr214278_ '()))))
                          (declare (not safe))
                          (cons _L214254_ __tmp219241))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp219240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp219239
                                                    _stx214204_)))
                                               _hd214218214248_
                                               _hd214215214240_)
                                              (let ()
                                                (declare (not safe))
                                                (_g214207214224_
                                                 _g214208214227_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g214207214224_ _g214208214227_)))))
                              (let ()
                                (declare (not safe))
                                (_g214207214224_ _g214208214227_)))))
                      (let ()
                        (declare (not safe))
                        (_g214207214224_ _g214208214227_))))))
          (declare (not safe))
          (_g214206214280_ _stx214204_))))
    (define gxc#xform-lambda%
      (lambda (_stx214147_ . _args214148_)
        (let* ((_g214150214164_
                (lambda (_g214151214161_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g214151214161_))))
               (_g214149214201_
                (lambda (_g214151214167_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g214151214167_))
                      (let ((_e214156214169_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g214151214167_))))
                        (let ((_hd214155214172_
                               (let ()
                                 (declare (not safe))
                                 (##car _e214156214169_)))
                              (_tl214154214174_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e214156214169_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl214154214174_))
                              (let ((_e214159214177_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl214154214174_))))
                                (let ((_hd214158214180_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e214159214177_)))
                                      (_tl214157214182_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e214159214177_))))
                                  ((lambda (_L214185_ _L214186_)
                                     (let* ((_body214199_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args214148_))
                                                  _L214185_))
                                            (__tmp219242
                                             (let ((__tmp219243
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L214186_
                                                            _body214199_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp219243))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp219242
                                        _stx214147_)))
                                   _tl214157214182_
                                   _hd214158214180_)))
                              (let ()
                                (declare (not safe))
                                (_g214150214164_ _g214151214167_)))))
                      (let ()
                        (declare (not safe))
                        (_g214150214164_ _g214151214167_))))))
          (declare (not safe))
          (_g214149214201_ _stx214147_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx214060_ . _args214061_)
        (letrec ((_clause-e214063_
                  (lambda (_clause214104_)
                    (let* ((_g214106214117_
                            (lambda (_g214107214114_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g214107214114_))))
                           (_g214105214144_
                            (lambda (_g214107214120_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g214107214120_))
                                  (let ((_e214112214122_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g214107214120_))))
                                    (let ((_hd214111214125_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e214112214122_)))
                                          (_tl214110214127_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e214112214122_))))
                                      ((lambda (_L214130_ _L214131_)
                                         (let ((_body214142_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args214061_))
                                                     _L214130_)))
                                           (declare (not safe))
                                           (cons _L214131_ _body214142_)))
                                       _tl214110214127_
                                       _hd214111214125_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g214106214117_ _g214107214120_))))))
                      (declare (not safe))
                      (_g214105214144_ _clause214104_)))))
          (let* ((_g214065214075_
                  (lambda (_g214066214072_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g214066214072_))))
                 (_g214064214101_
                  (lambda (_g214066214078_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g214066214078_))
                        (let ((_e214070214080_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g214066214078_))))
                          (let ((_hd214069214083_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e214070214080_)))
                                (_tl214068214085_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e214070214080_))))
                            ((lambda (_L214088_)
                               (let* ((_clauses214099_
                                       (map _clause-e214063_ _L214088_))
                                      (__tmp219244
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses214099_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp219244
                                  _stx214060_)))
                             _tl214068214085_)))
                        (let ()
                          (declare (not safe))
                          (_g214065214075_ _g214066214078_))))))
            (declare (not safe))
            (_g214064214101_ _stx214060_)))))
    (define gxc#xform-let-values%
      (lambda (_stx213854_ . _args213855_)
        (let* ((_g213857213890_
                (lambda (_g213858213887_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213858213887_))))
               (_g213856214057_
                (lambda (_g213858213893_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213858213893_))
                      (let ((_e213865213895_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213858213893_))))
                        (let ((_hd213864213898_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213865213895_)))
                              (_tl213863213900_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213865213895_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213863213900_))
                              (let ((_e213868213903_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213863213900_))))
                                (let ((_hd213867213906_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213868213903_)))
                                      (_tl213866213908_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213868213903_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd213867213906_))
                                      (let ((_g219245_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd213867213906_
                                                '0))))
                                        (begin
                                          (let ((_g219246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g219245_)
                                                       (##vector-length
                                                        _g219245_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g219246_ 2)))
                                                (error "Context expects 2 values"
                                                       _g219246_)))
                                          (let ((_target213869213911_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g219245_ 0)))
                                                (_tl213871213913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g219245_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl213871213913_))
                                                (letrec ((_loop213872213916_
                                                          (lambda (_hd213870213919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr213876213921_
                           _hd213877213923_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd213870213919_))
                        (let ((_e213873213926_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd213870213919_))))
                          (let ((_lp-hd213874213929_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e213873213926_)))
                                (_lp-tl213875213931_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e213873213926_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd213874213929_))
                                (let ((_e213882213934_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd213874213929_))))
                                  (let ((_hd213881213937_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e213882213934_)))
                                        (_tl213880213939_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e213882213934_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl213880213939_))
                                        (let ((_e213885213942_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl213880213939_))))
                                          (let ((_hd213884213945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e213885213942_)))
                                                (_tl213883213947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e213885213942_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl213883213947_))
                                                (let ((__tmp219259
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd213884213945_
                                                               _expr213876213921_)))
                                                      (__tmp219258
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd213881213937_
                                                               _hd213877213923_))))
                                                  (declare (not safe))
                                                  (_loop213872213916_
                                                   _lp-tl213875213931_
                                                   __tmp219259
                                                   __tmp219258))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g213857213890_
                                                   _g213858213893_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g213857213890_ _g213858213893_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g213857213890_ _g213858213893_)))))
                        (let ((_expr213878213950_ (reverse _expr213876213921_))
                              (_hd213879213952_ (reverse _hd213877213923_)))
                          ((lambda (_L213955_ _L213956_ _L213957_ _L213958_)
                             (let* ((_g213977213993_
                                     (lambda (_g213978213990_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g213978213990_))))
                                    (_g213976214047_
                                     (lambda (_g213978213996_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g213978213996_))
                                           (let ((_g219247_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g213978213996_
                                                     '0))))
                                             (begin
                                               (let ((_g219248_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g219247_)
                                                            (##vector-length
                                                             _g219247_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g219248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g219248_)))
                                               (let ((_target213980213998_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g219247_
                                                         0)))
                                                     (_tl213982214000_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g219247_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl213982214000_))
                                                     (letrec ((_loop213983214003_
                                                               (lambda (_hd213981214006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr213987214008_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd213981214006_))
                             (let ((_e213984214011_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd213981214006_))))
                               (let ((_lp-hd213985214014_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e213984214011_)))
                                     (_lp-tl213986214016_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e213984214011_))))
                                 (let ((__tmp219255
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd213985214014_
                                                _expr213987214008_))))
                                   (declare (not safe))
                                   (_loop213983214003_
                                    _lp-tl213986214016_
                                    __tmp219255))))
                             (let ((_expr213988214019_
                                    (reverse _expr213987214008_)))
                               ((lambda (_L214022_)
                                  (let ()
                                    (let* ((_body214035_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args213855_))
                                                 _L213955_))
                                           (__tmp219249
                                            (let ((__tmp219250
                                                   (let ((__tmp219251
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L214022_
                                                               _L213957_))
                                                            (let ((__tmp219252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g214036214040_
                                    _g214037214042_
                                    _g214038214044_)
                             (let ((__tmp219253
                                    (let ((__tmp219254
                                           (let ()
                                             (declare (not safe))
                                             (cons _g214036214040_ '()))))
                                      (declare (not safe))
                                      (cons _g214037214042_ __tmp219254))))
                               (declare (not safe))
                               (cons __tmp219253 _g214038214044_)))))
                      (declare (not safe))
                      (foldr2 __tmp219252 '() _L214022_ _L213957_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp219251
                                                           _body214035_))))
                                              (declare (not safe))
                                              (cons _L213958_ __tmp219250))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp219249
                                       _stx213854_))))
                                _expr213988214019_))))))
               (let ()
                 (declare (not safe))
                 (_loop213983214003_ _target213980213998_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g213977213993_
                                                        _g213978213996_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g213977213993_
                                              _g213978213996_)))))
                                    (__tmp219256
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args213855_))
                                          (let ((__tmp219257
                                                 (lambda (_g214049214052_
                                                          _g214050214054_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g214049214052_
                                                           _g214050214054_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp219257
                                                    '()
                                                    _L213956_)))))
                               (declare (not safe))
                               (_g213976214047_ __tmp219256)))
                           _tl213866213908_
                           _expr213878213950_
                           _hd213879213952_
                           _hd213864213898_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop213872213916_
                                                     _target213869213911_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g213857213890_
                                                   _g213858213893_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213857213890_ _g213858213893_)))))
                              (let ()
                                (declare (not safe))
                                (_g213857213890_ _g213858213893_)))))
                      (let ()
                        (declare (not safe))
                        (_g213857213890_ _g213858213893_))))))
          (declare (not safe))
          (_g213856214057_ _stx213854_))))
    (define gxc#xform-operands
      (lambda (_stx213810_ . _args213811_)
        (let* ((_g213813213824_
                (lambda (_g213814213821_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213814213821_))))
               (_g213812213851_
                (lambda (_g213814213827_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213814213827_))
                      (let ((_e213819213829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213814213827_))))
                        (let ((_hd213818213832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213819213829_)))
                              (_tl213817213834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213819213829_))))
                          ((lambda (_L213837_ _L213838_)
                             (let* ((_rands213849_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args213811_))
                                          _L213837_))
                                    (__tmp219260
                                     (let ()
                                       (declare (not safe))
                                       (cons _L213838_ _rands213849_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp219260
                                _stx213810_)))
                           _tl213817213834_
                           _hd213818213832_)))
                      (let ()
                        (declare (not safe))
                        (_g213813213824_ _g213814213827_))))))
          (declare (not safe))
          (_g213812213851_ _stx213810_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx213731_ . _args213732_)
        (let* ((_g213734213751_
                (lambda (_g213735213748_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213735213748_))))
               (_g213733213807_
                (lambda (_g213735213754_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213735213754_))
                      (let ((_e213740213756_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213735213754_))))
                        (let ((_hd213739213759_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213740213756_)))
                              (_tl213738213761_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213740213756_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213738213761_))
                              (let ((_e213743213764_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213738213761_))))
                                (let ((_hd213742213767_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213743213764_)))
                                      (_tl213741213769_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213743213764_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213741213769_))
                                      (let ((_e213746213772_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213741213769_))))
                                        (let ((_hd213745213775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213746213772_)))
                                              (_tl213744213777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213746213772_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213744213777_))
                                              ((lambda (_L213780_ _L213781_)
                                                 (let* ((_expr213805_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args213732_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L213780_))
                     (let ((_arg1213796_ (car _args213732_))
                           (_rest213798_ (cdr _args213732_)))
                       (if (let () (declare (not safe)) (null? _rest213798_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L213780_ _arg1213796_))
                           (let ((_arg2213801_ (car _rest213798_))
                                 (_rest213803_ (cdr _rest213798_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest213803_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L213780_
                                    _arg1213796_
                                    _arg2213801_))
                                 (apply gxc#compile-e
                                        _L213780_
                                        _arg1213796_
                                        _arg2213801_
                                        _rest213803_)))))))
                (__tmp219261
                 (let ((__tmp219262
                        (let ((__tmp219263
                               (let ()
                                 (declare (not safe))
                                 (cons _expr213805_ '()))))
                          (declare (not safe))
                          (cons _L213781_ __tmp219263))))
                   (declare (not safe))
                   (cons '%#set! __tmp219262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp219261
                                                    _stx213731_)))
                                               _hd213745213775_
                                               _hd213742213767_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213734213751_
                                                 _g213735213754_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213734213751_ _g213735213754_)))))
                              (let ()
                                (declare (not safe))
                                (_g213734213751_ _g213735213754_)))))
                      (let ()
                        (declare (not safe))
                        (_g213734213751_ _g213735213754_))))))
          (declare (not safe))
          (_g213733213807_ _stx213731_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx213662_)
        (let* ((_g213664213681_
                (lambda (_g213665213678_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213665213678_))))
               (_g213663213728_
                (lambda (_g213665213684_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213665213684_))
                      (let ((_e213670213686_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213665213684_))))
                        (let ((_hd213669213689_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213670213686_)))
                              (_tl213668213691_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213670213686_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213668213691_))
                              (let ((_e213673213694_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213668213691_))))
                                (let ((_hd213672213697_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213673213694_)))
                                      (_tl213671213699_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213673213694_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213671213699_))
                                      (let ((_e213676213702_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213671213699_))))
                                        (let ((_hd213675213705_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213676213702_)))
                                              (_tl213674213707_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213676213702_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213674213707_))
                                              ((lambda (_L213710_ _L213711_)
                                                 (let ((_sym213726_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L213711_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym213726_))
                                                   (let ((__tmp219264
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp219264
                                                      _sym213726_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L213710_))))
                                               _hd213675213705_
                                               _hd213672213697_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213664213681_
                                                 _g213665213684_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213664213681_ _g213665213684_)))))
                              (let ()
                                (declare (not safe))
                                (_g213664213681_ _g213665213684_)))))
                      (let ()
                        (declare (not safe))
                        (_g213664213681_ _g213665213684_))))))
          (declare (not safe))
          (_g213663213728_ _stx213662_))))
    (define gxc#collect-methods-call%
      (lambda (_stx213216_)
        (let* ((___stx218954218955_ _stx213216_)
               (_g213220213322_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx218954218955_)))))
          (let ((___kont218956218957_
                 (lambda (_L213612_ _L213613_ _L213614_ _L213615_ _L213616_)
                   (let ((__tmp219265
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L213613_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp219265))))
                (___kont218958218959_
                 (lambda (_L213438_ _L213439_ _L213440_ _L213441_)
                   (let ((__tmp219266
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L213438_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp219266))))
                (___kont218960218961_ (lambda () '#!void)))
            (let ((___match219089219090_
                   (lambda (_e213229213484_
                            _hd213228213487_
                            _tl213227213489_
                            _e213232213492_
                            _hd213231213495_
                            _tl213230213497_
                            _e213235213500_
                            _hd213234213503_
                            _tl213233213505_
                            _e213238213508_
                            _hd213237213511_
                            _tl213236213513_
                            _e213241213516_
                            _hd213240213519_
                            _tl213239213521_
                            _e213244213524_
                            _hd213243213527_
                            _tl213242213529_
                            _e213247213532_
                            _hd213246213535_
                            _tl213245213537_
                            _e213250213540_
                            _hd213249213543_
                            _tl213248213545_
                            _e213253213548_
                            _hd213252213551_
                            _tl213251213553_
                            _e213256213556_
                            _hd213255213559_
                            _tl213254213561_
                            _e213259213564_
                            _hd213258213567_
                            _tl213257213569_
                            _e213262213572_
                            _hd213261213575_
                            _tl213260213577_
                            _e213265213580_
                            _hd213264213583_
                            _tl213263213585_
                            _e213268213588_
                            _hd213267213591_
                            _tl213266213593_
                            _e213271213596_
                            _hd213270213599_
                            _tl213269213601_
                            _e213274213604_
                            _hd213273213607_
                            _tl213272213609_)
                     (let ((_L213612_ _hd213273213607_)
                           (_L213613_ _hd213264213583_)
                           (_L213614_ _hd213255213559_)
                           (_L213615_ _hd213246213535_)
                           (_L213616_ _hd213237213511_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L213616_
                              'bind-method!))
                           (___kont218956218957_
                            _L213612_
                            _L213613_
                            _L213614_
                            _L213615_
                            _L213616_)
                           (___kont218960218961_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx218954218955_))
                  (let ((_e213229213484_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx218954218955_))))
                    (let ((_tl213227213489_
                           (let ()
                             (declare (not safe))
                             (##cdr _e213229213484_)))
                          (_hd213228213487_
                           (let ()
                             (declare (not safe))
                             (##car _e213229213484_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl213227213489_))
                          (let ((_e213232213492_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl213227213489_))))
                            (let ((_tl213230213497_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e213232213492_)))
                                  (_hd213231213495_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e213232213492_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd213231213495_))
                                  (let ((_e213235213500_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd213231213495_))))
                                    (let ((_tl213233213505_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e213235213500_)))
                                          (_hd213234213503_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e213235213500_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd213234213503_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd213234213503_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl213233213505_))
                                                  (let ((_e213238213508_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl213233213505_))))
                                                    (let ((_tl213236213513_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e213238213508_)))
                                                          (_hd213237213511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e213238213508_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl213236213513_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl213230213497_))
                      (let ((_e213241213516_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl213230213497_))))
                        (let ((_tl213239213521_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213241213516_)))
                              (_hd213240213519_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213241213516_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd213240213519_))
                              (let ((_e213244213524_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd213240213519_))))
                                (let ((_tl213242213529_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213244213524_)))
                                      (_hd213243213527_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213244213524_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd213243213527_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd213243213527_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl213242213529_))
                                              (let ((_e213247213532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl213242213529_))))
                                                (let ((_tl213245213537_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e213247213532_)))
                                                      (_hd213246213535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e213247213532_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl213245213537_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl213239213521_))
                                                          (let ((_e213250213540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl213239213521_))))
                    (let ((_tl213248213545_
                           (let ()
                             (declare (not safe))
                             (##cdr _e213250213540_)))
                          (_hd213249213543_
                           (let ()
                             (declare (not safe))
                             (##car _e213250213540_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd213249213543_))
                          (let ((_e213253213548_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd213249213543_))))
                            (let ((_tl213251213553_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e213253213548_)))
                                  (_hd213252213551_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e213253213548_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd213252213551_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd213252213551_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl213251213553_))
                                          (let ((_e213256213556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl213251213553_))))
                                            (let ((_tl213254213561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e213256213556_)))
                                                  (_hd213255213559_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e213256213556_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl213254213561_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl213248213545_))
                                                      (let ((_e213259213564_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl213248213545_))))
                (let ((_tl213257213569_
                       (let () (declare (not safe)) (##cdr _e213259213564_)))
                      (_hd213258213567_
                       (let () (declare (not safe)) (##car _e213259213564_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd213258213567_))
                      (let ((_e213262213572_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd213258213567_))))
                        (let ((_tl213260213577_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213262213572_)))
                              (_hd213261213575_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213262213572_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd213261213575_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd213261213575_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213260213577_))
                                      (let ((_e213265213580_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213260213577_))))
                                        (let ((_tl213263213585_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213265213580_)))
                                              (_hd213264213583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213265213580_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213263213585_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl213257213569_))
                                                  (let ((_e213268213588_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl213257213569_))))
                                                    (let ((_tl213266213593_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e213268213588_)))
                                                          (_hd213267213591_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e213268213588_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd213267213591_))
                                                          (let ((_e213271213596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd213267213591_))))
                    (let ((_tl213269213601_
                           (let ()
                             (declare (not safe))
                             (##cdr _e213271213596_)))
                          (_hd213270213599_
                           (let ()
                             (declare (not safe))
                             (##car _e213271213596_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd213270213599_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd213270213599_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl213269213601_))
                                  (let ((_e213274213604_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl213269213601_))))
                                    (let ((_tl213272213609_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e213274213604_)))
                                          (_hd213273213607_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e213274213604_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl213272213609_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213266213593_))
                                              (___match219089219090_
                                               _e213229213484_
                                               _hd213228213487_
                                               _tl213227213489_
                                               _e213232213492_
                                               _hd213231213495_
                                               _tl213230213497_
                                               _e213235213500_
                                               _hd213234213503_
                                               _tl213233213505_
                                               _e213238213508_
                                               _hd213237213511_
                                               _tl213236213513_
                                               _e213241213516_
                                               _hd213240213519_
                                               _tl213239213521_
                                               _e213244213524_
                                               _hd213243213527_
                                               _tl213242213529_
                                               _e213247213532_
                                               _hd213246213535_
                                               _tl213245213537_
                                               _e213250213540_
                                               _hd213249213543_
                                               _tl213248213545_
                                               _e213253213548_
                                               _hd213252213551_
                                               _tl213251213553_
                                               _e213256213556_
                                               _hd213255213559_
                                               _tl213254213561_
                                               _e213259213564_
                                               _hd213258213567_
                                               _tl213257213569_
                                               _e213262213572_
                                               _hd213261213575_
                                               _tl213260213577_
                                               _e213265213580_
                                               _hd213264213583_
                                               _tl213263213585_
                                               _e213268213588_
                                               _hd213267213591_
                                               _tl213266213593_
                                               _e213271213596_
                                               _hd213270213599_
                                               _tl213269213601_
                                               _e213274213604_
                                               _hd213273213607_
                                               _tl213272213609_)
                                              (___kont218960218961_))
                                          (___kont218960218961_))))
                                  (___kont218960218961_))
                              (___kont218960218961_))
                          (___kont218960218961_))))
                  (___kont218960218961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl213257213569_))
                                                      (if (let ((__tmp219267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp219267 'bind-method!))
                  (let ((_L213438_ _hd213264213583_)
                        (_L213439_ _hd213255213559_)
                        (_L213440_ _hd213246213535_)
                        (_L213441_ _hd213237213511_))
                    (___kont218958218959_
                     _L213438_
                     _L213439_
                     _L213440_
                     _L213441_))
                  (___kont218960218961_))
              (___kont218960218961_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont218960218961_))))
                                      (___kont218960218961_))
                                  (___kont218960218961_))
                              (___kont218960218961_))))
                      (___kont218960218961_))))
              (___kont218960218961_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont218960218961_))))
                                          (___kont218960218961_))
                                      (___kont218960218961_))
                                  (___kont218960218961_))))
                          (___kont218960218961_))))
                  (___kont218960218961_))
              (___kont218960218961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont218960218961_))
                                          (___kont218960218961_))
                                      (___kont218960218961_))))
                              (___kont218960218961_))))
                      (___kont218960218961_))
                  (___kont218960218961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont218960218961_))
                                              (___kont218960218961_))
                                          (___kont218960218961_))))
                                  (___kont218960218961_))))
                          (___kont218960218961_))))
                  (___kont218960218961_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx213163_ _id213164_ _new-id213165_)
        (let* ((_g213167213180_
                (lambda (_g213168213177_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213168213177_))))
               (_g213166213213_
                (lambda (_g213168213183_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213168213183_))
                      (let ((_e213172213185_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213168213183_))))
                        (let ((_hd213171213188_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213172213185_)))
                              (_tl213170213190_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213172213185_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213170213190_))
                              (let ((_e213175213193_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213170213190_))))
                                (let ((_hd213174213196_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213175213193_)))
                                      (_tl213173213198_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213175213193_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl213173213198_))
                                      ((lambda (_L213201_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L213201_
                                                _id213164_))
                                             (let ((__tmp219268
                                                    (let ((__tmp219269
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id213165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp219269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp219268
                                                _stx213163_))
                                             _stx213163_))
                                       _hd213174213196_)
                                      (let ()
                                        (declare (not safe))
                                        (_g213167213180_ _g213168213183_)))))
                              (let ()
                                (declare (not safe))
                                (_g213167213180_ _g213168213183_)))))
                      (let ()
                        (declare (not safe))
                        (_g213167213180_ _g213168213183_))))))
          (declare (not safe))
          (_g213166213213_ _stx213163_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx213104_ _subst213105_)
        (let* ((_g213107213120_
                (lambda (_g213108213117_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213108213117_))))
               (_g213106213160_
                (lambda (_g213108213123_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213108213123_))
                      (let ((_e213112213125_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213108213123_))))
                        (let ((_hd213111213128_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213112213125_)))
                              (_tl213110213130_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213112213125_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213110213130_))
                              (let ((_e213115213133_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213110213130_))))
                                (let ((_hd213114213136_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213115213133_)))
                                      (_tl213113213138_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213115213133_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl213113213138_))
                                      ((lambda (_L213141_)
                                         (let ((_$e213155_
                                                (let ((__tmp219270
                                                       (lambda (_sub213153_)
                                                         (let ((__tmp219271
                                                                (car _sub213153_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L213141_
                                                            __tmp219271)))))
                                                  (declare (not safe))
                                                  (find __tmp219270
                                                        _subst213105_))))
                                           (if _$e213155_
                                               ((lambda (_sub213158_)
                                                  (let ((__tmp219272
                                                         (let ((__tmp219273
                                                                (let ((__tmp219274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub213158_)))
                          (declare (not safe))
                          (cons __tmp219274 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp219273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp219272
                                                     _stx213104_)))
                                                _$e213155_)
                                               _stx213104_)))
                                       _hd213114213136_)
                                      (let ()
                                        (declare (not safe))
                                        (_g213107213120_ _g213108213123_)))))
                              (let ()
                                (declare (not safe))
                                (_g213107213120_ _g213108213123_)))))
                      (let ()
                        (declare (not safe))
                        (_g213107213120_ _g213108213123_))))))
          (declare (not safe))
          (_g213106213160_ _stx213104_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx213032_ _id213033_ _new-id213034_)
        (let* ((_g213036213053_
                (lambda (_g213037213050_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g213037213050_))))
               (_g213035213101_
                (lambda (_g213037213056_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g213037213056_))
                      (let ((_e213042213058_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g213037213056_))))
                        (let ((_hd213041213061_
                               (let ()
                                 (declare (not safe))
                                 (##car _e213042213058_)))
                              (_tl213040213063_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e213042213058_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl213040213063_))
                              (let ((_e213045213066_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl213040213063_))))
                                (let ((_hd213044213069_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e213045213066_)))
                                      (_tl213043213071_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e213045213066_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl213043213071_))
                                      (let ((_e213048213074_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl213043213071_))))
                                        (let ((_hd213047213077_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e213048213074_)))
                                              (_tl213046213079_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e213048213074_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl213046213079_))
                                              ((lambda (_L213082_ _L213083_)
                                                 (let ((_new-expr213098_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L213082_
                                                           _id213033_
                                                           _new-id213034_)))
                                                       (_new-xid213099_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L213083_
                                                               _id213033_))
                                                            _new-id213034_
                                                            _L213083_)))
                                                   (let ((__tmp219275
                                                          (let ((__tmp219276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp219277
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr213098_ '()))))
                           (declare (not safe))
                           (cons _new-xid213099_ __tmp219277))))
                    (declare (not safe))
                    (cons '%#set! __tmp219276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp219275
                                                      _stx213032_))))
                                               _hd213047213077_
                                               _hd213044213069_)
                                              (let ()
                                                (declare (not safe))
                                                (_g213036213053_
                                                 _g213037213056_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g213036213053_ _g213037213056_)))))
                              (let ()
                                (declare (not safe))
                                (_g213036213053_ _g213037213056_)))))
                      (let ()
                        (declare (not safe))
                        (_g213036213053_ _g213037213056_))))))
          (declare (not safe))
          (_g213035213101_ _stx213032_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx212956_ _subst212957_)
        (let* ((_g212959212976_
                (lambda (_g212960212973_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212960212973_))))
               (_g212958213029_
                (lambda (_g212960212979_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212960212979_))
                      (let ((_e212965212981_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212960212979_))))
                        (let ((_hd212964212984_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212965212981_)))
                              (_tl212963212986_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212965212981_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212963212986_))
                              (let ((_e212968212989_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212963212986_))))
                                (let ((_hd212967212992_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212968212989_)))
                                      (_tl212966212994_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212968212989_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212966212994_))
                                      (let ((_e212971212997_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212966212994_))))
                                        (let ((_hd212970213000_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212971212997_)))
                                              (_tl212969213002_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212971212997_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212969213002_))
                                              ((lambda (_L213005_ _L213006_)
                                                 (let ((_new-expr213026_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L213005_
                                                           _subst212957_)))
                                                       (_new-xid213027_
                                                        (let ((_$e213023_
                                                               (let ((__tmp219278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub213021_)
                                (let ((__tmp219279 (car _sub213021_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L213006_
                                   __tmp219279)))))
                         (declare (not safe))
                         (find __tmp219278 _subst212957_))))
                  (if _$e213023_ (cdr _$e213023_) _L213006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp219280
                                                          (let ((__tmp219281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp219282
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr213026_ '()))))
                           (declare (not safe))
                           (cons _new-xid213027_ __tmp219282))))
                    (declare (not safe))
                    (cons '%#set! __tmp219281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp219280
                                                      _stx212956_))))
                                               _hd212970213000_
                                               _hd212967212992_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212959212976_
                                                 _g212960212979_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212959212976_ _g212960212979_)))))
                              (let ()
                                (declare (not safe))
                                (_g212959212976_ _g212960212979_)))))
                      (let ()
                        (declare (not safe))
                        (_g212959212976_ _g212960212979_))))))
          (declare (not safe))
          (_g212958213029_ _stx212956_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx212902_ _ht212903_)
        (let* ((_g212905212918_
                (lambda (_g212906212915_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212906212915_))))
               (_g212904212953_
                (lambda (_g212906212921_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212906212921_))
                      (let ((_e212910212923_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212906212921_))))
                        (let ((_hd212909212926_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212910212923_)))
                              (_tl212908212928_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212910212923_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212908212928_))
                              (let ((_e212913212931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212908212928_))))
                                (let ((_hd212912212934_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212913212931_)))
                                      (_tl212911212936_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212913212931_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl212911212936_))
                                      ((lambda (_L212939_)
                                         (let ((_eid212951_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L212939_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht212903_
                                            _eid212951_
                                            1+
                                            '0)))
                                       _hd212912212934_)
                                      (let ()
                                        (declare (not safe))
                                        (_g212905212918_ _g212906212921_)))))
                              (let ()
                                (declare (not safe))
                                (_g212905212918_ _g212906212921_)))))
                      (let ()
                        (declare (not safe))
                        (_g212905212918_ _g212906212921_))))))
          (declare (not safe))
          (_g212904212953_ _stx212902_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx212832_ _ht212833_)
        (let* ((_g212835212852_
                (lambda (_g212836212849_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212836212849_))))
               (_g212834212899_
                (lambda (_g212836212855_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212836212855_))
                      (let ((_e212841212857_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212836212855_))))
                        (let ((_hd212840212860_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212841212857_)))
                              (_tl212839212862_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212841212857_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212839212862_))
                              (let ((_e212844212865_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212839212862_))))
                                (let ((_hd212843212868_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212844212865_)))
                                      (_tl212842212870_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212844212865_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212842212870_))
                                      (let ((_e212847212873_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212842212870_))))
                                        (let ((_hd212846212876_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212847212873_)))
                                              (_tl212845212878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212847212873_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212845212878_))
                                              ((lambda (_L212881_ _L212882_)
                                                 (let ((_eid212897_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L212882_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht212833_
                                                      _eid212897_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L212881_
                                                      _ht212833_))))
                                               _hd212846212876_
                                               _hd212843212868_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212835212852_
                                                 _g212836212855_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212835212852_ _g212836212855_)))))
                              (let ()
                                (declare (not safe))
                                (_g212835212852_ _g212836212855_)))))
                      (let ()
                        (declare (not safe))
                        (_g212835212852_ _g212836212855_))))))
          (declare (not safe))
          (_g212834212899_ _stx212832_))))
    (define gxc#find-body%
      (lambda (_stx212745_ _arg212746_)
        (let* ((_g212748212767_
                (lambda (_g212749212764_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212749212764_))))
               (_g212747212829_
                (lambda (_g212749212770_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212749212770_))
                      (let ((_e212753212772_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212749212770_))))
                        (let ((_hd212752212775_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212753212772_)))
                              (_tl212751212777_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212753212772_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl212751212777_))
                              (let ((_g219283_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl212751212777_
                                        '0))))
                                (begin
                                  (let ((_g219284_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g219283_)
                                               (##vector-length _g219283_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g219284_ 2)))
                                        (error "Context expects 2 values"
                                               _g219284_)))
                                  (let ((_target212754212780_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g219283_ 0)))
                                        (_tl212756212782_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g219283_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl212756212782_))
                                        (letrec ((_loop212757212785_
                                                  (lambda (_hd212755212788_
                                                           _expr212761212790_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd212755212788_))
                                                        (let ((_e212758212793_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd212755212788_))))
                  (let ((_lp-hd212759212796_
                         (let () (declare (not safe)) (##car _e212758212793_)))
                        (_lp-tl212760212798_
                         (let ()
                           (declare (not safe))
                           (##cdr _e212758212793_))))
                    (let ((__tmp219288
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd212759212796_ _expr212761212790_))))
                      (declare (not safe))
                      (_loop212757212785_ _lp-tl212760212798_ __tmp219288))))
                (let ((_expr212762212801_ (reverse _expr212761212790_)))
                  ((lambda (_L212804_)
                     (let ((__tmp219287
                            (lambda (_g212817212819_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g212817212819_
                                 _arg212746_))))
                           (__tmp219285
                            (let ((__tmp219286
                                   (lambda (_g212821212824_ _g212822212826_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g212821212824_
                                             _g212822212826_)))))
                              (declare (not safe))
                              (foldr1 __tmp219286 '() _L212804_))))
                       (declare (not safe))
                       (ormap1 __tmp219287 __tmp219285)))
                   _expr212762212801_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop212757212785_
                                             _target212754212780_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g212748212767_
                                           _g212749212770_))))))
                              (let ()
                                (declare (not safe))
                                (_g212748212767_ _g212749212770_)))))
                      (let ()
                        (declare (not safe))
                        (_g212748212767_ _g212749212770_))))))
          (declare (not safe))
          (_g212747212829_ _stx212745_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx212677_ _arg212678_)
        (let* ((_g212680212697_
                (lambda (_g212681212694_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212681212694_))))
               (_g212679212742_
                (lambda (_g212681212700_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212681212700_))
                      (let ((_e212686212702_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212681212700_))))
                        (let ((_hd212685212705_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212686212702_)))
                              (_tl212684212707_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212686212702_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212684212707_))
                              (let ((_e212689212710_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212684212707_))))
                                (let ((_hd212688212713_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212689212710_)))
                                      (_tl212687212715_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212689212710_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212687212715_))
                                      (let ((_e212692212718_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212687212715_))))
                                        (let ((_hd212691212721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212692212718_)))
                                              (_tl212690212723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212692212718_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212690212723_))
                                              ((lambda (_L212726_ _L212727_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L212726_
                                                    _arg212678_)))
                                               _hd212691212721_
                                               _hd212688212713_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212680212697_
                                                 _g212681212700_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212680212697_ _g212681212700_)))))
                              (let ()
                                (declare (not safe))
                                (_g212680212697_ _g212681212700_)))))
                      (let ()
                        (declare (not safe))
                        (_g212680212697_ _g212681212700_))))))
          (declare (not safe))
          (_g212679212742_ _stx212677_))))
    (define gxc#find-lambda%
      (lambda (_stx212609_ _arg212610_)
        (let* ((_g212612212629_
                (lambda (_g212613212626_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212613212626_))))
               (_g212611212674_
                (lambda (_g212613212632_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212613212632_))
                      (let ((_e212618212634_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212613212632_))))
                        (let ((_hd212617212637_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212618212634_)))
                              (_tl212616212639_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212618212634_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212616212639_))
                              (let ((_e212621212642_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212616212639_))))
                                (let ((_hd212620212645_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212621212642_)))
                                      (_tl212619212647_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212621212642_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212619212647_))
                                      (let ((_e212624212650_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212619212647_))))
                                        (let ((_hd212623212653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212624212650_)))
                                              (_tl212622212655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212624212650_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212622212655_))
                                              ((lambda (_L212658_ _L212659_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L212658_
                                                    _arg212610_)))
                                               _hd212623212653_
                                               _hd212620212645_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212612212629_
                                                 _g212613212632_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212612212629_ _g212613212632_)))))
                              (let ()
                                (declare (not safe))
                                (_g212612212629_ _g212613212632_)))))
                      (let ()
                        (declare (not safe))
                        (_g212612212629_ _g212613212632_))))))
          (declare (not safe))
          (_g212611212674_ _stx212609_))))
    (define gxc#find-case-lambda%
      (lambda (_stx212491_ _arg212492_)
        (let* ((_g212494212522_
                (lambda (_g212495212519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212495212519_))))
               (_g212493212606_
                (lambda (_g212495212525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212495212525_))
                      (let ((_e212500212527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212495212525_))))
                        (let ((_hd212499212530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212500212527_)))
                              (_tl212498212532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212500212527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl212498212532_))
                              (let ((_g219289_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl212498212532_
                                        '0))))
                                (begin
                                  (let ((_g219290_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g219289_)
                                               (##vector-length _g219289_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g219290_ 2)))
                                        (error "Context expects 2 values"
                                               _g219290_)))
                                  (let ((_target212501212535_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g219289_ 0)))
                                        (_tl212503212537_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g219289_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl212503212537_))
                                        (letrec ((_loop212504212540_
                                                  (lambda (_hd212502212543_
                                                           _body212508212545_
                                                           _hd212509212547_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd212502212543_))
                                                        (let ((_e212505212550_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd212502212543_))))
                  (let ((_lp-hd212506212553_
                         (let () (declare (not safe)) (##car _e212505212550_)))
                        (_lp-tl212507212555_
                         (let ()
                           (declare (not safe))
                           (##cdr _e212505212550_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd212506212553_))
                        (let ((_e212514212558_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd212506212553_))))
                          (let ((_hd212513212561_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e212514212558_)))
                                (_tl212512212563_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e212514212558_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl212512212563_))
                                (let ((_e212517212566_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl212512212563_))))
                                  (let ((_hd212516212569_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e212517212566_)))
                                        (_tl212515212571_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e212517212566_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl212515212571_))
                                        (let ((__tmp219295
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd212516212569_
                                                       _body212508212545_)))
                                              (__tmp219294
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd212513212561_
                                                       _hd212509212547_))))
                                          (declare (not safe))
                                          (_loop212504212540_
                                           _lp-tl212507212555_
                                           __tmp219295
                                           __tmp219294))
                                        (let ()
                                          (declare (not safe))
                                          (_g212494212522_ _g212495212525_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g212494212522_ _g212495212525_)))))
                        (let ()
                          (declare (not safe))
                          (_g212494212522_ _g212495212525_)))))
                (let ((_body212510212574_ (reverse _body212508212545_))
                      (_hd212511212576_ (reverse _hd212509212547_)))
                  ((lambda (_L212579_ _L212580_)
                     (let ((__tmp219293
                            (lambda (_g212594212596_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g212594212596_
                                 _arg212492_))))
                           (__tmp219291
                            (let ((__tmp219292
                                   (lambda (_g212598212601_ _g212599212603_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g212598212601_
                                             _g212599212603_)))))
                              (declare (not safe))
                              (foldr1 __tmp219292 '() _L212579_))))
                       (declare (not safe))
                       (ormap1 __tmp219293 __tmp219291)))
                   _body212510212574_
                   _hd212511212576_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop212504212540_
                                             _target212501212535_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g212494212522_
                                           _g212495212525_))))))
                              (let ()
                                (declare (not safe))
                                (_g212494212522_ _g212495212525_)))))
                      (let ()
                        (declare (not safe))
                        (_g212494212522_ _g212495212525_))))))
          (declare (not safe))
          (_g212493212606_ _stx212491_))))
    (define gxc#find-let-values%
      (lambda (_stx212341_ _arg212342_)
        (let* ((_g212344212379_
                (lambda (_g212345212376_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212345212376_))))
               (_g212343212488_
                (lambda (_g212345212382_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212345212382_))
                      (let ((_e212351212384_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212345212382_))))
                        (let ((_hd212350212387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212351212384_)))
                              (_tl212349212389_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212351212384_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212349212389_))
                              (let ((_e212354212392_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212349212389_))))
                                (let ((_hd212353212395_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212354212392_)))
                                      (_tl212352212397_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212354212392_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd212353212395_))
                                      (let ((_g219296_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd212353212395_
                                                '0))))
                                        (begin
                                          (let ((_g219297_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g219296_)
                                                       (##vector-length
                                                        _g219296_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g219297_ 2)))
                                                (error "Context expects 2 values"
                                                       _g219297_)))
                                          (let ((_target212355212400_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g219296_ 0)))
                                                (_tl212357212402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g219296_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl212357212402_))
                                                (letrec ((_loop212358212405_
                                                          (lambda (_hd212356212408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr212362212410_
                           _bind212363212412_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd212356212408_))
                        (let ((_e212359212415_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd212356212408_))))
                          (let ((_lp-hd212360212418_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e212359212415_)))
                                (_lp-tl212361212420_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e212359212415_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd212360212418_))
                                (let ((_e212368212423_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd212360212418_))))
                                  (let ((_hd212367212426_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e212368212423_)))
                                        (_tl212366212428_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e212368212423_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl212366212428_))
                                        (let ((_e212371212431_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl212366212428_))))
                                          (let ((_hd212370212434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e212371212431_)))
                                                (_tl212369212436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e212371212431_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl212369212436_))
                                                (let ((__tmp219302
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd212370212434_
                                                               _expr212362212410_)))
                                                      (__tmp219301
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd212367212426_
                                                               _bind212363212412_))))
                                                  (declare (not safe))
                                                  (_loop212358212405_
                                                   _lp-tl212361212420_
                                                   __tmp219302
                                                   __tmp219301))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g212344212379_
                                                   _g212345212382_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g212344212379_ _g212345212382_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g212344212379_ _g212345212382_)))))
                        (let ((_expr212364212439_ (reverse _expr212362212410_))
                              (_bind212365212441_
                               (reverse _bind212363212412_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212352212397_))
                              (let ((_e212374212444_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212352212397_))))
                                (let ((_hd212373212447_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212374212444_)))
                                      (_tl212372212449_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212374212444_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl212372212449_))
                                      ((lambda (_L212452_ _L212453_ _L212454_)
                                         (let ((_$e212485_
                                                (let ((__tmp219300
                                                       (lambda (_g212473212475_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g212473212475_
                                                            _arg212342_))))
                                                      (__tmp219298
                                                       (let ((__tmp219299
                                                              (lambda (_g212477212480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g212478212482_)
                        (let ()
                          (declare (not safe))
                          (cons _g212477212480_ _g212478212482_)))))
                 (declare (not safe))
                 (foldr1 __tmp219299 '() _L212453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp219300
                                                          __tmp219298))))
                                           (if _$e212485_
                                               _$e212485_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L212452_
                                                  _arg212342_)))))
                                       _hd212373212447_
                                       _expr212364212439_
                                       _bind212365212441_)
                                      (let ()
                                        (declare (not safe))
                                        (_g212344212379_ _g212345212382_)))))
                              (let ()
                                (declare (not safe))
                                (_g212344212379_ _g212345212382_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop212358212405_
                                                     _target212355212400_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g212344212379_
                                                   _g212345212382_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212344212379_ _g212345212382_)))))
                              (let ()
                                (declare (not safe))
                                (_g212344212379_ _g212345212382_)))))
                      (let ()
                        (declare (not safe))
                        (_g212344212379_ _g212345212382_))))))
          (declare (not safe))
          (_g212343212488_ _stx212341_))))
    (define gxc#find-setq%
      (lambda (_stx212273_ _arg212274_)
        (let* ((_g212276212293_
                (lambda (_g212277212290_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212277212290_))))
               (_g212275212338_
                (lambda (_g212277212296_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212277212296_))
                      (let ((_e212282212298_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212277212296_))))
                        (let ((_hd212281212301_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212282212298_)))
                              (_tl212280212303_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212282212298_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212280212303_))
                              (let ((_e212285212306_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212280212303_))))
                                (let ((_hd212284212309_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212285212306_)))
                                      (_tl212283212311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212285212306_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212283212311_))
                                      (let ((_e212288212314_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212283212311_))))
                                        (let ((_hd212287212317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212288212314_)))
                                              (_tl212286212319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212288212314_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212286212319_))
                                              ((lambda (_L212322_ _L212323_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L212322_
                                                    _arg212274_)))
                                               _hd212287212317_
                                               _hd212284212309_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212276212293_
                                                 _g212277212296_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212276212293_ _g212277212296_)))))
                              (let ()
                                (declare (not safe))
                                (_g212276212293_ _g212277212296_)))))
                      (let ()
                        (declare (not safe))
                        (_g212276212293_ _g212277212296_))))))
          (declare (not safe))
          (_g212275212338_ _stx212273_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx212217_ _ids212218_)
        (let* ((_g212220212233_
                (lambda (_g212221212230_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212221212230_))))
               (_g212219212270_
                (lambda (_g212221212236_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212221212236_))
                      (let ((_e212225212238_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212221212236_))))
                        (let ((_hd212224212241_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212225212238_)))
                              (_tl212223212243_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212225212238_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212223212243_))
                              (let ((_e212228212246_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212223212243_))))
                                (let ((_hd212227212249_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212228212246_)))
                                      (_tl212226212251_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212228212246_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl212226212251_))
                                      ((lambda (_L212254_)
                                         (let ((__tmp219303
                                                (lambda (_g212265212267_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L212254_
                                                     _g212265212267_)))))
                                           (declare (not safe))
                                           (find __tmp219303 _ids212218_)))
                                       _hd212227212249_)
                                      (let ()
                                        (declare (not safe))
                                        (_g212220212233_ _g212221212236_)))))
                              (let ()
                                (declare (not safe))
                                (_g212220212233_ _g212221212236_)))))
                      (let ()
                        (declare (not safe))
                        (_g212220212233_ _g212221212236_))))))
          (declare (not safe))
          (_g212219212270_ _stx212217_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx212141_ _ids212142_)
        (let* ((_g212144212161_
                (lambda (_g212145212158_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g212145212158_))))
               (_g212143212214_
                (lambda (_g212145212164_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g212145212164_))
                      (let ((_e212150212166_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g212145212164_))))
                        (let ((_hd212149212169_
                               (let ()
                                 (declare (not safe))
                                 (##car _e212150212166_)))
                              (_tl212148212171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e212150212166_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl212148212171_))
                              (let ((_e212153212174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl212148212171_))))
                                (let ((_hd212152212177_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e212153212174_)))
                                      (_tl212151212179_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e212153212174_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl212151212179_))
                                      (let ((_e212156212182_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl212151212179_))))
                                        (let ((_hd212155212185_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e212156212182_)))
                                              (_tl212154212187_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e212156212182_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl212154212187_))
                                              ((lambda (_L212190_ _L212191_)
                                                 (let ((_$e212211_
                                                        (let ((__tmp219304
                                                               (lambda (_g212206212208_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L212191_ _g212206212208_)))))
                  (declare (not safe))
                  (find __tmp219304 _ids212142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e212211_
                                                       _$e212211_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L212190_
                                                          _ids212142_)))))
                                               _hd212155212185_
                                               _hd212152212177_)
                                              (let ()
                                                (declare (not safe))
                                                (_g212144212161_
                                                 _g212145212164_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g212144212161_ _g212145212164_)))))
                              (let ()
                                (declare (not safe))
                                (_g212144212161_ _g212145212164_)))))
                      (let ()
                        (declare (not safe))
                        (_g212144212161_ _g212145212164_))))))
          (declare (not safe))
          (_g212143212214_ _stx212141_))))))
