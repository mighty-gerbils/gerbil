(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1709159708)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl117900_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117900_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117900_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117900_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117900_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl117900_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl117896_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#declare gxc#xform-identity))
           _tbl117896_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl117892_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118146 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl117892_ __tmp118146))
           (let ((__tmp118147 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl117892_ __tmp118147))
           _tbl117892_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl117888_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl117888_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl117884_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118148 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117884_ __tmp118148))
           (let ((__tmp118149 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl117884_ __tmp118149))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl117884_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl117880_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118150 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117880_ __tmp118150))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117880_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117880_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117880_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117880_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117880_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117880_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117880_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117880_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117880_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117880_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117880_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117880_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl117880_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx117863_ . _args117865_)
        (let ((__tmp118152
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117865_)
                     (gxc#compile-e__0 _stx117863_)
                     (let ((_arg1117870_ (car _args117865_))
                           (_rest117872_ (cdr _args117865_)))
                       (if (null? _rest117872_)
                           (gxc#compile-e__1 _stx117863_ _arg1117870_)
                           (let ((_arg2117875_ (car _rest117872_))
                                 (_rest117877_ (cdr _rest117872_)))
                             (if (null? _rest117877_)
                                 (gxc#compile-e__2
                                  _stx117863_
                                  _arg1117870_
                                  _arg2117875_)
                                 (apply gxc#compile-e
                                        _stx117863_
                                        _arg1117870_
                                        _arg2117875_
                                        _rest117877_))))))))
              (__tmp118151 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp118152
           gxc#current-compile-methods
           __tmp118151))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl117860_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118153 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117860_ __tmp118153))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117860_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117860_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117860_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117860_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117860_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl117860_))))
    (define gxc#apply-collect-methods
      (lambda (_stx117843_ . _args117845_)
        (let ((__tmp118155
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117845_)
                     (gxc#compile-e__0 _stx117843_)
                     (let ((_arg1117850_ (car _args117845_))
                           (_rest117852_ (cdr _args117845_)))
                       (if (null? _rest117852_)
                           (gxc#compile-e__1 _stx117843_ _arg1117850_)
                           (let ((_arg2117855_ (car _rest117852_))
                                 (_rest117857_ (cdr _rest117852_)))
                             (if (null? _rest117857_)
                                 (gxc#compile-e__2
                                  _stx117843_
                                  _arg1117850_
                                  _arg2117855_)
                                 (apply gxc#compile-e
                                        _stx117843_
                                        _arg1117850_
                                        _arg2117855_
                                        _rest117857_))))))))
              (__tmp118154 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp118155
           gxc#current-compile-methods
           __tmp118154))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl117840_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118156 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117840_ __tmp118156))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117840_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117840_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117840_ '%#set! gxc#expression-subst-setq%))
           _tbl117840_))))
    (define gxc#apply-expression-subst
      (lambda (_stx117823_ . _args117825_)
        (let ((__tmp118158
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117825_)
                     (gxc#compile-e__0 _stx117823_)
                     (let ((_arg1117830_ (car _args117825_))
                           (_rest117832_ (cdr _args117825_)))
                       (if (null? _rest117832_)
                           (gxc#compile-e__1 _stx117823_ _arg1117830_)
                           (let ((_arg2117835_ (car _rest117832_))
                                 (_rest117837_ (cdr _rest117832_)))
                             (if (null? _rest117837_)
                                 (gxc#compile-e__2
                                  _stx117823_
                                  _arg1117830_
                                  _arg2117835_)
                                 (apply gxc#compile-e
                                        _stx117823_
                                        _arg1117830_
                                        _arg2117835_
                                        _rest117837_))))))))
              (__tmp118157 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp118158
           gxc#current-compile-methods
           __tmp118157))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl117820_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118159 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl117820_ __tmp118159))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117820_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117820_ '%#set! gxc#expression-subst*-setq%))
           _tbl117820_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx117803_ . _args117805_)
        (let ((__tmp118161
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117805_)
                     (gxc#compile-e__0 _stx117803_)
                     (let ((_arg1117810_ (car _args117805_))
                           (_rest117812_ (cdr _args117805_)))
                       (if (null? _rest117812_)
                           (gxc#compile-e__1 _stx117803_ _arg1117810_)
                           (let ((_arg2117815_ (car _rest117812_))
                                 (_rest117817_ (cdr _rest117812_)))
                             (if (null? _rest117817_)
                                 (gxc#compile-e__2
                                  _stx117803_
                                  _arg1117810_
                                  _arg2117815_)
                                 (apply gxc#compile-e
                                        _stx117803_
                                        _arg1117810_
                                        _arg2117815_
                                        _rest117817_))))))))
              (__tmp118160 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp118161
           gxc#current-compile-methods
           __tmp118160))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl117800_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118162 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl117800_ __tmp118162))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117800_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117800_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl117800_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl117796_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118163 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl117796_ __tmp118163))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117796_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117796_ '%#set! gxc#find-var-refs-setq%))
           _tbl117796_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx117779_ . _args117781_)
        (let ((__tmp118165
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117781_)
                     (gxc#compile-e__0 _stx117779_)
                     (let ((_arg1117786_ (car _args117781_))
                           (_rest117788_ (cdr _args117781_)))
                       (if (null? _rest117788_)
                           (gxc#compile-e__1 _stx117779_ _arg1117786_)
                           (let ((_arg2117791_ (car _rest117788_))
                                 (_rest117793_ (cdr _rest117788_)))
                             (if (null? _rest117793_)
                                 (gxc#compile-e__2
                                  _stx117779_
                                  _arg1117786_
                                  _arg2117791_)
                                 (apply gxc#compile-e
                                        _stx117779_
                                        _arg1117786_
                                        _arg2117791_
                                        _rest117793_))))))))
              (__tmp118164 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118165
           gxc#current-compile-methods
           __tmp118164))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl117776_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118166 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl117776_ __tmp118166))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117776_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117776_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl117776_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx117759_ . _args117761_)
        (let ((__tmp118168
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117761_)
                     (gxc#compile-e__0 _stx117759_)
                     (let ((_arg1117766_ (car _args117761_))
                           (_rest117768_ (cdr _args117761_)))
                       (if (null? _rest117768_)
                           (gxc#compile-e__1 _stx117759_ _arg1117766_)
                           (let ((_arg2117771_ (car _rest117768_))
                                 (_rest117773_ (cdr _rest117768_)))
                             (if (null? _rest117773_)
                                 (gxc#compile-e__2
                                  _stx117759_
                                  _arg1117766_
                                  _arg2117771_)
                                 (apply gxc#compile-e
                                        _stx117759_
                                        _arg1117766_
                                        _arg2117771_
                                        _rest117773_))))))))
              (__tmp118167 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118168
           gxc#current-compile-methods
           __tmp118167))))
    (define gxc#xform-identity
      (lambda (_stx117756_ . _args117757_) _stx117756_))
    (define gxc#xform-wrap-source
      (lambda (_stx117753_ _src-stx117754_)
        (let ((__tmp118169
               (let () (declare (not safe)) (gx#stx-source _src-stx117754_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx117753_ __tmp118169))))
    (define gxc#xform-apply-compile-e
      (lambda (_args117740_)
        (lambda (_stx117742_)
          (if (let () (declare (not safe)) (null? _args117740_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx117742_))
              (let ((_arg1117744_ (car _args117740_))
                    (_rest117746_ (cdr _args117740_)))
                (if (let () (declare (not safe)) (null? _rest117746_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx117742_ _arg1117744_))
                    (let ((_arg2117749_ (car _rest117746_))
                          (_rest117751_ (cdr _rest117746_)))
                      (if (let () (declare (not safe)) (null? _rest117751_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx117742_
                             _arg1117744_
                             _arg2117749_))
                          (apply gxc#compile-e
                                 _stx117742_
                                 _arg1117744_
                                 _arg2117749_
                                 _rest117751_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx117699_ . _args117700_)
        (let* ((_g117702117712_
                (lambda (_g117703117709_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117703117709_))))
               (_g117701117737_
                (lambda (_g117703117715_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117703117715_))
                      (let ((_e117707117717_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117703117715_))))
                        (let ((_hd117706117720_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117707117717_)))
                              (_tl117705117722_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117707117717_))))
                          ((lambda (_L117725_)
                             (let* ((_forms117735_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117700_))
                                          _L117725_))
                                    (__tmp118170
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms117735_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118170
                                _stx117699_)))
                           _tl117705117722_)))
                      (let ()
                        (declare (not safe))
                        (_g117702117712_ _g117703117715_))))))
          (declare (not safe))
          (_g117701117737_ _stx117699_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx117657_ . _args117658_)
        (let* ((_g117660117670_
                (lambda (_g117661117667_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117661117667_))))
               (_g117659117696_
                (lambda (_g117661117673_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117661117673_))
                      (let ((_e117665117675_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117661117673_))))
                        (let ((_hd117664117678_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117665117675_)))
                              (_tl117663117680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117665117675_))))
                          ((lambda (_L117683_)
                             (let ((__tmp118173
                                    (lambda ()
                                      (let* ((_forms117694_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args117658_))
                                                   _L117683_))
                                             (__tmp118174
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms117694_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp118174
                                         _stx117657_))))
                                   (__tmp118171
                                    (let ((__tmp118172
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp118172 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp118173
                                gx#current-expander-phi
                                __tmp118171)))
                           _tl117663117680_)))
                      (let ()
                        (declare (not safe))
                        (_g117660117670_ _g117661117673_))))))
          (declare (not safe))
          (_g117659117696_ _stx117657_))))
    (define gxc#xform-module%
      (lambda (_stx117585_ . _args117586_)
        (let* ((_g117588117602_
                (lambda (_g117589117599_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117589117599_))))
               (_g117587117654_
                (lambda (_g117589117605_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117589117605_))
                      (let ((_e117594117607_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117589117605_))))
                        (let ((_hd117593117610_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117594117607_)))
                              (_tl117592117612_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117594117607_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117592117612_))
                              (let ((_e117597117615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117592117612_))))
                                (let ((_hd117596117618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117597117615_)))
                                      (_tl117595117620_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117597117615_))))
                                  ((lambda (_L117623_ _L117624_)
                                     (let* ((_ctx117637_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L117624_)))
                                            (_code117639_
                                             (##structure-ref
                                              _ctx117637_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code117651_
                                             (let ((__tmp118175
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args117586_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code117639_))
                                                          (let ((_arg1117642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args117586_))
                        (_rest117644_ (cdr _args117586_)))
                    (if (let () (declare (not safe)) (null? _rest117644_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code117639_ _arg1117642_))
                        (let ((_arg2117647_ (car _rest117644_))
                              (_rest117649_ (cdr _rest117644_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest117649_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code117639_
                                 _arg1117642_
                                 _arg2117647_))
                              (apply gxc#compile-e
                                     _code117639_
                                     _arg1117642_
                                     _arg2117647_
                                     _rest117649_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp118175
                                                gx#current-expander-context
                                                _ctx117637_))))
                                       (##structure-set!
                                        _ctx117637_
                                        _code117651_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp118176
                                              (let ((__tmp118177
                                                     (let ((__tmp118178
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code117651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L117624_ __tmp118178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp118177))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp118176
                                          _stx117585_))))
                                   _tl117595117620_
                                   _hd117596117618_)))
                              (let ()
                                (declare (not safe))
                                (_g117588117602_ _g117589117605_)))))
                      (let ()
                        (declare (not safe))
                        (_g117588117602_ _g117589117605_))))))
          (declare (not safe))
          (_g117587117654_ _stx117585_))))
    (define gxc#xform-define-values%
      (lambda (_stx117506_ . _args117507_)
        (let* ((_g117509117526_
                (lambda (_g117510117523_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117510117523_))))
               (_g117508117582_
                (lambda (_g117510117529_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117510117529_))
                      (let ((_e117515117531_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117510117529_))))
                        (let ((_hd117514117534_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117515117531_)))
                              (_tl117513117536_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117515117531_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117513117536_))
                              (let ((_e117518117539_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117513117536_))))
                                (let ((_hd117517117542_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117518117539_)))
                                      (_tl117516117544_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117518117539_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117516117544_))
                                      (let ((_e117521117547_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117516117544_))))
                                        (let ((_hd117520117550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117521117547_)))
                                              (_tl117519117552_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117521117547_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117519117552_))
                                              ((lambda (_L117555_ _L117556_)
                                                 (let* ((_expr117580_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117507_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117555_))
                     (let ((_arg1117571_ (car _args117507_))
                           (_rest117573_ (cdr _args117507_)))
                       (if (let () (declare (not safe)) (null? _rest117573_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117555_ _arg1117571_))
                           (let ((_arg2117576_ (car _rest117573_))
                                 (_rest117578_ (cdr _rest117573_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117578_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117555_
                                    _arg1117571_
                                    _arg2117576_))
                                 (apply gxc#compile-e
                                        _L117555_
                                        _arg1117571_
                                        _arg2117576_
                                        _rest117578_)))))))
                (__tmp118179
                 (let ((__tmp118180
                        (let ((__tmp118181
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117580_ '()))))
                          (declare (not safe))
                          (cons _L117556_ __tmp118181))))
                   (declare (not safe))
                   (cons '%#define-values __tmp118180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118179
                                                    _stx117506_)))
                                               _hd117520117550_
                                               _hd117517117542_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117509117526_
                                                 _g117510117529_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117509117526_ _g117510117529_)))))
                              (let ()
                                (declare (not safe))
                                (_g117509117526_ _g117510117529_)))))
                      (let ()
                        (declare (not safe))
                        (_g117509117526_ _g117510117529_))))))
          (declare (not safe))
          (_g117508117582_ _stx117506_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx117426_ . _args117427_)
        (let* ((_g117429117446_
                (lambda (_g117430117443_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117430117443_))))
               (_g117428117503_
                (lambda (_g117430117449_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117430117449_))
                      (let ((_e117435117451_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117430117449_))))
                        (let ((_hd117434117454_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117435117451_)))
                              (_tl117433117456_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117435117451_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117433117456_))
                              (let ((_e117438117459_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117433117456_))))
                                (let ((_hd117437117462_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117438117459_)))
                                      (_tl117436117464_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117438117459_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117436117464_))
                                      (let ((_e117441117467_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117436117464_))))
                                        (let ((_hd117440117470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117441117467_)))
                                              (_tl117439117472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117441117467_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117439117472_))
                                              ((lambda (_L117475_ _L117476_)
                                                 (let ((__tmp118184
                                                        (lambda ()
                                                          (let* ((_expr117501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args117427_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L117475_))
                              (let ((_arg1117492_ (car _args117427_))
                                    (_rest117494_ (cdr _args117427_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest117494_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L117475_
                                       _arg1117492_))
                                    (let ((_arg2117497_ (car _rest117494_))
                                          (_rest117499_ (cdr _rest117494_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest117499_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L117475_
                                             _arg1117492_
                                             _arg2117497_))
                                          (apply gxc#compile-e
                                                 _L117475_
                                                 _arg1117492_
                                                 _arg2117497_
                                                 _rest117499_)))))))
                         (__tmp118185
                          (let ((__tmp118186
                                 (let ((__tmp118187
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr117501_ '()))))
                                   (declare (not safe))
                                   (cons _L117476_ __tmp118187))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp118186))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp118185 _stx117426_))))
               (__tmp118182
                (let ((__tmp118183 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp118183 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp118184
                                                    gx#current-expander-phi
                                                    __tmp118182)))
                                               _hd117440117470_
                                               _hd117437117462_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117429117446_
                                                 _g117430117449_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117429117446_ _g117430117449_)))))
                              (let ()
                                (declare (not safe))
                                (_g117429117446_ _g117430117449_)))))
                      (let ()
                        (declare (not safe))
                        (_g117429117446_ _g117430117449_))))))
          (declare (not safe))
          (_g117428117503_ _stx117426_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx117347_ . _args117348_)
        (let* ((_g117350117367_
                (lambda (_g117351117364_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117351117364_))))
               (_g117349117423_
                (lambda (_g117351117370_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117351117370_))
                      (let ((_e117356117372_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117351117370_))))
                        (let ((_hd117355117375_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117356117372_)))
                              (_tl117354117377_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117356117372_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117354117377_))
                              (let ((_e117359117380_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117354117377_))))
                                (let ((_hd117358117383_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117359117380_)))
                                      (_tl117357117385_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117359117380_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117357117385_))
                                      (let ((_e117362117388_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117357117385_))))
                                        (let ((_hd117361117391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117362117388_)))
                                              (_tl117360117393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117362117388_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117360117393_))
                                              ((lambda (_L117396_ _L117397_)
                                                 (let* ((_expr117421_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117348_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117396_))
                     (let ((_arg1117412_ (car _args117348_))
                           (_rest117414_ (cdr _args117348_)))
                       (if (let () (declare (not safe)) (null? _rest117414_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117396_ _arg1117412_))
                           (let ((_arg2117417_ (car _rest117414_))
                                 (_rest117419_ (cdr _rest117414_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117419_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117396_
                                    _arg1117412_
                                    _arg2117417_))
                                 (apply gxc#compile-e
                                        _L117396_
                                        _arg1117412_
                                        _arg2117417_
                                        _rest117419_)))))))
                (__tmp118188
                 (let ((__tmp118189
                        (let ((__tmp118190
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117421_ '()))))
                          (declare (not safe))
                          (cons _L117397_ __tmp118190))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp118189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118188
                                                    _stx117347_)))
                                               _hd117361117391_
                                               _hd117358117383_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117350117367_
                                                 _g117351117370_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117350117367_ _g117351117370_)))))
                              (let ()
                                (declare (not safe))
                                (_g117350117367_ _g117351117370_)))))
                      (let ()
                        (declare (not safe))
                        (_g117350117367_ _g117351117370_))))))
          (declare (not safe))
          (_g117349117423_ _stx117347_))))
    (define gxc#xform-lambda%
      (lambda (_stx117290_ . _args117291_)
        (let* ((_g117293117307_
                (lambda (_g117294117304_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117294117304_))))
               (_g117292117344_
                (lambda (_g117294117310_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117294117310_))
                      (let ((_e117299117312_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117294117310_))))
                        (let ((_hd117298117315_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117299117312_)))
                              (_tl117297117317_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117299117312_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117297117317_))
                              (let ((_e117302117320_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117297117317_))))
                                (let ((_hd117301117323_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117302117320_)))
                                      (_tl117300117325_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117302117320_))))
                                  ((lambda (_L117328_ _L117329_)
                                     (let* ((_body117342_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args117291_))
                                                  _L117328_))
                                            (__tmp118191
                                             (let ((__tmp118192
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L117329_
                                                            _body117342_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp118192))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp118191
                                        _stx117290_)))
                                   _tl117300117325_
                                   _hd117301117323_)))
                              (let ()
                                (declare (not safe))
                                (_g117293117307_ _g117294117310_)))))
                      (let ()
                        (declare (not safe))
                        (_g117293117307_ _g117294117310_))))))
          (declare (not safe))
          (_g117292117344_ _stx117290_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx117203_ . _args117204_)
        (letrec ((_clause-e117206_
                  (lambda (_clause117247_)
                    (let* ((_g117249117260_
                            (lambda (_g117250117257_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g117250117257_))))
                           (_g117248117287_
                            (lambda (_g117250117263_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g117250117263_))
                                  (let ((_e117255117265_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g117250117263_))))
                                    (let ((_hd117254117268_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117255117265_)))
                                          (_tl117253117270_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117255117265_))))
                                      ((lambda (_L117273_ _L117274_)
                                         (let ((_body117285_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args117204_))
                                                     _L117273_)))
                                           (declare (not safe))
                                           (cons _L117274_ _body117285_)))
                                       _tl117253117270_
                                       _hd117254117268_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117249117260_ _g117250117263_))))))
                      (declare (not safe))
                      (_g117248117287_ _clause117247_)))))
          (let* ((_g117208117218_
                  (lambda (_g117209117215_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g117209117215_))))
                 (_g117207117244_
                  (lambda (_g117209117221_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g117209117221_))
                        (let ((_e117213117223_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g117209117221_))))
                          (let ((_hd117212117226_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117213117223_)))
                                (_tl117211117228_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117213117223_))))
                            ((lambda (_L117231_)
                               (let* ((_clauses117242_
                                       (map _clause-e117206_ _L117231_))
                                      (__tmp118193
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses117242_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp118193
                                  _stx117203_)))
                             _tl117211117228_)))
                        (let ()
                          (declare (not safe))
                          (_g117208117218_ _g117209117221_))))))
            (declare (not safe))
            (_g117207117244_ _stx117203_)))))
    (define gxc#xform-let-values%
      (lambda (_stx116997_ . _args116998_)
        (let* ((_g117000117033_
                (lambda (_g117001117030_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117001117030_))))
               (_g116999117200_
                (lambda (_g117001117036_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117001117036_))
                      (let ((_e117008117038_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117001117036_))))
                        (let ((_hd117007117041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117008117038_)))
                              (_tl117006117043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117008117038_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117006117043_))
                              (let ((_e117011117046_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117006117043_))))
                                (let ((_hd117010117049_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117011117046_)))
                                      (_tl117009117051_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117011117046_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd117010117049_))
                                      (let ((_g118194_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd117010117049_
                                                '0))))
                                        (begin
                                          (let ((_g118195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118194_)
                                                       (##vector-length
                                                        _g118194_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118195_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118195_)))
                                          (let ((_target117012117054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118194_ 0)))
                                                (_tl117014117056_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118194_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117014117056_))
                                                (letrec ((_loop117015117059_
                                                          (lambda (_hd117013117062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117019117064_
                           _hd117020117066_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117013117062_))
                        (let ((_e117016117069_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117013117062_))))
                          (let ((_lp-hd117017117072_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117016117069_)))
                                (_lp-tl117018117074_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117016117069_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117017117072_))
                                (let ((_e117025117077_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117017117072_))))
                                  (let ((_hd117024117080_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e117025117077_)))
                                        (_tl117023117082_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e117025117077_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117023117082_))
                                        (let ((_e117028117085_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117023117082_))))
                                          (let ((_hd117027117088_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117028117085_)))
                                                (_tl117026117090_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117028117085_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117026117090_))
                                                (let ((__tmp118208
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117027117088_
                                                               _expr117019117064_)))
                                                      (__tmp118207
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117024117080_
                                                               _hd117020117066_))))
                                                  (declare (not safe))
                                                  (_loop117015117059_
                                                   _lp-tl117018117074_
                                                   __tmp118208
                                                   __tmp118207))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117000117033_
                                                   _g117001117036_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g117000117033_ _g117001117036_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g117000117033_ _g117001117036_)))))
                        (let ((_expr117021117093_ (reverse _expr117019117064_))
                              (_hd117022117095_ (reverse _hd117020117066_)))
                          ((lambda (_L117098_ _L117099_ _L117100_ _L117101_)
                             (let* ((_g117120117136_
                                     (lambda (_g117121117133_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g117121117133_))))
                                    (_g117119117190_
                                     (lambda (_g117121117139_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g117121117139_))
                                           (let ((_g118196_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g117121117139_
                                                     '0))))
                                             (begin
                                               (let ((_g118197_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g118196_)
                                                            (##vector-length
                                                             _g118196_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g118197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g118197_)))
                                               (let ((_target117123117141_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118196_
                                                         0)))
                                                     (_tl117125117143_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118196_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117125117143_))
                                                     (letrec ((_loop117126117146_
                                                               (lambda (_hd117124117149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr117130117151_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd117124117149_))
                             (let ((_e117127117154_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd117124117149_))))
                               (let ((_lp-hd117128117157_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e117127117154_)))
                                     (_lp-tl117129117159_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e117127117154_))))
                                 (let ((__tmp118204
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd117128117157_
                                                _expr117130117151_))))
                                   (declare (not safe))
                                   (_loop117126117146_
                                    _lp-tl117129117159_
                                    __tmp118204))))
                             (let ((_expr117131117162_
                                    (reverse _expr117130117151_)))
                               ((lambda (_L117165_)
                                  (let ()
                                    (let* ((_body117178_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args116998_))
                                                 _L117098_))
                                           (__tmp118198
                                            (let ((__tmp118199
                                                   (let ((__tmp118200
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L117165_
                                                               _L117100_))
                                                            (let ((__tmp118201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g117179117183_
                                    _g117180117185_
                                    _g117181117187_)
                             (let ((__tmp118202
                                    (let ((__tmp118203
                                           (let ()
                                             (declare (not safe))
                                             (cons _g117179117183_ '()))))
                                      (declare (not safe))
                                      (cons _g117180117185_ __tmp118203))))
                               (declare (not safe))
                               (cons __tmp118202 _g117181117187_)))))
                      (declare (not safe))
                      (foldr2 __tmp118201 '() _L117165_ _L117100_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp118200
                                                           _body117178_))))
                                              (declare (not safe))
                                              (cons _L117101_ __tmp118199))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp118198
                                       _stx116997_))))
                                _expr117131117162_))))))
               (let ()
                 (declare (not safe))
                 (_loop117126117146_ _target117123117141_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g117120117136_
                                                        _g117121117139_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117120117136_
                                              _g117121117139_)))))
                                    (__tmp118205
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116998_))
                                          (let ((__tmp118206
                                                 (lambda (_g117192117195_
                                                          _g117193117197_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g117192117195_
                                                           _g117193117197_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp118206
                                                    '()
                                                    _L117099_)))))
                               (declare (not safe))
                               (_g117119117190_ __tmp118205)))
                           _tl117009117051_
                           _expr117021117093_
                           _hd117022117095_
                           _hd117007117041_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117015117059_
                                                     _target117012117054_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117000117033_
                                                   _g117001117036_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117000117033_ _g117001117036_)))))
                              (let ()
                                (declare (not safe))
                                (_g117000117033_ _g117001117036_)))))
                      (let ()
                        (declare (not safe))
                        (_g117000117033_ _g117001117036_))))))
          (declare (not safe))
          (_g116999117200_ _stx116997_))))
    (define gxc#xform-operands
      (lambda (_stx116953_ . _args116954_)
        (let* ((_g116956116967_
                (lambda (_g116957116964_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116957116964_))))
               (_g116955116994_
                (lambda (_g116957116970_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116957116970_))
                      (let ((_e116962116972_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116957116970_))))
                        (let ((_hd116961116975_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116962116972_)))
                              (_tl116960116977_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116962116972_))))
                          ((lambda (_L116980_ _L116981_)
                             (let* ((_rands116992_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116954_))
                                          _L116980_))
                                    (__tmp118209
                                     (let ()
                                       (declare (not safe))
                                       (cons _L116981_ _rands116992_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118209
                                _stx116953_)))
                           _tl116960116977_
                           _hd116961116975_)))
                      (let ()
                        (declare (not safe))
                        (_g116956116967_ _g116957116970_))))))
          (declare (not safe))
          (_g116955116994_ _stx116953_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx116874_ . _args116875_)
        (let* ((_g116877116894_
                (lambda (_g116878116891_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116878116891_))))
               (_g116876116950_
                (lambda (_g116878116897_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116878116897_))
                      (let ((_e116883116899_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116878116897_))))
                        (let ((_hd116882116902_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116883116899_)))
                              (_tl116881116904_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116883116899_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116881116904_))
                              (let ((_e116886116907_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116881116904_))))
                                (let ((_hd116885116910_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116886116907_)))
                                      (_tl116884116912_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116886116907_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116884116912_))
                                      (let ((_e116889116915_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116884116912_))))
                                        (let ((_hd116888116918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116889116915_)))
                                              (_tl116887116920_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116889116915_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116887116920_))
                                              ((lambda (_L116923_ _L116924_)
                                                 (let* ((_expr116948_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116875_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116923_))
                     (let ((_arg1116939_ (car _args116875_))
                           (_rest116941_ (cdr _args116875_)))
                       (if (let () (declare (not safe)) (null? _rest116941_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116923_ _arg1116939_))
                           (let ((_arg2116944_ (car _rest116941_))
                                 (_rest116946_ (cdr _rest116941_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116946_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116923_
                                    _arg1116939_
                                    _arg2116944_))
                                 (apply gxc#compile-e
                                        _L116923_
                                        _arg1116939_
                                        _arg2116944_
                                        _rest116946_)))))))
                (__tmp118210
                 (let ((__tmp118211
                        (let ((__tmp118212
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116948_ '()))))
                          (declare (not safe))
                          (cons _L116924_ __tmp118212))))
                   (declare (not safe))
                   (cons '%#set! __tmp118211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118210
                                                    _stx116874_)))
                                               _hd116888116918_
                                               _hd116885116910_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116877116894_
                                                 _g116878116897_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116877116894_ _g116878116897_)))))
                              (let ()
                                (declare (not safe))
                                (_g116877116894_ _g116878116897_)))))
                      (let ()
                        (declare (not safe))
                        (_g116877116894_ _g116878116897_))))))
          (declare (not safe))
          (_g116876116950_ _stx116874_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx116805_)
        (let* ((_g116807116824_
                (lambda (_g116808116821_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116808116821_))))
               (_g116806116871_
                (lambda (_g116808116827_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116808116827_))
                      (let ((_e116813116829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116808116827_))))
                        (let ((_hd116812116832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116813116829_)))
                              (_tl116811116834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116813116829_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116811116834_))
                              (let ((_e116816116837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116811116834_))))
                                (let ((_hd116815116840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116816116837_)))
                                      (_tl116814116842_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116816116837_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116814116842_))
                                      (let ((_e116819116845_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116814116842_))))
                                        (let ((_hd116818116848_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116819116845_)))
                                              (_tl116817116850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116819116845_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116817116850_))
                                              ((lambda (_L116853_ _L116854_)
                                                 (let ((_sym116869_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116854_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym116869_))
                                                   (let ((__tmp118213
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118213
                                                      _sym116869_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L116853_))))
                                               _hd116818116848_
                                               _hd116815116840_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116807116824_
                                                 _g116808116827_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116807116824_ _g116808116827_)))))
                              (let ()
                                (declare (not safe))
                                (_g116807116824_ _g116808116827_)))))
                      (let ()
                        (declare (not safe))
                        (_g116807116824_ _g116808116827_))))))
          (declare (not safe))
          (_g116806116871_ _stx116805_))))
    (define gxc#collect-methods-call%
      (lambda (_stx116359_)
        (let* ((___stx117903117904_ _stx116359_)
               (_g116363116465_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx117903117904_)))))
          (let ((___kont117905117906_
                 (lambda (_L116755_ _L116756_ _L116757_ _L116758_ _L116759_)
                   (let ((__tmp118214
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116756_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118214))))
                (___kont117907117908_
                 (lambda (_L116581_ _L116582_ _L116583_ _L116584_)
                   (let ((__tmp118215
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116581_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118215))))
                (___kont117909117910_ (lambda () '#!void)))
            (let ((___match118038118039_
                   (lambda (_e116372116627_
                            _hd116371116630_
                            _tl116370116632_
                            _e116375116635_
                            _hd116374116638_
                            _tl116373116640_
                            _e116378116643_
                            _hd116377116646_
                            _tl116376116648_
                            _e116381116651_
                            _hd116380116654_
                            _tl116379116656_
                            _e116384116659_
                            _hd116383116662_
                            _tl116382116664_
                            _e116387116667_
                            _hd116386116670_
                            _tl116385116672_
                            _e116390116675_
                            _hd116389116678_
                            _tl116388116680_
                            _e116393116683_
                            _hd116392116686_
                            _tl116391116688_
                            _e116396116691_
                            _hd116395116694_
                            _tl116394116696_
                            _e116399116699_
                            _hd116398116702_
                            _tl116397116704_
                            _e116402116707_
                            _hd116401116710_
                            _tl116400116712_
                            _e116405116715_
                            _hd116404116718_
                            _tl116403116720_
                            _e116408116723_
                            _hd116407116726_
                            _tl116406116728_
                            _e116411116731_
                            _hd116410116734_
                            _tl116409116736_
                            _e116414116739_
                            _hd116413116742_
                            _tl116412116744_
                            _e116417116747_
                            _hd116416116750_
                            _tl116415116752_)
                     (let ((_L116755_ _hd116416116750_)
                           (_L116756_ _hd116407116726_)
                           (_L116757_ _hd116398116702_)
                           (_L116758_ _hd116389116678_)
                           (_L116759_ _hd116380116654_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L116759_
                              'bind-method!))
                           (___kont117905117906_
                            _L116755_
                            _L116756_
                            _L116757_
                            _L116758_
                            _L116759_)
                           (___kont117909117910_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx117903117904_))
                  (let ((_e116372116627_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx117903117904_))))
                    (let ((_tl116370116632_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116372116627_)))
                          (_hd116371116630_
                           (let ()
                             (declare (not safe))
                             (##car _e116372116627_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116370116632_))
                          (let ((_e116375116635_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116370116632_))))
                            (let ((_tl116373116640_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116375116635_)))
                                  (_hd116374116638_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116375116635_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116374116638_))
                                  (let ((_e116378116643_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116374116638_))))
                                    (let ((_tl116376116648_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116378116643_)))
                                          (_hd116377116646_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116378116643_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd116377116646_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd116377116646_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116376116648_))
                                                  (let ((_e116381116651_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116376116648_))))
                                                    (let ((_tl116379116656_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116381116651_)))
                                                          (_hd116380116654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116381116651_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116379116656_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116373116640_))
                      (let ((_e116384116659_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116373116640_))))
                        (let ((_tl116382116664_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116384116659_)))
                              (_hd116383116662_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116384116659_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd116383116662_))
                              (let ((_e116387116667_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd116383116662_))))
                                (let ((_tl116385116672_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116387116667_)))
                                      (_hd116386116670_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116387116667_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd116386116670_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd116386116670_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl116385116672_))
                                              (let ((_e116390116675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl116385116672_))))
                                                (let ((_tl116388116680_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e116390116675_)))
                                                      (_hd116389116678_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e116390116675_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116388116680_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl116382116664_))
                                                          (let ((_e116393116683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl116382116664_))))
                    (let ((_tl116391116688_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116393116683_)))
                          (_hd116392116686_
                           (let ()
                             (declare (not safe))
                             (##car _e116393116683_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd116392116686_))
                          (let ((_e116396116691_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd116392116686_))))
                            (let ((_tl116394116696_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116396116691_)))
                                  (_hd116395116694_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116396116691_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd116395116694_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd116395116694_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl116394116696_))
                                          (let ((_e116399116699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl116394116696_))))
                                            (let ((_tl116397116704_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116399116699_)))
                                                  (_hd116398116702_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116399116699_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl116397116704_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl116391116688_))
                                                      (let ((_e116402116707_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl116391116688_))))
                (let ((_tl116400116712_
                       (let () (declare (not safe)) (##cdr _e116402116707_)))
                      (_hd116401116710_
                       (let () (declare (not safe)) (##car _e116402116707_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd116401116710_))
                      (let ((_e116405116715_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd116401116710_))))
                        (let ((_tl116403116720_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116405116715_)))
                              (_hd116404116718_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116405116715_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd116404116718_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd116404116718_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116403116720_))
                                      (let ((_e116408116723_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116403116720_))))
                                        (let ((_tl116406116728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116408116723_)))
                                              (_hd116407116726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116408116723_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116406116728_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116400116712_))
                                                  (let ((_e116411116731_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116400116712_))))
                                                    (let ((_tl116409116736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116411116731_)))
                                                          (_hd116410116734_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116411116731_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd116410116734_))
                                                          (let ((_e116414116739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd116410116734_))))
                    (let ((_tl116412116744_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116414116739_)))
                          (_hd116413116742_
                           (let ()
                             (declare (not safe))
                             (##car _e116414116739_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd116413116742_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd116413116742_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl116412116744_))
                                  (let ((_e116417116747_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl116412116744_))))
                                    (let ((_tl116415116752_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116417116747_)))
                                          (_hd116416116750_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116417116747_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl116415116752_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116409116736_))
                                              (___match118038118039_
                                               _e116372116627_
                                               _hd116371116630_
                                               _tl116370116632_
                                               _e116375116635_
                                               _hd116374116638_
                                               _tl116373116640_
                                               _e116378116643_
                                               _hd116377116646_
                                               _tl116376116648_
                                               _e116381116651_
                                               _hd116380116654_
                                               _tl116379116656_
                                               _e116384116659_
                                               _hd116383116662_
                                               _tl116382116664_
                                               _e116387116667_
                                               _hd116386116670_
                                               _tl116385116672_
                                               _e116390116675_
                                               _hd116389116678_
                                               _tl116388116680_
                                               _e116393116683_
                                               _hd116392116686_
                                               _tl116391116688_
                                               _e116396116691_
                                               _hd116395116694_
                                               _tl116394116696_
                                               _e116399116699_
                                               _hd116398116702_
                                               _tl116397116704_
                                               _e116402116707_
                                               _hd116401116710_
                                               _tl116400116712_
                                               _e116405116715_
                                               _hd116404116718_
                                               _tl116403116720_
                                               _e116408116723_
                                               _hd116407116726_
                                               _tl116406116728_
                                               _e116411116731_
                                               _hd116410116734_
                                               _tl116409116736_
                                               _e116414116739_
                                               _hd116413116742_
                                               _tl116412116744_
                                               _e116417116747_
                                               _hd116416116750_
                                               _tl116415116752_)
                                              (___kont117909117910_))
                                          (___kont117909117910_))))
                                  (___kont117909117910_))
                              (___kont117909117910_))
                          (___kont117909117910_))))
                  (___kont117909117910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116400116712_))
                                                      (if (let ((__tmp118216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118216 'bind-method!))
                  (let ((_L116581_ _hd116407116726_)
                        (_L116582_ _hd116398116702_)
                        (_L116583_ _hd116389116678_)
                        (_L116584_ _hd116380116654_))
                    (___kont117907117908_
                     _L116581_
                     _L116582_
                     _L116583_
                     _L116584_))
                  (___kont117909117910_))
              (___kont117909117910_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117909117910_))))
                                      (___kont117909117910_))
                                  (___kont117909117910_))
                              (___kont117909117910_))))
                      (___kont117909117910_))))
              (___kont117909117910_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117909117910_))))
                                          (___kont117909117910_))
                                      (___kont117909117910_))
                                  (___kont117909117910_))))
                          (___kont117909117910_))))
                  (___kont117909117910_))
              (___kont117909117910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117909117910_))
                                          (___kont117909117910_))
                                      (___kont117909117910_))))
                              (___kont117909117910_))))
                      (___kont117909117910_))
                  (___kont117909117910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117909117910_))
                                              (___kont117909117910_))
                                          (___kont117909117910_))))
                                  (___kont117909117910_))))
                          (___kont117909117910_))))
                  (___kont117909117910_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx116306_ _id116307_ _new-id116308_)
        (let* ((_g116310116323_
                (lambda (_g116311116320_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116311116320_))))
               (_g116309116356_
                (lambda (_g116311116326_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116311116326_))
                      (let ((_e116315116328_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116311116326_))))
                        (let ((_hd116314116331_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116315116328_)))
                              (_tl116313116333_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116315116328_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116313116333_))
                              (let ((_e116318116336_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116313116333_))))
                                (let ((_hd116317116339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116318116336_)))
                                      (_tl116316116341_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116318116336_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116316116341_))
                                      ((lambda (_L116344_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L116344_
                                                _id116307_))
                                             (let ((__tmp118217
                                                    (let ((__tmp118218
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id116308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp118218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118217
                                                _stx116306_))
                                             _stx116306_))
                                       _hd116317116339_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116310116323_ _g116311116326_)))))
                              (let ()
                                (declare (not safe))
                                (_g116310116323_ _g116311116326_)))))
                      (let ()
                        (declare (not safe))
                        (_g116310116323_ _g116311116326_))))))
          (declare (not safe))
          (_g116309116356_ _stx116306_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx116247_ _subst116248_)
        (let* ((_g116250116263_
                (lambda (_g116251116260_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116251116260_))))
               (_g116249116303_
                (lambda (_g116251116266_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116251116266_))
                      (let ((_e116255116268_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116251116266_))))
                        (let ((_hd116254116271_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116255116268_)))
                              (_tl116253116273_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116255116268_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116253116273_))
                              (let ((_e116258116276_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116253116273_))))
                                (let ((_hd116257116279_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116258116276_)))
                                      (_tl116256116281_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116258116276_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116256116281_))
                                      ((lambda (_L116284_)
                                         (let ((_$e116298_
                                                (let ((__tmp118219
                                                       (lambda (_sub116296_)
                                                         (let ((__tmp118220
                                                                (car _sub116296_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L116284_
                                                            __tmp118220)))))
                                                  (declare (not safe))
                                                  (find __tmp118219
                                                        _subst116248_))))
                                           (if _$e116298_
                                               ((lambda (_sub116301_)
                                                  (let ((__tmp118221
                                                         (let ((__tmp118222
                                                                (let ((__tmp118223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub116301_)))
                          (declare (not safe))
                          (cons __tmp118223 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118221
                                                     _stx116247_)))
                                                _$e116298_)
                                               _stx116247_)))
                                       _hd116257116279_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116250116263_ _g116251116266_)))))
                              (let ()
                                (declare (not safe))
                                (_g116250116263_ _g116251116266_)))))
                      (let ()
                        (declare (not safe))
                        (_g116250116263_ _g116251116266_))))))
          (declare (not safe))
          (_g116249116303_ _stx116247_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx116175_ _id116176_ _new-id116177_)
        (let* ((_g116179116196_
                (lambda (_g116180116193_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116180116193_))))
               (_g116178116244_
                (lambda (_g116180116199_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116180116199_))
                      (let ((_e116185116201_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116180116199_))))
                        (let ((_hd116184116204_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116185116201_)))
                              (_tl116183116206_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116185116201_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116183116206_))
                              (let ((_e116188116209_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116183116206_))))
                                (let ((_hd116187116212_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116188116209_)))
                                      (_tl116186116214_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116188116209_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116186116214_))
                                      (let ((_e116191116217_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116186116214_))))
                                        (let ((_hd116190116220_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116191116217_)))
                                              (_tl116189116222_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116191116217_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116189116222_))
                                              ((lambda (_L116225_ _L116226_)
                                                 (let ((_new-expr116241_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L116225_
                                                           _id116176_
                                                           _new-id116177_)))
                                                       (_new-xid116242_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L116226_
                                                               _id116176_))
                                                            _new-id116177_
                                                            _L116226_)))
                                                   (let ((__tmp118224
                                                          (let ((__tmp118225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118226
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116241_ '()))))
                           (declare (not safe))
                           (cons _new-xid116242_ __tmp118226))))
                    (declare (not safe))
                    (cons '%#set! __tmp118225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118224
                                                      _stx116175_))))
                                               _hd116190116220_
                                               _hd116187116212_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116179116196_
                                                 _g116180116199_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116179116196_ _g116180116199_)))))
                              (let ()
                                (declare (not safe))
                                (_g116179116196_ _g116180116199_)))))
                      (let ()
                        (declare (not safe))
                        (_g116179116196_ _g116180116199_))))))
          (declare (not safe))
          (_g116178116244_ _stx116175_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx116099_ _subst116100_)
        (let* ((_g116102116119_
                (lambda (_g116103116116_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116103116116_))))
               (_g116101116172_
                (lambda (_g116103116122_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116103116122_))
                      (let ((_e116108116124_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116103116122_))))
                        (let ((_hd116107116127_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116108116124_)))
                              (_tl116106116129_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116108116124_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116106116129_))
                              (let ((_e116111116132_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116106116129_))))
                                (let ((_hd116110116135_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116111116132_)))
                                      (_tl116109116137_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116111116132_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116109116137_))
                                      (let ((_e116114116140_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116109116137_))))
                                        (let ((_hd116113116143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116114116140_)))
                                              (_tl116112116145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116114116140_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116112116145_))
                                              ((lambda (_L116148_ _L116149_)
                                                 (let ((_new-expr116169_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L116148_
                                                           _subst116100_)))
                                                       (_new-xid116170_
                                                        (let ((_$e116166_
                                                               (let ((__tmp118227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub116164_)
                                (let ((__tmp118228 (car _sub116164_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L116149_
                                   __tmp118228)))))
                         (declare (not safe))
                         (find __tmp118227 _subst116100_))))
                  (if _$e116166_ (cdr _$e116166_) _L116149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118229
                                                          (let ((__tmp118230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118231
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116169_ '()))))
                           (declare (not safe))
                           (cons _new-xid116170_ __tmp118231))))
                    (declare (not safe))
                    (cons '%#set! __tmp118230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118229
                                                      _stx116099_))))
                                               _hd116113116143_
                                               _hd116110116135_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116102116119_
                                                 _g116103116122_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116102116119_ _g116103116122_)))))
                              (let ()
                                (declare (not safe))
                                (_g116102116119_ _g116103116122_)))))
                      (let ()
                        (declare (not safe))
                        (_g116102116119_ _g116103116122_))))))
          (declare (not safe))
          (_g116101116172_ _stx116099_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx116045_ _ht116046_)
        (let* ((_g116048116061_
                (lambda (_g116049116058_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116049116058_))))
               (_g116047116096_
                (lambda (_g116049116064_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116049116064_))
                      (let ((_e116053116066_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116049116064_))))
                        (let ((_hd116052116069_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116053116066_)))
                              (_tl116051116071_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116053116066_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116051116071_))
                              (let ((_e116056116074_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116051116071_))))
                                (let ((_hd116055116077_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116056116074_)))
                                      (_tl116054116079_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116056116074_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116054116079_))
                                      ((lambda (_L116082_)
                                         (let ((_eid116094_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L116082_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht116046_
                                            _eid116094_
                                            1+
                                            '0)))
                                       _hd116055116077_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116048116061_ _g116049116064_)))))
                              (let ()
                                (declare (not safe))
                                (_g116048116061_ _g116049116064_)))))
                      (let ()
                        (declare (not safe))
                        (_g116048116061_ _g116049116064_))))))
          (declare (not safe))
          (_g116047116096_ _stx116045_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx115975_ _ht115976_)
        (let* ((_g115978115995_
                (lambda (_g115979115992_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115979115992_))))
               (_g115977116042_
                (lambda (_g115979115998_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115979115998_))
                      (let ((_e115984116000_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115979115998_))))
                        (let ((_hd115983116003_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115984116000_)))
                              (_tl115982116005_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115984116000_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115982116005_))
                              (let ((_e115987116008_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115982116005_))))
                                (let ((_hd115986116011_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115987116008_)))
                                      (_tl115985116013_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115987116008_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115985116013_))
                                      (let ((_e115990116016_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115985116013_))))
                                        (let ((_hd115989116019_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115990116016_)))
                                              (_tl115988116021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115990116016_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115988116021_))
                                              ((lambda (_L116024_ _L116025_)
                                                 (let ((_eid116040_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116025_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht115976_
                                                      _eid116040_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L116024_
                                                      _ht115976_))))
                                               _hd115989116019_
                                               _hd115986116011_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115978115995_
                                                 _g115979115998_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115978115995_ _g115979115998_)))))
                              (let ()
                                (declare (not safe))
                                (_g115978115995_ _g115979115998_)))))
                      (let ()
                        (declare (not safe))
                        (_g115978115995_ _g115979115998_))))))
          (declare (not safe))
          (_g115977116042_ _stx115975_))))
    (define gxc#find-body%
      (lambda (_stx115888_ _arg115889_)
        (let* ((_g115891115910_
                (lambda (_g115892115907_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115892115907_))))
               (_g115890115972_
                (lambda (_g115892115913_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115892115913_))
                      (let ((_e115896115915_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115892115913_))))
                        (let ((_hd115895115918_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115896115915_)))
                              (_tl115894115920_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115896115915_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115894115920_))
                              (let ((_g118232_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115894115920_
                                        '0))))
                                (begin
                                  (let ((_g118233_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118232_)
                                               (##vector-length _g118232_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118233_ 2)))
                                        (error "Context expects 2 values"
                                               _g118233_)))
                                  (let ((_target115897115923_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118232_ 0)))
                                        (_tl115899115925_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118232_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115899115925_))
                                        (letrec ((_loop115900115928_
                                                  (lambda (_hd115898115931_
                                                           _expr115904115933_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115898115931_))
                                                        (let ((_e115901115936_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115898115931_))))
                  (let ((_lp-hd115902115939_
                         (let () (declare (not safe)) (##car _e115901115936_)))
                        (_lp-tl115903115941_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115901115936_))))
                    (let ((__tmp118237
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd115902115939_ _expr115904115933_))))
                      (declare (not safe))
                      (_loop115900115928_ _lp-tl115903115941_ __tmp118237))))
                (let ((_expr115905115944_ (reverse _expr115904115933_)))
                  ((lambda (_L115947_)
                     (let ((__tmp118236
                            (lambda (_g115960115962_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115960115962_
                                 _arg115889_))))
                           (__tmp118234
                            (let ((__tmp118235
                                   (lambda (_g115964115967_ _g115965115969_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115964115967_
                                             _g115965115969_)))))
                              (declare (not safe))
                              (foldr1 __tmp118235 '() _L115947_))))
                       (declare (not safe))
                       (ormap1 __tmp118236 __tmp118234)))
                   _expr115905115944_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115900115928_
                                             _target115897115923_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115891115910_
                                           _g115892115913_))))))
                              (let ()
                                (declare (not safe))
                                (_g115891115910_ _g115892115913_)))))
                      (let ()
                        (declare (not safe))
                        (_g115891115910_ _g115892115913_))))))
          (declare (not safe))
          (_g115890115972_ _stx115888_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx115820_ _arg115821_)
        (let* ((_g115823115840_
                (lambda (_g115824115837_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115824115837_))))
               (_g115822115885_
                (lambda (_g115824115843_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115824115843_))
                      (let ((_e115829115845_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115824115843_))))
                        (let ((_hd115828115848_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115829115845_)))
                              (_tl115827115850_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115829115845_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115827115850_))
                              (let ((_e115832115853_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115827115850_))))
                                (let ((_hd115831115856_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115832115853_)))
                                      (_tl115830115858_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115832115853_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115830115858_))
                                      (let ((_e115835115861_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115830115858_))))
                                        (let ((_hd115834115864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115835115861_)))
                                              (_tl115833115866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115835115861_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115833115866_))
                                              ((lambda (_L115869_ _L115870_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115869_
                                                    _arg115821_)))
                                               _hd115834115864_
                                               _hd115831115856_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115823115840_
                                                 _g115824115843_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115823115840_ _g115824115843_)))))
                              (let ()
                                (declare (not safe))
                                (_g115823115840_ _g115824115843_)))))
                      (let ()
                        (declare (not safe))
                        (_g115823115840_ _g115824115843_))))))
          (declare (not safe))
          (_g115822115885_ _stx115820_))))
    (define gxc#find-lambda%
      (lambda (_stx115752_ _arg115753_)
        (let* ((_g115755115772_
                (lambda (_g115756115769_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115756115769_))))
               (_g115754115817_
                (lambda (_g115756115775_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115756115775_))
                      (let ((_e115761115777_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115756115775_))))
                        (let ((_hd115760115780_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115761115777_)))
                              (_tl115759115782_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115761115777_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115759115782_))
                              (let ((_e115764115785_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115759115782_))))
                                (let ((_hd115763115788_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115764115785_)))
                                      (_tl115762115790_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115764115785_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115762115790_))
                                      (let ((_e115767115793_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115762115790_))))
                                        (let ((_hd115766115796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115767115793_)))
                                              (_tl115765115798_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115767115793_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115765115798_))
                                              ((lambda (_L115801_ _L115802_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115801_
                                                    _arg115753_)))
                                               _hd115766115796_
                                               _hd115763115788_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115755115772_
                                                 _g115756115775_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115755115772_ _g115756115775_)))))
                              (let ()
                                (declare (not safe))
                                (_g115755115772_ _g115756115775_)))))
                      (let ()
                        (declare (not safe))
                        (_g115755115772_ _g115756115775_))))))
          (declare (not safe))
          (_g115754115817_ _stx115752_))))
    (define gxc#find-case-lambda%
      (lambda (_stx115634_ _arg115635_)
        (let* ((_g115637115665_
                (lambda (_g115638115662_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115638115662_))))
               (_g115636115749_
                (lambda (_g115638115668_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115638115668_))
                      (let ((_e115643115670_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115638115668_))))
                        (let ((_hd115642115673_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115643115670_)))
                              (_tl115641115675_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115643115670_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115641115675_))
                              (let ((_g118238_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115641115675_
                                        '0))))
                                (begin
                                  (let ((_g118239_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118238_)
                                               (##vector-length _g118238_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118239_ 2)))
                                        (error "Context expects 2 values"
                                               _g118239_)))
                                  (let ((_target115644115678_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118238_ 0)))
                                        (_tl115646115680_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118238_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115646115680_))
                                        (letrec ((_loop115647115683_
                                                  (lambda (_hd115645115686_
                                                           _body115651115688_
                                                           _hd115652115690_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115645115686_))
                                                        (let ((_e115648115693_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115645115686_))))
                  (let ((_lp-hd115649115696_
                         (let () (declare (not safe)) (##car _e115648115693_)))
                        (_lp-tl115650115698_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115648115693_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd115649115696_))
                        (let ((_e115657115701_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd115649115696_))))
                          (let ((_hd115656115704_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115657115701_)))
                                (_tl115655115706_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115657115701_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl115655115706_))
                                (let ((_e115660115709_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl115655115706_))))
                                  (let ((_hd115659115712_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115660115709_)))
                                        (_tl115658115714_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115660115709_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115658115714_))
                                        (let ((__tmp118244
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115659115712_
                                                       _body115651115688_)))
                                              (__tmp118243
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115656115704_
                                                       _hd115652115690_))))
                                          (declare (not safe))
                                          (_loop115647115683_
                                           _lp-tl115650115698_
                                           __tmp118244
                                           __tmp118243))
                                        (let ()
                                          (declare (not safe))
                                          (_g115637115665_ _g115638115668_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115637115665_ _g115638115668_)))))
                        (let ()
                          (declare (not safe))
                          (_g115637115665_ _g115638115668_)))))
                (let ((_body115653115717_ (reverse _body115651115688_))
                      (_hd115654115719_ (reverse _hd115652115690_)))
                  ((lambda (_L115722_ _L115723_)
                     (let ((__tmp118242
                            (lambda (_g115737115739_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115737115739_
                                 _arg115635_))))
                           (__tmp118240
                            (let ((__tmp118241
                                   (lambda (_g115741115744_ _g115742115746_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115741115744_
                                             _g115742115746_)))))
                              (declare (not safe))
                              (foldr1 __tmp118241 '() _L115722_))))
                       (declare (not safe))
                       (ormap1 __tmp118242 __tmp118240)))
                   _body115653115717_
                   _hd115654115719_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115647115683_
                                             _target115644115678_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115637115665_
                                           _g115638115668_))))))
                              (let ()
                                (declare (not safe))
                                (_g115637115665_ _g115638115668_)))))
                      (let ()
                        (declare (not safe))
                        (_g115637115665_ _g115638115668_))))))
          (declare (not safe))
          (_g115636115749_ _stx115634_))))
    (define gxc#find-let-values%
      (lambda (_stx115484_ _arg115485_)
        (let* ((_g115487115522_
                (lambda (_g115488115519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115488115519_))))
               (_g115486115631_
                (lambda (_g115488115525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115488115525_))
                      (let ((_e115494115527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115488115525_))))
                        (let ((_hd115493115530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115494115527_)))
                              (_tl115492115532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115494115527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115492115532_))
                              (let ((_e115497115535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115492115532_))))
                                (let ((_hd115496115538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115497115535_)))
                                      (_tl115495115540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115497115535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115496115538_))
                                      (let ((_g118245_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115496115538_
                                                '0))))
                                        (begin
                                          (let ((_g118246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118245_)
                                                       (##vector-length
                                                        _g118245_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118246_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118246_)))
                                          (let ((_target115498115543_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118245_ 0)))
                                                (_tl115500115545_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118245_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115500115545_))
                                                (letrec ((_loop115501115548_
                                                          (lambda (_hd115499115551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115505115553_
                           _bind115506115555_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115499115551_))
                        (let ((_e115502115558_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115499115551_))))
                          (let ((_lp-hd115503115561_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115502115558_)))
                                (_lp-tl115504115563_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115502115558_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115503115561_))
                                (let ((_e115511115566_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115503115561_))))
                                  (let ((_hd115510115569_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115511115566_)))
                                        (_tl115509115571_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115511115566_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115509115571_))
                                        (let ((_e115514115574_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115509115571_))))
                                          (let ((_hd115513115577_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115514115574_)))
                                                (_tl115512115579_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115514115574_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115512115579_))
                                                (let ((__tmp118251
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115513115577_
                                                               _expr115505115553_)))
                                                      (__tmp118250
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115510115569_
                                                               _bind115506115555_))))
                                                  (declare (not safe))
                                                  (_loop115501115548_
                                                   _lp-tl115504115563_
                                                   __tmp118251
                                                   __tmp118250))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115487115522_
                                                   _g115488115525_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115487115522_ _g115488115525_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115487115522_ _g115488115525_)))))
                        (let ((_expr115507115582_ (reverse _expr115505115553_))
                              (_bind115508115584_
                               (reverse _bind115506115555_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115495115540_))
                              (let ((_e115517115587_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115495115540_))))
                                (let ((_hd115516115590_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115517115587_)))
                                      (_tl115515115592_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115517115587_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115515115592_))
                                      ((lambda (_L115595_ _L115596_ _L115597_)
                                         (let ((_$e115628_
                                                (let ((__tmp118249
                                                       (lambda (_g115616115618_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g115616115618_
                                                            _arg115485_))))
                                                      (__tmp118247
                                                       (let ((__tmp118248
                                                              (lambda (_g115620115623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115621115625_)
                        (let ()
                          (declare (not safe))
                          (cons _g115620115623_ _g115621115625_)))))
                 (declare (not safe))
                 (foldr1 __tmp118248 '() _L115596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118249
                                                          __tmp118247))))
                                           (if _$e115628_
                                               _$e115628_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L115595_
                                                  _arg115485_)))))
                                       _hd115516115590_
                                       _expr115507115582_
                                       _bind115508115584_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115487115522_ _g115488115525_)))))
                              (let ()
                                (declare (not safe))
                                (_g115487115522_ _g115488115525_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115501115548_
                                                     _target115498115543_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115487115522_
                                                   _g115488115525_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115487115522_ _g115488115525_)))))
                              (let ()
                                (declare (not safe))
                                (_g115487115522_ _g115488115525_)))))
                      (let ()
                        (declare (not safe))
                        (_g115487115522_ _g115488115525_))))))
          (declare (not safe))
          (_g115486115631_ _stx115484_))))
    (define gxc#find-setq%
      (lambda (_stx115416_ _arg115417_)
        (let* ((_g115419115436_
                (lambda (_g115420115433_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115420115433_))))
               (_g115418115481_
                (lambda (_g115420115439_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115420115439_))
                      (let ((_e115425115441_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115420115439_))))
                        (let ((_hd115424115444_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115425115441_)))
                              (_tl115423115446_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115425115441_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115423115446_))
                              (let ((_e115428115449_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115423115446_))))
                                (let ((_hd115427115452_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115428115449_)))
                                      (_tl115426115454_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115428115449_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115426115454_))
                                      (let ((_e115431115457_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115426115454_))))
                                        (let ((_hd115430115460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115431115457_)))
                                              (_tl115429115462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115431115457_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115429115462_))
                                              ((lambda (_L115465_ _L115466_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115465_
                                                    _arg115417_)))
                                               _hd115430115460_
                                               _hd115427115452_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115419115436_
                                                 _g115420115439_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115419115436_ _g115420115439_)))))
                              (let ()
                                (declare (not safe))
                                (_g115419115436_ _g115420115439_)))))
                      (let ()
                        (declare (not safe))
                        (_g115419115436_ _g115420115439_))))))
          (declare (not safe))
          (_g115418115481_ _stx115416_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx115360_ _ids115361_)
        (let* ((_g115363115376_
                (lambda (_g115364115373_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115364115373_))))
               (_g115362115413_
                (lambda (_g115364115379_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115364115379_))
                      (let ((_e115368115381_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115364115379_))))
                        (let ((_hd115367115384_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115368115381_)))
                              (_tl115366115386_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115368115381_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115366115386_))
                              (let ((_e115371115389_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115366115386_))))
                                (let ((_hd115370115392_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115371115389_)))
                                      (_tl115369115394_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115371115389_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115369115394_))
                                      ((lambda (_L115397_)
                                         (let ((__tmp118252
                                                (lambda (_g115408115410_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L115397_
                                                     _g115408115410_)))))
                                           (declare (not safe))
                                           (find __tmp118252 _ids115361_)))
                                       _hd115370115392_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115363115376_ _g115364115379_)))))
                              (let ()
                                (declare (not safe))
                                (_g115363115376_ _g115364115379_)))))
                      (let ()
                        (declare (not safe))
                        (_g115363115376_ _g115364115379_))))))
          (declare (not safe))
          (_g115362115413_ _stx115360_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx115284_ _ids115285_)
        (let* ((_g115287115304_
                (lambda (_g115288115301_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115288115301_))))
               (_g115286115357_
                (lambda (_g115288115307_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115288115307_))
                      (let ((_e115293115309_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115288115307_))))
                        (let ((_hd115292115312_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115293115309_)))
                              (_tl115291115314_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115293115309_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115291115314_))
                              (let ((_e115296115317_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115291115314_))))
                                (let ((_hd115295115320_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115296115317_)))
                                      (_tl115294115322_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115296115317_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115294115322_))
                                      (let ((_e115299115325_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115294115322_))))
                                        (let ((_hd115298115328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115299115325_)))
                                              (_tl115297115330_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115299115325_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115297115330_))
                                              ((lambda (_L115333_ _L115334_)
                                                 (let ((_$e115354_
                                                        (let ((__tmp118253
                                                               (lambda (_g115349115351_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L115334_ _g115349115351_)))))
                  (declare (not safe))
                  (find __tmp118253 _ids115285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e115354_
                                                       _$e115354_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L115333_
                                                          _ids115285_)))))
                                               _hd115298115328_
                                               _hd115295115320_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115287115304_
                                                 _g115288115307_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115287115304_ _g115288115307_)))))
                              (let ()
                                (declare (not safe))
                                (_g115287115304_ _g115288115307_)))))
                      (let ()
                        (declare (not safe))
                        (_g115287115304_ _g115288115307_))))))
          (declare (not safe))
          (_g115286115357_ _stx115284_))))))
