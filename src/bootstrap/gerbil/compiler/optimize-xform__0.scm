(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707831904)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl224361_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224361_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224361_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224361_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224361_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl224361_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl224357_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224357_ '%#declare gxc#xform-identity))
           _tbl224357_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl224353_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229175 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl224353_ __tmp229175))
           (let ((__tmp229176 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl224353_ __tmp229176))
           _tbl224353_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl224349_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224349_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224349_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224349_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224349_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224349_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl224349_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl224345_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229177 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl224345_ __tmp229177))
           (let ((__tmp229178 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl224345_ __tmp229178))
           (let ()
             (declare (not safe))
             (table-set! _tbl224345_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224345_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224345_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224345_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224345_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl224345_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl224341_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229179 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl224341_ __tmp229179))
           (let ()
             (declare (not safe))
             (table-set! _tbl224341_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224341_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224341_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224341_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224341_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224341_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224341_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224341_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224341_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224341_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224341_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl224341_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx224324_ . _args224326_)
        (let ((__tmp229181
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224326_)
                     (gxc#compile-e__0 _stx224324_)
                     (let ((_arg1224331_ (car _args224326_))
                           (_rest224333_ (cdr _args224326_)))
                       (if (null? _rest224333_)
                           (gxc#compile-e__1 _stx224324_ _arg1224331_)
                           (let ((_arg2224336_ (car _rest224333_))
                                 (_rest224338_ (cdr _rest224333_)))
                             (if (null? _rest224338_)
                                 (gxc#compile-e__2
                                  _stx224324_
                                  _arg1224331_
                                  _arg2224336_)
                                 (apply gxc#compile-e
                                        _stx224324_
                                        _arg1224331_
                                        _arg2224336_
                                        _rest224338_))))))))
              (__tmp229180 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp229181
           gxc#current-compile-methods
           __tmp229180))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl224321_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229182 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl224321_ __tmp229182))
           (let ()
             (declare (not safe))
             (table-set! _tbl224321_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224321_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224321_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224321_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224321_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl224321_))))
    (define gxc#apply-collect-methods
      (lambda (_stx224304_ . _args224306_)
        (let ((__tmp229184
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224306_)
                     (gxc#compile-e__0 _stx224304_)
                     (let ((_arg1224311_ (car _args224306_))
                           (_rest224313_ (cdr _args224306_)))
                       (if (null? _rest224313_)
                           (gxc#compile-e__1 _stx224304_ _arg1224311_)
                           (let ((_arg2224316_ (car _rest224313_))
                                 (_rest224318_ (cdr _rest224313_)))
                             (if (null? _rest224318_)
                                 (gxc#compile-e__2
                                  _stx224304_
                                  _arg1224311_
                                  _arg2224316_)
                                 (apply gxc#compile-e
                                        _stx224304_
                                        _arg1224311_
                                        _arg2224316_
                                        _rest224318_))))))))
              (__tmp229183 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp229184
           gxc#current-compile-methods
           __tmp229183))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl224301_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229185 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl224301_ __tmp229185))
           (let ()
             (declare (not safe))
             (table-set! _tbl224301_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224301_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224301_ '%#set! gxc#expression-subst-setq%))
           _tbl224301_))))
    (define gxc#apply-expression-subst
      (lambda (_stx224284_ . _args224286_)
        (let ((__tmp229187
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224286_)
                     (gxc#compile-e__0 _stx224284_)
                     (let ((_arg1224291_ (car _args224286_))
                           (_rest224293_ (cdr _args224286_)))
                       (if (null? _rest224293_)
                           (gxc#compile-e__1 _stx224284_ _arg1224291_)
                           (let ((_arg2224296_ (car _rest224293_))
                                 (_rest224298_ (cdr _rest224293_)))
                             (if (null? _rest224298_)
                                 (gxc#compile-e__2
                                  _stx224284_
                                  _arg1224291_
                                  _arg2224296_)
                                 (apply gxc#compile-e
                                        _stx224284_
                                        _arg1224291_
                                        _arg2224296_
                                        _rest224298_))))))))
              (__tmp229186 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp229187
           gxc#current-compile-methods
           __tmp229186))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl224281_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229188 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl224281_ __tmp229188))
           (let ()
             (declare (not safe))
             (table-set! _tbl224281_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224281_ '%#set! gxc#expression-subst*-setq%))
           _tbl224281_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx224264_ . _args224266_)
        (let ((__tmp229190
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224266_)
                     (gxc#compile-e__0 _stx224264_)
                     (let ((_arg1224271_ (car _args224266_))
                           (_rest224273_ (cdr _args224266_)))
                       (if (null? _rest224273_)
                           (gxc#compile-e__1 _stx224264_ _arg1224271_)
                           (let ((_arg2224276_ (car _rest224273_))
                                 (_rest224278_ (cdr _rest224273_)))
                             (if (null? _rest224278_)
                                 (gxc#compile-e__2
                                  _stx224264_
                                  _arg1224271_
                                  _arg2224276_)
                                 (apply gxc#compile-e
                                        _stx224264_
                                        _arg1224271_
                                        _arg2224276_
                                        _rest224278_))))))))
              (__tmp229189 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp229190
           gxc#current-compile-methods
           __tmp229189))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl224261_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229191 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl224261_ __tmp229191))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224261_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224261_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224261_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl224261_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl224257_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229192 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl224257_ __tmp229192))
           (let ()
             (declare (not safe))
             (table-set! _tbl224257_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224257_ '%#set! gxc#find-var-refs-setq%))
           _tbl224257_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx224240_ . _args224242_)
        (let ((__tmp229194
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224242_)
                     (gxc#compile-e__0 _stx224240_)
                     (let ((_arg1224247_ (car _args224242_))
                           (_rest224249_ (cdr _args224242_)))
                       (if (null? _rest224249_)
                           (gxc#compile-e__1 _stx224240_ _arg1224247_)
                           (let ((_arg2224252_ (car _rest224249_))
                                 (_rest224254_ (cdr _rest224249_)))
                             (if (null? _rest224254_)
                                 (gxc#compile-e__2
                                  _stx224240_
                                  _arg1224247_
                                  _arg2224252_)
                                 (apply gxc#compile-e
                                        _stx224240_
                                        _arg1224247_
                                        _arg2224252_
                                        _rest224254_))))))))
              (__tmp229193 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp229194
           gxc#current-compile-methods
           __tmp229193))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl224237_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229195 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl224237_ __tmp229195))
           (let ()
             (declare (not safe))
             (table-set! _tbl224237_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224237_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl224237_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx224220_ . _args224222_)
        (let ((__tmp229197
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224222_)
                     (gxc#compile-e__0 _stx224220_)
                     (let ((_arg1224227_ (car _args224222_))
                           (_rest224229_ (cdr _args224222_)))
                       (if (null? _rest224229_)
                           (gxc#compile-e__1 _stx224220_ _arg1224227_)
                           (let ((_arg2224232_ (car _rest224229_))
                                 (_rest224234_ (cdr _rest224229_)))
                             (if (null? _rest224234_)
                                 (gxc#compile-e__2
                                  _stx224220_
                                  _arg1224227_
                                  _arg2224232_)
                                 (apply gxc#compile-e
                                        _stx224220_
                                        _arg1224227_
                                        _arg2224232_
                                        _rest224234_))))))))
              (__tmp229196 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp229197
           gxc#current-compile-methods
           __tmp229196))))
    (define gxc#xform-identity
      (lambda (_stx224217_ . _args224218_) _stx224217_))
    (define gxc#xform-wrap-source
      (lambda (_stx224214_ _src-stx224215_)
        (let ((__tmp229198
               (let () (declare (not safe)) (gx#stx-source _src-stx224215_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx224214_ __tmp229198))))
    (define gxc#xform-apply-compile-e
      (lambda (_args224201_)
        (lambda (_stx224203_)
          (if (let () (declare (not safe)) (null? _args224201_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx224203_))
              (let ((_arg1224205_ (car _args224201_))
                    (_rest224207_ (cdr _args224201_)))
                (if (let () (declare (not safe)) (null? _rest224207_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx224203_ _arg1224205_))
                    (let ((_arg2224210_ (car _rest224207_))
                          (_rest224212_ (cdr _rest224207_)))
                      (if (let () (declare (not safe)) (null? _rest224212_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx224203_
                             _arg1224205_
                             _arg2224210_))
                          (apply gxc#compile-e
                                 _stx224203_
                                 _arg1224205_
                                 _arg2224210_
                                 _rest224212_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx224160_ . _args224161_)
        (let* ((_g224163224173_
                (lambda (_g224164224170_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224164224170_))))
               (_g224162224198_
                (lambda (_g224164224176_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224164224176_))
                      (let ((_e224166224178_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224164224176_))))
                        (let ((_hd224167224181_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224166224178_)))
                              (_tl224168224183_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224166224178_))))
                          ((lambda (_L224186_)
                             (let* ((_forms224196_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224161_))
                                          _L224186_))
                                    (__tmp229199
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms224196_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp229199
                                _stx224160_)))
                           _tl224168224183_)))
                      (let ()
                        (declare (not safe))
                        (_g224163224173_ _g224164224176_))))))
          (declare (not safe))
          (_g224162224198_ _stx224160_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx224118_ . _args224119_)
        (let* ((_g224121224131_
                (lambda (_g224122224128_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224122224128_))))
               (_g224120224157_
                (lambda (_g224122224134_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224122224134_))
                      (let ((_e224124224136_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224122224134_))))
                        (let ((_hd224125224139_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224124224136_)))
                              (_tl224126224141_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224124224136_))))
                          ((lambda (_L224144_)
                             (let ((__tmp229202
                                    (lambda ()
                                      (let* ((_forms224155_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args224119_))
                                                   _L224144_))
                                             (__tmp229203
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms224155_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp229203
                                         _stx224118_))))
                                   (__tmp229200
                                    (let ((__tmp229201
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp229201 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp229202
                                gx#current-expander-phi
                                __tmp229200)))
                           _tl224126224141_)))
                      (let ()
                        (declare (not safe))
                        (_g224121224131_ _g224122224134_))))))
          (declare (not safe))
          (_g224120224157_ _stx224118_))))
    (define gxc#xform-module%
      (lambda (_stx224046_ . _args224047_)
        (let* ((_g224049224063_
                (lambda (_g224050224060_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224050224060_))))
               (_g224048224115_
                (lambda (_g224050224066_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224050224066_))
                      (let ((_e224053224068_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224050224066_))))
                        (let ((_hd224054224071_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224053224068_)))
                              (_tl224055224073_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224053224068_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224055224073_))
                              (let ((_e224056224076_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224055224073_))))
                                (let ((_hd224057224079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224056224076_)))
                                      (_tl224058224081_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224056224076_))))
                                  ((lambda (_L224084_ _L224085_)
                                     (let* ((_ctx224098_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L224085_)))
                                            (_code224100_
                                             (##structure-ref
                                              _ctx224098_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code224112_
                                             (let ((__tmp229204
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args224047_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code224100_))
                                                          (let ((_arg1224103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args224047_))
                        (_rest224105_ (cdr _args224047_)))
                    (if (let () (declare (not safe)) (null? _rest224105_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code224100_ _arg1224103_))
                        (let ((_arg2224108_ (car _rest224105_))
                              (_rest224110_ (cdr _rest224105_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest224110_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code224100_
                                 _arg1224103_
                                 _arg2224108_))
                              (apply gxc#compile-e
                                     _code224100_
                                     _arg1224103_
                                     _arg2224108_
                                     _rest224110_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp229204
                                                gx#current-expander-context
                                                _ctx224098_))))
                                       (##structure-set!
                                        _ctx224098_
                                        _code224112_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp229205
                                              (let ((__tmp229206
                                                     (let ((__tmp229207
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code224112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L224085_ __tmp229207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp229206))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp229205
                                          _stx224046_))))
                                   _tl224058224081_
                                   _hd224057224079_)))
                              (let ()
                                (declare (not safe))
                                (_g224049224063_ _g224050224066_)))))
                      (let ()
                        (declare (not safe))
                        (_g224049224063_ _g224050224066_))))))
          (declare (not safe))
          (_g224048224115_ _stx224046_))))
    (define gxc#xform-define-values%
      (lambda (_stx223967_ . _args223968_)
        (let* ((_g223970223987_
                (lambda (_g223971223984_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223971223984_))))
               (_g223969224043_
                (lambda (_g223971223990_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223971223990_))
                      (let ((_e223974223992_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223971223990_))))
                        (let ((_hd223975223995_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223974223992_)))
                              (_tl223976223997_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223974223992_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223976223997_))
                              (let ((_e223977224000_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223976223997_))))
                                (let ((_hd223978224003_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223977224000_)))
                                      (_tl223979224005_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223977224000_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223979224005_))
                                      (let ((_e223980224008_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223979224005_))))
                                        (let ((_hd223981224011_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223980224008_)))
                                              (_tl223982224013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223980224008_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223982224013_))
                                              ((lambda (_L224016_ _L224017_)
                                                 (let* ((_expr224041_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223968_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224016_))
                     (let ((_arg1224032_ (car _args223968_))
                           (_rest224034_ (cdr _args223968_)))
                       (if (let () (declare (not safe)) (null? _rest224034_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224016_ _arg1224032_))
                           (let ((_arg2224037_ (car _rest224034_))
                                 (_rest224039_ (cdr _rest224034_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224039_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224016_
                                    _arg1224032_
                                    _arg2224037_))
                                 (apply gxc#compile-e
                                        _L224016_
                                        _arg1224032_
                                        _arg2224037_
                                        _rest224039_)))))))
                (__tmp229208
                 (let ((__tmp229209
                        (let ((__tmp229210
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224041_ '()))))
                          (declare (not safe))
                          (cons _L224017_ __tmp229210))))
                   (declare (not safe))
                   (cons '%#define-values __tmp229209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229208
                                                    _stx223967_)))
                                               _hd223981224011_
                                               _hd223978224003_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223970223987_
                                                 _g223971223990_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223970223987_ _g223971223990_)))))
                              (let ()
                                (declare (not safe))
                                (_g223970223987_ _g223971223990_)))))
                      (let ()
                        (declare (not safe))
                        (_g223970223987_ _g223971223990_))))))
          (declare (not safe))
          (_g223969224043_ _stx223967_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx223887_ . _args223888_)
        (let* ((_g223890223907_
                (lambda (_g223891223904_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223891223904_))))
               (_g223889223964_
                (lambda (_g223891223910_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223891223910_))
                      (let ((_e223894223912_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223891223910_))))
                        (let ((_hd223895223915_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223894223912_)))
                              (_tl223896223917_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223894223912_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223896223917_))
                              (let ((_e223897223920_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223896223917_))))
                                (let ((_hd223898223923_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223897223920_)))
                                      (_tl223899223925_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223897223920_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223899223925_))
                                      (let ((_e223900223928_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223899223925_))))
                                        (let ((_hd223901223931_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223900223928_)))
                                              (_tl223902223933_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223900223928_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223902223933_))
                                              ((lambda (_L223936_ _L223937_)
                                                 (let ((__tmp229213
                                                        (lambda ()
                                                          (let* ((_expr223962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args223888_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L223936_))
                              (let ((_arg1223953_ (car _args223888_))
                                    (_rest223955_ (cdr _args223888_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest223955_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L223936_
                                       _arg1223953_))
                                    (let ((_arg2223958_ (car _rest223955_))
                                          (_rest223960_ (cdr _rest223955_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest223960_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L223936_
                                             _arg1223953_
                                             _arg2223958_))
                                          (apply gxc#compile-e
                                                 _L223936_
                                                 _arg1223953_
                                                 _arg2223958_
                                                 _rest223960_)))))))
                         (__tmp229214
                          (let ((__tmp229215
                                 (let ((__tmp229216
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr223962_ '()))))
                                   (declare (not safe))
                                   (cons _L223937_ __tmp229216))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp229215))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp229214 _stx223887_))))
               (__tmp229211
                (let ((__tmp229212 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp229212 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp229213
                                                    gx#current-expander-phi
                                                    __tmp229211)))
                                               _hd223901223931_
                                               _hd223898223923_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223890223907_
                                                 _g223891223910_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223890223907_ _g223891223910_)))))
                              (let ()
                                (declare (not safe))
                                (_g223890223907_ _g223891223910_)))))
                      (let ()
                        (declare (not safe))
                        (_g223890223907_ _g223891223910_))))))
          (declare (not safe))
          (_g223889223964_ _stx223887_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx223808_ . _args223809_)
        (let* ((_g223811223828_
                (lambda (_g223812223825_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223812223825_))))
               (_g223810223884_
                (lambda (_g223812223831_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223812223831_))
                      (let ((_e223815223833_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223812223831_))))
                        (let ((_hd223816223836_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223815223833_)))
                              (_tl223817223838_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223815223833_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223817223838_))
                              (let ((_e223818223841_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223817223838_))))
                                (let ((_hd223819223844_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223818223841_)))
                                      (_tl223820223846_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223818223841_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223820223846_))
                                      (let ((_e223821223849_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223820223846_))))
                                        (let ((_hd223822223852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223821223849_)))
                                              (_tl223823223854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223821223849_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223823223854_))
                                              ((lambda (_L223857_ _L223858_)
                                                 (let* ((_expr223882_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223809_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223857_))
                     (let ((_arg1223873_ (car _args223809_))
                           (_rest223875_ (cdr _args223809_)))
                       (if (let () (declare (not safe)) (null? _rest223875_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223857_ _arg1223873_))
                           (let ((_arg2223878_ (car _rest223875_))
                                 (_rest223880_ (cdr _rest223875_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223880_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223857_
                                    _arg1223873_
                                    _arg2223878_))
                                 (apply gxc#compile-e
                                        _L223857_
                                        _arg1223873_
                                        _arg2223878_
                                        _rest223880_)))))))
                (__tmp229217
                 (let ((__tmp229218
                        (let ((__tmp229219
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223882_ '()))))
                          (declare (not safe))
                          (cons _L223858_ __tmp229219))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp229218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229217
                                                    _stx223808_)))
                                               _hd223822223852_
                                               _hd223819223844_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223811223828_
                                                 _g223812223831_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223811223828_ _g223812223831_)))))
                              (let ()
                                (declare (not safe))
                                (_g223811223828_ _g223812223831_)))))
                      (let ()
                        (declare (not safe))
                        (_g223811223828_ _g223812223831_))))))
          (declare (not safe))
          (_g223810223884_ _stx223808_))))
    (define gxc#xform-lambda%
      (lambda (_stx223751_ . _args223752_)
        (let* ((_g223754223768_
                (lambda (_g223755223765_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223755223765_))))
               (_g223753223805_
                (lambda (_g223755223771_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223755223771_))
                      (let ((_e223758223773_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223755223771_))))
                        (let ((_hd223759223776_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223758223773_)))
                              (_tl223760223778_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223758223773_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223760223778_))
                              (let ((_e223761223781_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223760223778_))))
                                (let ((_hd223762223784_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223761223781_)))
                                      (_tl223763223786_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223761223781_))))
                                  ((lambda (_L223789_ _L223790_)
                                     (let* ((_body223803_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args223752_))
                                                  _L223789_))
                                            (__tmp229220
                                             (let ((__tmp229221
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L223790_
                                                            _body223803_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp229221))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp229220
                                        _stx223751_)))
                                   _tl223763223786_
                                   _hd223762223784_)))
                              (let ()
                                (declare (not safe))
                                (_g223754223768_ _g223755223771_)))))
                      (let ()
                        (declare (not safe))
                        (_g223754223768_ _g223755223771_))))))
          (declare (not safe))
          (_g223753223805_ _stx223751_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx223664_ . _args223665_)
        (letrec ((_clause-e223667_
                  (lambda (_clause223708_)
                    (let* ((_g223710223721_
                            (lambda (_g223711223718_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g223711223718_))))
                           (_g223709223748_
                            (lambda (_g223711223724_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g223711223724_))
                                  (let ((_e223714223726_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g223711223724_))))
                                    (let ((_hd223715223729_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223714223726_)))
                                          (_tl223716223731_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223714223726_))))
                                      ((lambda (_L223734_ _L223735_)
                                         (let ((_body223746_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args223665_))
                                                     _L223734_)))
                                           (declare (not safe))
                                           (cons _L223735_ _body223746_)))
                                       _tl223716223731_
                                       _hd223715223729_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g223710223721_ _g223711223724_))))))
                      (declare (not safe))
                      (_g223709223748_ _clause223708_)))))
          (let* ((_g223669223679_
                  (lambda (_g223670223676_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g223670223676_))))
                 (_g223668223705_
                  (lambda (_g223670223682_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g223670223682_))
                        (let ((_e223672223684_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g223670223682_))))
                          (let ((_hd223673223687_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e223672223684_)))
                                (_tl223674223689_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e223672223684_))))
                            ((lambda (_L223692_)
                               (let* ((_clauses223703_
                                       (map _clause-e223667_ _L223692_))
                                      (__tmp229222
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses223703_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp229222
                                  _stx223664_)))
                             _tl223674223689_)))
                        (let ()
                          (declare (not safe))
                          (_g223669223679_ _g223670223682_))))))
            (declare (not safe))
            (_g223668223705_ _stx223664_)))))
    (define gxc#xform-let-values%
      (lambda (_stx223458_ . _args223459_)
        (let* ((_g223461223494_
                (lambda (_g223462223491_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223462223491_))))
               (_g223460223661_
                (lambda (_g223462223497_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223462223497_))
                      (let ((_e223467223499_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223462223497_))))
                        (let ((_hd223468223502_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223467223499_)))
                              (_tl223469223504_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223467223499_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223469223504_))
                              (let ((_e223470223507_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223469223504_))))
                                (let ((_hd223471223510_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223470223507_)))
                                      (_tl223472223512_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223470223507_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd223471223510_))
                                      (let ((_g229223_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd223471223510_
                                                '0))))
                                        (begin
                                          (let ((_g229224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g229223_)
                                                       (##vector-length
                                                        _g229223_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g229224_ 2)))
                                                (error "Context expects 2 values"
                                                       _g229224_)))
                                          (let ((_target223473223515_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g229223_ 0)))
                                                (_tl223475223517_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g229223_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl223475223517_))
                                                (letrec ((_loop223476223520_
                                                          (lambda (_hd223474223523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr223480223525_
                           _hd223481223527_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd223474223523_))
                        (let ((_e223477223530_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd223474223523_))))
                          (let ((_lp-hd223478223533_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e223477223530_)))
                                (_lp-tl223479223535_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e223477223530_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd223478223533_))
                                (let ((_e223484223538_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd223478223533_))))
                                  (let ((_hd223485223541_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e223484223538_)))
                                        (_tl223486223543_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e223484223538_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl223486223543_))
                                        (let ((_e223487223546_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl223486223543_))))
                                          (let ((_hd223488223549_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e223487223546_)))
                                                (_tl223489223551_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e223487223546_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl223489223551_))
                                                (let ((__tmp229226
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd223488223549_
                                                               _expr223480223525_)))
                                                      (__tmp229225
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd223485223541_
                                                               _hd223481223527_))))
                                                  (declare (not safe))
                                                  (_loop223476223520_
                                                   _lp-tl223479223535_
                                                   __tmp229226
                                                   __tmp229225))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g223461223494_
                                                   _g223462223497_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g223461223494_ _g223462223497_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g223461223494_ _g223462223497_)))))
                        (let ((_expr223482223554_ (reverse _expr223480223525_))
                              (_hd223483223556_ (reverse _hd223481223527_)))
                          ((lambda (_L223559_ _L223560_ _L223561_ _L223562_)
                             (let* ((_g223581223597_
                                     (lambda (_g223582223594_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g223582223594_))))
                                    (_g223580223651_
                                     (lambda (_g223582223600_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g223582223600_))
                                           (let ((_g229227_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g223582223600_
                                                     '0))))
                                             (begin
                                               (let ((_g229228_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g229227_)
                                                            (##vector-length
                                                             _g229227_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g229228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g229228_)))
                                               (let ((_target223584223602_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g229227_
                                                         0)))
                                                     (_tl223586223604_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g229227_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl223586223604_))
                                                     (letrec ((_loop223587223607_
                                                               (lambda (_hd223585223610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr223591223612_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd223585223610_))
                             (let ((_e223588223615_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd223585223610_))))
                               (let ((_lp-hd223589223618_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e223588223615_)))
                                     (_lp-tl223590223620_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e223588223615_))))
                                 (let ((__tmp229229
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd223589223618_
                                                _expr223591223612_))))
                                   (declare (not safe))
                                   (_loop223587223607_
                                    _lp-tl223590223620_
                                    __tmp229229))))
                             (let ((_expr223592223623_
                                    (reverse _expr223591223612_)))
                               ((lambda (_L223626_)
                                  (let ()
                                    (let* ((_body223639_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args223459_))
                                                 _L223559_))
                                           (__tmp229230
                                            (let ((__tmp229231
                                                   (let ((__tmp229232
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L223626_
                                                               _L223561_))
                                                            (let ((__tmp229233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g223640223644_
                                    _g223641223646_
                                    _g223642223648_)
                             (let ((__tmp229234
                                    (let ((__tmp229235
                                           (let ()
                                             (declare (not safe))
                                             (cons _g223640223644_ '()))))
                                      (declare (not safe))
                                      (cons _g223641223646_ __tmp229235))))
                               (declare (not safe))
                               (cons __tmp229234 _g223642223648_)))))
                      (declare (not safe))
                      (foldr2 __tmp229233 '() _L223626_ _L223561_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp229232
                                                           _body223639_))))
                                              (declare (not safe))
                                              (cons _L223562_ __tmp229231))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp229230
                                       _stx223458_))))
                                _expr223592223623_))))))
               (let ()
                 (declare (not safe))
                 (_loop223587223607_ _target223584223602_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g223581223597_
                                                        _g223582223600_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g223581223597_
                                              _g223582223600_)))))
                                    (__tmp229236
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args223459_))
                                          (let ((__tmp229237
                                                 (lambda (_g223653223656_
                                                          _g223654223658_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g223653223656_
                                                           _g223654223658_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp229237
                                                    '()
                                                    _L223560_)))))
                               (declare (not safe))
                               (_g223580223651_ __tmp229236)))
                           _tl223472223512_
                           _expr223482223554_
                           _hd223483223556_
                           _hd223468223502_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop223476223520_
                                                     _target223473223515_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g223461223494_
                                                   _g223462223497_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223461223494_ _g223462223497_)))))
                              (let ()
                                (declare (not safe))
                                (_g223461223494_ _g223462223497_)))))
                      (let ()
                        (declare (not safe))
                        (_g223461223494_ _g223462223497_))))))
          (declare (not safe))
          (_g223460223661_ _stx223458_))))
    (define gxc#xform-operands
      (lambda (_stx223414_ . _args223415_)
        (let* ((_g223417223428_
                (lambda (_g223418223425_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223418223425_))))
               (_g223416223455_
                (lambda (_g223418223431_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223418223431_))
                      (let ((_e223421223433_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223418223431_))))
                        (let ((_hd223422223436_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223421223433_)))
                              (_tl223423223438_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223421223433_))))
                          ((lambda (_L223441_ _L223442_)
                             (let* ((_rands223453_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args223415_))
                                          _L223441_))
                                    (__tmp229238
                                     (let ()
                                       (declare (not safe))
                                       (cons _L223442_ _rands223453_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp229238
                                _stx223414_)))
                           _tl223423223438_
                           _hd223422223436_)))
                      (let ()
                        (declare (not safe))
                        (_g223417223428_ _g223418223431_))))))
          (declare (not safe))
          (_g223416223455_ _stx223414_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx223335_ . _args223336_)
        (let* ((_g223338223355_
                (lambda (_g223339223352_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223339223352_))))
               (_g223337223411_
                (lambda (_g223339223358_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223339223358_))
                      (let ((_e223342223360_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223339223358_))))
                        (let ((_hd223343223363_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223342223360_)))
                              (_tl223344223365_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223342223360_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223344223365_))
                              (let ((_e223345223368_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223344223365_))))
                                (let ((_hd223346223371_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223345223368_)))
                                      (_tl223347223373_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223345223368_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223347223373_))
                                      (let ((_e223348223376_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223347223373_))))
                                        (let ((_hd223349223379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223348223376_)))
                                              (_tl223350223381_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223348223376_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223350223381_))
                                              ((lambda (_L223384_ _L223385_)
                                                 (let* ((_expr223409_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223336_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223384_))
                     (let ((_arg1223400_ (car _args223336_))
                           (_rest223402_ (cdr _args223336_)))
                       (if (let () (declare (not safe)) (null? _rest223402_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223384_ _arg1223400_))
                           (let ((_arg2223405_ (car _rest223402_))
                                 (_rest223407_ (cdr _rest223402_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223407_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223384_
                                    _arg1223400_
                                    _arg2223405_))
                                 (apply gxc#compile-e
                                        _L223384_
                                        _arg1223400_
                                        _arg2223405_
                                        _rest223407_)))))))
                (__tmp229239
                 (let ((__tmp229240
                        (let ((__tmp229241
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223409_ '()))))
                          (declare (not safe))
                          (cons _L223385_ __tmp229241))))
                   (declare (not safe))
                   (cons '%#set! __tmp229240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229239
                                                    _stx223335_)))
                                               _hd223349223379_
                                               _hd223346223371_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223338223355_
                                                 _g223339223358_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223338223355_ _g223339223358_)))))
                              (let ()
                                (declare (not safe))
                                (_g223338223355_ _g223339223358_)))))
                      (let ()
                        (declare (not safe))
                        (_g223338223355_ _g223339223358_))))))
          (declare (not safe))
          (_g223337223411_ _stx223335_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx223266_)
        (let* ((_g223268223285_
                (lambda (_g223269223282_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223269223282_))))
               (_g223267223332_
                (lambda (_g223269223288_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223269223288_))
                      (let ((_e223272223290_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223269223288_))))
                        (let ((_hd223273223293_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223272223290_)))
                              (_tl223274223295_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223272223290_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223274223295_))
                              (let ((_e223275223298_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223274223295_))))
                                (let ((_hd223276223301_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223275223298_)))
                                      (_tl223277223303_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223275223298_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223277223303_))
                                      (let ((_e223278223306_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223277223303_))))
                                        (let ((_hd223279223309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223278223306_)))
                                              (_tl223280223311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223278223306_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223280223311_))
                                              ((lambda (_L223314_ _L223315_)
                                                 (let ((_sym223330_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L223315_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym223330_))
                                                   (let ((__tmp229242
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp229242
                                                      _sym223330_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L223314_))))
                                               _hd223279223309_
                                               _hd223276223301_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223268223285_
                                                 _g223269223288_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223268223285_ _g223269223288_)))))
                              (let ()
                                (declare (not safe))
                                (_g223268223285_ _g223269223288_)))))
                      (let ()
                        (declare (not safe))
                        (_g223268223285_ _g223269223288_))))))
          (declare (not safe))
          (_g223267223332_ _stx223266_))))
    (define gxc#collect-methods-call%
      (lambda (_stx222820_)
        (let* ((___stx228932228933_ _stx222820_)
               (_g222824222926_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx228932228933_)))))
          (let ((___kont228934228935_
                 (lambda (_L223216_ _L223217_ _L223218_ _L223219_ _L223220_)
                   (let ((__tmp229243
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L223217_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp229243))))
                (___kont228936228937_
                 (lambda (_L223042_ _L223043_ _L223044_ _L223045_)
                   (let ((__tmp229244
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L223042_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp229244))))
                (___kont228938228939_ (lambda () '#!void)))
            (let ((___match229067229068_
                   (lambda (_e222831223088_
                            _hd222832223091_
                            _tl222833223093_
                            _e222834223096_
                            _hd222835223099_
                            _tl222836223101_
                            _e222837223104_
                            _hd222838223107_
                            _tl222839223109_
                            _e222840223112_
                            _hd222841223115_
                            _tl222842223117_
                            _e222843223120_
                            _hd222844223123_
                            _tl222845223125_
                            _e222846223128_
                            _hd222847223131_
                            _tl222848223133_
                            _e222849223136_
                            _hd222850223139_
                            _tl222851223141_
                            _e222852223144_
                            _hd222853223147_
                            _tl222854223149_
                            _e222855223152_
                            _hd222856223155_
                            _tl222857223157_
                            _e222858223160_
                            _hd222859223163_
                            _tl222860223165_
                            _e222861223168_
                            _hd222862223171_
                            _tl222863223173_
                            _e222864223176_
                            _hd222865223179_
                            _tl222866223181_
                            _e222867223184_
                            _hd222868223187_
                            _tl222869223189_
                            _e222870223192_
                            _hd222871223195_
                            _tl222872223197_
                            _e222873223200_
                            _hd222874223203_
                            _tl222875223205_
                            _e222876223208_
                            _hd222877223211_
                            _tl222878223213_)
                     (let ((_L223216_ _hd222877223211_)
                           (_L223217_ _hd222868223187_)
                           (_L223218_ _hd222859223163_)
                           (_L223219_ _hd222850223139_)
                           (_L223220_ _hd222841223115_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L223220_
                              'bind-method!))
                           (___kont228934228935_
                            _L223216_
                            _L223217_
                            _L223218_
                            _L223219_
                            _L223220_)
                           (___kont228938228939_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx228932228933_))
                  (let ((_e222831223088_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx228932228933_))))
                    (let ((_tl222833223093_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222831223088_)))
                          (_hd222832223091_
                           (let ()
                             (declare (not safe))
                             (##car _e222831223088_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222833223093_))
                          (let ((_e222834223096_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222833223093_))))
                            (let ((_tl222836223101_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222834223096_)))
                                  (_hd222835223099_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222834223096_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd222835223099_))
                                  (let ((_e222837223104_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd222835223099_))))
                                    (let ((_tl222839223109_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222837223104_)))
                                          (_hd222838223107_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222837223104_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd222838223107_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd222838223107_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222839223109_))
                                                  (let ((_e222840223112_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222839223109_))))
                                                    (let ((_tl222842223117_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222840223112_)))
                                                          (_hd222841223115_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222840223112_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222842223117_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl222836223101_))
                      (let ((_e222843223120_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl222836223101_))))
                        (let ((_tl222845223125_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222843223120_)))
                              (_hd222844223123_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222843223120_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd222844223123_))
                              (let ((_e222846223128_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd222844223123_))))
                                (let ((_tl222848223133_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222846223128_)))
                                      (_hd222847223131_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222846223128_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd222847223131_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd222847223131_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl222848223133_))
                                              (let ((_e222849223136_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl222848223133_))))
                                                (let ((_tl222851223141_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222849223136_)))
                                                      (_hd222850223139_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222849223136_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222851223141_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl222845223125_))
                                                          (let ((_e222852223144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl222845223125_))))
                    (let ((_tl222854223149_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222852223144_)))
                          (_hd222853223147_
                           (let ()
                             (declare (not safe))
                             (##car _e222852223144_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd222853223147_))
                          (let ((_e222855223152_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd222853223147_))))
                            (let ((_tl222857223157_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222855223152_)))
                                  (_hd222856223155_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222855223152_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd222856223155_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd222856223155_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl222857223157_))
                                          (let ((_e222858223160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl222857223157_))))
                                            (let ((_tl222860223165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e222858223160_)))
                                                  (_hd222859223163_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e222858223160_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl222860223165_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl222854223149_))
                                                      (let ((_e222861223168_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl222854223149_))))
                (let ((_tl222863223173_
                       (let () (declare (not safe)) (##cdr _e222861223168_)))
                      (_hd222862223171_
                       (let () (declare (not safe)) (##car _e222861223168_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222862223171_))
                      (let ((_e222864223176_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222862223171_))))
                        (let ((_tl222866223181_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222864223176_)))
                              (_hd222865223179_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222864223176_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd222865223179_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd222865223179_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222866223181_))
                                      (let ((_e222867223184_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222866223181_))))
                                        (let ((_tl222869223189_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222867223184_)))
                                              (_hd222868223187_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222867223184_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222869223189_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222863223173_))
                                                  (let ((_e222870223192_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222863223173_))))
                                                    (let ((_tl222872223197_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222870223192_)))
                                                          (_hd222871223195_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222870223192_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd222871223195_))
                                                          (let ((_e222873223200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd222871223195_))))
                    (let ((_tl222875223205_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222873223200_)))
                          (_hd222874223203_
                           (let ()
                             (declare (not safe))
                             (##car _e222873223200_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd222874223203_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd222874223203_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222875223205_))
                                  (let ((_e222876223208_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222875223205_))))
                                    (let ((_tl222878223213_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222876223208_)))
                                          (_hd222877223211_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222876223208_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222878223213_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222872223197_))
                                              (___match229067229068_
                                               _e222831223088_
                                               _hd222832223091_
                                               _tl222833223093_
                                               _e222834223096_
                                               _hd222835223099_
                                               _tl222836223101_
                                               _e222837223104_
                                               _hd222838223107_
                                               _tl222839223109_
                                               _e222840223112_
                                               _hd222841223115_
                                               _tl222842223117_
                                               _e222843223120_
                                               _hd222844223123_
                                               _tl222845223125_
                                               _e222846223128_
                                               _hd222847223131_
                                               _tl222848223133_
                                               _e222849223136_
                                               _hd222850223139_
                                               _tl222851223141_
                                               _e222852223144_
                                               _hd222853223147_
                                               _tl222854223149_
                                               _e222855223152_
                                               _hd222856223155_
                                               _tl222857223157_
                                               _e222858223160_
                                               _hd222859223163_
                                               _tl222860223165_
                                               _e222861223168_
                                               _hd222862223171_
                                               _tl222863223173_
                                               _e222864223176_
                                               _hd222865223179_
                                               _tl222866223181_
                                               _e222867223184_
                                               _hd222868223187_
                                               _tl222869223189_
                                               _e222870223192_
                                               _hd222871223195_
                                               _tl222872223197_
                                               _e222873223200_
                                               _hd222874223203_
                                               _tl222875223205_
                                               _e222876223208_
                                               _hd222877223211_
                                               _tl222878223213_)
                                              (___kont228938228939_))
                                          (___kont228938228939_))))
                                  (___kont228938228939_))
                              (___kont228938228939_))
                          (___kont228938228939_))))
                  (___kont228938228939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222863223173_))
                                                      (if (let ((__tmp229245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp229245 'bind-method!))
                  (let ((_L223042_ _hd222868223187_)
                        (_L223043_ _hd222859223163_)
                        (_L223044_ _hd222850223139_)
                        (_L223045_ _hd222841223115_))
                    (___kont228936228937_
                     _L223042_
                     _L223043_
                     _L223044_
                     _L223045_))
                  (___kont228938228939_))
              (___kont228938228939_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228938228939_))))
                                      (___kont228938228939_))
                                  (___kont228938228939_))
                              (___kont228938228939_))))
                      (___kont228938228939_))))
              (___kont228938228939_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228938228939_))))
                                          (___kont228938228939_))
                                      (___kont228938228939_))
                                  (___kont228938228939_))))
                          (___kont228938228939_))))
                  (___kont228938228939_))
              (___kont228938228939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228938228939_))
                                          (___kont228938228939_))
                                      (___kont228938228939_))))
                              (___kont228938228939_))))
                      (___kont228938228939_))
                  (___kont228938228939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228938228939_))
                                              (___kont228938228939_))
                                          (___kont228938228939_))))
                                  (___kont228938228939_))))
                          (___kont228938228939_))))
                  (___kont228938228939_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx222767_ _id222768_ _new-id222769_)
        (let* ((_g222771222784_
                (lambda (_g222772222781_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222772222781_))))
               (_g222770222817_
                (lambda (_g222772222787_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222772222787_))
                      (let ((_e222774222789_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222772222787_))))
                        (let ((_hd222775222792_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222774222789_)))
                              (_tl222776222794_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222774222789_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222776222794_))
                              (let ((_e222777222797_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222776222794_))))
                                (let ((_hd222778222800_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222777222797_)))
                                      (_tl222779222802_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222777222797_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222779222802_))
                                      ((lambda (_L222805_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L222805_
                                                _id222768_))
                                             (let ((__tmp229246
                                                    (let ((__tmp229247
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id222769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp229247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp229246
                                                _stx222767_))
                                             _stx222767_))
                                       _hd222778222800_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222771222784_ _g222772222787_)))))
                              (let ()
                                (declare (not safe))
                                (_g222771222784_ _g222772222787_)))))
                      (let ()
                        (declare (not safe))
                        (_g222771222784_ _g222772222787_))))))
          (declare (not safe))
          (_g222770222817_ _stx222767_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx222708_ _subst222709_)
        (let* ((_g222711222724_
                (lambda (_g222712222721_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222712222721_))))
               (_g222710222764_
                (lambda (_g222712222727_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222712222727_))
                      (let ((_e222714222729_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222712222727_))))
                        (let ((_hd222715222732_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222714222729_)))
                              (_tl222716222734_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222714222729_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222716222734_))
                              (let ((_e222717222737_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222716222734_))))
                                (let ((_hd222718222740_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222717222737_)))
                                      (_tl222719222742_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222717222737_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222719222742_))
                                      ((lambda (_L222745_)
                                         (let ((_$e222759_
                                                (let ((__tmp229248
                                                       (lambda (_sub222757_)
                                                         (let ((__tmp229249
                                                                (car _sub222757_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L222745_
                                                            __tmp229249)))))
                                                  (declare (not safe))
                                                  (find __tmp229248
                                                        _subst222709_))))
                                           (if _$e222759_
                                               ((lambda (_sub222762_)
                                                  (let ((__tmp229250
                                                         (let ((__tmp229251
                                                                (let ((__tmp229252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub222762_)))
                          (declare (not safe))
                          (cons __tmp229252 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp229251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp229250
                                                     _stx222708_)))
                                                _$e222759_)
                                               _stx222708_)))
                                       _hd222718222740_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222711222724_ _g222712222727_)))))
                              (let ()
                                (declare (not safe))
                                (_g222711222724_ _g222712222727_)))))
                      (let ()
                        (declare (not safe))
                        (_g222711222724_ _g222712222727_))))))
          (declare (not safe))
          (_g222710222764_ _stx222708_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx222636_ _id222637_ _new-id222638_)
        (let* ((_g222640222657_
                (lambda (_g222641222654_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222641222654_))))
               (_g222639222705_
                (lambda (_g222641222660_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222641222660_))
                      (let ((_e222644222662_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222641222660_))))
                        (let ((_hd222645222665_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222644222662_)))
                              (_tl222646222667_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222644222662_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222646222667_))
                              (let ((_e222647222670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222646222667_))))
                                (let ((_hd222648222673_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222647222670_)))
                                      (_tl222649222675_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222647222670_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222649222675_))
                                      (let ((_e222650222678_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222649222675_))))
                                        (let ((_hd222651222681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222650222678_)))
                                              (_tl222652222683_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222650222678_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222652222683_))
                                              ((lambda (_L222686_ _L222687_)
                                                 (let ((_new-expr222702_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L222686_
                                                           _id222637_
                                                           _new-id222638_)))
                                                       (_new-xid222703_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L222687_
                                                               _id222637_))
                                                            _new-id222638_
                                                            _L222687_)))
                                                   (let ((__tmp229253
                                                          (let ((__tmp229254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp229255
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr222702_ '()))))
                           (declare (not safe))
                           (cons _new-xid222703_ __tmp229255))))
                    (declare (not safe))
                    (cons '%#set! __tmp229254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp229253
                                                      _stx222636_))))
                                               _hd222651222681_
                                               _hd222648222673_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222640222657_
                                                 _g222641222660_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222640222657_ _g222641222660_)))))
                              (let ()
                                (declare (not safe))
                                (_g222640222657_ _g222641222660_)))))
                      (let ()
                        (declare (not safe))
                        (_g222640222657_ _g222641222660_))))))
          (declare (not safe))
          (_g222639222705_ _stx222636_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx222560_ _subst222561_)
        (let* ((_g222563222580_
                (lambda (_g222564222577_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222564222577_))))
               (_g222562222633_
                (lambda (_g222564222583_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222564222583_))
                      (let ((_e222567222585_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222564222583_))))
                        (let ((_hd222568222588_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222567222585_)))
                              (_tl222569222590_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222567222585_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222569222590_))
                              (let ((_e222570222593_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222569222590_))))
                                (let ((_hd222571222596_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222570222593_)))
                                      (_tl222572222598_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222570222593_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222572222598_))
                                      (let ((_e222573222601_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222572222598_))))
                                        (let ((_hd222574222604_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222573222601_)))
                                              (_tl222575222606_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222573222601_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222575222606_))
                                              ((lambda (_L222609_ _L222610_)
                                                 (let ((_new-expr222630_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L222609_
                                                           _subst222561_)))
                                                       (_new-xid222631_
                                                        (let ((_$e222627_
                                                               (let ((__tmp229256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub222625_)
                                (let ((__tmp229257 (car _sub222625_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L222610_
                                   __tmp229257)))))
                         (declare (not safe))
                         (find __tmp229256 _subst222561_))))
                  (if _$e222627_ (cdr _$e222627_) _L222610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp229258
                                                          (let ((__tmp229259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp229260
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr222630_ '()))))
                           (declare (not safe))
                           (cons _new-xid222631_ __tmp229260))))
                    (declare (not safe))
                    (cons '%#set! __tmp229259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp229258
                                                      _stx222560_))))
                                               _hd222574222604_
                                               _hd222571222596_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222563222580_
                                                 _g222564222583_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222563222580_ _g222564222583_)))))
                              (let ()
                                (declare (not safe))
                                (_g222563222580_ _g222564222583_)))))
                      (let ()
                        (declare (not safe))
                        (_g222563222580_ _g222564222583_))))))
          (declare (not safe))
          (_g222562222633_ _stx222560_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx222506_ _ht222507_)
        (let* ((_g222509222522_
                (lambda (_g222510222519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222510222519_))))
               (_g222508222557_
                (lambda (_g222510222525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222510222525_))
                      (let ((_e222512222527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222510222525_))))
                        (let ((_hd222513222530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222512222527_)))
                              (_tl222514222532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222512222527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222514222532_))
                              (let ((_e222515222535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222514222532_))))
                                (let ((_hd222516222538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222515222535_)))
                                      (_tl222517222540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222515222535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222517222540_))
                                      ((lambda (_L222543_)
                                         (let ((_eid222555_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L222543_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht222507_
                                            _eid222555_
                                            1+
                                            '0)))
                                       _hd222516222538_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222509222522_ _g222510222525_)))))
                              (let ()
                                (declare (not safe))
                                (_g222509222522_ _g222510222525_)))))
                      (let ()
                        (declare (not safe))
                        (_g222509222522_ _g222510222525_))))))
          (declare (not safe))
          (_g222508222557_ _stx222506_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx222436_ _ht222437_)
        (let* ((_g222439222456_
                (lambda (_g222440222453_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222440222453_))))
               (_g222438222503_
                (lambda (_g222440222459_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222440222459_))
                      (let ((_e222443222461_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222440222459_))))
                        (let ((_hd222444222464_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222443222461_)))
                              (_tl222445222466_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222443222461_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222445222466_))
                              (let ((_e222446222469_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222445222466_))))
                                (let ((_hd222447222472_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222446222469_)))
                                      (_tl222448222474_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222446222469_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222448222474_))
                                      (let ((_e222449222477_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222448222474_))))
                                        (let ((_hd222450222480_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222449222477_)))
                                              (_tl222451222482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222449222477_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222451222482_))
                                              ((lambda (_L222485_ _L222486_)
                                                 (let ((_eid222501_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L222486_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht222437_
                                                      _eid222501_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L222485_
                                                      _ht222437_))))
                                               _hd222450222480_
                                               _hd222447222472_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222439222456_
                                                 _g222440222459_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222439222456_ _g222440222459_)))))
                              (let ()
                                (declare (not safe))
                                (_g222439222456_ _g222440222459_)))))
                      (let ()
                        (declare (not safe))
                        (_g222439222456_ _g222440222459_))))))
          (declare (not safe))
          (_g222438222503_ _stx222436_))))
    (define gxc#find-body%
      (lambda (_stx222349_ _arg222350_)
        (let* ((_g222352222371_
                (lambda (_g222353222368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222353222368_))))
               (_g222351222433_
                (lambda (_g222353222374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222353222374_))
                      (let ((_e222355222376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222353222374_))))
                        (let ((_hd222356222379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222355222376_)))
                              (_tl222357222381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222355222376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl222357222381_))
                              (let ((_g229261_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl222357222381_
                                        '0))))
                                (begin
                                  (let ((_g229262_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g229261_)
                                               (##vector-length _g229261_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g229262_ 2)))
                                        (error "Context expects 2 values"
                                               _g229262_)))
                                  (let ((_target222358222384_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229261_ 0)))
                                        (_tl222360222386_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229261_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222360222386_))
                                        (letrec ((_loop222361222389_
                                                  (lambda (_hd222359222392_
                                                           _expr222365222394_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd222359222392_))
                                                        (let ((_e222362222397_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd222359222392_))))
                  (let ((_lp-hd222363222400_
                         (let () (declare (not safe)) (##car _e222362222397_)))
                        (_lp-tl222364222402_
                         (let ()
                           (declare (not safe))
                           (##cdr _e222362222397_))))
                    (let ((__tmp229263
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd222363222400_ _expr222365222394_))))
                      (declare (not safe))
                      (_loop222361222389_ _lp-tl222364222402_ __tmp229263))))
                (let ((_expr222366222405_ (reverse _expr222365222394_)))
                  ((lambda (_L222408_)
                     (let ((__tmp229266
                            (lambda (_g222421222423_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g222421222423_
                                 _arg222350_))))
                           (__tmp229264
                            (let ((__tmp229265
                                   (lambda (_g222425222428_ _g222426222430_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g222425222428_
                                             _g222426222430_)))))
                              (declare (not safe))
                              (foldr1 __tmp229265 '() _L222408_))))
                       (declare (not safe))
                       (ormap1 __tmp229266 __tmp229264)))
                   _expr222366222405_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop222361222389_
                                             _target222358222384_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g222352222371_
                                           _g222353222374_))))))
                              (let ()
                                (declare (not safe))
                                (_g222352222371_ _g222353222374_)))))
                      (let ()
                        (declare (not safe))
                        (_g222352222371_ _g222353222374_))))))
          (declare (not safe))
          (_g222351222433_ _stx222349_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx222281_ _arg222282_)
        (let* ((_g222284222301_
                (lambda (_g222285222298_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222285222298_))))
               (_g222283222346_
                (lambda (_g222285222304_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222285222304_))
                      (let ((_e222288222306_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222285222304_))))
                        (let ((_hd222289222309_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222288222306_)))
                              (_tl222290222311_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222288222306_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222290222311_))
                              (let ((_e222291222314_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222290222311_))))
                                (let ((_hd222292222317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222291222314_)))
                                      (_tl222293222319_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222291222314_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222293222319_))
                                      (let ((_e222294222322_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222293222319_))))
                                        (let ((_hd222295222325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222294222322_)))
                                              (_tl222296222327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222294222322_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222296222327_))
                                              ((lambda (_L222330_ _L222331_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222330_
                                                    _arg222282_)))
                                               _hd222295222325_
                                               _hd222292222317_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222284222301_
                                                 _g222285222304_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222284222301_ _g222285222304_)))))
                              (let ()
                                (declare (not safe))
                                (_g222284222301_ _g222285222304_)))))
                      (let ()
                        (declare (not safe))
                        (_g222284222301_ _g222285222304_))))))
          (declare (not safe))
          (_g222283222346_ _stx222281_))))
    (define gxc#find-lambda%
      (lambda (_stx222213_ _arg222214_)
        (let* ((_g222216222233_
                (lambda (_g222217222230_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222217222230_))))
               (_g222215222278_
                (lambda (_g222217222236_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222217222236_))
                      (let ((_e222220222238_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222217222236_))))
                        (let ((_hd222221222241_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222220222238_)))
                              (_tl222222222243_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222220222238_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222222222243_))
                              (let ((_e222223222246_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222222222243_))))
                                (let ((_hd222224222249_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222223222246_)))
                                      (_tl222225222251_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222223222246_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222225222251_))
                                      (let ((_e222226222254_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222225222251_))))
                                        (let ((_hd222227222257_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222226222254_)))
                                              (_tl222228222259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222226222254_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222228222259_))
                                              ((lambda (_L222262_ _L222263_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222262_
                                                    _arg222214_)))
                                               _hd222227222257_
                                               _hd222224222249_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222216222233_
                                                 _g222217222236_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222216222233_ _g222217222236_)))))
                              (let ()
                                (declare (not safe))
                                (_g222216222233_ _g222217222236_)))))
                      (let ()
                        (declare (not safe))
                        (_g222216222233_ _g222217222236_))))))
          (declare (not safe))
          (_g222215222278_ _stx222213_))))
    (define gxc#find-case-lambda%
      (lambda (_stx222095_ _arg222096_)
        (let* ((_g222098222126_
                (lambda (_g222099222123_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222099222123_))))
               (_g222097222210_
                (lambda (_g222099222129_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222099222129_))
                      (let ((_e222102222131_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222099222129_))))
                        (let ((_hd222103222134_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222102222131_)))
                              (_tl222104222136_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222102222131_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl222104222136_))
                              (let ((_g229267_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl222104222136_
                                        '0))))
                                (begin
                                  (let ((_g229268_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g229267_)
                                               (##vector-length _g229267_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g229268_ 2)))
                                        (error "Context expects 2 values"
                                               _g229268_)))
                                  (let ((_target222105222139_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229267_ 0)))
                                        (_tl222107222141_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229267_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222107222141_))
                                        (letrec ((_loop222108222144_
                                                  (lambda (_hd222106222147_
                                                           _body222112222149_
                                                           _hd222113222151_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd222106222147_))
                                                        (let ((_e222109222154_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd222106222147_))))
                  (let ((_lp-hd222110222157_
                         (let () (declare (not safe)) (##car _e222109222154_)))
                        (_lp-tl222111222159_
                         (let ()
                           (declare (not safe))
                           (##cdr _e222109222154_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd222110222157_))
                        (let ((_e222116222162_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd222110222157_))))
                          (let ((_hd222117222165_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222116222162_)))
                                (_tl222118222167_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222116222162_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl222118222167_))
                                (let ((_e222119222170_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl222118222167_))))
                                  (let ((_hd222120222173_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222119222170_)))
                                        (_tl222121222175_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222119222170_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222121222175_))
                                        (let ((__tmp229270
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222120222173_
                                                       _body222112222149_)))
                                              (__tmp229269
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222117222165_
                                                       _hd222113222151_))))
                                          (declare (not safe))
                                          (_loop222108222144_
                                           _lp-tl222111222159_
                                           __tmp229270
                                           __tmp229269))
                                        (let ()
                                          (declare (not safe))
                                          (_g222098222126_ _g222099222129_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222098222126_ _g222099222129_)))))
                        (let ()
                          (declare (not safe))
                          (_g222098222126_ _g222099222129_)))))
                (let ((_body222114222178_ (reverse _body222112222149_))
                      (_hd222115222180_ (reverse _hd222113222151_)))
                  ((lambda (_L222183_ _L222184_)
                     (let ((__tmp229273
                            (lambda (_g222198222200_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g222198222200_
                                 _arg222096_))))
                           (__tmp229271
                            (let ((__tmp229272
                                   (lambda (_g222202222205_ _g222203222207_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g222202222205_
                                             _g222203222207_)))))
                              (declare (not safe))
                              (foldr1 __tmp229272 '() _L222183_))))
                       (declare (not safe))
                       (ormap1 __tmp229273 __tmp229271)))
                   _body222114222178_
                   _hd222115222180_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop222108222144_
                                             _target222105222139_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g222098222126_
                                           _g222099222129_))))))
                              (let ()
                                (declare (not safe))
                                (_g222098222126_ _g222099222129_)))))
                      (let ()
                        (declare (not safe))
                        (_g222098222126_ _g222099222129_))))))
          (declare (not safe))
          (_g222097222210_ _stx222095_))))
    (define gxc#find-let-values%
      (lambda (_stx221945_ _arg221946_)
        (let* ((_g221948221983_
                (lambda (_g221949221980_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221949221980_))))
               (_g221947222092_
                (lambda (_g221949221986_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221949221986_))
                      (let ((_e221953221988_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221949221986_))))
                        (let ((_hd221954221991_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221953221988_)))
                              (_tl221955221993_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221953221988_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221955221993_))
                              (let ((_e221956221996_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221955221993_))))
                                (let ((_hd221957221999_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221956221996_)))
                                      (_tl221958222001_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221956221996_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd221957221999_))
                                      (let ((_g229274_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd221957221999_
                                                '0))))
                                        (begin
                                          (let ((_g229275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g229274_)
                                                       (##vector-length
                                                        _g229274_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g229275_ 2)))
                                                (error "Context expects 2 values"
                                                       _g229275_)))
                                          (let ((_target221959222004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g229274_ 0)))
                                                (_tl221961222006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g229274_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221961222006_))
                                                (letrec ((_loop221962222009_
                                                          (lambda (_hd221960222012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr221966222014_
                           _bind221967222016_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd221960222012_))
                        (let ((_e221963222019_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd221960222012_))))
                          (let ((_lp-hd221964222022_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221963222019_)))
                                (_lp-tl221965222024_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221963222019_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd221964222022_))
                                (let ((_e221970222027_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd221964222022_))))
                                  (let ((_hd221971222030_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221970222027_)))
                                        (_tl221972222032_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221970222027_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221972222032_))
                                        (let ((_e221973222035_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221972222032_))))
                                          (let ((_hd221974222038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221973222035_)))
                                                (_tl221975222040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221973222035_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221975222040_))
                                                (let ((__tmp229277
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221974222038_
                                                               _expr221966222014_)))
                                                      (__tmp229276
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221971222030_
                                                               _bind221967222016_))))
                                                  (declare (not safe))
                                                  (_loop221962222009_
                                                   _lp-tl221965222024_
                                                   __tmp229277
                                                   __tmp229276))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221948221983_
                                                   _g221949221986_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g221948221983_ _g221949221986_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221948221983_ _g221949221986_)))))
                        (let ((_expr221968222043_ (reverse _expr221966222014_))
                              (_bind221969222045_
                               (reverse _bind221967222016_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221958222001_))
                              (let ((_e221976222048_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221958222001_))))
                                (let ((_hd221977222051_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221976222048_)))
                                      (_tl221978222053_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221976222048_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221978222053_))
                                      ((lambda (_L222056_ _L222057_ _L222058_)
                                         (let ((_$e222089_
                                                (let ((__tmp229280
                                                       (lambda (_g222077222079_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g222077222079_
                                                            _arg221946_))))
                                                      (__tmp229278
                                                       (let ((__tmp229279
                                                              (lambda (_g222081222084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g222082222086_)
                        (let ()
                          (declare (not safe))
                          (cons _g222081222084_ _g222082222086_)))))
                 (declare (not safe))
                 (foldr1 __tmp229279 '() _L222057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp229280
                                                          __tmp229278))))
                                           (if _$e222089_
                                               _$e222089_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L222056_
                                                  _arg221946_)))))
                                       _hd221977222051_
                                       _expr221968222043_
                                       _bind221969222045_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221948221983_ _g221949221986_)))))
                              (let ()
                                (declare (not safe))
                                (_g221948221983_ _g221949221986_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop221962222009_
                                                     _target221959222004_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221948221983_
                                                   _g221949221986_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221948221983_ _g221949221986_)))))
                              (let ()
                                (declare (not safe))
                                (_g221948221983_ _g221949221986_)))))
                      (let ()
                        (declare (not safe))
                        (_g221948221983_ _g221949221986_))))))
          (declare (not safe))
          (_g221947222092_ _stx221945_))))
    (define gxc#find-setq%
      (lambda (_stx221877_ _arg221878_)
        (let* ((_g221880221897_
                (lambda (_g221881221894_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221881221894_))))
               (_g221879221942_
                (lambda (_g221881221900_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221881221900_))
                      (let ((_e221884221902_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221881221900_))))
                        (let ((_hd221885221905_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221884221902_)))
                              (_tl221886221907_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221884221902_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221886221907_))
                              (let ((_e221887221910_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221886221907_))))
                                (let ((_hd221888221913_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221887221910_)))
                                      (_tl221889221915_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221887221910_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221889221915_))
                                      (let ((_e221890221918_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221889221915_))))
                                        (let ((_hd221891221921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221890221918_)))
                                              (_tl221892221923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221890221918_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221892221923_))
                                              ((lambda (_L221926_ _L221927_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221926_
                                                    _arg221878_)))
                                               _hd221891221921_
                                               _hd221888221913_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221880221897_
                                                 _g221881221900_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221880221897_ _g221881221900_)))))
                              (let ()
                                (declare (not safe))
                                (_g221880221897_ _g221881221900_)))))
                      (let ()
                        (declare (not safe))
                        (_g221880221897_ _g221881221900_))))))
          (declare (not safe))
          (_g221879221942_ _stx221877_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx221821_ _ids221822_)
        (let* ((_g221824221837_
                (lambda (_g221825221834_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221825221834_))))
               (_g221823221874_
                (lambda (_g221825221840_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221825221840_))
                      (let ((_e221827221842_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221825221840_))))
                        (let ((_hd221828221845_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221827221842_)))
                              (_tl221829221847_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221827221842_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221829221847_))
                              (let ((_e221830221850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221829221847_))))
                                (let ((_hd221831221853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221830221850_)))
                                      (_tl221832221855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221830221850_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221832221855_))
                                      ((lambda (_L221858_)
                                         (let ((__tmp229281
                                                (lambda (_g221869221871_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L221858_
                                                     _g221869221871_)))))
                                           (declare (not safe))
                                           (find __tmp229281 _ids221822_)))
                                       _hd221831221853_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221824221837_ _g221825221840_)))))
                              (let ()
                                (declare (not safe))
                                (_g221824221837_ _g221825221840_)))))
                      (let ()
                        (declare (not safe))
                        (_g221824221837_ _g221825221840_))))))
          (declare (not safe))
          (_g221823221874_ _stx221821_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx221745_ _ids221746_)
        (let* ((_g221748221765_
                (lambda (_g221749221762_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221749221762_))))
               (_g221747221818_
                (lambda (_g221749221768_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221749221768_))
                      (let ((_e221752221770_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221749221768_))))
                        (let ((_hd221753221773_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221752221770_)))
                              (_tl221754221775_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221752221770_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221754221775_))
                              (let ((_e221755221778_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221754221775_))))
                                (let ((_hd221756221781_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221755221778_)))
                                      (_tl221757221783_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221755221778_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221757221783_))
                                      (let ((_e221758221786_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221757221783_))))
                                        (let ((_hd221759221789_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221758221786_)))
                                              (_tl221760221791_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221758221786_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221760221791_))
                                              ((lambda (_L221794_ _L221795_)
                                                 (let ((_$e221815_
                                                        (let ((__tmp229282
                                                               (lambda (_g221810221812_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L221795_ _g221810221812_)))))
                  (declare (not safe))
                  (find __tmp229282 _ids221746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e221815_
                                                       _$e221815_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L221794_
                                                          _ids221746_)))))
                                               _hd221759221789_
                                               _hd221756221781_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221748221765_
                                                 _g221749221768_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221748221765_ _g221749221768_)))))
                              (let ()
                                (declare (not safe))
                                (_g221748221765_ _g221749221768_)))))
                      (let ()
                        (declare (not safe))
                        (_g221748221765_ _g221749221768_))))))
          (declare (not safe))
          (_g221747221818_ _stx221745_))))))
