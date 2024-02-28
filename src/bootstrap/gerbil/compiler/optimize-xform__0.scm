(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1709111637)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl117481_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117481_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117481_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117481_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117481_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl117481_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl117477_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117477_ '%#declare gxc#xform-identity))
           _tbl117477_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl117473_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117727 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl117473_ __tmp117727))
           (let ((__tmp117728 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl117473_ __tmp117728))
           _tbl117473_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl117469_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117469_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117469_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117469_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117469_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117469_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl117469_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl117465_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117729 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117465_ __tmp117729))
           (let ((__tmp117730 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl117465_ __tmp117730))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117465_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117465_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117465_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117465_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117465_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl117465_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl117461_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117731 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117461_ __tmp117731))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117461_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117461_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117461_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117461_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117461_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117461_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117461_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117461_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117461_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117461_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117461_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117461_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl117461_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx117444_ . _args117446_)
        (let ((__tmp117733
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117446_)
                     (gxc#compile-e__0 _stx117444_)
                     (let ((_arg1117451_ (car _args117446_))
                           (_rest117453_ (cdr _args117446_)))
                       (if (null? _rest117453_)
                           (gxc#compile-e__1 _stx117444_ _arg1117451_)
                           (let ((_arg2117456_ (car _rest117453_))
                                 (_rest117458_ (cdr _rest117453_)))
                             (if (null? _rest117458_)
                                 (gxc#compile-e__2
                                  _stx117444_
                                  _arg1117451_
                                  _arg2117456_)
                                 (apply gxc#compile-e
                                        _stx117444_
                                        _arg1117451_
                                        _arg2117456_
                                        _rest117458_))))))))
              (__tmp117732 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp117733
           gxc#current-compile-methods
           __tmp117732))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl117441_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117734 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117441_ __tmp117734))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117441_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117441_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117441_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117441_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117441_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl117441_))))
    (define gxc#apply-collect-methods
      (lambda (_stx117424_ . _args117426_)
        (let ((__tmp117736
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117426_)
                     (gxc#compile-e__0 _stx117424_)
                     (let ((_arg1117431_ (car _args117426_))
                           (_rest117433_ (cdr _args117426_)))
                       (if (null? _rest117433_)
                           (gxc#compile-e__1 _stx117424_ _arg1117431_)
                           (let ((_arg2117436_ (car _rest117433_))
                                 (_rest117438_ (cdr _rest117433_)))
                             (if (null? _rest117438_)
                                 (gxc#compile-e__2
                                  _stx117424_
                                  _arg1117431_
                                  _arg2117436_)
                                 (apply gxc#compile-e
                                        _stx117424_
                                        _arg1117431_
                                        _arg2117436_
                                        _rest117438_))))))))
              (__tmp117735 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp117736
           gxc#current-compile-methods
           __tmp117735))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl117421_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117737 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117421_ __tmp117737))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117421_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117421_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117421_ '%#set! gxc#expression-subst-setq%))
           _tbl117421_))))
    (define gxc#apply-expression-subst
      (lambda (_stx117404_ . _args117406_)
        (let ((__tmp117739
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117406_)
                     (gxc#compile-e__0 _stx117404_)
                     (let ((_arg1117411_ (car _args117406_))
                           (_rest117413_ (cdr _args117406_)))
                       (if (null? _rest117413_)
                           (gxc#compile-e__1 _stx117404_ _arg1117411_)
                           (let ((_arg2117416_ (car _rest117413_))
                                 (_rest117418_ (cdr _rest117413_)))
                             (if (null? _rest117418_)
                                 (gxc#compile-e__2
                                  _stx117404_
                                  _arg1117411_
                                  _arg2117416_)
                                 (apply gxc#compile-e
                                        _stx117404_
                                        _arg1117411_
                                        _arg2117416_
                                        _rest117418_))))))))
              (__tmp117738 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp117739
           gxc#current-compile-methods
           __tmp117738))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl117401_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117740 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl117401_ __tmp117740))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117401_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117401_ '%#set! gxc#expression-subst*-setq%))
           _tbl117401_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx117384_ . _args117386_)
        (let ((__tmp117742
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117386_)
                     (gxc#compile-e__0 _stx117384_)
                     (let ((_arg1117391_ (car _args117386_))
                           (_rest117393_ (cdr _args117386_)))
                       (if (null? _rest117393_)
                           (gxc#compile-e__1 _stx117384_ _arg1117391_)
                           (let ((_arg2117396_ (car _rest117393_))
                                 (_rest117398_ (cdr _rest117393_)))
                             (if (null? _rest117398_)
                                 (gxc#compile-e__2
                                  _stx117384_
                                  _arg1117391_
                                  _arg2117396_)
                                 (apply gxc#compile-e
                                        _stx117384_
                                        _arg1117391_
                                        _arg2117396_
                                        _rest117398_))))))))
              (__tmp117741 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp117742
           gxc#current-compile-methods
           __tmp117741))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl117381_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117743 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl117381_ __tmp117743))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117381_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117381_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl117381_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl117377_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117744 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl117377_ __tmp117744))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117377_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117377_ '%#set! gxc#find-var-refs-setq%))
           _tbl117377_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx117360_ . _args117362_)
        (let ((__tmp117746
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117362_)
                     (gxc#compile-e__0 _stx117360_)
                     (let ((_arg1117367_ (car _args117362_))
                           (_rest117369_ (cdr _args117362_)))
                       (if (null? _rest117369_)
                           (gxc#compile-e__1 _stx117360_ _arg1117367_)
                           (let ((_arg2117372_ (car _rest117369_))
                                 (_rest117374_ (cdr _rest117369_)))
                             (if (null? _rest117374_)
                                 (gxc#compile-e__2
                                  _stx117360_
                                  _arg1117367_
                                  _arg2117372_)
                                 (apply gxc#compile-e
                                        _stx117360_
                                        _arg1117367_
                                        _arg2117372_
                                        _rest117374_))))))))
              (__tmp117745 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117746
           gxc#current-compile-methods
           __tmp117745))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl117357_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117747 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl117357_ __tmp117747))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117357_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117357_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl117357_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx117340_ . _args117342_)
        (let ((__tmp117749
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117342_)
                     (gxc#compile-e__0 _stx117340_)
                     (let ((_arg1117347_ (car _args117342_))
                           (_rest117349_ (cdr _args117342_)))
                       (if (null? _rest117349_)
                           (gxc#compile-e__1 _stx117340_ _arg1117347_)
                           (let ((_arg2117352_ (car _rest117349_))
                                 (_rest117354_ (cdr _rest117349_)))
                             (if (null? _rest117354_)
                                 (gxc#compile-e__2
                                  _stx117340_
                                  _arg1117347_
                                  _arg2117352_)
                                 (apply gxc#compile-e
                                        _stx117340_
                                        _arg1117347_
                                        _arg2117352_
                                        _rest117354_))))))))
              (__tmp117748 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117749
           gxc#current-compile-methods
           __tmp117748))))
    (define gxc#xform-identity
      (lambda (_stx117337_ . _args117338_) _stx117337_))
    (define gxc#xform-wrap-source
      (lambda (_stx117334_ _src-stx117335_)
        (let ((__tmp117750
               (let () (declare (not safe)) (gx#stx-source _src-stx117335_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx117334_ __tmp117750))))
    (define gxc#xform-apply-compile-e
      (lambda (_args117321_)
        (lambda (_stx117323_)
          (if (let () (declare (not safe)) (null? _args117321_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx117323_))
              (let ((_arg1117325_ (car _args117321_))
                    (_rest117327_ (cdr _args117321_)))
                (if (let () (declare (not safe)) (null? _rest117327_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx117323_ _arg1117325_))
                    (let ((_arg2117330_ (car _rest117327_))
                          (_rest117332_ (cdr _rest117327_)))
                      (if (let () (declare (not safe)) (null? _rest117332_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx117323_
                             _arg1117325_
                             _arg2117330_))
                          (apply gxc#compile-e
                                 _stx117323_
                                 _arg1117325_
                                 _arg2117330_
                                 _rest117332_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx117280_ . _args117281_)
        (let* ((_g117283117293_
                (lambda (_g117284117290_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117284117290_))))
               (_g117282117318_
                (lambda (_g117284117296_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117284117296_))
                      (let ((_e117288117298_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117284117296_))))
                        (let ((_hd117287117301_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117288117298_)))
                              (_tl117286117303_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117288117298_))))
                          ((lambda (_L117306_)
                             (let* ((_forms117316_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117281_))
                                          _L117306_))
                                    (__tmp117751
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms117316_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117751
                                _stx117280_)))
                           _tl117286117303_)))
                      (let ()
                        (declare (not safe))
                        (_g117283117293_ _g117284117296_))))))
          (declare (not safe))
          (_g117282117318_ _stx117280_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx117238_ . _args117239_)
        (let* ((_g117241117251_
                (lambda (_g117242117248_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117242117248_))))
               (_g117240117277_
                (lambda (_g117242117254_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117242117254_))
                      (let ((_e117246117256_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117242117254_))))
                        (let ((_hd117245117259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117246117256_)))
                              (_tl117244117261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117246117256_))))
                          ((lambda (_L117264_)
                             (let ((__tmp117754
                                    (lambda ()
                                      (let* ((_forms117275_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args117239_))
                                                   _L117264_))
                                             (__tmp117755
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms117275_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp117755
                                         _stx117238_))))
                                   (__tmp117752
                                    (let ((__tmp117753
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp117753 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp117754
                                gx#current-expander-phi
                                __tmp117752)))
                           _tl117244117261_)))
                      (let ()
                        (declare (not safe))
                        (_g117241117251_ _g117242117254_))))))
          (declare (not safe))
          (_g117240117277_ _stx117238_))))
    (define gxc#xform-module%
      (lambda (_stx117166_ . _args117167_)
        (let* ((_g117169117183_
                (lambda (_g117170117180_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117170117180_))))
               (_g117168117235_
                (lambda (_g117170117186_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117170117186_))
                      (let ((_e117175117188_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117170117186_))))
                        (let ((_hd117174117191_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117175117188_)))
                              (_tl117173117193_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117175117188_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117173117193_))
                              (let ((_e117178117196_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117173117193_))))
                                (let ((_hd117177117199_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117178117196_)))
                                      (_tl117176117201_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117178117196_))))
                                  ((lambda (_L117204_ _L117205_)
                                     (let* ((_ctx117218_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L117205_)))
                                            (_code117220_
                                             (##structure-ref
                                              _ctx117218_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code117232_
                                             (let ((__tmp117756
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args117167_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code117220_))
                                                          (let ((_arg1117223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args117167_))
                        (_rest117225_ (cdr _args117167_)))
                    (if (let () (declare (not safe)) (null? _rest117225_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code117220_ _arg1117223_))
                        (let ((_arg2117228_ (car _rest117225_))
                              (_rest117230_ (cdr _rest117225_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest117230_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code117220_
                                 _arg1117223_
                                 _arg2117228_))
                              (apply gxc#compile-e
                                     _code117220_
                                     _arg1117223_
                                     _arg2117228_
                                     _rest117230_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp117756
                                                gx#current-expander-context
                                                _ctx117218_))))
                                       (##structure-set!
                                        _ctx117218_
                                        _code117232_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp117757
                                              (let ((__tmp117758
                                                     (let ((__tmp117759
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code117232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L117205_ __tmp117759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp117758))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp117757
                                          _stx117166_))))
                                   _tl117176117201_
                                   _hd117177117199_)))
                              (let ()
                                (declare (not safe))
                                (_g117169117183_ _g117170117186_)))))
                      (let ()
                        (declare (not safe))
                        (_g117169117183_ _g117170117186_))))))
          (declare (not safe))
          (_g117168117235_ _stx117166_))))
    (define gxc#xform-define-values%
      (lambda (_stx117087_ . _args117088_)
        (let* ((_g117090117107_
                (lambda (_g117091117104_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117091117104_))))
               (_g117089117163_
                (lambda (_g117091117110_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117091117110_))
                      (let ((_e117096117112_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117091117110_))))
                        (let ((_hd117095117115_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117096117112_)))
                              (_tl117094117117_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117096117112_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117094117117_))
                              (let ((_e117099117120_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117094117117_))))
                                (let ((_hd117098117123_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117099117120_)))
                                      (_tl117097117125_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117099117120_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117097117125_))
                                      (let ((_e117102117128_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117097117125_))))
                                        (let ((_hd117101117131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117102117128_)))
                                              (_tl117100117133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117102117128_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117100117133_))
                                              ((lambda (_L117136_ _L117137_)
                                                 (let* ((_expr117161_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117088_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117136_))
                     (let ((_arg1117152_ (car _args117088_))
                           (_rest117154_ (cdr _args117088_)))
                       (if (let () (declare (not safe)) (null? _rest117154_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117136_ _arg1117152_))
                           (let ((_arg2117157_ (car _rest117154_))
                                 (_rest117159_ (cdr _rest117154_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117159_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117136_
                                    _arg1117152_
                                    _arg2117157_))
                                 (apply gxc#compile-e
                                        _L117136_
                                        _arg1117152_
                                        _arg2117157_
                                        _rest117159_)))))))
                (__tmp117760
                 (let ((__tmp117761
                        (let ((__tmp117762
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117161_ '()))))
                          (declare (not safe))
                          (cons _L117137_ __tmp117762))))
                   (declare (not safe))
                   (cons '%#define-values __tmp117761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117760
                                                    _stx117087_)))
                                               _hd117101117131_
                                               _hd117098117123_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117090117107_
                                                 _g117091117110_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117090117107_ _g117091117110_)))))
                              (let ()
                                (declare (not safe))
                                (_g117090117107_ _g117091117110_)))))
                      (let ()
                        (declare (not safe))
                        (_g117090117107_ _g117091117110_))))))
          (declare (not safe))
          (_g117089117163_ _stx117087_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx117007_ . _args117008_)
        (let* ((_g117010117027_
                (lambda (_g117011117024_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117011117024_))))
               (_g117009117084_
                (lambda (_g117011117030_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117011117030_))
                      (let ((_e117016117032_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117011117030_))))
                        (let ((_hd117015117035_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117016117032_)))
                              (_tl117014117037_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117016117032_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117014117037_))
                              (let ((_e117019117040_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117014117037_))))
                                (let ((_hd117018117043_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117019117040_)))
                                      (_tl117017117045_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117019117040_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117017117045_))
                                      (let ((_e117022117048_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117017117045_))))
                                        (let ((_hd117021117051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117022117048_)))
                                              (_tl117020117053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117022117048_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117020117053_))
                                              ((lambda (_L117056_ _L117057_)
                                                 (let ((__tmp117765
                                                        (lambda ()
                                                          (let* ((_expr117082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args117008_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L117056_))
                              (let ((_arg1117073_ (car _args117008_))
                                    (_rest117075_ (cdr _args117008_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest117075_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L117056_
                                       _arg1117073_))
                                    (let ((_arg2117078_ (car _rest117075_))
                                          (_rest117080_ (cdr _rest117075_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest117080_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L117056_
                                             _arg1117073_
                                             _arg2117078_))
                                          (apply gxc#compile-e
                                                 _L117056_
                                                 _arg1117073_
                                                 _arg2117078_
                                                 _rest117080_)))))))
                         (__tmp117766
                          (let ((__tmp117767
                                 (let ((__tmp117768
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr117082_ '()))))
                                   (declare (not safe))
                                   (cons _L117057_ __tmp117768))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp117767))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp117766 _stx117007_))))
               (__tmp117763
                (let ((__tmp117764 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp117764 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp117765
                                                    gx#current-expander-phi
                                                    __tmp117763)))
                                               _hd117021117051_
                                               _hd117018117043_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117010117027_
                                                 _g117011117030_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117010117027_ _g117011117030_)))))
                              (let ()
                                (declare (not safe))
                                (_g117010117027_ _g117011117030_)))))
                      (let ()
                        (declare (not safe))
                        (_g117010117027_ _g117011117030_))))))
          (declare (not safe))
          (_g117009117084_ _stx117007_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx116928_ . _args116929_)
        (let* ((_g116931116948_
                (lambda (_g116932116945_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116932116945_))))
               (_g116930117004_
                (lambda (_g116932116951_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116932116951_))
                      (let ((_e116937116953_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116932116951_))))
                        (let ((_hd116936116956_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116937116953_)))
                              (_tl116935116958_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116937116953_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116935116958_))
                              (let ((_e116940116961_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116935116958_))))
                                (let ((_hd116939116964_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116940116961_)))
                                      (_tl116938116966_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116940116961_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116938116966_))
                                      (let ((_e116943116969_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116938116966_))))
                                        (let ((_hd116942116972_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116943116969_)))
                                              (_tl116941116974_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116943116969_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116941116974_))
                                              ((lambda (_L116977_ _L116978_)
                                                 (let* ((_expr117002_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116929_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116977_))
                     (let ((_arg1116993_ (car _args116929_))
                           (_rest116995_ (cdr _args116929_)))
                       (if (let () (declare (not safe)) (null? _rest116995_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116977_ _arg1116993_))
                           (let ((_arg2116998_ (car _rest116995_))
                                 (_rest117000_ (cdr _rest116995_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117000_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116977_
                                    _arg1116993_
                                    _arg2116998_))
                                 (apply gxc#compile-e
                                        _L116977_
                                        _arg1116993_
                                        _arg2116998_
                                        _rest117000_)))))))
                (__tmp117769
                 (let ((__tmp117770
                        (let ((__tmp117771
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117002_ '()))))
                          (declare (not safe))
                          (cons _L116978_ __tmp117771))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp117770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117769
                                                    _stx116928_)))
                                               _hd116942116972_
                                               _hd116939116964_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116931116948_
                                                 _g116932116951_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116931116948_ _g116932116951_)))))
                              (let ()
                                (declare (not safe))
                                (_g116931116948_ _g116932116951_)))))
                      (let ()
                        (declare (not safe))
                        (_g116931116948_ _g116932116951_))))))
          (declare (not safe))
          (_g116930117004_ _stx116928_))))
    (define gxc#xform-lambda%
      (lambda (_stx116871_ . _args116872_)
        (let* ((_g116874116888_
                (lambda (_g116875116885_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116875116885_))))
               (_g116873116925_
                (lambda (_g116875116891_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116875116891_))
                      (let ((_e116880116893_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116875116891_))))
                        (let ((_hd116879116896_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116880116893_)))
                              (_tl116878116898_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116880116893_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116878116898_))
                              (let ((_e116883116901_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116878116898_))))
                                (let ((_hd116882116904_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116883116901_)))
                                      (_tl116881116906_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116883116901_))))
                                  ((lambda (_L116909_ _L116910_)
                                     (let* ((_body116923_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args116872_))
                                                  _L116909_))
                                            (__tmp117772
                                             (let ((__tmp117773
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L116910_
                                                            _body116923_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp117773))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp117772
                                        _stx116871_)))
                                   _tl116881116906_
                                   _hd116882116904_)))
                              (let ()
                                (declare (not safe))
                                (_g116874116888_ _g116875116891_)))))
                      (let ()
                        (declare (not safe))
                        (_g116874116888_ _g116875116891_))))))
          (declare (not safe))
          (_g116873116925_ _stx116871_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx116784_ . _args116785_)
        (letrec ((_clause-e116787_
                  (lambda (_clause116828_)
                    (let* ((_g116830116841_
                            (lambda (_g116831116838_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g116831116838_))))
                           (_g116829116868_
                            (lambda (_g116831116844_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g116831116844_))
                                  (let ((_e116836116846_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g116831116844_))))
                                    (let ((_hd116835116849_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116836116846_)))
                                          (_tl116834116851_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116836116846_))))
                                      ((lambda (_L116854_ _L116855_)
                                         (let ((_body116866_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args116785_))
                                                     _L116854_)))
                                           (declare (not safe))
                                           (cons _L116855_ _body116866_)))
                                       _tl116834116851_
                                       _hd116835116849_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g116830116841_ _g116831116844_))))))
                      (declare (not safe))
                      (_g116829116868_ _clause116828_)))))
          (let* ((_g116789116799_
                  (lambda (_g116790116796_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g116790116796_))))
                 (_g116788116825_
                  (lambda (_g116790116802_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g116790116802_))
                        (let ((_e116794116804_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g116790116802_))))
                          (let ((_hd116793116807_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116794116804_)))
                                (_tl116792116809_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116794116804_))))
                            ((lambda (_L116812_)
                               (let* ((_clauses116823_
                                       (map _clause-e116787_ _L116812_))
                                      (__tmp117774
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses116823_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp117774
                                  _stx116784_)))
                             _tl116792116809_)))
                        (let ()
                          (declare (not safe))
                          (_g116789116799_ _g116790116802_))))))
            (declare (not safe))
            (_g116788116825_ _stx116784_)))))
    (define gxc#xform-let-values%
      (lambda (_stx116578_ . _args116579_)
        (let* ((_g116581116614_
                (lambda (_g116582116611_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116582116611_))))
               (_g116580116781_
                (lambda (_g116582116617_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116582116617_))
                      (let ((_e116589116619_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116582116617_))))
                        (let ((_hd116588116622_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116589116619_)))
                              (_tl116587116624_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116589116619_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116587116624_))
                              (let ((_e116592116627_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116587116624_))))
                                (let ((_hd116591116630_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116592116627_)))
                                      (_tl116590116632_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116592116627_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd116591116630_))
                                      (let ((_g117775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd116591116630_
                                                '0))))
                                        (begin
                                          (let ((_g117776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117775_)
                                                       (##vector-length
                                                        _g117775_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117776_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117776_)))
                                          (let ((_target116593116635_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117775_ 0)))
                                                (_tl116595116637_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117775_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116595116637_))
                                                (letrec ((_loop116596116640_
                                                          (lambda (_hd116594116643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr116600116645_
                           _hd116601116647_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd116594116643_))
                        (let ((_e116597116650_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd116594116643_))))
                          (let ((_lp-hd116598116653_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116597116650_)))
                                (_lp-tl116599116655_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116597116650_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd116598116653_))
                                (let ((_e116606116658_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd116598116653_))))
                                  (let ((_hd116605116661_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e116606116658_)))
                                        (_tl116604116663_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e116606116658_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl116604116663_))
                                        (let ((_e116609116666_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl116604116663_))))
                                          (let ((_hd116608116669_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e116609116666_)))
                                                (_tl116607116671_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e116609116666_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116607116671_))
                                                (let ((__tmp117789
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116608116669_
                                                               _expr116600116645_)))
                                                      (__tmp117788
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116605116661_
                                                               _hd116601116647_))))
                                                  (declare (not safe))
                                                  (_loop116596116640_
                                                   _lp-tl116599116655_
                                                   __tmp117789
                                                   __tmp117788))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116581116614_
                                                   _g116582116617_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g116581116614_ _g116582116617_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116581116614_ _g116582116617_)))))
                        (let ((_expr116602116674_ (reverse _expr116600116645_))
                              (_hd116603116676_ (reverse _hd116601116647_)))
                          ((lambda (_L116679_ _L116680_ _L116681_ _L116682_)
                             (let* ((_g116701116717_
                                     (lambda (_g116702116714_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g116702116714_))))
                                    (_g116700116771_
                                     (lambda (_g116702116720_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g116702116720_))
                                           (let ((_g117777_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g116702116720_
                                                     '0))))
                                             (begin
                                               (let ((_g117778_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g117777_)
                                                            (##vector-length
                                                             _g117777_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g117778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g117778_)))
                                               (let ((_target116704116722_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117777_
                                                         0)))
                                                     (_tl116706116724_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117777_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl116706116724_))
                                                     (letrec ((_loop116707116727_
                                                               (lambda (_hd116705116730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr116711116732_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd116705116730_))
                             (let ((_e116708116735_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd116705116730_))))
                               (let ((_lp-hd116709116738_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e116708116735_)))
                                     (_lp-tl116710116740_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e116708116735_))))
                                 (let ((__tmp117785
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd116709116738_
                                                _expr116711116732_))))
                                   (declare (not safe))
                                   (_loop116707116727_
                                    _lp-tl116710116740_
                                    __tmp117785))))
                             (let ((_expr116712116743_
                                    (reverse _expr116711116732_)))
                               ((lambda (_L116746_)
                                  (let ()
                                    (let* ((_body116759_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args116579_))
                                                 _L116679_))
                                           (__tmp117779
                                            (let ((__tmp117780
                                                   (let ((__tmp117781
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L116746_
                                                               _L116681_))
                                                            (let ((__tmp117782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g116760116764_
                                    _g116761116766_
                                    _g116762116768_)
                             (let ((__tmp117783
                                    (let ((__tmp117784
                                           (let ()
                                             (declare (not safe))
                                             (cons _g116760116764_ '()))))
                                      (declare (not safe))
                                      (cons _g116761116766_ __tmp117784))))
                               (declare (not safe))
                               (cons __tmp117783 _g116762116768_)))))
                      (declare (not safe))
                      (foldr2 __tmp117782 '() _L116746_ _L116681_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp117781
                                                           _body116759_))))
                                              (declare (not safe))
                                              (cons _L116682_ __tmp117780))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp117779
                                       _stx116578_))))
                                _expr116712116743_))))))
               (let ()
                 (declare (not safe))
                 (_loop116707116727_ _target116704116722_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g116701116717_
                                                        _g116702116720_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g116701116717_
                                              _g116702116720_)))))
                                    (__tmp117786
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116579_))
                                          (let ((__tmp117787
                                                 (lambda (_g116773116776_
                                                          _g116774116778_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g116773116776_
                                                           _g116774116778_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp117787
                                                    '()
                                                    _L116680_)))))
                               (declare (not safe))
                               (_g116700116771_ __tmp117786)))
                           _tl116590116632_
                           _expr116602116674_
                           _hd116603116676_
                           _hd116588116622_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop116596116640_
                                                     _target116593116635_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116581116614_
                                                   _g116582116617_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116581116614_ _g116582116617_)))))
                              (let ()
                                (declare (not safe))
                                (_g116581116614_ _g116582116617_)))))
                      (let ()
                        (declare (not safe))
                        (_g116581116614_ _g116582116617_))))))
          (declare (not safe))
          (_g116580116781_ _stx116578_))))
    (define gxc#xform-operands
      (lambda (_stx116534_ . _args116535_)
        (let* ((_g116537116548_
                (lambda (_g116538116545_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116538116545_))))
               (_g116536116575_
                (lambda (_g116538116551_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116538116551_))
                      (let ((_e116543116553_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116538116551_))))
                        (let ((_hd116542116556_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116543116553_)))
                              (_tl116541116558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116543116553_))))
                          ((lambda (_L116561_ _L116562_)
                             (let* ((_rands116573_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116535_))
                                          _L116561_))
                                    (__tmp117790
                                     (let ()
                                       (declare (not safe))
                                       (cons _L116562_ _rands116573_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117790
                                _stx116534_)))
                           _tl116541116558_
                           _hd116542116556_)))
                      (let ()
                        (declare (not safe))
                        (_g116537116548_ _g116538116551_))))))
          (declare (not safe))
          (_g116536116575_ _stx116534_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx116455_ . _args116456_)
        (let* ((_g116458116475_
                (lambda (_g116459116472_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116459116472_))))
               (_g116457116531_
                (lambda (_g116459116478_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116459116478_))
                      (let ((_e116464116480_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116459116478_))))
                        (let ((_hd116463116483_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116464116480_)))
                              (_tl116462116485_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116464116480_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116462116485_))
                              (let ((_e116467116488_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116462116485_))))
                                (let ((_hd116466116491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116467116488_)))
                                      (_tl116465116493_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116467116488_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116465116493_))
                                      (let ((_e116470116496_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116465116493_))))
                                        (let ((_hd116469116499_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116470116496_)))
                                              (_tl116468116501_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116470116496_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116468116501_))
                                              ((lambda (_L116504_ _L116505_)
                                                 (let* ((_expr116529_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116456_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116504_))
                     (let ((_arg1116520_ (car _args116456_))
                           (_rest116522_ (cdr _args116456_)))
                       (if (let () (declare (not safe)) (null? _rest116522_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116504_ _arg1116520_))
                           (let ((_arg2116525_ (car _rest116522_))
                                 (_rest116527_ (cdr _rest116522_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116527_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116504_
                                    _arg1116520_
                                    _arg2116525_))
                                 (apply gxc#compile-e
                                        _L116504_
                                        _arg1116520_
                                        _arg2116525_
                                        _rest116527_)))))))
                (__tmp117791
                 (let ((__tmp117792
                        (let ((__tmp117793
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116529_ '()))))
                          (declare (not safe))
                          (cons _L116505_ __tmp117793))))
                   (declare (not safe))
                   (cons '%#set! __tmp117792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117791
                                                    _stx116455_)))
                                               _hd116469116499_
                                               _hd116466116491_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116458116475_
                                                 _g116459116478_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116458116475_ _g116459116478_)))))
                              (let ()
                                (declare (not safe))
                                (_g116458116475_ _g116459116478_)))))
                      (let ()
                        (declare (not safe))
                        (_g116458116475_ _g116459116478_))))))
          (declare (not safe))
          (_g116457116531_ _stx116455_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx116386_)
        (let* ((_g116388116405_
                (lambda (_g116389116402_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116389116402_))))
               (_g116387116452_
                (lambda (_g116389116408_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116389116408_))
                      (let ((_e116394116410_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116389116408_))))
                        (let ((_hd116393116413_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116394116410_)))
                              (_tl116392116415_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116394116410_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116392116415_))
                              (let ((_e116397116418_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116392116415_))))
                                (let ((_hd116396116421_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116397116418_)))
                                      (_tl116395116423_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116397116418_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116395116423_))
                                      (let ((_e116400116426_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116395116423_))))
                                        (let ((_hd116399116429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116400116426_)))
                                              (_tl116398116431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116400116426_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116398116431_))
                                              ((lambda (_L116434_ _L116435_)
                                                 (let ((_sym116450_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116435_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym116450_))
                                                   (let ((__tmp117794
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp117794
                                                      _sym116450_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L116434_))))
                                               _hd116399116429_
                                               _hd116396116421_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116388116405_
                                                 _g116389116408_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116388116405_ _g116389116408_)))))
                              (let ()
                                (declare (not safe))
                                (_g116388116405_ _g116389116408_)))))
                      (let ()
                        (declare (not safe))
                        (_g116388116405_ _g116389116408_))))))
          (declare (not safe))
          (_g116387116452_ _stx116386_))))
    (define gxc#collect-methods-call%
      (lambda (_stx115940_)
        (let* ((___stx117484117485_ _stx115940_)
               (_g115944116046_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx117484117485_)))))
          (let ((___kont117486117487_
                 (lambda (_L116336_ _L116337_ _L116338_ _L116339_ _L116340_)
                   (let ((__tmp117795
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116337_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117795))))
                (___kont117488117489_
                 (lambda (_L116162_ _L116163_ _L116164_ _L116165_)
                   (let ((__tmp117796
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116162_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117796))))
                (___kont117490117491_ (lambda () '#!void)))
            (let ((___match117619117620_
                   (lambda (_e115953116208_
                            _hd115952116211_
                            _tl115951116213_
                            _e115956116216_
                            _hd115955116219_
                            _tl115954116221_
                            _e115959116224_
                            _hd115958116227_
                            _tl115957116229_
                            _e115962116232_
                            _hd115961116235_
                            _tl115960116237_
                            _e115965116240_
                            _hd115964116243_
                            _tl115963116245_
                            _e115968116248_
                            _hd115967116251_
                            _tl115966116253_
                            _e115971116256_
                            _hd115970116259_
                            _tl115969116261_
                            _e115974116264_
                            _hd115973116267_
                            _tl115972116269_
                            _e115977116272_
                            _hd115976116275_
                            _tl115975116277_
                            _e115980116280_
                            _hd115979116283_
                            _tl115978116285_
                            _e115983116288_
                            _hd115982116291_
                            _tl115981116293_
                            _e115986116296_
                            _hd115985116299_
                            _tl115984116301_
                            _e115989116304_
                            _hd115988116307_
                            _tl115987116309_
                            _e115992116312_
                            _hd115991116315_
                            _tl115990116317_
                            _e115995116320_
                            _hd115994116323_
                            _tl115993116325_
                            _e115998116328_
                            _hd115997116331_
                            _tl115996116333_)
                     (let ((_L116336_ _hd115997116331_)
                           (_L116337_ _hd115988116307_)
                           (_L116338_ _hd115979116283_)
                           (_L116339_ _hd115970116259_)
                           (_L116340_ _hd115961116235_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L116340_
                              'bind-method!))
                           (___kont117486117487_
                            _L116336_
                            _L116337_
                            _L116338_
                            _L116339_
                            _L116340_)
                           (___kont117490117491_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx117484117485_))
                  (let ((_e115953116208_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx117484117485_))))
                    (let ((_tl115951116213_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115953116208_)))
                          (_hd115952116211_
                           (let ()
                             (declare (not safe))
                             (##car _e115953116208_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115951116213_))
                          (let ((_e115956116216_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115951116213_))))
                            (let ((_tl115954116221_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115956116216_)))
                                  (_hd115955116219_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115956116216_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115955116219_))
                                  (let ((_e115959116224_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115955116219_))))
                                    (let ((_tl115957116229_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115959116224_)))
                                          (_hd115958116227_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115959116224_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd115958116227_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd115958116227_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115957116229_))
                                                  (let ((_e115962116232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115957116229_))))
                                                    (let ((_tl115960116237_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115962116232_)))
                                                          (_hd115961116235_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115962116232_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115960116237_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115954116221_))
                      (let ((_e115965116240_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115954116221_))))
                        (let ((_tl115963116245_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115965116240_)))
                              (_hd115964116243_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115965116240_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd115964116243_))
                              (let ((_e115968116248_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd115964116243_))))
                                (let ((_tl115966116253_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115968116248_)))
                                      (_hd115967116251_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115968116248_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd115967116251_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd115967116251_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl115966116253_))
                                              (let ((_e115971116256_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl115966116253_))))
                                                (let ((_tl115969116261_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e115971116256_)))
                                                      (_hd115970116259_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e115971116256_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115969116261_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl115963116245_))
                                                          (let ((_e115974116264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl115963116245_))))
                    (let ((_tl115972116269_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115974116264_)))
                          (_hd115973116267_
                           (let ()
                             (declare (not safe))
                             (##car _e115974116264_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd115973116267_))
                          (let ((_e115977116272_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd115973116267_))))
                            (let ((_tl115975116277_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115977116272_)))
                                  (_hd115976116275_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115977116272_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd115976116275_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd115976116275_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl115975116277_))
                                          (let ((_e115980116280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl115975116277_))))
                                            (let ((_tl115978116285_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115980116280_)))
                                                  (_hd115979116283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115980116280_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl115978116285_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl115972116269_))
                                                      (let ((_e115983116288_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl115972116269_))))
                (let ((_tl115981116293_
                       (let () (declare (not safe)) (##cdr _e115983116288_)))
                      (_hd115982116291_
                       (let () (declare (not safe)) (##car _e115983116288_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd115982116291_))
                      (let ((_e115986116296_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd115982116291_))))
                        (let ((_tl115984116301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115986116296_)))
                              (_hd115985116299_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115986116296_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd115985116299_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd115985116299_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115984116301_))
                                      (let ((_e115989116304_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115984116301_))))
                                        (let ((_tl115987116309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115989116304_)))
                                              (_hd115988116307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115989116304_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115987116309_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115981116293_))
                                                  (let ((_e115992116312_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115981116293_))))
                                                    (let ((_tl115990116317_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115992116312_)))
                                                          (_hd115991116315_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115992116312_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd115991116315_))
                                                          (let ((_e115995116320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd115991116315_))))
                    (let ((_tl115993116325_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115995116320_)))
                          (_hd115994116323_
                           (let ()
                             (declare (not safe))
                             (##car _e115995116320_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd115994116323_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd115994116323_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl115993116325_))
                                  (let ((_e115998116328_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl115993116325_))))
                                    (let ((_tl115996116333_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115998116328_)))
                                          (_hd115997116331_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115998116328_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl115996116333_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115990116317_))
                                              (___match117619117620_
                                               _e115953116208_
                                               _hd115952116211_
                                               _tl115951116213_
                                               _e115956116216_
                                               _hd115955116219_
                                               _tl115954116221_
                                               _e115959116224_
                                               _hd115958116227_
                                               _tl115957116229_
                                               _e115962116232_
                                               _hd115961116235_
                                               _tl115960116237_
                                               _e115965116240_
                                               _hd115964116243_
                                               _tl115963116245_
                                               _e115968116248_
                                               _hd115967116251_
                                               _tl115966116253_
                                               _e115971116256_
                                               _hd115970116259_
                                               _tl115969116261_
                                               _e115974116264_
                                               _hd115973116267_
                                               _tl115972116269_
                                               _e115977116272_
                                               _hd115976116275_
                                               _tl115975116277_
                                               _e115980116280_
                                               _hd115979116283_
                                               _tl115978116285_
                                               _e115983116288_
                                               _hd115982116291_
                                               _tl115981116293_
                                               _e115986116296_
                                               _hd115985116299_
                                               _tl115984116301_
                                               _e115989116304_
                                               _hd115988116307_
                                               _tl115987116309_
                                               _e115992116312_
                                               _hd115991116315_
                                               _tl115990116317_
                                               _e115995116320_
                                               _hd115994116323_
                                               _tl115993116325_
                                               _e115998116328_
                                               _hd115997116331_
                                               _tl115996116333_)
                                              (___kont117490117491_))
                                          (___kont117490117491_))))
                                  (___kont117490117491_))
                              (___kont117490117491_))
                          (___kont117490117491_))))
                  (___kont117490117491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115981116293_))
                                                      (if (let ((__tmp117797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp117797 'bind-method!))
                  (let ((_L116162_ _hd115988116307_)
                        (_L116163_ _hd115979116283_)
                        (_L116164_ _hd115970116259_)
                        (_L116165_ _hd115961116235_))
                    (___kont117488117489_
                     _L116162_
                     _L116163_
                     _L116164_
                     _L116165_))
                  (___kont117490117491_))
              (___kont117490117491_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117490117491_))))
                                      (___kont117490117491_))
                                  (___kont117490117491_))
                              (___kont117490117491_))))
                      (___kont117490117491_))))
              (___kont117490117491_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117490117491_))))
                                          (___kont117490117491_))
                                      (___kont117490117491_))
                                  (___kont117490117491_))))
                          (___kont117490117491_))))
                  (___kont117490117491_))
              (___kont117490117491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117490117491_))
                                          (___kont117490117491_))
                                      (___kont117490117491_))))
                              (___kont117490117491_))))
                      (___kont117490117491_))
                  (___kont117490117491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117490117491_))
                                              (___kont117490117491_))
                                          (___kont117490117491_))))
                                  (___kont117490117491_))))
                          (___kont117490117491_))))
                  (___kont117490117491_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx115887_ _id115888_ _new-id115889_)
        (let* ((_g115891115904_
                (lambda (_g115892115901_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115892115901_))))
               (_g115890115937_
                (lambda (_g115892115907_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115892115907_))
                      (let ((_e115896115909_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115892115907_))))
                        (let ((_hd115895115912_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115896115909_)))
                              (_tl115894115914_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115896115909_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115894115914_))
                              (let ((_e115899115917_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115894115914_))))
                                (let ((_hd115898115920_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115899115917_)))
                                      (_tl115897115922_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115899115917_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115897115922_))
                                      ((lambda (_L115925_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L115925_
                                                _id115888_))
                                             (let ((__tmp117798
                                                    (let ((__tmp117799
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id115889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp117799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp117798
                                                _stx115887_))
                                             _stx115887_))
                                       _hd115898115920_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115891115904_ _g115892115907_)))))
                              (let ()
                                (declare (not safe))
                                (_g115891115904_ _g115892115907_)))))
                      (let ()
                        (declare (not safe))
                        (_g115891115904_ _g115892115907_))))))
          (declare (not safe))
          (_g115890115937_ _stx115887_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx115828_ _subst115829_)
        (let* ((_g115831115844_
                (lambda (_g115832115841_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115832115841_))))
               (_g115830115884_
                (lambda (_g115832115847_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115832115847_))
                      (let ((_e115836115849_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115832115847_))))
                        (let ((_hd115835115852_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115836115849_)))
                              (_tl115834115854_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115836115849_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115834115854_))
                              (let ((_e115839115857_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115834115854_))))
                                (let ((_hd115838115860_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115839115857_)))
                                      (_tl115837115862_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115839115857_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115837115862_))
                                      ((lambda (_L115865_)
                                         (let ((_$e115879_
                                                (let ((__tmp117800
                                                       (lambda (_sub115877_)
                                                         (let ((__tmp117801
                                                                (car _sub115877_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L115865_
                                                            __tmp117801)))))
                                                  (declare (not safe))
                                                  (find __tmp117800
                                                        _subst115829_))))
                                           (if _$e115879_
                                               ((lambda (_sub115882_)
                                                  (let ((__tmp117802
                                                         (let ((__tmp117803
                                                                (let ((__tmp117804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub115882_)))
                          (declare (not safe))
                          (cons __tmp117804 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp117803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp117802
                                                     _stx115828_)))
                                                _$e115879_)
                                               _stx115828_)))
                                       _hd115838115860_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115831115844_ _g115832115847_)))))
                              (let ()
                                (declare (not safe))
                                (_g115831115844_ _g115832115847_)))))
                      (let ()
                        (declare (not safe))
                        (_g115831115844_ _g115832115847_))))))
          (declare (not safe))
          (_g115830115884_ _stx115828_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx115756_ _id115757_ _new-id115758_)
        (let* ((_g115760115777_
                (lambda (_g115761115774_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115761115774_))))
               (_g115759115825_
                (lambda (_g115761115780_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115761115780_))
                      (let ((_e115766115782_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115761115780_))))
                        (let ((_hd115765115785_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115766115782_)))
                              (_tl115764115787_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115766115782_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115764115787_))
                              (let ((_e115769115790_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115764115787_))))
                                (let ((_hd115768115793_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115769115790_)))
                                      (_tl115767115795_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115769115790_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115767115795_))
                                      (let ((_e115772115798_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115767115795_))))
                                        (let ((_hd115771115801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115772115798_)))
                                              (_tl115770115803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115772115798_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115770115803_))
                                              ((lambda (_L115806_ _L115807_)
                                                 (let ((_new-expr115822_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L115806_
                                                           _id115757_
                                                           _new-id115758_)))
                                                       (_new-xid115823_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L115807_
                                                               _id115757_))
                                                            _new-id115758_
                                                            _L115807_)))
                                                   (let ((__tmp117805
                                                          (let ((__tmp117806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117807
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115822_ '()))))
                           (declare (not safe))
                           (cons _new-xid115823_ __tmp117807))))
                    (declare (not safe))
                    (cons '%#set! __tmp117806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117805
                                                      _stx115756_))))
                                               _hd115771115801_
                                               _hd115768115793_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115760115777_
                                                 _g115761115780_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115760115777_ _g115761115780_)))))
                              (let ()
                                (declare (not safe))
                                (_g115760115777_ _g115761115780_)))))
                      (let ()
                        (declare (not safe))
                        (_g115760115777_ _g115761115780_))))))
          (declare (not safe))
          (_g115759115825_ _stx115756_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx115680_ _subst115681_)
        (let* ((_g115683115700_
                (lambda (_g115684115697_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115684115697_))))
               (_g115682115753_
                (lambda (_g115684115703_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115684115703_))
                      (let ((_e115689115705_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115684115703_))))
                        (let ((_hd115688115708_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115689115705_)))
                              (_tl115687115710_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115689115705_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115687115710_))
                              (let ((_e115692115713_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115687115710_))))
                                (let ((_hd115691115716_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115692115713_)))
                                      (_tl115690115718_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115692115713_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115690115718_))
                                      (let ((_e115695115721_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115690115718_))))
                                        (let ((_hd115694115724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115695115721_)))
                                              (_tl115693115726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115695115721_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115693115726_))
                                              ((lambda (_L115729_ _L115730_)
                                                 (let ((_new-expr115750_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L115729_
                                                           _subst115681_)))
                                                       (_new-xid115751_
                                                        (let ((_$e115747_
                                                               (let ((__tmp117808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub115745_)
                                (let ((__tmp117809 (car _sub115745_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L115730_
                                   __tmp117809)))))
                         (declare (not safe))
                         (find __tmp117808 _subst115681_))))
                  (if _$e115747_ (cdr _$e115747_) _L115730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp117810
                                                          (let ((__tmp117811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117812
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115750_ '()))))
                           (declare (not safe))
                           (cons _new-xid115751_ __tmp117812))))
                    (declare (not safe))
                    (cons '%#set! __tmp117811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117810
                                                      _stx115680_))))
                                               _hd115694115724_
                                               _hd115691115716_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115683115700_
                                                 _g115684115703_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115683115700_ _g115684115703_)))))
                              (let ()
                                (declare (not safe))
                                (_g115683115700_ _g115684115703_)))))
                      (let ()
                        (declare (not safe))
                        (_g115683115700_ _g115684115703_))))))
          (declare (not safe))
          (_g115682115753_ _stx115680_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx115626_ _ht115627_)
        (let* ((_g115629115642_
                (lambda (_g115630115639_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115630115639_))))
               (_g115628115677_
                (lambda (_g115630115645_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115630115645_))
                      (let ((_e115634115647_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115630115645_))))
                        (let ((_hd115633115650_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115634115647_)))
                              (_tl115632115652_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115634115647_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115632115652_))
                              (let ((_e115637115655_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115632115652_))))
                                (let ((_hd115636115658_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115637115655_)))
                                      (_tl115635115660_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115637115655_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115635115660_))
                                      ((lambda (_L115663_)
                                         (let ((_eid115675_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L115663_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht115627_
                                            _eid115675_
                                            1+
                                            '0)))
                                       _hd115636115658_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115629115642_ _g115630115645_)))))
                              (let ()
                                (declare (not safe))
                                (_g115629115642_ _g115630115645_)))))
                      (let ()
                        (declare (not safe))
                        (_g115629115642_ _g115630115645_))))))
          (declare (not safe))
          (_g115628115677_ _stx115626_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx115556_ _ht115557_)
        (let* ((_g115559115576_
                (lambda (_g115560115573_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115560115573_))))
               (_g115558115623_
                (lambda (_g115560115579_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115560115579_))
                      (let ((_e115565115581_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115560115579_))))
                        (let ((_hd115564115584_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115565115581_)))
                              (_tl115563115586_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115565115581_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115563115586_))
                              (let ((_e115568115589_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115563115586_))))
                                (let ((_hd115567115592_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115568115589_)))
                                      (_tl115566115594_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115568115589_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115566115594_))
                                      (let ((_e115571115597_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115566115594_))))
                                        (let ((_hd115570115600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115571115597_)))
                                              (_tl115569115602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115571115597_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115569115602_))
                                              ((lambda (_L115605_ _L115606_)
                                                 (let ((_eid115621_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L115606_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht115557_
                                                      _eid115621_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L115605_
                                                      _ht115557_))))
                                               _hd115570115600_
                                               _hd115567115592_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115559115576_
                                                 _g115560115579_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115559115576_ _g115560115579_)))))
                              (let ()
                                (declare (not safe))
                                (_g115559115576_ _g115560115579_)))))
                      (let ()
                        (declare (not safe))
                        (_g115559115576_ _g115560115579_))))))
          (declare (not safe))
          (_g115558115623_ _stx115556_))))
    (define gxc#find-body%
      (lambda (_stx115469_ _arg115470_)
        (let* ((_g115472115491_
                (lambda (_g115473115488_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115473115488_))))
               (_g115471115553_
                (lambda (_g115473115494_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115473115494_))
                      (let ((_e115477115496_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115473115494_))))
                        (let ((_hd115476115499_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115477115496_)))
                              (_tl115475115501_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115477115496_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115475115501_))
                              (let ((_g117813_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115475115501_
                                        '0))))
                                (begin
                                  (let ((_g117814_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117813_)
                                               (##vector-length _g117813_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117814_ 2)))
                                        (error "Context expects 2 values"
                                               _g117814_)))
                                  (let ((_target115478115504_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117813_ 0)))
                                        (_tl115480115506_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117813_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115480115506_))
                                        (letrec ((_loop115481115509_
                                                  (lambda (_hd115479115512_
                                                           _expr115485115514_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115479115512_))
                                                        (let ((_e115482115517_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115479115512_))))
                  (let ((_lp-hd115483115520_
                         (let () (declare (not safe)) (##car _e115482115517_)))
                        (_lp-tl115484115522_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115482115517_))))
                    (let ((__tmp117818
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd115483115520_ _expr115485115514_))))
                      (declare (not safe))
                      (_loop115481115509_ _lp-tl115484115522_ __tmp117818))))
                (let ((_expr115486115525_ (reverse _expr115485115514_)))
                  ((lambda (_L115528_)
                     (let ((__tmp117817
                            (lambda (_g115541115543_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115541115543_
                                 _arg115470_))))
                           (__tmp117815
                            (let ((__tmp117816
                                   (lambda (_g115545115548_ _g115546115550_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115545115548_
                                             _g115546115550_)))))
                              (declare (not safe))
                              (foldr1 __tmp117816 '() _L115528_))))
                       (declare (not safe))
                       (ormap1 __tmp117817 __tmp117815)))
                   _expr115486115525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115481115509_
                                             _target115478115504_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115472115491_
                                           _g115473115494_))))))
                              (let ()
                                (declare (not safe))
                                (_g115472115491_ _g115473115494_)))))
                      (let ()
                        (declare (not safe))
                        (_g115472115491_ _g115473115494_))))))
          (declare (not safe))
          (_g115471115553_ _stx115469_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx115401_ _arg115402_)
        (let* ((_g115404115421_
                (lambda (_g115405115418_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115405115418_))))
               (_g115403115466_
                (lambda (_g115405115424_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115405115424_))
                      (let ((_e115410115426_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115405115424_))))
                        (let ((_hd115409115429_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115410115426_)))
                              (_tl115408115431_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115410115426_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115408115431_))
                              (let ((_e115413115434_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115408115431_))))
                                (let ((_hd115412115437_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115413115434_)))
                                      (_tl115411115439_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115413115434_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115411115439_))
                                      (let ((_e115416115442_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115411115439_))))
                                        (let ((_hd115415115445_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115416115442_)))
                                              (_tl115414115447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115416115442_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115414115447_))
                                              ((lambda (_L115450_ _L115451_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115450_
                                                    _arg115402_)))
                                               _hd115415115445_
                                               _hd115412115437_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115404115421_
                                                 _g115405115424_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115404115421_ _g115405115424_)))))
                              (let ()
                                (declare (not safe))
                                (_g115404115421_ _g115405115424_)))))
                      (let ()
                        (declare (not safe))
                        (_g115404115421_ _g115405115424_))))))
          (declare (not safe))
          (_g115403115466_ _stx115401_))))
    (define gxc#find-lambda%
      (lambda (_stx115333_ _arg115334_)
        (let* ((_g115336115353_
                (lambda (_g115337115350_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115337115350_))))
               (_g115335115398_
                (lambda (_g115337115356_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115337115356_))
                      (let ((_e115342115358_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115337115356_))))
                        (let ((_hd115341115361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115342115358_)))
                              (_tl115340115363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115342115358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115340115363_))
                              (let ((_e115345115366_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115340115363_))))
                                (let ((_hd115344115369_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115345115366_)))
                                      (_tl115343115371_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115345115366_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115343115371_))
                                      (let ((_e115348115374_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115343115371_))))
                                        (let ((_hd115347115377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115348115374_)))
                                              (_tl115346115379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115348115374_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115346115379_))
                                              ((lambda (_L115382_ _L115383_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115382_
                                                    _arg115334_)))
                                               _hd115347115377_
                                               _hd115344115369_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115336115353_
                                                 _g115337115356_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115336115353_ _g115337115356_)))))
                              (let ()
                                (declare (not safe))
                                (_g115336115353_ _g115337115356_)))))
                      (let ()
                        (declare (not safe))
                        (_g115336115353_ _g115337115356_))))))
          (declare (not safe))
          (_g115335115398_ _stx115333_))))
    (define gxc#find-case-lambda%
      (lambda (_stx115215_ _arg115216_)
        (let* ((_g115218115246_
                (lambda (_g115219115243_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115219115243_))))
               (_g115217115330_
                (lambda (_g115219115249_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115219115249_))
                      (let ((_e115224115251_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115219115249_))))
                        (let ((_hd115223115254_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115224115251_)))
                              (_tl115222115256_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115224115251_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115222115256_))
                              (let ((_g117819_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115222115256_
                                        '0))))
                                (begin
                                  (let ((_g117820_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117819_)
                                               (##vector-length _g117819_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117820_ 2)))
                                        (error "Context expects 2 values"
                                               _g117820_)))
                                  (let ((_target115225115259_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117819_ 0)))
                                        (_tl115227115261_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117819_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115227115261_))
                                        (letrec ((_loop115228115264_
                                                  (lambda (_hd115226115267_
                                                           _body115232115269_
                                                           _hd115233115271_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115226115267_))
                                                        (let ((_e115229115274_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115226115267_))))
                  (let ((_lp-hd115230115277_
                         (let () (declare (not safe)) (##car _e115229115274_)))
                        (_lp-tl115231115279_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115229115274_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd115230115277_))
                        (let ((_e115238115282_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd115230115277_))))
                          (let ((_hd115237115285_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115238115282_)))
                                (_tl115236115287_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115238115282_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl115236115287_))
                                (let ((_e115241115290_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl115236115287_))))
                                  (let ((_hd115240115293_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115241115290_)))
                                        (_tl115239115295_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115241115290_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115239115295_))
                                        (let ((__tmp117825
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115240115293_
                                                       _body115232115269_)))
                                              (__tmp117824
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115237115285_
                                                       _hd115233115271_))))
                                          (declare (not safe))
                                          (_loop115228115264_
                                           _lp-tl115231115279_
                                           __tmp117825
                                           __tmp117824))
                                        (let ()
                                          (declare (not safe))
                                          (_g115218115246_ _g115219115249_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115218115246_ _g115219115249_)))))
                        (let ()
                          (declare (not safe))
                          (_g115218115246_ _g115219115249_)))))
                (let ((_body115234115298_ (reverse _body115232115269_))
                      (_hd115235115300_ (reverse _hd115233115271_)))
                  ((lambda (_L115303_ _L115304_)
                     (let ((__tmp117823
                            (lambda (_g115318115320_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115318115320_
                                 _arg115216_))))
                           (__tmp117821
                            (let ((__tmp117822
                                   (lambda (_g115322115325_ _g115323115327_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115322115325_
                                             _g115323115327_)))))
                              (declare (not safe))
                              (foldr1 __tmp117822 '() _L115303_))))
                       (declare (not safe))
                       (ormap1 __tmp117823 __tmp117821)))
                   _body115234115298_
                   _hd115235115300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115228115264_
                                             _target115225115259_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115218115246_
                                           _g115219115249_))))))
                              (let ()
                                (declare (not safe))
                                (_g115218115246_ _g115219115249_)))))
                      (let ()
                        (declare (not safe))
                        (_g115218115246_ _g115219115249_))))))
          (declare (not safe))
          (_g115217115330_ _stx115215_))))
    (define gxc#find-let-values%
      (lambda (_stx115065_ _arg115066_)
        (let* ((_g115068115103_
                (lambda (_g115069115100_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115069115100_))))
               (_g115067115212_
                (lambda (_g115069115106_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115069115106_))
                      (let ((_e115075115108_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115069115106_))))
                        (let ((_hd115074115111_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115075115108_)))
                              (_tl115073115113_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115075115108_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115073115113_))
                              (let ((_e115078115116_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115073115113_))))
                                (let ((_hd115077115119_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115078115116_)))
                                      (_tl115076115121_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115078115116_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115077115119_))
                                      (let ((_g117826_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115077115119_
                                                '0))))
                                        (begin
                                          (let ((_g117827_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117826_)
                                                       (##vector-length
                                                        _g117826_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117827_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117827_)))
                                          (let ((_target115079115124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117826_ 0)))
                                                (_tl115081115126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117826_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115081115126_))
                                                (letrec ((_loop115082115129_
                                                          (lambda (_hd115080115132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115086115134_
                           _bind115087115136_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115080115132_))
                        (let ((_e115083115139_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115080115132_))))
                          (let ((_lp-hd115084115142_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115083115139_)))
                                (_lp-tl115085115144_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115083115139_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115084115142_))
                                (let ((_e115092115147_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115084115142_))))
                                  (let ((_hd115091115150_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115092115147_)))
                                        (_tl115090115152_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115092115147_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115090115152_))
                                        (let ((_e115095115155_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115090115152_))))
                                          (let ((_hd115094115158_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115095115155_)))
                                                (_tl115093115160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115095115155_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115093115160_))
                                                (let ((__tmp117832
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115094115158_
                                                               _expr115086115134_)))
                                                      (__tmp117831
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115091115150_
                                                               _bind115087115136_))))
                                                  (declare (not safe))
                                                  (_loop115082115129_
                                                   _lp-tl115085115144_
                                                   __tmp117832
                                                   __tmp117831))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115068115103_
                                                   _g115069115106_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115068115103_ _g115069115106_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115068115103_ _g115069115106_)))))
                        (let ((_expr115088115163_ (reverse _expr115086115134_))
                              (_bind115089115165_
                               (reverse _bind115087115136_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115076115121_))
                              (let ((_e115098115168_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115076115121_))))
                                (let ((_hd115097115171_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115098115168_)))
                                      (_tl115096115173_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115098115168_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115096115173_))
                                      ((lambda (_L115176_ _L115177_ _L115178_)
                                         (let ((_$e115209_
                                                (let ((__tmp117830
                                                       (lambda (_g115197115199_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g115197115199_
                                                            _arg115066_))))
                                                      (__tmp117828
                                                       (let ((__tmp117829
                                                              (lambda (_g115201115204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115202115206_)
                        (let ()
                          (declare (not safe))
                          (cons _g115201115204_ _g115202115206_)))))
                 (declare (not safe))
                 (foldr1 __tmp117829 '() _L115177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp117830
                                                          __tmp117828))))
                                           (if _$e115209_
                                               _$e115209_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L115176_
                                                  _arg115066_)))))
                                       _hd115097115171_
                                       _expr115088115163_
                                       _bind115089115165_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115068115103_ _g115069115106_)))))
                              (let ()
                                (declare (not safe))
                                (_g115068115103_ _g115069115106_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115082115129_
                                                     _target115079115124_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115068115103_
                                                   _g115069115106_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115068115103_ _g115069115106_)))))
                              (let ()
                                (declare (not safe))
                                (_g115068115103_ _g115069115106_)))))
                      (let ()
                        (declare (not safe))
                        (_g115068115103_ _g115069115106_))))))
          (declare (not safe))
          (_g115067115212_ _stx115065_))))
    (define gxc#find-setq%
      (lambda (_stx114997_ _arg114998_)
        (let* ((_g115000115017_
                (lambda (_g115001115014_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115001115014_))))
               (_g114999115062_
                (lambda (_g115001115020_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115001115020_))
                      (let ((_e115006115022_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115001115020_))))
                        (let ((_hd115005115025_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115006115022_)))
                              (_tl115004115027_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115006115022_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115004115027_))
                              (let ((_e115009115030_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115004115027_))))
                                (let ((_hd115008115033_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115009115030_)))
                                      (_tl115007115035_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115009115030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115007115035_))
                                      (let ((_e115012115038_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115007115035_))))
                                        (let ((_hd115011115041_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115012115038_)))
                                              (_tl115010115043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115012115038_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115010115043_))
                                              ((lambda (_L115046_ _L115047_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115046_
                                                    _arg114998_)))
                                               _hd115011115041_
                                               _hd115008115033_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115000115017_
                                                 _g115001115020_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115000115017_ _g115001115020_)))))
                              (let ()
                                (declare (not safe))
                                (_g115000115017_ _g115001115020_)))))
                      (let ()
                        (declare (not safe))
                        (_g115000115017_ _g115001115020_))))))
          (declare (not safe))
          (_g114999115062_ _stx114997_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx114941_ _ids114942_)
        (let* ((_g114944114957_
                (lambda (_g114945114954_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114945114954_))))
               (_g114943114994_
                (lambda (_g114945114960_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114945114960_))
                      (let ((_e114949114962_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114945114960_))))
                        (let ((_hd114948114965_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114949114962_)))
                              (_tl114947114967_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114949114962_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114947114967_))
                              (let ((_e114952114970_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114947114967_))))
                                (let ((_hd114951114973_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114952114970_)))
                                      (_tl114950114975_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114952114970_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114950114975_))
                                      ((lambda (_L114978_)
                                         (let ((__tmp117833
                                                (lambda (_g114989114991_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L114978_
                                                     _g114989114991_)))))
                                           (declare (not safe))
                                           (find __tmp117833 _ids114942_)))
                                       _hd114951114973_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114944114957_ _g114945114960_)))))
                              (let ()
                                (declare (not safe))
                                (_g114944114957_ _g114945114960_)))))
                      (let ()
                        (declare (not safe))
                        (_g114944114957_ _g114945114960_))))))
          (declare (not safe))
          (_g114943114994_ _stx114941_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx114865_ _ids114866_)
        (let* ((_g114868114885_
                (lambda (_g114869114882_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114869114882_))))
               (_g114867114938_
                (lambda (_g114869114888_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114869114888_))
                      (let ((_e114874114890_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114869114888_))))
                        (let ((_hd114873114893_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114874114890_)))
                              (_tl114872114895_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114874114890_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114872114895_))
                              (let ((_e114877114898_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114872114895_))))
                                (let ((_hd114876114901_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114877114898_)))
                                      (_tl114875114903_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114877114898_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114875114903_))
                                      (let ((_e114880114906_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114875114903_))))
                                        (let ((_hd114879114909_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114880114906_)))
                                              (_tl114878114911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114880114906_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114878114911_))
                                              ((lambda (_L114914_ _L114915_)
                                                 (let ((_$e114935_
                                                        (let ((__tmp117834
                                                               (lambda (_g114930114932_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L114915_ _g114930114932_)))))
                  (declare (not safe))
                  (find __tmp117834 _ids114866_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e114935_
                                                       _$e114935_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L114914_
                                                          _ids114866_)))))
                                               _hd114879114909_
                                               _hd114876114901_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114868114885_
                                                 _g114869114888_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114868114885_ _g114869114888_)))))
                              (let ()
                                (declare (not safe))
                                (_g114868114885_ _g114869114888_)))))
                      (let ()
                        (declare (not safe))
                        (_g114868114885_ _g114869114888_))))))
          (declare (not safe))
          (_g114867114938_ _stx114865_))))))
