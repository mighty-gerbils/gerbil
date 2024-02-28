(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1709127357)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl117898_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117898_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117898_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117898_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117898_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl117898_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl117894_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117894_ '%#declare gxc#xform-identity))
           _tbl117894_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl117890_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118144 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl117890_ __tmp118144))
           (let ((__tmp118145 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl117890_ __tmp118145))
           _tbl117890_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl117886_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117886_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117886_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117886_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117886_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117886_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl117886_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl117882_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118146 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117882_ __tmp118146))
           (let ((__tmp118147 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl117882_ __tmp118147))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117882_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117882_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117882_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117882_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117882_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl117882_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl117878_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118148 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117878_ __tmp118148))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117878_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117878_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117878_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117878_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117878_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117878_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117878_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117878_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117878_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117878_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117878_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117878_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl117878_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx117861_ . _args117863_)
        (let ((__tmp118150
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117863_)
                     (gxc#compile-e__0 _stx117861_)
                     (let ((_arg1117868_ (car _args117863_))
                           (_rest117870_ (cdr _args117863_)))
                       (if (null? _rest117870_)
                           (gxc#compile-e__1 _stx117861_ _arg1117868_)
                           (let ((_arg2117873_ (car _rest117870_))
                                 (_rest117875_ (cdr _rest117870_)))
                             (if (null? _rest117875_)
                                 (gxc#compile-e__2
                                  _stx117861_
                                  _arg1117868_
                                  _arg2117873_)
                                 (apply gxc#compile-e
                                        _stx117861_
                                        _arg1117868_
                                        _arg2117873_
                                        _rest117875_))))))))
              (__tmp118149 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp118150
           gxc#current-compile-methods
           __tmp118149))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl117858_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118151 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117858_ __tmp118151))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117858_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117858_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117858_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117858_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117858_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl117858_))))
    (define gxc#apply-collect-methods
      (lambda (_stx117841_ . _args117843_)
        (let ((__tmp118153
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117843_)
                     (gxc#compile-e__0 _stx117841_)
                     (let ((_arg1117848_ (car _args117843_))
                           (_rest117850_ (cdr _args117843_)))
                       (if (null? _rest117850_)
                           (gxc#compile-e__1 _stx117841_ _arg1117848_)
                           (let ((_arg2117853_ (car _rest117850_))
                                 (_rest117855_ (cdr _rest117850_)))
                             (if (null? _rest117855_)
                                 (gxc#compile-e__2
                                  _stx117841_
                                  _arg1117848_
                                  _arg2117853_)
                                 (apply gxc#compile-e
                                        _stx117841_
                                        _arg1117848_
                                        _arg2117853_
                                        _rest117855_))))))))
              (__tmp118152 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp118153
           gxc#current-compile-methods
           __tmp118152))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl117838_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118154 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117838_ __tmp118154))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117838_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117838_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117838_ '%#set! gxc#expression-subst-setq%))
           _tbl117838_))))
    (define gxc#apply-expression-subst
      (lambda (_stx117821_ . _args117823_)
        (let ((__tmp118156
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117823_)
                     (gxc#compile-e__0 _stx117821_)
                     (let ((_arg1117828_ (car _args117823_))
                           (_rest117830_ (cdr _args117823_)))
                       (if (null? _rest117830_)
                           (gxc#compile-e__1 _stx117821_ _arg1117828_)
                           (let ((_arg2117833_ (car _rest117830_))
                                 (_rest117835_ (cdr _rest117830_)))
                             (if (null? _rest117835_)
                                 (gxc#compile-e__2
                                  _stx117821_
                                  _arg1117828_
                                  _arg2117833_)
                                 (apply gxc#compile-e
                                        _stx117821_
                                        _arg1117828_
                                        _arg2117833_
                                        _rest117835_))))))))
              (__tmp118155 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp118156
           gxc#current-compile-methods
           __tmp118155))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl117818_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118157 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl117818_ __tmp118157))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117818_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117818_ '%#set! gxc#expression-subst*-setq%))
           _tbl117818_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx117801_ . _args117803_)
        (let ((__tmp118159
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117803_)
                     (gxc#compile-e__0 _stx117801_)
                     (let ((_arg1117808_ (car _args117803_))
                           (_rest117810_ (cdr _args117803_)))
                       (if (null? _rest117810_)
                           (gxc#compile-e__1 _stx117801_ _arg1117808_)
                           (let ((_arg2117813_ (car _rest117810_))
                                 (_rest117815_ (cdr _rest117810_)))
                             (if (null? _rest117815_)
                                 (gxc#compile-e__2
                                  _stx117801_
                                  _arg1117808_
                                  _arg2117813_)
                                 (apply gxc#compile-e
                                        _stx117801_
                                        _arg1117808_
                                        _arg2117813_
                                        _rest117815_))))))))
              (__tmp118158 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp118159
           gxc#current-compile-methods
           __tmp118158))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl117798_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118160 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl117798_ __tmp118160))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117798_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117798_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl117798_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl117794_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118161 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl117794_ __tmp118161))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117794_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117794_ '%#set! gxc#find-var-refs-setq%))
           _tbl117794_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx117777_ . _args117779_)
        (let ((__tmp118163
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117779_)
                     (gxc#compile-e__0 _stx117777_)
                     (let ((_arg1117784_ (car _args117779_))
                           (_rest117786_ (cdr _args117779_)))
                       (if (null? _rest117786_)
                           (gxc#compile-e__1 _stx117777_ _arg1117784_)
                           (let ((_arg2117789_ (car _rest117786_))
                                 (_rest117791_ (cdr _rest117786_)))
                             (if (null? _rest117791_)
                                 (gxc#compile-e__2
                                  _stx117777_
                                  _arg1117784_
                                  _arg2117789_)
                                 (apply gxc#compile-e
                                        _stx117777_
                                        _arg1117784_
                                        _arg2117789_
                                        _rest117791_))))))))
              (__tmp118162 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118163
           gxc#current-compile-methods
           __tmp118162))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl117774_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118164 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl117774_ __tmp118164))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117774_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117774_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl117774_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx117757_ . _args117759_)
        (let ((__tmp118166
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117759_)
                     (gxc#compile-e__0 _stx117757_)
                     (let ((_arg1117764_ (car _args117759_))
                           (_rest117766_ (cdr _args117759_)))
                       (if (null? _rest117766_)
                           (gxc#compile-e__1 _stx117757_ _arg1117764_)
                           (let ((_arg2117769_ (car _rest117766_))
                                 (_rest117771_ (cdr _rest117766_)))
                             (if (null? _rest117771_)
                                 (gxc#compile-e__2
                                  _stx117757_
                                  _arg1117764_
                                  _arg2117769_)
                                 (apply gxc#compile-e
                                        _stx117757_
                                        _arg1117764_
                                        _arg2117769_
                                        _rest117771_))))))))
              (__tmp118165 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118166
           gxc#current-compile-methods
           __tmp118165))))
    (define gxc#xform-identity
      (lambda (_stx117754_ . _args117755_) _stx117754_))
    (define gxc#xform-wrap-source
      (lambda (_stx117751_ _src-stx117752_)
        (let ((__tmp118167
               (let () (declare (not safe)) (gx#stx-source _src-stx117752_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx117751_ __tmp118167))))
    (define gxc#xform-apply-compile-e
      (lambda (_args117738_)
        (lambda (_stx117740_)
          (if (let () (declare (not safe)) (null? _args117738_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx117740_))
              (let ((_arg1117742_ (car _args117738_))
                    (_rest117744_ (cdr _args117738_)))
                (if (let () (declare (not safe)) (null? _rest117744_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx117740_ _arg1117742_))
                    (let ((_arg2117747_ (car _rest117744_))
                          (_rest117749_ (cdr _rest117744_)))
                      (if (let () (declare (not safe)) (null? _rest117749_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx117740_
                             _arg1117742_
                             _arg2117747_))
                          (apply gxc#compile-e
                                 _stx117740_
                                 _arg1117742_
                                 _arg2117747_
                                 _rest117749_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx117697_ . _args117698_)
        (let* ((_g117700117710_
                (lambda (_g117701117707_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117701117707_))))
               (_g117699117735_
                (lambda (_g117701117713_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117701117713_))
                      (let ((_e117705117715_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117701117713_))))
                        (let ((_hd117704117718_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117705117715_)))
                              (_tl117703117720_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117705117715_))))
                          ((lambda (_L117723_)
                             (let* ((_forms117733_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117698_))
                                          _L117723_))
                                    (__tmp118168
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms117733_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118168
                                _stx117697_)))
                           _tl117703117720_)))
                      (let ()
                        (declare (not safe))
                        (_g117700117710_ _g117701117713_))))))
          (declare (not safe))
          (_g117699117735_ _stx117697_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx117655_ . _args117656_)
        (let* ((_g117658117668_
                (lambda (_g117659117665_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117659117665_))))
               (_g117657117694_
                (lambda (_g117659117671_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117659117671_))
                      (let ((_e117663117673_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117659117671_))))
                        (let ((_hd117662117676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117663117673_)))
                              (_tl117661117678_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117663117673_))))
                          ((lambda (_L117681_)
                             (let ((__tmp118171
                                    (lambda ()
                                      (let* ((_forms117692_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args117656_))
                                                   _L117681_))
                                             (__tmp118172
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms117692_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp118172
                                         _stx117655_))))
                                   (__tmp118169
                                    (let ((__tmp118170
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp118170 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp118171
                                gx#current-expander-phi
                                __tmp118169)))
                           _tl117661117678_)))
                      (let ()
                        (declare (not safe))
                        (_g117658117668_ _g117659117671_))))))
          (declare (not safe))
          (_g117657117694_ _stx117655_))))
    (define gxc#xform-module%
      (lambda (_stx117583_ . _args117584_)
        (let* ((_g117586117600_
                (lambda (_g117587117597_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117587117597_))))
               (_g117585117652_
                (lambda (_g117587117603_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117587117603_))
                      (let ((_e117592117605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117587117603_))))
                        (let ((_hd117591117608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117592117605_)))
                              (_tl117590117610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117592117605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117590117610_))
                              (let ((_e117595117613_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117590117610_))))
                                (let ((_hd117594117616_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117595117613_)))
                                      (_tl117593117618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117595117613_))))
                                  ((lambda (_L117621_ _L117622_)
                                     (let* ((_ctx117635_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L117622_)))
                                            (_code117637_
                                             (##structure-ref
                                              _ctx117635_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code117649_
                                             (let ((__tmp118173
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args117584_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code117637_))
                                                          (let ((_arg1117640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args117584_))
                        (_rest117642_ (cdr _args117584_)))
                    (if (let () (declare (not safe)) (null? _rest117642_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code117637_ _arg1117640_))
                        (let ((_arg2117645_ (car _rest117642_))
                              (_rest117647_ (cdr _rest117642_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest117647_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code117637_
                                 _arg1117640_
                                 _arg2117645_))
                              (apply gxc#compile-e
                                     _code117637_
                                     _arg1117640_
                                     _arg2117645_
                                     _rest117647_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp118173
                                                gx#current-expander-context
                                                _ctx117635_))))
                                       (##structure-set!
                                        _ctx117635_
                                        _code117649_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp118174
                                              (let ((__tmp118175
                                                     (let ((__tmp118176
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code117649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L117622_ __tmp118176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp118175))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp118174
                                          _stx117583_))))
                                   _tl117593117618_
                                   _hd117594117616_)))
                              (let ()
                                (declare (not safe))
                                (_g117586117600_ _g117587117603_)))))
                      (let ()
                        (declare (not safe))
                        (_g117586117600_ _g117587117603_))))))
          (declare (not safe))
          (_g117585117652_ _stx117583_))))
    (define gxc#xform-define-values%
      (lambda (_stx117504_ . _args117505_)
        (let* ((_g117507117524_
                (lambda (_g117508117521_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117508117521_))))
               (_g117506117580_
                (lambda (_g117508117527_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117508117527_))
                      (let ((_e117513117529_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117508117527_))))
                        (let ((_hd117512117532_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117513117529_)))
                              (_tl117511117534_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117513117529_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117511117534_))
                              (let ((_e117516117537_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117511117534_))))
                                (let ((_hd117515117540_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117516117537_)))
                                      (_tl117514117542_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117516117537_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117514117542_))
                                      (let ((_e117519117545_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117514117542_))))
                                        (let ((_hd117518117548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117519117545_)))
                                              (_tl117517117550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117519117545_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117517117550_))
                                              ((lambda (_L117553_ _L117554_)
                                                 (let* ((_expr117578_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117505_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117553_))
                     (let ((_arg1117569_ (car _args117505_))
                           (_rest117571_ (cdr _args117505_)))
                       (if (let () (declare (not safe)) (null? _rest117571_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117553_ _arg1117569_))
                           (let ((_arg2117574_ (car _rest117571_))
                                 (_rest117576_ (cdr _rest117571_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117576_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117553_
                                    _arg1117569_
                                    _arg2117574_))
                                 (apply gxc#compile-e
                                        _L117553_
                                        _arg1117569_
                                        _arg2117574_
                                        _rest117576_)))))))
                (__tmp118177
                 (let ((__tmp118178
                        (let ((__tmp118179
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117578_ '()))))
                          (declare (not safe))
                          (cons _L117554_ __tmp118179))))
                   (declare (not safe))
                   (cons '%#define-values __tmp118178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118177
                                                    _stx117504_)))
                                               _hd117518117548_
                                               _hd117515117540_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117507117524_
                                                 _g117508117527_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117507117524_ _g117508117527_)))))
                              (let ()
                                (declare (not safe))
                                (_g117507117524_ _g117508117527_)))))
                      (let ()
                        (declare (not safe))
                        (_g117507117524_ _g117508117527_))))))
          (declare (not safe))
          (_g117506117580_ _stx117504_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx117424_ . _args117425_)
        (let* ((_g117427117444_
                (lambda (_g117428117441_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117428117441_))))
               (_g117426117501_
                (lambda (_g117428117447_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117428117447_))
                      (let ((_e117433117449_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117428117447_))))
                        (let ((_hd117432117452_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117433117449_)))
                              (_tl117431117454_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117433117449_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117431117454_))
                              (let ((_e117436117457_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117431117454_))))
                                (let ((_hd117435117460_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117436117457_)))
                                      (_tl117434117462_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117436117457_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117434117462_))
                                      (let ((_e117439117465_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117434117462_))))
                                        (let ((_hd117438117468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117439117465_)))
                                              (_tl117437117470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117439117465_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117437117470_))
                                              ((lambda (_L117473_ _L117474_)
                                                 (let ((__tmp118182
                                                        (lambda ()
                                                          (let* ((_expr117499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args117425_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L117473_))
                              (let ((_arg1117490_ (car _args117425_))
                                    (_rest117492_ (cdr _args117425_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest117492_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L117473_
                                       _arg1117490_))
                                    (let ((_arg2117495_ (car _rest117492_))
                                          (_rest117497_ (cdr _rest117492_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest117497_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L117473_
                                             _arg1117490_
                                             _arg2117495_))
                                          (apply gxc#compile-e
                                                 _L117473_
                                                 _arg1117490_
                                                 _arg2117495_
                                                 _rest117497_)))))))
                         (__tmp118183
                          (let ((__tmp118184
                                 (let ((__tmp118185
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr117499_ '()))))
                                   (declare (not safe))
                                   (cons _L117474_ __tmp118185))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp118184))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp118183 _stx117424_))))
               (__tmp118180
                (let ((__tmp118181 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp118181 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp118182
                                                    gx#current-expander-phi
                                                    __tmp118180)))
                                               _hd117438117468_
                                               _hd117435117460_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117427117444_
                                                 _g117428117447_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117427117444_ _g117428117447_)))))
                              (let ()
                                (declare (not safe))
                                (_g117427117444_ _g117428117447_)))))
                      (let ()
                        (declare (not safe))
                        (_g117427117444_ _g117428117447_))))))
          (declare (not safe))
          (_g117426117501_ _stx117424_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx117345_ . _args117346_)
        (let* ((_g117348117365_
                (lambda (_g117349117362_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117349117362_))))
               (_g117347117421_
                (lambda (_g117349117368_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117349117368_))
                      (let ((_e117354117370_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117349117368_))))
                        (let ((_hd117353117373_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117354117370_)))
                              (_tl117352117375_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117354117370_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117352117375_))
                              (let ((_e117357117378_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117352117375_))))
                                (let ((_hd117356117381_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117357117378_)))
                                      (_tl117355117383_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117357117378_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117355117383_))
                                      (let ((_e117360117386_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117355117383_))))
                                        (let ((_hd117359117389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117360117386_)))
                                              (_tl117358117391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117360117386_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117358117391_))
                                              ((lambda (_L117394_ _L117395_)
                                                 (let* ((_expr117419_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117346_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117394_))
                     (let ((_arg1117410_ (car _args117346_))
                           (_rest117412_ (cdr _args117346_)))
                       (if (let () (declare (not safe)) (null? _rest117412_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117394_ _arg1117410_))
                           (let ((_arg2117415_ (car _rest117412_))
                                 (_rest117417_ (cdr _rest117412_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117417_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117394_
                                    _arg1117410_
                                    _arg2117415_))
                                 (apply gxc#compile-e
                                        _L117394_
                                        _arg1117410_
                                        _arg2117415_
                                        _rest117417_)))))))
                (__tmp118186
                 (let ((__tmp118187
                        (let ((__tmp118188
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117419_ '()))))
                          (declare (not safe))
                          (cons _L117395_ __tmp118188))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp118187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118186
                                                    _stx117345_)))
                                               _hd117359117389_
                                               _hd117356117381_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117348117365_
                                                 _g117349117368_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117348117365_ _g117349117368_)))))
                              (let ()
                                (declare (not safe))
                                (_g117348117365_ _g117349117368_)))))
                      (let ()
                        (declare (not safe))
                        (_g117348117365_ _g117349117368_))))))
          (declare (not safe))
          (_g117347117421_ _stx117345_))))
    (define gxc#xform-lambda%
      (lambda (_stx117288_ . _args117289_)
        (let* ((_g117291117305_
                (lambda (_g117292117302_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117292117302_))))
               (_g117290117342_
                (lambda (_g117292117308_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117292117308_))
                      (let ((_e117297117310_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117292117308_))))
                        (let ((_hd117296117313_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117297117310_)))
                              (_tl117295117315_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117297117310_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117295117315_))
                              (let ((_e117300117318_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117295117315_))))
                                (let ((_hd117299117321_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117300117318_)))
                                      (_tl117298117323_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117300117318_))))
                                  ((lambda (_L117326_ _L117327_)
                                     (let* ((_body117340_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args117289_))
                                                  _L117326_))
                                            (__tmp118189
                                             (let ((__tmp118190
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L117327_
                                                            _body117340_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp118190))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp118189
                                        _stx117288_)))
                                   _tl117298117323_
                                   _hd117299117321_)))
                              (let ()
                                (declare (not safe))
                                (_g117291117305_ _g117292117308_)))))
                      (let ()
                        (declare (not safe))
                        (_g117291117305_ _g117292117308_))))))
          (declare (not safe))
          (_g117290117342_ _stx117288_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx117201_ . _args117202_)
        (letrec ((_clause-e117204_
                  (lambda (_clause117245_)
                    (let* ((_g117247117258_
                            (lambda (_g117248117255_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g117248117255_))))
                           (_g117246117285_
                            (lambda (_g117248117261_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g117248117261_))
                                  (let ((_e117253117263_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g117248117261_))))
                                    (let ((_hd117252117266_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117253117263_)))
                                          (_tl117251117268_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117253117263_))))
                                      ((lambda (_L117271_ _L117272_)
                                         (let ((_body117283_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args117202_))
                                                     _L117271_)))
                                           (declare (not safe))
                                           (cons _L117272_ _body117283_)))
                                       _tl117251117268_
                                       _hd117252117266_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117247117258_ _g117248117261_))))))
                      (declare (not safe))
                      (_g117246117285_ _clause117245_)))))
          (let* ((_g117206117216_
                  (lambda (_g117207117213_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g117207117213_))))
                 (_g117205117242_
                  (lambda (_g117207117219_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g117207117219_))
                        (let ((_e117211117221_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g117207117219_))))
                          (let ((_hd117210117224_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117211117221_)))
                                (_tl117209117226_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117211117221_))))
                            ((lambda (_L117229_)
                               (let* ((_clauses117240_
                                       (map _clause-e117204_ _L117229_))
                                      (__tmp118191
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses117240_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp118191
                                  _stx117201_)))
                             _tl117209117226_)))
                        (let ()
                          (declare (not safe))
                          (_g117206117216_ _g117207117219_))))))
            (declare (not safe))
            (_g117205117242_ _stx117201_)))))
    (define gxc#xform-let-values%
      (lambda (_stx116995_ . _args116996_)
        (let* ((_g116998117031_
                (lambda (_g116999117028_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116999117028_))))
               (_g116997117198_
                (lambda (_g116999117034_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116999117034_))
                      (let ((_e117006117036_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116999117034_))))
                        (let ((_hd117005117039_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117006117036_)))
                              (_tl117004117041_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117006117036_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117004117041_))
                              (let ((_e117009117044_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117004117041_))))
                                (let ((_hd117008117047_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117009117044_)))
                                      (_tl117007117049_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117009117044_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd117008117047_))
                                      (let ((_g118192_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd117008117047_
                                                '0))))
                                        (begin
                                          (let ((_g118193_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118192_)
                                                       (##vector-length
                                                        _g118192_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118193_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118193_)))
                                          (let ((_target117010117052_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118192_ 0)))
                                                (_tl117012117054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118192_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117012117054_))
                                                (letrec ((_loop117013117057_
                                                          (lambda (_hd117011117060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117017117062_
                           _hd117018117064_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117011117060_))
                        (let ((_e117014117067_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117011117060_))))
                          (let ((_lp-hd117015117070_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117014117067_)))
                                (_lp-tl117016117072_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117014117067_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117015117070_))
                                (let ((_e117023117075_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117015117070_))))
                                  (let ((_hd117022117078_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e117023117075_)))
                                        (_tl117021117080_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e117023117075_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117021117080_))
                                        (let ((_e117026117083_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117021117080_))))
                                          (let ((_hd117025117086_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117026117083_)))
                                                (_tl117024117088_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117026117083_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117024117088_))
                                                (let ((__tmp118206
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117025117086_
                                                               _expr117017117062_)))
                                                      (__tmp118205
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117022117078_
                                                               _hd117018117064_))))
                                                  (declare (not safe))
                                                  (_loop117013117057_
                                                   _lp-tl117016117072_
                                                   __tmp118206
                                                   __tmp118205))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116998117031_
                                                   _g116999117034_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g116998117031_ _g116999117034_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116998117031_ _g116999117034_)))))
                        (let ((_expr117019117091_ (reverse _expr117017117062_))
                              (_hd117020117093_ (reverse _hd117018117064_)))
                          ((lambda (_L117096_ _L117097_ _L117098_ _L117099_)
                             (let* ((_g117118117134_
                                     (lambda (_g117119117131_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g117119117131_))))
                                    (_g117117117188_
                                     (lambda (_g117119117137_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g117119117137_))
                                           (let ((_g118194_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g117119117137_
                                                     '0))))
                                             (begin
                                               (let ((_g118195_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g118194_)
                                                            (##vector-length
                                                             _g118194_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g118195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g118195_)))
                                               (let ((_target117121117139_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118194_
                                                         0)))
                                                     (_tl117123117141_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118194_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117123117141_))
                                                     (letrec ((_loop117124117144_
                                                               (lambda (_hd117122117147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr117128117149_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd117122117147_))
                             (let ((_e117125117152_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd117122117147_))))
                               (let ((_lp-hd117126117155_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e117125117152_)))
                                     (_lp-tl117127117157_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e117125117152_))))
                                 (let ((__tmp118202
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd117126117155_
                                                _expr117128117149_))))
                                   (declare (not safe))
                                   (_loop117124117144_
                                    _lp-tl117127117157_
                                    __tmp118202))))
                             (let ((_expr117129117160_
                                    (reverse _expr117128117149_)))
                               ((lambda (_L117163_)
                                  (let ()
                                    (let* ((_body117176_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args116996_))
                                                 _L117096_))
                                           (__tmp118196
                                            (let ((__tmp118197
                                                   (let ((__tmp118198
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L117163_
                                                               _L117098_))
                                                            (let ((__tmp118199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g117177117181_
                                    _g117178117183_
                                    _g117179117185_)
                             (let ((__tmp118200
                                    (let ((__tmp118201
                                           (let ()
                                             (declare (not safe))
                                             (cons _g117177117181_ '()))))
                                      (declare (not safe))
                                      (cons _g117178117183_ __tmp118201))))
                               (declare (not safe))
                               (cons __tmp118200 _g117179117185_)))))
                      (declare (not safe))
                      (foldr2 __tmp118199 '() _L117163_ _L117098_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp118198
                                                           _body117176_))))
                                              (declare (not safe))
                                              (cons _L117099_ __tmp118197))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp118196
                                       _stx116995_))))
                                _expr117129117160_))))))
               (let ()
                 (declare (not safe))
                 (_loop117124117144_ _target117121117139_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g117118117134_
                                                        _g117119117137_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117118117134_
                                              _g117119117137_)))))
                                    (__tmp118203
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116996_))
                                          (let ((__tmp118204
                                                 (lambda (_g117190117193_
                                                          _g117191117195_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g117190117193_
                                                           _g117191117195_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp118204
                                                    '()
                                                    _L117097_)))))
                               (declare (not safe))
                               (_g117117117188_ __tmp118203)))
                           _tl117007117049_
                           _expr117019117091_
                           _hd117020117093_
                           _hd117005117039_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117013117057_
                                                     _target117010117052_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116998117031_
                                                   _g116999117034_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116998117031_ _g116999117034_)))))
                              (let ()
                                (declare (not safe))
                                (_g116998117031_ _g116999117034_)))))
                      (let ()
                        (declare (not safe))
                        (_g116998117031_ _g116999117034_))))))
          (declare (not safe))
          (_g116997117198_ _stx116995_))))
    (define gxc#xform-operands
      (lambda (_stx116951_ . _args116952_)
        (let* ((_g116954116965_
                (lambda (_g116955116962_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116955116962_))))
               (_g116953116992_
                (lambda (_g116955116968_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116955116968_))
                      (let ((_e116960116970_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116955116968_))))
                        (let ((_hd116959116973_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116960116970_)))
                              (_tl116958116975_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116960116970_))))
                          ((lambda (_L116978_ _L116979_)
                             (let* ((_rands116990_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116952_))
                                          _L116978_))
                                    (__tmp118207
                                     (let ()
                                       (declare (not safe))
                                       (cons _L116979_ _rands116990_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118207
                                _stx116951_)))
                           _tl116958116975_
                           _hd116959116973_)))
                      (let ()
                        (declare (not safe))
                        (_g116954116965_ _g116955116968_))))))
          (declare (not safe))
          (_g116953116992_ _stx116951_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx116872_ . _args116873_)
        (let* ((_g116875116892_
                (lambda (_g116876116889_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116876116889_))))
               (_g116874116948_
                (lambda (_g116876116895_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116876116895_))
                      (let ((_e116881116897_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116876116895_))))
                        (let ((_hd116880116900_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116881116897_)))
                              (_tl116879116902_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116881116897_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116879116902_))
                              (let ((_e116884116905_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116879116902_))))
                                (let ((_hd116883116908_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116884116905_)))
                                      (_tl116882116910_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116884116905_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116882116910_))
                                      (let ((_e116887116913_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116882116910_))))
                                        (let ((_hd116886116916_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116887116913_)))
                                              (_tl116885116918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116887116913_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116885116918_))
                                              ((lambda (_L116921_ _L116922_)
                                                 (let* ((_expr116946_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116873_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116921_))
                     (let ((_arg1116937_ (car _args116873_))
                           (_rest116939_ (cdr _args116873_)))
                       (if (let () (declare (not safe)) (null? _rest116939_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116921_ _arg1116937_))
                           (let ((_arg2116942_ (car _rest116939_))
                                 (_rest116944_ (cdr _rest116939_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116944_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116921_
                                    _arg1116937_
                                    _arg2116942_))
                                 (apply gxc#compile-e
                                        _L116921_
                                        _arg1116937_
                                        _arg2116942_
                                        _rest116944_)))))))
                (__tmp118208
                 (let ((__tmp118209
                        (let ((__tmp118210
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116946_ '()))))
                          (declare (not safe))
                          (cons _L116922_ __tmp118210))))
                   (declare (not safe))
                   (cons '%#set! __tmp118209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118208
                                                    _stx116872_)))
                                               _hd116886116916_
                                               _hd116883116908_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116875116892_
                                                 _g116876116895_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116875116892_ _g116876116895_)))))
                              (let ()
                                (declare (not safe))
                                (_g116875116892_ _g116876116895_)))))
                      (let ()
                        (declare (not safe))
                        (_g116875116892_ _g116876116895_))))))
          (declare (not safe))
          (_g116874116948_ _stx116872_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx116803_)
        (let* ((_g116805116822_
                (lambda (_g116806116819_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116806116819_))))
               (_g116804116869_
                (lambda (_g116806116825_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116806116825_))
                      (let ((_e116811116827_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116806116825_))))
                        (let ((_hd116810116830_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116811116827_)))
                              (_tl116809116832_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116811116827_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116809116832_))
                              (let ((_e116814116835_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116809116832_))))
                                (let ((_hd116813116838_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116814116835_)))
                                      (_tl116812116840_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116814116835_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116812116840_))
                                      (let ((_e116817116843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116812116840_))))
                                        (let ((_hd116816116846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116817116843_)))
                                              (_tl116815116848_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116817116843_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116815116848_))
                                              ((lambda (_L116851_ _L116852_)
                                                 (let ((_sym116867_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116852_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym116867_))
                                                   (let ((__tmp118211
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118211
                                                      _sym116867_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L116851_))))
                                               _hd116816116846_
                                               _hd116813116838_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116805116822_
                                                 _g116806116825_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116805116822_ _g116806116825_)))))
                              (let ()
                                (declare (not safe))
                                (_g116805116822_ _g116806116825_)))))
                      (let ()
                        (declare (not safe))
                        (_g116805116822_ _g116806116825_))))))
          (declare (not safe))
          (_g116804116869_ _stx116803_))))
    (define gxc#collect-methods-call%
      (lambda (_stx116357_)
        (let* ((___stx117901117902_ _stx116357_)
               (_g116361116463_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx117901117902_)))))
          (let ((___kont117903117904_
                 (lambda (_L116753_ _L116754_ _L116755_ _L116756_ _L116757_)
                   (let ((__tmp118212
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116754_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118212))))
                (___kont117905117906_
                 (lambda (_L116579_ _L116580_ _L116581_ _L116582_)
                   (let ((__tmp118213
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116579_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118213))))
                (___kont117907117908_ (lambda () '#!void)))
            (let ((___match118036118037_
                   (lambda (_e116370116625_
                            _hd116369116628_
                            _tl116368116630_
                            _e116373116633_
                            _hd116372116636_
                            _tl116371116638_
                            _e116376116641_
                            _hd116375116644_
                            _tl116374116646_
                            _e116379116649_
                            _hd116378116652_
                            _tl116377116654_
                            _e116382116657_
                            _hd116381116660_
                            _tl116380116662_
                            _e116385116665_
                            _hd116384116668_
                            _tl116383116670_
                            _e116388116673_
                            _hd116387116676_
                            _tl116386116678_
                            _e116391116681_
                            _hd116390116684_
                            _tl116389116686_
                            _e116394116689_
                            _hd116393116692_
                            _tl116392116694_
                            _e116397116697_
                            _hd116396116700_
                            _tl116395116702_
                            _e116400116705_
                            _hd116399116708_
                            _tl116398116710_
                            _e116403116713_
                            _hd116402116716_
                            _tl116401116718_
                            _e116406116721_
                            _hd116405116724_
                            _tl116404116726_
                            _e116409116729_
                            _hd116408116732_
                            _tl116407116734_
                            _e116412116737_
                            _hd116411116740_
                            _tl116410116742_
                            _e116415116745_
                            _hd116414116748_
                            _tl116413116750_)
                     (let ((_L116753_ _hd116414116748_)
                           (_L116754_ _hd116405116724_)
                           (_L116755_ _hd116396116700_)
                           (_L116756_ _hd116387116676_)
                           (_L116757_ _hd116378116652_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L116757_
                              'bind-method!))
                           (___kont117903117904_
                            _L116753_
                            _L116754_
                            _L116755_
                            _L116756_
                            _L116757_)
                           (___kont117907117908_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx117901117902_))
                  (let ((_e116370116625_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx117901117902_))))
                    (let ((_tl116368116630_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116370116625_)))
                          (_hd116369116628_
                           (let ()
                             (declare (not safe))
                             (##car _e116370116625_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116368116630_))
                          (let ((_e116373116633_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116368116630_))))
                            (let ((_tl116371116638_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116373116633_)))
                                  (_hd116372116636_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116373116633_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116372116636_))
                                  (let ((_e116376116641_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116372116636_))))
                                    (let ((_tl116374116646_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116376116641_)))
                                          (_hd116375116644_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116376116641_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd116375116644_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd116375116644_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116374116646_))
                                                  (let ((_e116379116649_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116374116646_))))
                                                    (let ((_tl116377116654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116379116649_)))
                                                          (_hd116378116652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116379116649_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116377116654_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116371116638_))
                      (let ((_e116382116657_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116371116638_))))
                        (let ((_tl116380116662_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116382116657_)))
                              (_hd116381116660_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116382116657_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd116381116660_))
                              (let ((_e116385116665_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd116381116660_))))
                                (let ((_tl116383116670_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116385116665_)))
                                      (_hd116384116668_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116385116665_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd116384116668_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd116384116668_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl116383116670_))
                                              (let ((_e116388116673_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl116383116670_))))
                                                (let ((_tl116386116678_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e116388116673_)))
                                                      (_hd116387116676_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e116388116673_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116386116678_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl116380116662_))
                                                          (let ((_e116391116681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl116380116662_))))
                    (let ((_tl116389116686_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116391116681_)))
                          (_hd116390116684_
                           (let ()
                             (declare (not safe))
                             (##car _e116391116681_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd116390116684_))
                          (let ((_e116394116689_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd116390116684_))))
                            (let ((_tl116392116694_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116394116689_)))
                                  (_hd116393116692_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116394116689_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd116393116692_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd116393116692_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl116392116694_))
                                          (let ((_e116397116697_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl116392116694_))))
                                            (let ((_tl116395116702_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116397116697_)))
                                                  (_hd116396116700_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116397116697_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl116395116702_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl116389116686_))
                                                      (let ((_e116400116705_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl116389116686_))))
                (let ((_tl116398116710_
                       (let () (declare (not safe)) (##cdr _e116400116705_)))
                      (_hd116399116708_
                       (let () (declare (not safe)) (##car _e116400116705_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd116399116708_))
                      (let ((_e116403116713_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd116399116708_))))
                        (let ((_tl116401116718_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116403116713_)))
                              (_hd116402116716_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116403116713_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd116402116716_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd116402116716_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116401116718_))
                                      (let ((_e116406116721_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116401116718_))))
                                        (let ((_tl116404116726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116406116721_)))
                                              (_hd116405116724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116406116721_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116404116726_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116398116710_))
                                                  (let ((_e116409116729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116398116710_))))
                                                    (let ((_tl116407116734_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116409116729_)))
                                                          (_hd116408116732_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116409116729_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd116408116732_))
                                                          (let ((_e116412116737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd116408116732_))))
                    (let ((_tl116410116742_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116412116737_)))
                          (_hd116411116740_
                           (let ()
                             (declare (not safe))
                             (##car _e116412116737_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd116411116740_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd116411116740_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl116410116742_))
                                  (let ((_e116415116745_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl116410116742_))))
                                    (let ((_tl116413116750_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116415116745_)))
                                          (_hd116414116748_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116415116745_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl116413116750_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116407116734_))
                                              (___match118036118037_
                                               _e116370116625_
                                               _hd116369116628_
                                               _tl116368116630_
                                               _e116373116633_
                                               _hd116372116636_
                                               _tl116371116638_
                                               _e116376116641_
                                               _hd116375116644_
                                               _tl116374116646_
                                               _e116379116649_
                                               _hd116378116652_
                                               _tl116377116654_
                                               _e116382116657_
                                               _hd116381116660_
                                               _tl116380116662_
                                               _e116385116665_
                                               _hd116384116668_
                                               _tl116383116670_
                                               _e116388116673_
                                               _hd116387116676_
                                               _tl116386116678_
                                               _e116391116681_
                                               _hd116390116684_
                                               _tl116389116686_
                                               _e116394116689_
                                               _hd116393116692_
                                               _tl116392116694_
                                               _e116397116697_
                                               _hd116396116700_
                                               _tl116395116702_
                                               _e116400116705_
                                               _hd116399116708_
                                               _tl116398116710_
                                               _e116403116713_
                                               _hd116402116716_
                                               _tl116401116718_
                                               _e116406116721_
                                               _hd116405116724_
                                               _tl116404116726_
                                               _e116409116729_
                                               _hd116408116732_
                                               _tl116407116734_
                                               _e116412116737_
                                               _hd116411116740_
                                               _tl116410116742_
                                               _e116415116745_
                                               _hd116414116748_
                                               _tl116413116750_)
                                              (___kont117907117908_))
                                          (___kont117907117908_))))
                                  (___kont117907117908_))
                              (___kont117907117908_))
                          (___kont117907117908_))))
                  (___kont117907117908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116398116710_))
                                                      (if (let ((__tmp118214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118214 'bind-method!))
                  (let ((_L116579_ _hd116405116724_)
                        (_L116580_ _hd116396116700_)
                        (_L116581_ _hd116387116676_)
                        (_L116582_ _hd116378116652_))
                    (___kont117905117906_
                     _L116579_
                     _L116580_
                     _L116581_
                     _L116582_))
                  (___kont117907117908_))
              (___kont117907117908_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117907117908_))))
                                      (___kont117907117908_))
                                  (___kont117907117908_))
                              (___kont117907117908_))))
                      (___kont117907117908_))))
              (___kont117907117908_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117907117908_))))
                                          (___kont117907117908_))
                                      (___kont117907117908_))
                                  (___kont117907117908_))))
                          (___kont117907117908_))))
                  (___kont117907117908_))
              (___kont117907117908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117907117908_))
                                          (___kont117907117908_))
                                      (___kont117907117908_))))
                              (___kont117907117908_))))
                      (___kont117907117908_))
                  (___kont117907117908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117907117908_))
                                              (___kont117907117908_))
                                          (___kont117907117908_))))
                                  (___kont117907117908_))))
                          (___kont117907117908_))))
                  (___kont117907117908_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx116304_ _id116305_ _new-id116306_)
        (let* ((_g116308116321_
                (lambda (_g116309116318_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116309116318_))))
               (_g116307116354_
                (lambda (_g116309116324_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116309116324_))
                      (let ((_e116313116326_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116309116324_))))
                        (let ((_hd116312116329_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116313116326_)))
                              (_tl116311116331_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116313116326_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116311116331_))
                              (let ((_e116316116334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116311116331_))))
                                (let ((_hd116315116337_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116316116334_)))
                                      (_tl116314116339_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116316116334_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116314116339_))
                                      ((lambda (_L116342_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L116342_
                                                _id116305_))
                                             (let ((__tmp118215
                                                    (let ((__tmp118216
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id116306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp118216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118215
                                                _stx116304_))
                                             _stx116304_))
                                       _hd116315116337_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116308116321_ _g116309116324_)))))
                              (let ()
                                (declare (not safe))
                                (_g116308116321_ _g116309116324_)))))
                      (let ()
                        (declare (not safe))
                        (_g116308116321_ _g116309116324_))))))
          (declare (not safe))
          (_g116307116354_ _stx116304_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx116245_ _subst116246_)
        (let* ((_g116248116261_
                (lambda (_g116249116258_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116249116258_))))
               (_g116247116301_
                (lambda (_g116249116264_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116249116264_))
                      (let ((_e116253116266_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116249116264_))))
                        (let ((_hd116252116269_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116253116266_)))
                              (_tl116251116271_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116253116266_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116251116271_))
                              (let ((_e116256116274_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116251116271_))))
                                (let ((_hd116255116277_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116256116274_)))
                                      (_tl116254116279_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116256116274_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116254116279_))
                                      ((lambda (_L116282_)
                                         (let ((_$e116296_
                                                (let ((__tmp118217
                                                       (lambda (_sub116294_)
                                                         (let ((__tmp118218
                                                                (car _sub116294_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L116282_
                                                            __tmp118218)))))
                                                  (declare (not safe))
                                                  (find __tmp118217
                                                        _subst116246_))))
                                           (if _$e116296_
                                               ((lambda (_sub116299_)
                                                  (let ((__tmp118219
                                                         (let ((__tmp118220
                                                                (let ((__tmp118221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub116299_)))
                          (declare (not safe))
                          (cons __tmp118221 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118219
                                                     _stx116245_)))
                                                _$e116296_)
                                               _stx116245_)))
                                       _hd116255116277_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116248116261_ _g116249116264_)))))
                              (let ()
                                (declare (not safe))
                                (_g116248116261_ _g116249116264_)))))
                      (let ()
                        (declare (not safe))
                        (_g116248116261_ _g116249116264_))))))
          (declare (not safe))
          (_g116247116301_ _stx116245_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx116173_ _id116174_ _new-id116175_)
        (let* ((_g116177116194_
                (lambda (_g116178116191_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116178116191_))))
               (_g116176116242_
                (lambda (_g116178116197_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116178116197_))
                      (let ((_e116183116199_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116178116197_))))
                        (let ((_hd116182116202_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116183116199_)))
                              (_tl116181116204_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116183116199_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116181116204_))
                              (let ((_e116186116207_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116181116204_))))
                                (let ((_hd116185116210_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116186116207_)))
                                      (_tl116184116212_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116186116207_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116184116212_))
                                      (let ((_e116189116215_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116184116212_))))
                                        (let ((_hd116188116218_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116189116215_)))
                                              (_tl116187116220_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116189116215_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116187116220_))
                                              ((lambda (_L116223_ _L116224_)
                                                 (let ((_new-expr116239_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L116223_
                                                           _id116174_
                                                           _new-id116175_)))
                                                       (_new-xid116240_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L116224_
                                                               _id116174_))
                                                            _new-id116175_
                                                            _L116224_)))
                                                   (let ((__tmp118222
                                                          (let ((__tmp118223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118224
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116239_ '()))))
                           (declare (not safe))
                           (cons _new-xid116240_ __tmp118224))))
                    (declare (not safe))
                    (cons '%#set! __tmp118223))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118222
                                                      _stx116173_))))
                                               _hd116188116218_
                                               _hd116185116210_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116177116194_
                                                 _g116178116197_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116177116194_ _g116178116197_)))))
                              (let ()
                                (declare (not safe))
                                (_g116177116194_ _g116178116197_)))))
                      (let ()
                        (declare (not safe))
                        (_g116177116194_ _g116178116197_))))))
          (declare (not safe))
          (_g116176116242_ _stx116173_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx116097_ _subst116098_)
        (let* ((_g116100116117_
                (lambda (_g116101116114_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116101116114_))))
               (_g116099116170_
                (lambda (_g116101116120_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116101116120_))
                      (let ((_e116106116122_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116101116120_))))
                        (let ((_hd116105116125_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116106116122_)))
                              (_tl116104116127_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116106116122_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116104116127_))
                              (let ((_e116109116130_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116104116127_))))
                                (let ((_hd116108116133_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116109116130_)))
                                      (_tl116107116135_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116109116130_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116107116135_))
                                      (let ((_e116112116138_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116107116135_))))
                                        (let ((_hd116111116141_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116112116138_)))
                                              (_tl116110116143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116112116138_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116110116143_))
                                              ((lambda (_L116146_ _L116147_)
                                                 (let ((_new-expr116167_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L116146_
                                                           _subst116098_)))
                                                       (_new-xid116168_
                                                        (let ((_$e116164_
                                                               (let ((__tmp118225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub116162_)
                                (let ((__tmp118226 (car _sub116162_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L116147_
                                   __tmp118226)))))
                         (declare (not safe))
                         (find __tmp118225 _subst116098_))))
                  (if _$e116164_ (cdr _$e116164_) _L116147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118227
                                                          (let ((__tmp118228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118229
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116167_ '()))))
                           (declare (not safe))
                           (cons _new-xid116168_ __tmp118229))))
                    (declare (not safe))
                    (cons '%#set! __tmp118228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118227
                                                      _stx116097_))))
                                               _hd116111116141_
                                               _hd116108116133_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116100116117_
                                                 _g116101116120_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116100116117_ _g116101116120_)))))
                              (let ()
                                (declare (not safe))
                                (_g116100116117_ _g116101116120_)))))
                      (let ()
                        (declare (not safe))
                        (_g116100116117_ _g116101116120_))))))
          (declare (not safe))
          (_g116099116170_ _stx116097_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx116043_ _ht116044_)
        (let* ((_g116046116059_
                (lambda (_g116047116056_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116047116056_))))
               (_g116045116094_
                (lambda (_g116047116062_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116047116062_))
                      (let ((_e116051116064_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116047116062_))))
                        (let ((_hd116050116067_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116051116064_)))
                              (_tl116049116069_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116051116064_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116049116069_))
                              (let ((_e116054116072_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116049116069_))))
                                (let ((_hd116053116075_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116054116072_)))
                                      (_tl116052116077_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116054116072_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116052116077_))
                                      ((lambda (_L116080_)
                                         (let ((_eid116092_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L116080_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht116044_
                                            _eid116092_
                                            1+
                                            '0)))
                                       _hd116053116075_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116046116059_ _g116047116062_)))))
                              (let ()
                                (declare (not safe))
                                (_g116046116059_ _g116047116062_)))))
                      (let ()
                        (declare (not safe))
                        (_g116046116059_ _g116047116062_))))))
          (declare (not safe))
          (_g116045116094_ _stx116043_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx115973_ _ht115974_)
        (let* ((_g115976115993_
                (lambda (_g115977115990_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115977115990_))))
               (_g115975116040_
                (lambda (_g115977115996_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115977115996_))
                      (let ((_e115982115998_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115977115996_))))
                        (let ((_hd115981116001_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115982115998_)))
                              (_tl115980116003_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115982115998_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115980116003_))
                              (let ((_e115985116006_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115980116003_))))
                                (let ((_hd115984116009_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115985116006_)))
                                      (_tl115983116011_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115985116006_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115983116011_))
                                      (let ((_e115988116014_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115983116011_))))
                                        (let ((_hd115987116017_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115988116014_)))
                                              (_tl115986116019_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115988116014_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115986116019_))
                                              ((lambda (_L116022_ _L116023_)
                                                 (let ((_eid116038_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116023_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht115974_
                                                      _eid116038_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L116022_
                                                      _ht115974_))))
                                               _hd115987116017_
                                               _hd115984116009_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115976115993_
                                                 _g115977115996_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115976115993_ _g115977115996_)))))
                              (let ()
                                (declare (not safe))
                                (_g115976115993_ _g115977115996_)))))
                      (let ()
                        (declare (not safe))
                        (_g115976115993_ _g115977115996_))))))
          (declare (not safe))
          (_g115975116040_ _stx115973_))))
    (define gxc#find-body%
      (lambda (_stx115886_ _arg115887_)
        (let* ((_g115889115908_
                (lambda (_g115890115905_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115890115905_))))
               (_g115888115970_
                (lambda (_g115890115911_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115890115911_))
                      (let ((_e115894115913_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115890115911_))))
                        (let ((_hd115893115916_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115894115913_)))
                              (_tl115892115918_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115894115913_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115892115918_))
                              (let ((_g118230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115892115918_
                                        '0))))
                                (begin
                                  (let ((_g118231_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118230_)
                                               (##vector-length _g118230_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118231_ 2)))
                                        (error "Context expects 2 values"
                                               _g118231_)))
                                  (let ((_target115895115921_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118230_ 0)))
                                        (_tl115897115923_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118230_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115897115923_))
                                        (letrec ((_loop115898115926_
                                                  (lambda (_hd115896115929_
                                                           _expr115902115931_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115896115929_))
                                                        (let ((_e115899115934_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115896115929_))))
                  (let ((_lp-hd115900115937_
                         (let () (declare (not safe)) (##car _e115899115934_)))
                        (_lp-tl115901115939_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115899115934_))))
                    (let ((__tmp118235
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd115900115937_ _expr115902115931_))))
                      (declare (not safe))
                      (_loop115898115926_ _lp-tl115901115939_ __tmp118235))))
                (let ((_expr115903115942_ (reverse _expr115902115931_)))
                  ((lambda (_L115945_)
                     (let ((__tmp118234
                            (lambda (_g115958115960_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115958115960_
                                 _arg115887_))))
                           (__tmp118232
                            (let ((__tmp118233
                                   (lambda (_g115962115965_ _g115963115967_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115962115965_
                                             _g115963115967_)))))
                              (declare (not safe))
                              (foldr1 __tmp118233 '() _L115945_))))
                       (declare (not safe))
                       (ormap1 __tmp118234 __tmp118232)))
                   _expr115903115942_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115898115926_
                                             _target115895115921_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115889115908_
                                           _g115890115911_))))))
                              (let ()
                                (declare (not safe))
                                (_g115889115908_ _g115890115911_)))))
                      (let ()
                        (declare (not safe))
                        (_g115889115908_ _g115890115911_))))))
          (declare (not safe))
          (_g115888115970_ _stx115886_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx115818_ _arg115819_)
        (let* ((_g115821115838_
                (lambda (_g115822115835_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115822115835_))))
               (_g115820115883_
                (lambda (_g115822115841_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115822115841_))
                      (let ((_e115827115843_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115822115841_))))
                        (let ((_hd115826115846_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115827115843_)))
                              (_tl115825115848_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115827115843_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115825115848_))
                              (let ((_e115830115851_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115825115848_))))
                                (let ((_hd115829115854_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115830115851_)))
                                      (_tl115828115856_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115830115851_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115828115856_))
                                      (let ((_e115833115859_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115828115856_))))
                                        (let ((_hd115832115862_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115833115859_)))
                                              (_tl115831115864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115833115859_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115831115864_))
                                              ((lambda (_L115867_ _L115868_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115867_
                                                    _arg115819_)))
                                               _hd115832115862_
                                               _hd115829115854_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115821115838_
                                                 _g115822115841_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115821115838_ _g115822115841_)))))
                              (let ()
                                (declare (not safe))
                                (_g115821115838_ _g115822115841_)))))
                      (let ()
                        (declare (not safe))
                        (_g115821115838_ _g115822115841_))))))
          (declare (not safe))
          (_g115820115883_ _stx115818_))))
    (define gxc#find-lambda%
      (lambda (_stx115750_ _arg115751_)
        (let* ((_g115753115770_
                (lambda (_g115754115767_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115754115767_))))
               (_g115752115815_
                (lambda (_g115754115773_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115754115773_))
                      (let ((_e115759115775_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115754115773_))))
                        (let ((_hd115758115778_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115759115775_)))
                              (_tl115757115780_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115759115775_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115757115780_))
                              (let ((_e115762115783_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115757115780_))))
                                (let ((_hd115761115786_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115762115783_)))
                                      (_tl115760115788_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115762115783_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115760115788_))
                                      (let ((_e115765115791_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115760115788_))))
                                        (let ((_hd115764115794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115765115791_)))
                                              (_tl115763115796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115765115791_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115763115796_))
                                              ((lambda (_L115799_ _L115800_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115799_
                                                    _arg115751_)))
                                               _hd115764115794_
                                               _hd115761115786_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115753115770_
                                                 _g115754115773_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115753115770_ _g115754115773_)))))
                              (let ()
                                (declare (not safe))
                                (_g115753115770_ _g115754115773_)))))
                      (let ()
                        (declare (not safe))
                        (_g115753115770_ _g115754115773_))))))
          (declare (not safe))
          (_g115752115815_ _stx115750_))))
    (define gxc#find-case-lambda%
      (lambda (_stx115632_ _arg115633_)
        (let* ((_g115635115663_
                (lambda (_g115636115660_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115636115660_))))
               (_g115634115747_
                (lambda (_g115636115666_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115636115666_))
                      (let ((_e115641115668_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115636115666_))))
                        (let ((_hd115640115671_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115641115668_)))
                              (_tl115639115673_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115641115668_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115639115673_))
                              (let ((_g118236_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115639115673_
                                        '0))))
                                (begin
                                  (let ((_g118237_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118236_)
                                               (##vector-length _g118236_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118237_ 2)))
                                        (error "Context expects 2 values"
                                               _g118237_)))
                                  (let ((_target115642115676_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118236_ 0)))
                                        (_tl115644115678_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118236_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115644115678_))
                                        (letrec ((_loop115645115681_
                                                  (lambda (_hd115643115684_
                                                           _body115649115686_
                                                           _hd115650115688_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115643115684_))
                                                        (let ((_e115646115691_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115643115684_))))
                  (let ((_lp-hd115647115694_
                         (let () (declare (not safe)) (##car _e115646115691_)))
                        (_lp-tl115648115696_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115646115691_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd115647115694_))
                        (let ((_e115655115699_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd115647115694_))))
                          (let ((_hd115654115702_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115655115699_)))
                                (_tl115653115704_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115655115699_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl115653115704_))
                                (let ((_e115658115707_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl115653115704_))))
                                  (let ((_hd115657115710_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115658115707_)))
                                        (_tl115656115712_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115658115707_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115656115712_))
                                        (let ((__tmp118242
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115657115710_
                                                       _body115649115686_)))
                                              (__tmp118241
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115654115702_
                                                       _hd115650115688_))))
                                          (declare (not safe))
                                          (_loop115645115681_
                                           _lp-tl115648115696_
                                           __tmp118242
                                           __tmp118241))
                                        (let ()
                                          (declare (not safe))
                                          (_g115635115663_ _g115636115666_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115635115663_ _g115636115666_)))))
                        (let ()
                          (declare (not safe))
                          (_g115635115663_ _g115636115666_)))))
                (let ((_body115651115715_ (reverse _body115649115686_))
                      (_hd115652115717_ (reverse _hd115650115688_)))
                  ((lambda (_L115720_ _L115721_)
                     (let ((__tmp118240
                            (lambda (_g115735115737_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115735115737_
                                 _arg115633_))))
                           (__tmp118238
                            (let ((__tmp118239
                                   (lambda (_g115739115742_ _g115740115744_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115739115742_
                                             _g115740115744_)))))
                              (declare (not safe))
                              (foldr1 __tmp118239 '() _L115720_))))
                       (declare (not safe))
                       (ormap1 __tmp118240 __tmp118238)))
                   _body115651115715_
                   _hd115652115717_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115645115681_
                                             _target115642115676_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115635115663_
                                           _g115636115666_))))))
                              (let ()
                                (declare (not safe))
                                (_g115635115663_ _g115636115666_)))))
                      (let ()
                        (declare (not safe))
                        (_g115635115663_ _g115636115666_))))))
          (declare (not safe))
          (_g115634115747_ _stx115632_))))
    (define gxc#find-let-values%
      (lambda (_stx115482_ _arg115483_)
        (let* ((_g115485115520_
                (lambda (_g115486115517_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115486115517_))))
               (_g115484115629_
                (lambda (_g115486115523_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115486115523_))
                      (let ((_e115492115525_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115486115523_))))
                        (let ((_hd115491115528_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115492115525_)))
                              (_tl115490115530_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115492115525_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115490115530_))
                              (let ((_e115495115533_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115490115530_))))
                                (let ((_hd115494115536_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115495115533_)))
                                      (_tl115493115538_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115495115533_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115494115536_))
                                      (let ((_g118243_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115494115536_
                                                '0))))
                                        (begin
                                          (let ((_g118244_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118243_)
                                                       (##vector-length
                                                        _g118243_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118244_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118244_)))
                                          (let ((_target115496115541_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118243_ 0)))
                                                (_tl115498115543_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118243_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115498115543_))
                                                (letrec ((_loop115499115546_
                                                          (lambda (_hd115497115549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115503115551_
                           _bind115504115553_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115497115549_))
                        (let ((_e115500115556_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115497115549_))))
                          (let ((_lp-hd115501115559_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115500115556_)))
                                (_lp-tl115502115561_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115500115556_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115501115559_))
                                (let ((_e115509115564_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115501115559_))))
                                  (let ((_hd115508115567_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115509115564_)))
                                        (_tl115507115569_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115509115564_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115507115569_))
                                        (let ((_e115512115572_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115507115569_))))
                                          (let ((_hd115511115575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115512115572_)))
                                                (_tl115510115577_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115512115572_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115510115577_))
                                                (let ((__tmp118249
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115511115575_
                                                               _expr115503115551_)))
                                                      (__tmp118248
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115508115567_
                                                               _bind115504115553_))))
                                                  (declare (not safe))
                                                  (_loop115499115546_
                                                   _lp-tl115502115561_
                                                   __tmp118249
                                                   __tmp118248))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115485115520_
                                                   _g115486115523_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115485115520_ _g115486115523_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115485115520_ _g115486115523_)))))
                        (let ((_expr115505115580_ (reverse _expr115503115551_))
                              (_bind115506115582_
                               (reverse _bind115504115553_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115493115538_))
                              (let ((_e115515115585_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115493115538_))))
                                (let ((_hd115514115588_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115515115585_)))
                                      (_tl115513115590_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115515115585_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115513115590_))
                                      ((lambda (_L115593_ _L115594_ _L115595_)
                                         (let ((_$e115626_
                                                (let ((__tmp118247
                                                       (lambda (_g115614115616_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g115614115616_
                                                            _arg115483_))))
                                                      (__tmp118245
                                                       (let ((__tmp118246
                                                              (lambda (_g115618115621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115619115623_)
                        (let ()
                          (declare (not safe))
                          (cons _g115618115621_ _g115619115623_)))))
                 (declare (not safe))
                 (foldr1 __tmp118246 '() _L115594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118247
                                                          __tmp118245))))
                                           (if _$e115626_
                                               _$e115626_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L115593_
                                                  _arg115483_)))))
                                       _hd115514115588_
                                       _expr115505115580_
                                       _bind115506115582_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115485115520_ _g115486115523_)))))
                              (let ()
                                (declare (not safe))
                                (_g115485115520_ _g115486115523_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115499115546_
                                                     _target115496115541_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115485115520_
                                                   _g115486115523_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115485115520_ _g115486115523_)))))
                              (let ()
                                (declare (not safe))
                                (_g115485115520_ _g115486115523_)))))
                      (let ()
                        (declare (not safe))
                        (_g115485115520_ _g115486115523_))))))
          (declare (not safe))
          (_g115484115629_ _stx115482_))))
    (define gxc#find-setq%
      (lambda (_stx115414_ _arg115415_)
        (let* ((_g115417115434_
                (lambda (_g115418115431_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115418115431_))))
               (_g115416115479_
                (lambda (_g115418115437_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115418115437_))
                      (let ((_e115423115439_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115418115437_))))
                        (let ((_hd115422115442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115423115439_)))
                              (_tl115421115444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115423115439_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115421115444_))
                              (let ((_e115426115447_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115421115444_))))
                                (let ((_hd115425115450_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115426115447_)))
                                      (_tl115424115452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115426115447_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115424115452_))
                                      (let ((_e115429115455_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115424115452_))))
                                        (let ((_hd115428115458_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115429115455_)))
                                              (_tl115427115460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115429115455_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115427115460_))
                                              ((lambda (_L115463_ _L115464_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115463_
                                                    _arg115415_)))
                                               _hd115428115458_
                                               _hd115425115450_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115417115434_
                                                 _g115418115437_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115417115434_ _g115418115437_)))))
                              (let ()
                                (declare (not safe))
                                (_g115417115434_ _g115418115437_)))))
                      (let ()
                        (declare (not safe))
                        (_g115417115434_ _g115418115437_))))))
          (declare (not safe))
          (_g115416115479_ _stx115414_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx115358_ _ids115359_)
        (let* ((_g115361115374_
                (lambda (_g115362115371_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115362115371_))))
               (_g115360115411_
                (lambda (_g115362115377_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115362115377_))
                      (let ((_e115366115379_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115362115377_))))
                        (let ((_hd115365115382_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115366115379_)))
                              (_tl115364115384_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115366115379_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115364115384_))
                              (let ((_e115369115387_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115364115384_))))
                                (let ((_hd115368115390_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115369115387_)))
                                      (_tl115367115392_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115369115387_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115367115392_))
                                      ((lambda (_L115395_)
                                         (let ((__tmp118250
                                                (lambda (_g115406115408_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L115395_
                                                     _g115406115408_)))))
                                           (declare (not safe))
                                           (find __tmp118250 _ids115359_)))
                                       _hd115368115390_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115361115374_ _g115362115377_)))))
                              (let ()
                                (declare (not safe))
                                (_g115361115374_ _g115362115377_)))))
                      (let ()
                        (declare (not safe))
                        (_g115361115374_ _g115362115377_))))))
          (declare (not safe))
          (_g115360115411_ _stx115358_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx115282_ _ids115283_)
        (let* ((_g115285115302_
                (lambda (_g115286115299_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115286115299_))))
               (_g115284115355_
                (lambda (_g115286115305_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115286115305_))
                      (let ((_e115291115307_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115286115305_))))
                        (let ((_hd115290115310_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115291115307_)))
                              (_tl115289115312_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115291115307_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115289115312_))
                              (let ((_e115294115315_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115289115312_))))
                                (let ((_hd115293115318_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115294115315_)))
                                      (_tl115292115320_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115294115315_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115292115320_))
                                      (let ((_e115297115323_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115292115320_))))
                                        (let ((_hd115296115326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115297115323_)))
                                              (_tl115295115328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115297115323_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115295115328_))
                                              ((lambda (_L115331_ _L115332_)
                                                 (let ((_$e115352_
                                                        (let ((__tmp118251
                                                               (lambda (_g115347115349_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L115332_ _g115347115349_)))))
                  (declare (not safe))
                  (find __tmp118251 _ids115283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e115352_
                                                       _$e115352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L115331_
                                                          _ids115283_)))))
                                               _hd115296115326_
                                               _hd115293115318_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115285115302_
                                                 _g115286115305_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115285115302_ _g115286115305_)))))
                              (let ()
                                (declare (not safe))
                                (_g115285115302_ _g115286115305_)))))
                      (let ()
                        (declare (not safe))
                        (_g115285115302_ _g115286115305_))))))
          (declare (not safe))
          (_g115284115355_ _stx115282_))))))
