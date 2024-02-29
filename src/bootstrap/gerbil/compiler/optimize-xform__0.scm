(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1709229971)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl117895_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117895_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117895_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117895_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117895_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl117895_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl117891_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117891_ '%#declare gxc#xform-identity))
           _tbl117891_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl117887_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118141 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl117887_ __tmp118141))
           (let ((__tmp118142 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl117887_ __tmp118142))
           _tbl117887_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl117883_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117883_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117883_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117883_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117883_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117883_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl117883_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl117879_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118143 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117879_ __tmp118143))
           (let ((__tmp118144 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl117879_ __tmp118144))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117879_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117879_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117879_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117879_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117879_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl117879_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl117875_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118145 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117875_ __tmp118145))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117875_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117875_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117875_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117875_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117875_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117875_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117875_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117875_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117875_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117875_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117875_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117875_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl117875_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx117858_ . _args117860_)
        (let ((__tmp118147
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117860_)
                     (gxc#compile-e__0 _stx117858_)
                     (let ((_arg1117865_ (car _args117860_))
                           (_rest117867_ (cdr _args117860_)))
                       (if (null? _rest117867_)
                           (gxc#compile-e__1 _stx117858_ _arg1117865_)
                           (let ((_arg2117870_ (car _rest117867_))
                                 (_rest117872_ (cdr _rest117867_)))
                             (if (null? _rest117872_)
                                 (gxc#compile-e__2
                                  _stx117858_
                                  _arg1117865_
                                  _arg2117870_)
                                 (apply gxc#compile-e
                                        _stx117858_
                                        _arg1117865_
                                        _arg2117870_
                                        _rest117872_))))))))
              (__tmp118146 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp118147
           gxc#current-compile-methods
           __tmp118146))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl117855_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118148 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117855_ __tmp118148))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117855_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117855_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117855_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117855_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117855_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl117855_))))
    (define gxc#apply-collect-methods
      (lambda (_stx117838_ . _args117840_)
        (let ((__tmp118150
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117840_)
                     (gxc#compile-e__0 _stx117838_)
                     (let ((_arg1117845_ (car _args117840_))
                           (_rest117847_ (cdr _args117840_)))
                       (if (null? _rest117847_)
                           (gxc#compile-e__1 _stx117838_ _arg1117845_)
                           (let ((_arg2117850_ (car _rest117847_))
                                 (_rest117852_ (cdr _rest117847_)))
                             (if (null? _rest117852_)
                                 (gxc#compile-e__2
                                  _stx117838_
                                  _arg1117845_
                                  _arg2117850_)
                                 (apply gxc#compile-e
                                        _stx117838_
                                        _arg1117845_
                                        _arg2117850_
                                        _rest117852_))))))))
              (__tmp118149 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp118150
           gxc#current-compile-methods
           __tmp118149))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl117835_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118151 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117835_ __tmp118151))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117835_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117835_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117835_ '%#set! gxc#expression-subst-setq%))
           _tbl117835_))))
    (define gxc#apply-expression-subst
      (lambda (_stx117818_ . _args117820_)
        (let ((__tmp118153
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117820_)
                     (gxc#compile-e__0 _stx117818_)
                     (let ((_arg1117825_ (car _args117820_))
                           (_rest117827_ (cdr _args117820_)))
                       (if (null? _rest117827_)
                           (gxc#compile-e__1 _stx117818_ _arg1117825_)
                           (let ((_arg2117830_ (car _rest117827_))
                                 (_rest117832_ (cdr _rest117827_)))
                             (if (null? _rest117832_)
                                 (gxc#compile-e__2
                                  _stx117818_
                                  _arg1117825_
                                  _arg2117830_)
                                 (apply gxc#compile-e
                                        _stx117818_
                                        _arg1117825_
                                        _arg2117830_
                                        _rest117832_))))))))
              (__tmp118152 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp118153
           gxc#current-compile-methods
           __tmp118152))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl117815_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118154 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl117815_ __tmp118154))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117815_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117815_ '%#set! gxc#expression-subst*-setq%))
           _tbl117815_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx117798_ . _args117800_)
        (let ((__tmp118156
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117800_)
                     (gxc#compile-e__0 _stx117798_)
                     (let ((_arg1117805_ (car _args117800_))
                           (_rest117807_ (cdr _args117800_)))
                       (if (null? _rest117807_)
                           (gxc#compile-e__1 _stx117798_ _arg1117805_)
                           (let ((_arg2117810_ (car _rest117807_))
                                 (_rest117812_ (cdr _rest117807_)))
                             (if (null? _rest117812_)
                                 (gxc#compile-e__2
                                  _stx117798_
                                  _arg1117805_
                                  _arg2117810_)
                                 (apply gxc#compile-e
                                        _stx117798_
                                        _arg1117805_
                                        _arg2117810_
                                        _rest117812_))))))))
              (__tmp118155 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp118156
           gxc#current-compile-methods
           __tmp118155))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl117795_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118157 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl117795_ __tmp118157))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117795_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117795_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl117795_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl117791_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118158 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl117791_ __tmp118158))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117791_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117791_ '%#set! gxc#find-var-refs-setq%))
           _tbl117791_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx117774_ . _args117776_)
        (let ((__tmp118160
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117776_)
                     (gxc#compile-e__0 _stx117774_)
                     (let ((_arg1117781_ (car _args117776_))
                           (_rest117783_ (cdr _args117776_)))
                       (if (null? _rest117783_)
                           (gxc#compile-e__1 _stx117774_ _arg1117781_)
                           (let ((_arg2117786_ (car _rest117783_))
                                 (_rest117788_ (cdr _rest117783_)))
                             (if (null? _rest117788_)
                                 (gxc#compile-e__2
                                  _stx117774_
                                  _arg1117781_
                                  _arg2117786_)
                                 (apply gxc#compile-e
                                        _stx117774_
                                        _arg1117781_
                                        _arg2117786_
                                        _rest117788_))))))))
              (__tmp118159 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118160
           gxc#current-compile-methods
           __tmp118159))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl117771_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118161 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl117771_ __tmp118161))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117771_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117771_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl117771_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx117754_ . _args117756_)
        (let ((__tmp118163
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117756_)
                     (gxc#compile-e__0 _stx117754_)
                     (let ((_arg1117761_ (car _args117756_))
                           (_rest117763_ (cdr _args117756_)))
                       (if (null? _rest117763_)
                           (gxc#compile-e__1 _stx117754_ _arg1117761_)
                           (let ((_arg2117766_ (car _rest117763_))
                                 (_rest117768_ (cdr _rest117763_)))
                             (if (null? _rest117768_)
                                 (gxc#compile-e__2
                                  _stx117754_
                                  _arg1117761_
                                  _arg2117766_)
                                 (apply gxc#compile-e
                                        _stx117754_
                                        _arg1117761_
                                        _arg2117766_
                                        _rest117768_))))))))
              (__tmp118162 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118163
           gxc#current-compile-methods
           __tmp118162))))
    (define gxc#xform-identity
      (lambda (_stx117751_ . _args117752_) _stx117751_))
    (define gxc#xform-wrap-source
      (lambda (_stx117748_ _src-stx117749_)
        (let ((__tmp118164
               (let () (declare (not safe)) (gx#stx-source _src-stx117749_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx117748_ __tmp118164))))
    (define gxc#xform-apply-compile-e
      (lambda (_args117735_)
        (lambda (_stx117737_)
          (if (let () (declare (not safe)) (null? _args117735_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx117737_))
              (let ((_arg1117739_ (car _args117735_))
                    (_rest117741_ (cdr _args117735_)))
                (if (let () (declare (not safe)) (null? _rest117741_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx117737_ _arg1117739_))
                    (let ((_arg2117744_ (car _rest117741_))
                          (_rest117746_ (cdr _rest117741_)))
                      (if (let () (declare (not safe)) (null? _rest117746_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx117737_
                             _arg1117739_
                             _arg2117744_))
                          (apply gxc#compile-e
                                 _stx117737_
                                 _arg1117739_
                                 _arg2117744_
                                 _rest117746_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx117694_ . _args117695_)
        (let* ((_g117697117707_
                (lambda (_g117698117704_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117698117704_))))
               (_g117696117732_
                (lambda (_g117698117710_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117698117710_))
                      (let ((_e117702117712_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117698117710_))))
                        (let ((_hd117701117715_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117702117712_)))
                              (_tl117700117717_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117702117712_))))
                          ((lambda (_L117720_)
                             (let* ((_forms117730_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117695_))
                                          _L117720_))
                                    (__tmp118165
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms117730_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118165
                                _stx117694_)))
                           _tl117700117717_)))
                      (let ()
                        (declare (not safe))
                        (_g117697117707_ _g117698117710_))))))
          (declare (not safe))
          (_g117696117732_ _stx117694_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx117652_ . _args117653_)
        (let* ((_g117655117665_
                (lambda (_g117656117662_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117656117662_))))
               (_g117654117691_
                (lambda (_g117656117668_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117656117668_))
                      (let ((_e117660117670_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117656117668_))))
                        (let ((_hd117659117673_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117660117670_)))
                              (_tl117658117675_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117660117670_))))
                          ((lambda (_L117678_)
                             (let ((__tmp118168
                                    (lambda ()
                                      (let* ((_forms117689_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args117653_))
                                                   _L117678_))
                                             (__tmp118169
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms117689_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp118169
                                         _stx117652_))))
                                   (__tmp118166
                                    (let ((__tmp118167
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp118167 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp118168
                                gx#current-expander-phi
                                __tmp118166)))
                           _tl117658117675_)))
                      (let ()
                        (declare (not safe))
                        (_g117655117665_ _g117656117668_))))))
          (declare (not safe))
          (_g117654117691_ _stx117652_))))
    (define gxc#xform-module%
      (lambda (_stx117580_ . _args117581_)
        (let* ((_g117583117597_
                (lambda (_g117584117594_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117584117594_))))
               (_g117582117649_
                (lambda (_g117584117600_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117584117600_))
                      (let ((_e117589117602_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117584117600_))))
                        (let ((_hd117588117605_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117589117602_)))
                              (_tl117587117607_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117589117602_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117587117607_))
                              (let ((_e117592117610_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117587117607_))))
                                (let ((_hd117591117613_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117592117610_)))
                                      (_tl117590117615_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117592117610_))))
                                  ((lambda (_L117618_ _L117619_)
                                     (let* ((_ctx117632_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L117619_)))
                                            (_code117634_
                                             (##structure-ref
                                              _ctx117632_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code117646_
                                             (let ((__tmp118170
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args117581_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code117634_))
                                                          (let ((_arg1117637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args117581_))
                        (_rest117639_ (cdr _args117581_)))
                    (if (let () (declare (not safe)) (null? _rest117639_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code117634_ _arg1117637_))
                        (let ((_arg2117642_ (car _rest117639_))
                              (_rest117644_ (cdr _rest117639_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest117644_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code117634_
                                 _arg1117637_
                                 _arg2117642_))
                              (apply gxc#compile-e
                                     _code117634_
                                     _arg1117637_
                                     _arg2117642_
                                     _rest117644_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp118170
                                                gx#current-expander-context
                                                _ctx117632_))))
                                       (##structure-set!
                                        _ctx117632_
                                        _code117646_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp118171
                                              (let ((__tmp118172
                                                     (let ((__tmp118173
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code117646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L117619_ __tmp118173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp118172))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp118171
                                          _stx117580_))))
                                   _tl117590117615_
                                   _hd117591117613_)))
                              (let ()
                                (declare (not safe))
                                (_g117583117597_ _g117584117600_)))))
                      (let ()
                        (declare (not safe))
                        (_g117583117597_ _g117584117600_))))))
          (declare (not safe))
          (_g117582117649_ _stx117580_))))
    (define gxc#xform-define-values%
      (lambda (_stx117501_ . _args117502_)
        (let* ((_g117504117521_
                (lambda (_g117505117518_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117505117518_))))
               (_g117503117577_
                (lambda (_g117505117524_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117505117524_))
                      (let ((_e117510117526_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117505117524_))))
                        (let ((_hd117509117529_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117510117526_)))
                              (_tl117508117531_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117510117526_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117508117531_))
                              (let ((_e117513117534_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117508117531_))))
                                (let ((_hd117512117537_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117513117534_)))
                                      (_tl117511117539_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117513117534_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117511117539_))
                                      (let ((_e117516117542_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117511117539_))))
                                        (let ((_hd117515117545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117516117542_)))
                                              (_tl117514117547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117516117542_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117514117547_))
                                              ((lambda (_L117550_ _L117551_)
                                                 (let* ((_expr117575_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117502_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117550_))
                     (let ((_arg1117566_ (car _args117502_))
                           (_rest117568_ (cdr _args117502_)))
                       (if (let () (declare (not safe)) (null? _rest117568_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117550_ _arg1117566_))
                           (let ((_arg2117571_ (car _rest117568_))
                                 (_rest117573_ (cdr _rest117568_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117573_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117550_
                                    _arg1117566_
                                    _arg2117571_))
                                 (apply gxc#compile-e
                                        _L117550_
                                        _arg1117566_
                                        _arg2117571_
                                        _rest117573_)))))))
                (__tmp118174
                 (let ((__tmp118175
                        (let ((__tmp118176
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117575_ '()))))
                          (declare (not safe))
                          (cons _L117551_ __tmp118176))))
                   (declare (not safe))
                   (cons '%#define-values __tmp118175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118174
                                                    _stx117501_)))
                                               _hd117515117545_
                                               _hd117512117537_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117504117521_
                                                 _g117505117524_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117504117521_ _g117505117524_)))))
                              (let ()
                                (declare (not safe))
                                (_g117504117521_ _g117505117524_)))))
                      (let ()
                        (declare (not safe))
                        (_g117504117521_ _g117505117524_))))))
          (declare (not safe))
          (_g117503117577_ _stx117501_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx117421_ . _args117422_)
        (let* ((_g117424117441_
                (lambda (_g117425117438_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117425117438_))))
               (_g117423117498_
                (lambda (_g117425117444_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117425117444_))
                      (let ((_e117430117446_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117425117444_))))
                        (let ((_hd117429117449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117430117446_)))
                              (_tl117428117451_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117430117446_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117428117451_))
                              (let ((_e117433117454_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117428117451_))))
                                (let ((_hd117432117457_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117433117454_)))
                                      (_tl117431117459_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117433117454_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117431117459_))
                                      (let ((_e117436117462_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117431117459_))))
                                        (let ((_hd117435117465_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117436117462_)))
                                              (_tl117434117467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117436117462_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117434117467_))
                                              ((lambda (_L117470_ _L117471_)
                                                 (let ((__tmp118179
                                                        (lambda ()
                                                          (let* ((_expr117496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args117422_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L117470_))
                              (let ((_arg1117487_ (car _args117422_))
                                    (_rest117489_ (cdr _args117422_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest117489_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L117470_
                                       _arg1117487_))
                                    (let ((_arg2117492_ (car _rest117489_))
                                          (_rest117494_ (cdr _rest117489_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest117494_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L117470_
                                             _arg1117487_
                                             _arg2117492_))
                                          (apply gxc#compile-e
                                                 _L117470_
                                                 _arg1117487_
                                                 _arg2117492_
                                                 _rest117494_)))))))
                         (__tmp118180
                          (let ((__tmp118181
                                 (let ((__tmp118182
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr117496_ '()))))
                                   (declare (not safe))
                                   (cons _L117471_ __tmp118182))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp118181))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp118180 _stx117421_))))
               (__tmp118177
                (let ((__tmp118178 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp118178 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp118179
                                                    gx#current-expander-phi
                                                    __tmp118177)))
                                               _hd117435117465_
                                               _hd117432117457_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117424117441_
                                                 _g117425117444_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117424117441_ _g117425117444_)))))
                              (let ()
                                (declare (not safe))
                                (_g117424117441_ _g117425117444_)))))
                      (let ()
                        (declare (not safe))
                        (_g117424117441_ _g117425117444_))))))
          (declare (not safe))
          (_g117423117498_ _stx117421_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx117342_ . _args117343_)
        (let* ((_g117345117362_
                (lambda (_g117346117359_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117346117359_))))
               (_g117344117418_
                (lambda (_g117346117365_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117346117365_))
                      (let ((_e117351117367_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117346117365_))))
                        (let ((_hd117350117370_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117351117367_)))
                              (_tl117349117372_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117351117367_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117349117372_))
                              (let ((_e117354117375_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117349117372_))))
                                (let ((_hd117353117378_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117354117375_)))
                                      (_tl117352117380_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117354117375_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117352117380_))
                                      (let ((_e117357117383_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117352117380_))))
                                        (let ((_hd117356117386_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117357117383_)))
                                              (_tl117355117388_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117357117383_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117355117388_))
                                              ((lambda (_L117391_ _L117392_)
                                                 (let* ((_expr117416_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117343_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117391_))
                     (let ((_arg1117407_ (car _args117343_))
                           (_rest117409_ (cdr _args117343_)))
                       (if (let () (declare (not safe)) (null? _rest117409_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117391_ _arg1117407_))
                           (let ((_arg2117412_ (car _rest117409_))
                                 (_rest117414_ (cdr _rest117409_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117414_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117391_
                                    _arg1117407_
                                    _arg2117412_))
                                 (apply gxc#compile-e
                                        _L117391_
                                        _arg1117407_
                                        _arg2117412_
                                        _rest117414_)))))))
                (__tmp118183
                 (let ((__tmp118184
                        (let ((__tmp118185
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117416_ '()))))
                          (declare (not safe))
                          (cons _L117392_ __tmp118185))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp118184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118183
                                                    _stx117342_)))
                                               _hd117356117386_
                                               _hd117353117378_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117345117362_
                                                 _g117346117365_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117345117362_ _g117346117365_)))))
                              (let ()
                                (declare (not safe))
                                (_g117345117362_ _g117346117365_)))))
                      (let ()
                        (declare (not safe))
                        (_g117345117362_ _g117346117365_))))))
          (declare (not safe))
          (_g117344117418_ _stx117342_))))
    (define gxc#xform-lambda%
      (lambda (_stx117285_ . _args117286_)
        (let* ((_g117288117302_
                (lambda (_g117289117299_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117289117299_))))
               (_g117287117339_
                (lambda (_g117289117305_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117289117305_))
                      (let ((_e117294117307_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117289117305_))))
                        (let ((_hd117293117310_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117294117307_)))
                              (_tl117292117312_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117294117307_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117292117312_))
                              (let ((_e117297117315_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117292117312_))))
                                (let ((_hd117296117318_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117297117315_)))
                                      (_tl117295117320_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117297117315_))))
                                  ((lambda (_L117323_ _L117324_)
                                     (let* ((_body117337_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args117286_))
                                                  _L117323_))
                                            (__tmp118186
                                             (let ((__tmp118187
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L117324_
                                                            _body117337_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp118187))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp118186
                                        _stx117285_)))
                                   _tl117295117320_
                                   _hd117296117318_)))
                              (let ()
                                (declare (not safe))
                                (_g117288117302_ _g117289117305_)))))
                      (let ()
                        (declare (not safe))
                        (_g117288117302_ _g117289117305_))))))
          (declare (not safe))
          (_g117287117339_ _stx117285_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx117198_ . _args117199_)
        (letrec ((_clause-e117201_
                  (lambda (_clause117242_)
                    (let* ((_g117244117255_
                            (lambda (_g117245117252_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g117245117252_))))
                           (_g117243117282_
                            (lambda (_g117245117258_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g117245117258_))
                                  (let ((_e117250117260_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g117245117258_))))
                                    (let ((_hd117249117263_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117250117260_)))
                                          (_tl117248117265_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117250117260_))))
                                      ((lambda (_L117268_ _L117269_)
                                         (let ((_body117280_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args117199_))
                                                     _L117268_)))
                                           (declare (not safe))
                                           (cons _L117269_ _body117280_)))
                                       _tl117248117265_
                                       _hd117249117263_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117244117255_ _g117245117258_))))))
                      (declare (not safe))
                      (_g117243117282_ _clause117242_)))))
          (let* ((_g117203117213_
                  (lambda (_g117204117210_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g117204117210_))))
                 (_g117202117239_
                  (lambda (_g117204117216_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g117204117216_))
                        (let ((_e117208117218_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g117204117216_))))
                          (let ((_hd117207117221_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117208117218_)))
                                (_tl117206117223_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117208117218_))))
                            ((lambda (_L117226_)
                               (let* ((_clauses117237_
                                       (map _clause-e117201_ _L117226_))
                                      (__tmp118188
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses117237_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp118188
                                  _stx117198_)))
                             _tl117206117223_)))
                        (let ()
                          (declare (not safe))
                          (_g117203117213_ _g117204117216_))))))
            (declare (not safe))
            (_g117202117239_ _stx117198_)))))
    (define gxc#xform-let-values%
      (lambda (_stx116992_ . _args116993_)
        (let* ((_g116995117028_
                (lambda (_g116996117025_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116996117025_))))
               (_g116994117195_
                (lambda (_g116996117031_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116996117031_))
                      (let ((_e117003117033_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116996117031_))))
                        (let ((_hd117002117036_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117003117033_)))
                              (_tl117001117038_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117003117033_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117001117038_))
                              (let ((_e117006117041_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117001117038_))))
                                (let ((_hd117005117044_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117006117041_)))
                                      (_tl117004117046_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117006117041_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd117005117044_))
                                      (let ((_g118189_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd117005117044_
                                                '0))))
                                        (begin
                                          (let ((_g118190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118189_)
                                                       (##vector-length
                                                        _g118189_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118190_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118190_)))
                                          (let ((_target117007117049_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118189_ 0)))
                                                (_tl117009117051_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118189_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117009117051_))
                                                (letrec ((_loop117010117054_
                                                          (lambda (_hd117008117057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117014117059_
                           _hd117015117061_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117008117057_))
                        (let ((_e117011117064_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117008117057_))))
                          (let ((_lp-hd117012117067_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117011117064_)))
                                (_lp-tl117013117069_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117011117064_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117012117067_))
                                (let ((_e117020117072_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117012117067_))))
                                  (let ((_hd117019117075_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e117020117072_)))
                                        (_tl117018117077_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e117020117072_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117018117077_))
                                        (let ((_e117023117080_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117018117077_))))
                                          (let ((_hd117022117083_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117023117080_)))
                                                (_tl117021117085_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117023117080_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117021117085_))
                                                (let ((__tmp118203
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117022117083_
                                                               _expr117014117059_)))
                                                      (__tmp118202
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117019117075_
                                                               _hd117015117061_))))
                                                  (declare (not safe))
                                                  (_loop117010117054_
                                                   _lp-tl117013117069_
                                                   __tmp118203
                                                   __tmp118202))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116995117028_
                                                   _g116996117031_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g116995117028_ _g116996117031_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116995117028_ _g116996117031_)))))
                        (let ((_expr117016117088_ (reverse _expr117014117059_))
                              (_hd117017117090_ (reverse _hd117015117061_)))
                          ((lambda (_L117093_ _L117094_ _L117095_ _L117096_)
                             (let* ((_g117115117131_
                                     (lambda (_g117116117128_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g117116117128_))))
                                    (_g117114117185_
                                     (lambda (_g117116117134_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g117116117134_))
                                           (let ((_g118191_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g117116117134_
                                                     '0))))
                                             (begin
                                               (let ((_g118192_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g118191_)
                                                            (##vector-length
                                                             _g118191_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g118192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g118192_)))
                                               (let ((_target117118117136_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118191_
                                                         0)))
                                                     (_tl117120117138_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118191_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117120117138_))
                                                     (letrec ((_loop117121117141_
                                                               (lambda (_hd117119117144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr117125117146_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd117119117144_))
                             (let ((_e117122117149_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd117119117144_))))
                               (let ((_lp-hd117123117152_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e117122117149_)))
                                     (_lp-tl117124117154_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e117122117149_))))
                                 (let ((__tmp118199
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd117123117152_
                                                _expr117125117146_))))
                                   (declare (not safe))
                                   (_loop117121117141_
                                    _lp-tl117124117154_
                                    __tmp118199))))
                             (let ((_expr117126117157_
                                    (reverse _expr117125117146_)))
                               ((lambda (_L117160_)
                                  (let ()
                                    (let* ((_body117173_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args116993_))
                                                 _L117093_))
                                           (__tmp118193
                                            (let ((__tmp118194
                                                   (let ((__tmp118195
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L117160_
                                                               _L117095_))
                                                            (let ((__tmp118196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g117174117178_
                                    _g117175117180_
                                    _g117176117182_)
                             (let ((__tmp118197
                                    (let ((__tmp118198
                                           (let ()
                                             (declare (not safe))
                                             (cons _g117174117178_ '()))))
                                      (declare (not safe))
                                      (cons _g117175117180_ __tmp118198))))
                               (declare (not safe))
                               (cons __tmp118197 _g117176117182_)))))
                      (declare (not safe))
                      (foldr2 __tmp118196 '() _L117160_ _L117095_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp118195
                                                           _body117173_))))
                                              (declare (not safe))
                                              (cons _L117096_ __tmp118194))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp118193
                                       _stx116992_))))
                                _expr117126117157_))))))
               (let ()
                 (declare (not safe))
                 (_loop117121117141_ _target117118117136_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g117115117131_
                                                        _g117116117134_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117115117131_
                                              _g117116117134_)))))
                                    (__tmp118200
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116993_))
                                          (let ((__tmp118201
                                                 (lambda (_g117187117190_
                                                          _g117188117192_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g117187117190_
                                                           _g117188117192_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp118201
                                                    '()
                                                    _L117094_)))))
                               (declare (not safe))
                               (_g117114117185_ __tmp118200)))
                           _tl117004117046_
                           _expr117016117088_
                           _hd117017117090_
                           _hd117002117036_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117010117054_
                                                     _target117007117049_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116995117028_
                                                   _g116996117031_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116995117028_ _g116996117031_)))))
                              (let ()
                                (declare (not safe))
                                (_g116995117028_ _g116996117031_)))))
                      (let ()
                        (declare (not safe))
                        (_g116995117028_ _g116996117031_))))))
          (declare (not safe))
          (_g116994117195_ _stx116992_))))
    (define gxc#xform-operands
      (lambda (_stx116948_ . _args116949_)
        (let* ((_g116951116962_
                (lambda (_g116952116959_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116952116959_))))
               (_g116950116989_
                (lambda (_g116952116965_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116952116965_))
                      (let ((_e116957116967_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116952116965_))))
                        (let ((_hd116956116970_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116957116967_)))
                              (_tl116955116972_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116957116967_))))
                          ((lambda (_L116975_ _L116976_)
                             (let* ((_rands116987_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116949_))
                                          _L116975_))
                                    (__tmp118204
                                     (let ()
                                       (declare (not safe))
                                       (cons _L116976_ _rands116987_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118204
                                _stx116948_)))
                           _tl116955116972_
                           _hd116956116970_)))
                      (let ()
                        (declare (not safe))
                        (_g116951116962_ _g116952116965_))))))
          (declare (not safe))
          (_g116950116989_ _stx116948_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx116869_ . _args116870_)
        (let* ((_g116872116889_
                (lambda (_g116873116886_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116873116886_))))
               (_g116871116945_
                (lambda (_g116873116892_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116873116892_))
                      (let ((_e116878116894_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116873116892_))))
                        (let ((_hd116877116897_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116878116894_)))
                              (_tl116876116899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116878116894_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116876116899_))
                              (let ((_e116881116902_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116876116899_))))
                                (let ((_hd116880116905_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116881116902_)))
                                      (_tl116879116907_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116881116902_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116879116907_))
                                      (let ((_e116884116910_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116879116907_))))
                                        (let ((_hd116883116913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116884116910_)))
                                              (_tl116882116915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116884116910_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116882116915_))
                                              ((lambda (_L116918_ _L116919_)
                                                 (let* ((_expr116943_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116870_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116918_))
                     (let ((_arg1116934_ (car _args116870_))
                           (_rest116936_ (cdr _args116870_)))
                       (if (let () (declare (not safe)) (null? _rest116936_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116918_ _arg1116934_))
                           (let ((_arg2116939_ (car _rest116936_))
                                 (_rest116941_ (cdr _rest116936_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116941_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116918_
                                    _arg1116934_
                                    _arg2116939_))
                                 (apply gxc#compile-e
                                        _L116918_
                                        _arg1116934_
                                        _arg2116939_
                                        _rest116941_)))))))
                (__tmp118205
                 (let ((__tmp118206
                        (let ((__tmp118207
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116943_ '()))))
                          (declare (not safe))
                          (cons _L116919_ __tmp118207))))
                   (declare (not safe))
                   (cons '%#set! __tmp118206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118205
                                                    _stx116869_)))
                                               _hd116883116913_
                                               _hd116880116905_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116872116889_
                                                 _g116873116892_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116872116889_ _g116873116892_)))))
                              (let ()
                                (declare (not safe))
                                (_g116872116889_ _g116873116892_)))))
                      (let ()
                        (declare (not safe))
                        (_g116872116889_ _g116873116892_))))))
          (declare (not safe))
          (_g116871116945_ _stx116869_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx116800_)
        (let* ((_g116802116819_
                (lambda (_g116803116816_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116803116816_))))
               (_g116801116866_
                (lambda (_g116803116822_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116803116822_))
                      (let ((_e116808116824_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116803116822_))))
                        (let ((_hd116807116827_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116808116824_)))
                              (_tl116806116829_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116808116824_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116806116829_))
                              (let ((_e116811116832_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116806116829_))))
                                (let ((_hd116810116835_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116811116832_)))
                                      (_tl116809116837_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116811116832_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116809116837_))
                                      (let ((_e116814116840_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116809116837_))))
                                        (let ((_hd116813116843_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116814116840_)))
                                              (_tl116812116845_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116814116840_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116812116845_))
                                              ((lambda (_L116848_ _L116849_)
                                                 (let ((_sym116864_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116849_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym116864_))
                                                   (let ((__tmp118208
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118208
                                                      _sym116864_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L116848_))))
                                               _hd116813116843_
                                               _hd116810116835_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116802116819_
                                                 _g116803116822_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116802116819_ _g116803116822_)))))
                              (let ()
                                (declare (not safe))
                                (_g116802116819_ _g116803116822_)))))
                      (let ()
                        (declare (not safe))
                        (_g116802116819_ _g116803116822_))))))
          (declare (not safe))
          (_g116801116866_ _stx116800_))))
    (define gxc#collect-methods-call%
      (lambda (_stx116354_)
        (let* ((___stx117898117899_ _stx116354_)
               (_g116358116460_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx117898117899_)))))
          (let ((___kont117900117901_
                 (lambda (_L116750_ _L116751_ _L116752_ _L116753_ _L116754_)
                   (let ((__tmp118209
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116751_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118209))))
                (___kont117902117903_
                 (lambda (_L116576_ _L116577_ _L116578_ _L116579_)
                   (let ((__tmp118210
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116576_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118210))))
                (___kont117904117905_ (lambda () '#!void)))
            (let ((___match118033118034_
                   (lambda (_e116367116622_
                            _hd116366116625_
                            _tl116365116627_
                            _e116370116630_
                            _hd116369116633_
                            _tl116368116635_
                            _e116373116638_
                            _hd116372116641_
                            _tl116371116643_
                            _e116376116646_
                            _hd116375116649_
                            _tl116374116651_
                            _e116379116654_
                            _hd116378116657_
                            _tl116377116659_
                            _e116382116662_
                            _hd116381116665_
                            _tl116380116667_
                            _e116385116670_
                            _hd116384116673_
                            _tl116383116675_
                            _e116388116678_
                            _hd116387116681_
                            _tl116386116683_
                            _e116391116686_
                            _hd116390116689_
                            _tl116389116691_
                            _e116394116694_
                            _hd116393116697_
                            _tl116392116699_
                            _e116397116702_
                            _hd116396116705_
                            _tl116395116707_
                            _e116400116710_
                            _hd116399116713_
                            _tl116398116715_
                            _e116403116718_
                            _hd116402116721_
                            _tl116401116723_
                            _e116406116726_
                            _hd116405116729_
                            _tl116404116731_
                            _e116409116734_
                            _hd116408116737_
                            _tl116407116739_
                            _e116412116742_
                            _hd116411116745_
                            _tl116410116747_)
                     (let ((_L116750_ _hd116411116745_)
                           (_L116751_ _hd116402116721_)
                           (_L116752_ _hd116393116697_)
                           (_L116753_ _hd116384116673_)
                           (_L116754_ _hd116375116649_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L116754_
                              'bind-method!))
                           (___kont117900117901_
                            _L116750_
                            _L116751_
                            _L116752_
                            _L116753_
                            _L116754_)
                           (___kont117904117905_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx117898117899_))
                  (let ((_e116367116622_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx117898117899_))))
                    (let ((_tl116365116627_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116367116622_)))
                          (_hd116366116625_
                           (let ()
                             (declare (not safe))
                             (##car _e116367116622_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116365116627_))
                          (let ((_e116370116630_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116365116627_))))
                            (let ((_tl116368116635_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116370116630_)))
                                  (_hd116369116633_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116370116630_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116369116633_))
                                  (let ((_e116373116638_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116369116633_))))
                                    (let ((_tl116371116643_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116373116638_)))
                                          (_hd116372116641_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116373116638_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd116372116641_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd116372116641_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116371116643_))
                                                  (let ((_e116376116646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116371116643_))))
                                                    (let ((_tl116374116651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116376116646_)))
                                                          (_hd116375116649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116376116646_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116374116651_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116368116635_))
                      (let ((_e116379116654_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116368116635_))))
                        (let ((_tl116377116659_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116379116654_)))
                              (_hd116378116657_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116379116654_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd116378116657_))
                              (let ((_e116382116662_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd116378116657_))))
                                (let ((_tl116380116667_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116382116662_)))
                                      (_hd116381116665_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116382116662_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd116381116665_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd116381116665_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl116380116667_))
                                              (let ((_e116385116670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl116380116667_))))
                                                (let ((_tl116383116675_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e116385116670_)))
                                                      (_hd116384116673_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e116385116670_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116383116675_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl116377116659_))
                                                          (let ((_e116388116678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl116377116659_))))
                    (let ((_tl116386116683_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116388116678_)))
                          (_hd116387116681_
                           (let ()
                             (declare (not safe))
                             (##car _e116388116678_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd116387116681_))
                          (let ((_e116391116686_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd116387116681_))))
                            (let ((_tl116389116691_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116391116686_)))
                                  (_hd116390116689_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116391116686_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd116390116689_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd116390116689_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl116389116691_))
                                          (let ((_e116394116694_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl116389116691_))))
                                            (let ((_tl116392116699_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116394116694_)))
                                                  (_hd116393116697_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116394116694_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl116392116699_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl116386116683_))
                                                      (let ((_e116397116702_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl116386116683_))))
                (let ((_tl116395116707_
                       (let () (declare (not safe)) (##cdr _e116397116702_)))
                      (_hd116396116705_
                       (let () (declare (not safe)) (##car _e116397116702_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd116396116705_))
                      (let ((_e116400116710_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd116396116705_))))
                        (let ((_tl116398116715_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116400116710_)))
                              (_hd116399116713_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116400116710_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd116399116713_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd116399116713_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116398116715_))
                                      (let ((_e116403116718_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116398116715_))))
                                        (let ((_tl116401116723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116403116718_)))
                                              (_hd116402116721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116403116718_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116401116723_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116395116707_))
                                                  (let ((_e116406116726_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116395116707_))))
                                                    (let ((_tl116404116731_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116406116726_)))
                                                          (_hd116405116729_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116406116726_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd116405116729_))
                                                          (let ((_e116409116734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd116405116729_))))
                    (let ((_tl116407116739_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116409116734_)))
                          (_hd116408116737_
                           (let ()
                             (declare (not safe))
                             (##car _e116409116734_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd116408116737_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd116408116737_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl116407116739_))
                                  (let ((_e116412116742_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl116407116739_))))
                                    (let ((_tl116410116747_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116412116742_)))
                                          (_hd116411116745_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116412116742_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl116410116747_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116404116731_))
                                              (___match118033118034_
                                               _e116367116622_
                                               _hd116366116625_
                                               _tl116365116627_
                                               _e116370116630_
                                               _hd116369116633_
                                               _tl116368116635_
                                               _e116373116638_
                                               _hd116372116641_
                                               _tl116371116643_
                                               _e116376116646_
                                               _hd116375116649_
                                               _tl116374116651_
                                               _e116379116654_
                                               _hd116378116657_
                                               _tl116377116659_
                                               _e116382116662_
                                               _hd116381116665_
                                               _tl116380116667_
                                               _e116385116670_
                                               _hd116384116673_
                                               _tl116383116675_
                                               _e116388116678_
                                               _hd116387116681_
                                               _tl116386116683_
                                               _e116391116686_
                                               _hd116390116689_
                                               _tl116389116691_
                                               _e116394116694_
                                               _hd116393116697_
                                               _tl116392116699_
                                               _e116397116702_
                                               _hd116396116705_
                                               _tl116395116707_
                                               _e116400116710_
                                               _hd116399116713_
                                               _tl116398116715_
                                               _e116403116718_
                                               _hd116402116721_
                                               _tl116401116723_
                                               _e116406116726_
                                               _hd116405116729_
                                               _tl116404116731_
                                               _e116409116734_
                                               _hd116408116737_
                                               _tl116407116739_
                                               _e116412116742_
                                               _hd116411116745_
                                               _tl116410116747_)
                                              (___kont117904117905_))
                                          (___kont117904117905_))))
                                  (___kont117904117905_))
                              (___kont117904117905_))
                          (___kont117904117905_))))
                  (___kont117904117905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116395116707_))
                                                      (if (let ((__tmp118211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118211 'bind-method!))
                  (let ((_L116576_ _hd116402116721_)
                        (_L116577_ _hd116393116697_)
                        (_L116578_ _hd116384116673_)
                        (_L116579_ _hd116375116649_))
                    (___kont117902117903_
                     _L116576_
                     _L116577_
                     _L116578_
                     _L116579_))
                  (___kont117904117905_))
              (___kont117904117905_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117904117905_))))
                                      (___kont117904117905_))
                                  (___kont117904117905_))
                              (___kont117904117905_))))
                      (___kont117904117905_))))
              (___kont117904117905_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117904117905_))))
                                          (___kont117904117905_))
                                      (___kont117904117905_))
                                  (___kont117904117905_))))
                          (___kont117904117905_))))
                  (___kont117904117905_))
              (___kont117904117905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117904117905_))
                                          (___kont117904117905_))
                                      (___kont117904117905_))))
                              (___kont117904117905_))))
                      (___kont117904117905_))
                  (___kont117904117905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117904117905_))
                                              (___kont117904117905_))
                                          (___kont117904117905_))))
                                  (___kont117904117905_))))
                          (___kont117904117905_))))
                  (___kont117904117905_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx116301_ _id116302_ _new-id116303_)
        (let* ((_g116305116318_
                (lambda (_g116306116315_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116306116315_))))
               (_g116304116351_
                (lambda (_g116306116321_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116306116321_))
                      (let ((_e116310116323_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116306116321_))))
                        (let ((_hd116309116326_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116310116323_)))
                              (_tl116308116328_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116310116323_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116308116328_))
                              (let ((_e116313116331_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116308116328_))))
                                (let ((_hd116312116334_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116313116331_)))
                                      (_tl116311116336_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116313116331_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116311116336_))
                                      ((lambda (_L116339_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L116339_
                                                _id116302_))
                                             (let ((__tmp118212
                                                    (let ((__tmp118213
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id116303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp118213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118212
                                                _stx116301_))
                                             _stx116301_))
                                       _hd116312116334_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116305116318_ _g116306116321_)))))
                              (let ()
                                (declare (not safe))
                                (_g116305116318_ _g116306116321_)))))
                      (let ()
                        (declare (not safe))
                        (_g116305116318_ _g116306116321_))))))
          (declare (not safe))
          (_g116304116351_ _stx116301_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx116242_ _subst116243_)
        (let* ((_g116245116258_
                (lambda (_g116246116255_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116246116255_))))
               (_g116244116298_
                (lambda (_g116246116261_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116246116261_))
                      (let ((_e116250116263_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116246116261_))))
                        (let ((_hd116249116266_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116250116263_)))
                              (_tl116248116268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116250116263_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116248116268_))
                              (let ((_e116253116271_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116248116268_))))
                                (let ((_hd116252116274_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116253116271_)))
                                      (_tl116251116276_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116253116271_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116251116276_))
                                      ((lambda (_L116279_)
                                         (let ((_$e116293_
                                                (let ((__tmp118214
                                                       (lambda (_sub116291_)
                                                         (let ((__tmp118215
                                                                (car _sub116291_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L116279_
                                                            __tmp118215)))))
                                                  (declare (not safe))
                                                  (find __tmp118214
                                                        _subst116243_))))
                                           (if _$e116293_
                                               ((lambda (_sub116296_)
                                                  (let ((__tmp118216
                                                         (let ((__tmp118217
                                                                (let ((__tmp118218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub116296_)))
                          (declare (not safe))
                          (cons __tmp118218 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118216
                                                     _stx116242_)))
                                                _$e116293_)
                                               _stx116242_)))
                                       _hd116252116274_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116245116258_ _g116246116261_)))))
                              (let ()
                                (declare (not safe))
                                (_g116245116258_ _g116246116261_)))))
                      (let ()
                        (declare (not safe))
                        (_g116245116258_ _g116246116261_))))))
          (declare (not safe))
          (_g116244116298_ _stx116242_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx116170_ _id116171_ _new-id116172_)
        (let* ((_g116174116191_
                (lambda (_g116175116188_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116175116188_))))
               (_g116173116239_
                (lambda (_g116175116194_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116175116194_))
                      (let ((_e116180116196_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116175116194_))))
                        (let ((_hd116179116199_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116180116196_)))
                              (_tl116178116201_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116180116196_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116178116201_))
                              (let ((_e116183116204_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116178116201_))))
                                (let ((_hd116182116207_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116183116204_)))
                                      (_tl116181116209_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116183116204_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116181116209_))
                                      (let ((_e116186116212_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116181116209_))))
                                        (let ((_hd116185116215_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116186116212_)))
                                              (_tl116184116217_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116186116212_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116184116217_))
                                              ((lambda (_L116220_ _L116221_)
                                                 (let ((_new-expr116236_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L116220_
                                                           _id116171_
                                                           _new-id116172_)))
                                                       (_new-xid116237_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L116221_
                                                               _id116171_))
                                                            _new-id116172_
                                                            _L116221_)))
                                                   (let ((__tmp118219
                                                          (let ((__tmp118220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118221
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116236_ '()))))
                           (declare (not safe))
                           (cons _new-xid116237_ __tmp118221))))
                    (declare (not safe))
                    (cons '%#set! __tmp118220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118219
                                                      _stx116170_))))
                                               _hd116185116215_
                                               _hd116182116207_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116174116191_
                                                 _g116175116194_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116174116191_ _g116175116194_)))))
                              (let ()
                                (declare (not safe))
                                (_g116174116191_ _g116175116194_)))))
                      (let ()
                        (declare (not safe))
                        (_g116174116191_ _g116175116194_))))))
          (declare (not safe))
          (_g116173116239_ _stx116170_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx116094_ _subst116095_)
        (let* ((_g116097116114_
                (lambda (_g116098116111_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116098116111_))))
               (_g116096116167_
                (lambda (_g116098116117_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116098116117_))
                      (let ((_e116103116119_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116098116117_))))
                        (let ((_hd116102116122_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116103116119_)))
                              (_tl116101116124_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116103116119_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116101116124_))
                              (let ((_e116106116127_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116101116124_))))
                                (let ((_hd116105116130_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116106116127_)))
                                      (_tl116104116132_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116106116127_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116104116132_))
                                      (let ((_e116109116135_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116104116132_))))
                                        (let ((_hd116108116138_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116109116135_)))
                                              (_tl116107116140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116109116135_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116107116140_))
                                              ((lambda (_L116143_ _L116144_)
                                                 (let ((_new-expr116164_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L116143_
                                                           _subst116095_)))
                                                       (_new-xid116165_
                                                        (let ((_$e116161_
                                                               (let ((__tmp118222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub116159_)
                                (let ((__tmp118223 (car _sub116159_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L116144_
                                   __tmp118223)))))
                         (declare (not safe))
                         (find __tmp118222 _subst116095_))))
                  (if _$e116161_ (cdr _$e116161_) _L116144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118224
                                                          (let ((__tmp118225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118226
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116164_ '()))))
                           (declare (not safe))
                           (cons _new-xid116165_ __tmp118226))))
                    (declare (not safe))
                    (cons '%#set! __tmp118225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118224
                                                      _stx116094_))))
                                               _hd116108116138_
                                               _hd116105116130_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116097116114_
                                                 _g116098116117_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116097116114_ _g116098116117_)))))
                              (let ()
                                (declare (not safe))
                                (_g116097116114_ _g116098116117_)))))
                      (let ()
                        (declare (not safe))
                        (_g116097116114_ _g116098116117_))))))
          (declare (not safe))
          (_g116096116167_ _stx116094_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx116040_ _ht116041_)
        (let* ((_g116043116056_
                (lambda (_g116044116053_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116044116053_))))
               (_g116042116091_
                (lambda (_g116044116059_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116044116059_))
                      (let ((_e116048116061_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116044116059_))))
                        (let ((_hd116047116064_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116048116061_)))
                              (_tl116046116066_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116048116061_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116046116066_))
                              (let ((_e116051116069_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116046116066_))))
                                (let ((_hd116050116072_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116051116069_)))
                                      (_tl116049116074_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116051116069_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116049116074_))
                                      ((lambda (_L116077_)
                                         (let ((_eid116089_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L116077_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht116041_
                                            _eid116089_
                                            1+
                                            '0)))
                                       _hd116050116072_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116043116056_ _g116044116059_)))))
                              (let ()
                                (declare (not safe))
                                (_g116043116056_ _g116044116059_)))))
                      (let ()
                        (declare (not safe))
                        (_g116043116056_ _g116044116059_))))))
          (declare (not safe))
          (_g116042116091_ _stx116040_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx115970_ _ht115971_)
        (let* ((_g115973115990_
                (lambda (_g115974115987_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115974115987_))))
               (_g115972116037_
                (lambda (_g115974115993_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115974115993_))
                      (let ((_e115979115995_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115974115993_))))
                        (let ((_hd115978115998_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115979115995_)))
                              (_tl115977116000_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115979115995_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115977116000_))
                              (let ((_e115982116003_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115977116000_))))
                                (let ((_hd115981116006_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115982116003_)))
                                      (_tl115980116008_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115982116003_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115980116008_))
                                      (let ((_e115985116011_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115980116008_))))
                                        (let ((_hd115984116014_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115985116011_)))
                                              (_tl115983116016_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115985116011_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115983116016_))
                                              ((lambda (_L116019_ _L116020_)
                                                 (let ((_eid116035_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116020_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht115971_
                                                      _eid116035_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L116019_
                                                      _ht115971_))))
                                               _hd115984116014_
                                               _hd115981116006_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115973115990_
                                                 _g115974115993_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115973115990_ _g115974115993_)))))
                              (let ()
                                (declare (not safe))
                                (_g115973115990_ _g115974115993_)))))
                      (let ()
                        (declare (not safe))
                        (_g115973115990_ _g115974115993_))))))
          (declare (not safe))
          (_g115972116037_ _stx115970_))))
    (define gxc#find-body%
      (lambda (_stx115883_ _arg115884_)
        (let* ((_g115886115905_
                (lambda (_g115887115902_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115887115902_))))
               (_g115885115967_
                (lambda (_g115887115908_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115887115908_))
                      (let ((_e115891115910_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115887115908_))))
                        (let ((_hd115890115913_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115891115910_)))
                              (_tl115889115915_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115891115910_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115889115915_))
                              (let ((_g118227_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115889115915_
                                        '0))))
                                (begin
                                  (let ((_g118228_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118227_)
                                               (##vector-length _g118227_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118228_ 2)))
                                        (error "Context expects 2 values"
                                               _g118228_)))
                                  (let ((_target115892115918_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118227_ 0)))
                                        (_tl115894115920_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118227_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115894115920_))
                                        (letrec ((_loop115895115923_
                                                  (lambda (_hd115893115926_
                                                           _expr115899115928_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115893115926_))
                                                        (let ((_e115896115931_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115893115926_))))
                  (let ((_lp-hd115897115934_
                         (let () (declare (not safe)) (##car _e115896115931_)))
                        (_lp-tl115898115936_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115896115931_))))
                    (let ((__tmp118232
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd115897115934_ _expr115899115928_))))
                      (declare (not safe))
                      (_loop115895115923_ _lp-tl115898115936_ __tmp118232))))
                (let ((_expr115900115939_ (reverse _expr115899115928_)))
                  ((lambda (_L115942_)
                     (let ((__tmp118231
                            (lambda (_g115955115957_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115955115957_
                                 _arg115884_))))
                           (__tmp118229
                            (let ((__tmp118230
                                   (lambda (_g115959115962_ _g115960115964_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115959115962_
                                             _g115960115964_)))))
                              (declare (not safe))
                              (foldr1 __tmp118230 '() _L115942_))))
                       (declare (not safe))
                       (ormap1 __tmp118231 __tmp118229)))
                   _expr115900115939_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115895115923_
                                             _target115892115918_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115886115905_
                                           _g115887115908_))))))
                              (let ()
                                (declare (not safe))
                                (_g115886115905_ _g115887115908_)))))
                      (let ()
                        (declare (not safe))
                        (_g115886115905_ _g115887115908_))))))
          (declare (not safe))
          (_g115885115967_ _stx115883_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx115815_ _arg115816_)
        (let* ((_g115818115835_
                (lambda (_g115819115832_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115819115832_))))
               (_g115817115880_
                (lambda (_g115819115838_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115819115838_))
                      (let ((_e115824115840_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115819115838_))))
                        (let ((_hd115823115843_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115824115840_)))
                              (_tl115822115845_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115824115840_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115822115845_))
                              (let ((_e115827115848_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115822115845_))))
                                (let ((_hd115826115851_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115827115848_)))
                                      (_tl115825115853_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115827115848_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115825115853_))
                                      (let ((_e115830115856_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115825115853_))))
                                        (let ((_hd115829115859_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115830115856_)))
                                              (_tl115828115861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115830115856_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115828115861_))
                                              ((lambda (_L115864_ _L115865_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115864_
                                                    _arg115816_)))
                                               _hd115829115859_
                                               _hd115826115851_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115818115835_
                                                 _g115819115838_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115818115835_ _g115819115838_)))))
                              (let ()
                                (declare (not safe))
                                (_g115818115835_ _g115819115838_)))))
                      (let ()
                        (declare (not safe))
                        (_g115818115835_ _g115819115838_))))))
          (declare (not safe))
          (_g115817115880_ _stx115815_))))
    (define gxc#find-lambda%
      (lambda (_stx115747_ _arg115748_)
        (let* ((_g115750115767_
                (lambda (_g115751115764_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115751115764_))))
               (_g115749115812_
                (lambda (_g115751115770_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115751115770_))
                      (let ((_e115756115772_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115751115770_))))
                        (let ((_hd115755115775_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115756115772_)))
                              (_tl115754115777_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115756115772_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115754115777_))
                              (let ((_e115759115780_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115754115777_))))
                                (let ((_hd115758115783_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115759115780_)))
                                      (_tl115757115785_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115759115780_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115757115785_))
                                      (let ((_e115762115788_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115757115785_))))
                                        (let ((_hd115761115791_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115762115788_)))
                                              (_tl115760115793_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115762115788_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115760115793_))
                                              ((lambda (_L115796_ _L115797_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115796_
                                                    _arg115748_)))
                                               _hd115761115791_
                                               _hd115758115783_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115750115767_
                                                 _g115751115770_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115750115767_ _g115751115770_)))))
                              (let ()
                                (declare (not safe))
                                (_g115750115767_ _g115751115770_)))))
                      (let ()
                        (declare (not safe))
                        (_g115750115767_ _g115751115770_))))))
          (declare (not safe))
          (_g115749115812_ _stx115747_))))
    (define gxc#find-case-lambda%
      (lambda (_stx115629_ _arg115630_)
        (let* ((_g115632115660_
                (lambda (_g115633115657_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115633115657_))))
               (_g115631115744_
                (lambda (_g115633115663_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115633115663_))
                      (let ((_e115638115665_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115633115663_))))
                        (let ((_hd115637115668_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115638115665_)))
                              (_tl115636115670_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115638115665_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115636115670_))
                              (let ((_g118233_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115636115670_
                                        '0))))
                                (begin
                                  (let ((_g118234_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118233_)
                                               (##vector-length _g118233_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118234_ 2)))
                                        (error "Context expects 2 values"
                                               _g118234_)))
                                  (let ((_target115639115673_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118233_ 0)))
                                        (_tl115641115675_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118233_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115641115675_))
                                        (letrec ((_loop115642115678_
                                                  (lambda (_hd115640115681_
                                                           _body115646115683_
                                                           _hd115647115685_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115640115681_))
                                                        (let ((_e115643115688_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115640115681_))))
                  (let ((_lp-hd115644115691_
                         (let () (declare (not safe)) (##car _e115643115688_)))
                        (_lp-tl115645115693_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115643115688_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd115644115691_))
                        (let ((_e115652115696_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd115644115691_))))
                          (let ((_hd115651115699_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115652115696_)))
                                (_tl115650115701_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115652115696_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl115650115701_))
                                (let ((_e115655115704_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl115650115701_))))
                                  (let ((_hd115654115707_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115655115704_)))
                                        (_tl115653115709_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115655115704_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115653115709_))
                                        (let ((__tmp118239
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115654115707_
                                                       _body115646115683_)))
                                              (__tmp118238
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115651115699_
                                                       _hd115647115685_))))
                                          (declare (not safe))
                                          (_loop115642115678_
                                           _lp-tl115645115693_
                                           __tmp118239
                                           __tmp118238))
                                        (let ()
                                          (declare (not safe))
                                          (_g115632115660_ _g115633115663_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115632115660_ _g115633115663_)))))
                        (let ()
                          (declare (not safe))
                          (_g115632115660_ _g115633115663_)))))
                (let ((_body115648115712_ (reverse _body115646115683_))
                      (_hd115649115714_ (reverse _hd115647115685_)))
                  ((lambda (_L115717_ _L115718_)
                     (let ((__tmp118237
                            (lambda (_g115732115734_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115732115734_
                                 _arg115630_))))
                           (__tmp118235
                            (let ((__tmp118236
                                   (lambda (_g115736115739_ _g115737115741_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115736115739_
                                             _g115737115741_)))))
                              (declare (not safe))
                              (foldr1 __tmp118236 '() _L115717_))))
                       (declare (not safe))
                       (ormap1 __tmp118237 __tmp118235)))
                   _body115648115712_
                   _hd115649115714_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115642115678_
                                             _target115639115673_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115632115660_
                                           _g115633115663_))))))
                              (let ()
                                (declare (not safe))
                                (_g115632115660_ _g115633115663_)))))
                      (let ()
                        (declare (not safe))
                        (_g115632115660_ _g115633115663_))))))
          (declare (not safe))
          (_g115631115744_ _stx115629_))))
    (define gxc#find-let-values%
      (lambda (_stx115479_ _arg115480_)
        (let* ((_g115482115517_
                (lambda (_g115483115514_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115483115514_))))
               (_g115481115626_
                (lambda (_g115483115520_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115483115520_))
                      (let ((_e115489115522_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115483115520_))))
                        (let ((_hd115488115525_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115489115522_)))
                              (_tl115487115527_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115489115522_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115487115527_))
                              (let ((_e115492115530_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115487115527_))))
                                (let ((_hd115491115533_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115492115530_)))
                                      (_tl115490115535_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115492115530_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115491115533_))
                                      (let ((_g118240_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115491115533_
                                                '0))))
                                        (begin
                                          (let ((_g118241_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118240_)
                                                       (##vector-length
                                                        _g118240_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118241_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118241_)))
                                          (let ((_target115493115538_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118240_ 0)))
                                                (_tl115495115540_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118240_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115495115540_))
                                                (letrec ((_loop115496115543_
                                                          (lambda (_hd115494115546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115500115548_
                           _bind115501115550_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115494115546_))
                        (let ((_e115497115553_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115494115546_))))
                          (let ((_lp-hd115498115556_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115497115553_)))
                                (_lp-tl115499115558_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115497115553_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115498115556_))
                                (let ((_e115506115561_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115498115556_))))
                                  (let ((_hd115505115564_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115506115561_)))
                                        (_tl115504115566_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115506115561_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115504115566_))
                                        (let ((_e115509115569_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115504115566_))))
                                          (let ((_hd115508115572_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115509115569_)))
                                                (_tl115507115574_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115509115569_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115507115574_))
                                                (let ((__tmp118246
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115508115572_
                                                               _expr115500115548_)))
                                                      (__tmp118245
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115505115564_
                                                               _bind115501115550_))))
                                                  (declare (not safe))
                                                  (_loop115496115543_
                                                   _lp-tl115499115558_
                                                   __tmp118246
                                                   __tmp118245))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115482115517_
                                                   _g115483115520_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115482115517_ _g115483115520_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115482115517_ _g115483115520_)))))
                        (let ((_expr115502115577_ (reverse _expr115500115548_))
                              (_bind115503115579_
                               (reverse _bind115501115550_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115490115535_))
                              (let ((_e115512115582_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115490115535_))))
                                (let ((_hd115511115585_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115512115582_)))
                                      (_tl115510115587_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115512115582_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115510115587_))
                                      ((lambda (_L115590_ _L115591_ _L115592_)
                                         (let ((_$e115623_
                                                (let ((__tmp118244
                                                       (lambda (_g115611115613_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g115611115613_
                                                            _arg115480_))))
                                                      (__tmp118242
                                                       (let ((__tmp118243
                                                              (lambda (_g115615115618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115616115620_)
                        (let ()
                          (declare (not safe))
                          (cons _g115615115618_ _g115616115620_)))))
                 (declare (not safe))
                 (foldr1 __tmp118243 '() _L115591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118244
                                                          __tmp118242))))
                                           (if _$e115623_
                                               _$e115623_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L115590_
                                                  _arg115480_)))))
                                       _hd115511115585_
                                       _expr115502115577_
                                       _bind115503115579_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115482115517_ _g115483115520_)))))
                              (let ()
                                (declare (not safe))
                                (_g115482115517_ _g115483115520_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115496115543_
                                                     _target115493115538_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115482115517_
                                                   _g115483115520_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115482115517_ _g115483115520_)))))
                              (let ()
                                (declare (not safe))
                                (_g115482115517_ _g115483115520_)))))
                      (let ()
                        (declare (not safe))
                        (_g115482115517_ _g115483115520_))))))
          (declare (not safe))
          (_g115481115626_ _stx115479_))))
    (define gxc#find-setq%
      (lambda (_stx115411_ _arg115412_)
        (let* ((_g115414115431_
                (lambda (_g115415115428_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115415115428_))))
               (_g115413115476_
                (lambda (_g115415115434_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115415115434_))
                      (let ((_e115420115436_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115415115434_))))
                        (let ((_hd115419115439_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115420115436_)))
                              (_tl115418115441_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115420115436_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115418115441_))
                              (let ((_e115423115444_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115418115441_))))
                                (let ((_hd115422115447_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115423115444_)))
                                      (_tl115421115449_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115423115444_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115421115449_))
                                      (let ((_e115426115452_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115421115449_))))
                                        (let ((_hd115425115455_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115426115452_)))
                                              (_tl115424115457_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115426115452_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115424115457_))
                                              ((lambda (_L115460_ _L115461_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115460_
                                                    _arg115412_)))
                                               _hd115425115455_
                                               _hd115422115447_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115414115431_
                                                 _g115415115434_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115414115431_ _g115415115434_)))))
                              (let ()
                                (declare (not safe))
                                (_g115414115431_ _g115415115434_)))))
                      (let ()
                        (declare (not safe))
                        (_g115414115431_ _g115415115434_))))))
          (declare (not safe))
          (_g115413115476_ _stx115411_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx115355_ _ids115356_)
        (let* ((_g115358115371_
                (lambda (_g115359115368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115359115368_))))
               (_g115357115408_
                (lambda (_g115359115374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115359115374_))
                      (let ((_e115363115376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115359115374_))))
                        (let ((_hd115362115379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115363115376_)))
                              (_tl115361115381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115363115376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115361115381_))
                              (let ((_e115366115384_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115361115381_))))
                                (let ((_hd115365115387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115366115384_)))
                                      (_tl115364115389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115366115384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115364115389_))
                                      ((lambda (_L115392_)
                                         (let ((__tmp118247
                                                (lambda (_g115403115405_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L115392_
                                                     _g115403115405_)))))
                                           (declare (not safe))
                                           (find __tmp118247 _ids115356_)))
                                       _hd115365115387_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115358115371_ _g115359115374_)))))
                              (let ()
                                (declare (not safe))
                                (_g115358115371_ _g115359115374_)))))
                      (let ()
                        (declare (not safe))
                        (_g115358115371_ _g115359115374_))))))
          (declare (not safe))
          (_g115357115408_ _stx115355_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx115279_ _ids115280_)
        (let* ((_g115282115299_
                (lambda (_g115283115296_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115283115296_))))
               (_g115281115352_
                (lambda (_g115283115302_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115283115302_))
                      (let ((_e115288115304_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115283115302_))))
                        (let ((_hd115287115307_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115288115304_)))
                              (_tl115286115309_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115288115304_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115286115309_))
                              (let ((_e115291115312_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115286115309_))))
                                (let ((_hd115290115315_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115291115312_)))
                                      (_tl115289115317_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115291115312_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115289115317_))
                                      (let ((_e115294115320_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115289115317_))))
                                        (let ((_hd115293115323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115294115320_)))
                                              (_tl115292115325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115294115320_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115292115325_))
                                              ((lambda (_L115328_ _L115329_)
                                                 (let ((_$e115349_
                                                        (let ((__tmp118248
                                                               (lambda (_g115344115346_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L115329_ _g115344115346_)))))
                  (declare (not safe))
                  (find __tmp118248 _ids115280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e115349_
                                                       _$e115349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L115328_
                                                          _ids115280_)))))
                                               _hd115293115323_
                                               _hd115290115315_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115282115299_
                                                 _g115283115302_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115282115299_ _g115283115302_)))))
                              (let ()
                                (declare (not safe))
                                (_g115282115299_ _g115283115302_)))))
                      (let ()
                        (declare (not safe))
                        (_g115282115299_ _g115283115302_))))))
          (declare (not safe))
          (_g115281115352_ _stx115279_))))))
