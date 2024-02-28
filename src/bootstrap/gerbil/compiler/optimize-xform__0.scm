(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1709125256)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl117888_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl117888_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl117884_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117884_ '%#declare gxc#xform-identity))
           _tbl117884_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl117880_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118134 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl117880_ __tmp118134))
           (let ((__tmp118135 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl117880_ __tmp118135))
           _tbl117880_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl117876_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117876_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117876_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117876_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117876_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117876_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl117876_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl117872_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118136 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117872_ __tmp118136))
           (let ((__tmp118137 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl117872_ __tmp118137))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117872_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117872_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117872_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117872_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117872_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl117872_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl117868_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118138 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117868_ __tmp118138))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl117868_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx117851_ . _args117853_)
        (let ((__tmp118140
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117853_)
                     (gxc#compile-e__0 _stx117851_)
                     (let ((_arg1117858_ (car _args117853_))
                           (_rest117860_ (cdr _args117853_)))
                       (if (null? _rest117860_)
                           (gxc#compile-e__1 _stx117851_ _arg1117858_)
                           (let ((_arg2117863_ (car _rest117860_))
                                 (_rest117865_ (cdr _rest117860_)))
                             (if (null? _rest117865_)
                                 (gxc#compile-e__2
                                  _stx117851_
                                  _arg1117858_
                                  _arg2117863_)
                                 (apply gxc#compile-e
                                        _stx117851_
                                        _arg1117858_
                                        _arg2117863_
                                        _rest117865_))))))))
              (__tmp118139 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp118140
           gxc#current-compile-methods
           __tmp118139))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl117848_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118141 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117848_ __tmp118141))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117848_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117848_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117848_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117848_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117848_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl117848_))))
    (define gxc#apply-collect-methods
      (lambda (_stx117831_ . _args117833_)
        (let ((__tmp118143
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117833_)
                     (gxc#compile-e__0 _stx117831_)
                     (let ((_arg1117838_ (car _args117833_))
                           (_rest117840_ (cdr _args117833_)))
                       (if (null? _rest117840_)
                           (gxc#compile-e__1 _stx117831_ _arg1117838_)
                           (let ((_arg2117843_ (car _rest117840_))
                                 (_rest117845_ (cdr _rest117840_)))
                             (if (null? _rest117845_)
                                 (gxc#compile-e__2
                                  _stx117831_
                                  _arg1117838_
                                  _arg2117843_)
                                 (apply gxc#compile-e
                                        _stx117831_
                                        _arg1117838_
                                        _arg2117843_
                                        _rest117845_))))))))
              (__tmp118142 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp118143
           gxc#current-compile-methods
           __tmp118142))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl117828_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118144 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117828_ __tmp118144))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117828_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117828_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117828_ '%#set! gxc#expression-subst-setq%))
           _tbl117828_))))
    (define gxc#apply-expression-subst
      (lambda (_stx117811_ . _args117813_)
        (let ((__tmp118146
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117813_)
                     (gxc#compile-e__0 _stx117811_)
                     (let ((_arg1117818_ (car _args117813_))
                           (_rest117820_ (cdr _args117813_)))
                       (if (null? _rest117820_)
                           (gxc#compile-e__1 _stx117811_ _arg1117818_)
                           (let ((_arg2117823_ (car _rest117820_))
                                 (_rest117825_ (cdr _rest117820_)))
                             (if (null? _rest117825_)
                                 (gxc#compile-e__2
                                  _stx117811_
                                  _arg1117818_
                                  _arg2117823_)
                                 (apply gxc#compile-e
                                        _stx117811_
                                        _arg1117818_
                                        _arg2117823_
                                        _rest117825_))))))))
              (__tmp118145 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp118146
           gxc#current-compile-methods
           __tmp118145))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl117808_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118147 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl117808_ __tmp118147))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#set! gxc#expression-subst*-setq%))
           _tbl117808_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx117791_ . _args117793_)
        (let ((__tmp118149
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117793_)
                     (gxc#compile-e__0 _stx117791_)
                     (let ((_arg1117798_ (car _args117793_))
                           (_rest117800_ (cdr _args117793_)))
                       (if (null? _rest117800_)
                           (gxc#compile-e__1 _stx117791_ _arg1117798_)
                           (let ((_arg2117803_ (car _rest117800_))
                                 (_rest117805_ (cdr _rest117800_)))
                             (if (null? _rest117805_)
                                 (gxc#compile-e__2
                                  _stx117791_
                                  _arg1117798_
                                  _arg2117803_)
                                 (apply gxc#compile-e
                                        _stx117791_
                                        _arg1117798_
                                        _arg2117803_
                                        _rest117805_))))))))
              (__tmp118148 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp118149
           gxc#current-compile-methods
           __tmp118148))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl117788_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118150 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl117788_ __tmp118150))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117788_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117788_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl117788_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl117784_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118151 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl117784_ __tmp118151))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117784_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117784_ '%#set! gxc#find-var-refs-setq%))
           _tbl117784_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx117767_ . _args117769_)
        (let ((__tmp118153
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117769_)
                     (gxc#compile-e__0 _stx117767_)
                     (let ((_arg1117774_ (car _args117769_))
                           (_rest117776_ (cdr _args117769_)))
                       (if (null? _rest117776_)
                           (gxc#compile-e__1 _stx117767_ _arg1117774_)
                           (let ((_arg2117779_ (car _rest117776_))
                                 (_rest117781_ (cdr _rest117776_)))
                             (if (null? _rest117781_)
                                 (gxc#compile-e__2
                                  _stx117767_
                                  _arg1117774_
                                  _arg2117779_)
                                 (apply gxc#compile-e
                                        _stx117767_
                                        _arg1117774_
                                        _arg2117779_
                                        _rest117781_))))))))
              (__tmp118152 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118153
           gxc#current-compile-methods
           __tmp118152))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl117764_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118154 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl117764_ __tmp118154))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117764_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117764_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl117764_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx117747_ . _args117749_)
        (let ((__tmp118156
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117749_)
                     (gxc#compile-e__0 _stx117747_)
                     (let ((_arg1117754_ (car _args117749_))
                           (_rest117756_ (cdr _args117749_)))
                       (if (null? _rest117756_)
                           (gxc#compile-e__1 _stx117747_ _arg1117754_)
                           (let ((_arg2117759_ (car _rest117756_))
                                 (_rest117761_ (cdr _rest117756_)))
                             (if (null? _rest117761_)
                                 (gxc#compile-e__2
                                  _stx117747_
                                  _arg1117754_
                                  _arg2117759_)
                                 (apply gxc#compile-e
                                        _stx117747_
                                        _arg1117754_
                                        _arg2117759_
                                        _rest117761_))))))))
              (__tmp118155 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118156
           gxc#current-compile-methods
           __tmp118155))))
    (define gxc#xform-identity
      (lambda (_stx117744_ . _args117745_) _stx117744_))
    (define gxc#xform-wrap-source
      (lambda (_stx117741_ _src-stx117742_)
        (let ((__tmp118157
               (let () (declare (not safe)) (gx#stx-source _src-stx117742_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx117741_ __tmp118157))))
    (define gxc#xform-apply-compile-e
      (lambda (_args117728_)
        (lambda (_stx117730_)
          (if (let () (declare (not safe)) (null? _args117728_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx117730_))
              (let ((_arg1117732_ (car _args117728_))
                    (_rest117734_ (cdr _args117728_)))
                (if (let () (declare (not safe)) (null? _rest117734_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx117730_ _arg1117732_))
                    (let ((_arg2117737_ (car _rest117734_))
                          (_rest117739_ (cdr _rest117734_)))
                      (if (let () (declare (not safe)) (null? _rest117739_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx117730_
                             _arg1117732_
                             _arg2117737_))
                          (apply gxc#compile-e
                                 _stx117730_
                                 _arg1117732_
                                 _arg2117737_
                                 _rest117739_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx117687_ . _args117688_)
        (let* ((_g117690117700_
                (lambda (_g117691117697_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117691117697_))))
               (_g117689117725_
                (lambda (_g117691117703_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117691117703_))
                      (let ((_e117695117705_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117691117703_))))
                        (let ((_hd117694117708_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117695117705_)))
                              (_tl117693117710_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117695117705_))))
                          ((lambda (_L117713_)
                             (let* ((_forms117723_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117688_))
                                          _L117713_))
                                    (__tmp118158
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms117723_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118158
                                _stx117687_)))
                           _tl117693117710_)))
                      (let ()
                        (declare (not safe))
                        (_g117690117700_ _g117691117703_))))))
          (declare (not safe))
          (_g117689117725_ _stx117687_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx117645_ . _args117646_)
        (let* ((_g117648117658_
                (lambda (_g117649117655_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117649117655_))))
               (_g117647117684_
                (lambda (_g117649117661_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117649117661_))
                      (let ((_e117653117663_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117649117661_))))
                        (let ((_hd117652117666_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117653117663_)))
                              (_tl117651117668_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117653117663_))))
                          ((lambda (_L117671_)
                             (let ((__tmp118161
                                    (lambda ()
                                      (let* ((_forms117682_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args117646_))
                                                   _L117671_))
                                             (__tmp118162
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms117682_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp118162
                                         _stx117645_))))
                                   (__tmp118159
                                    (let ((__tmp118160
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp118160 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp118161
                                gx#current-expander-phi
                                __tmp118159)))
                           _tl117651117668_)))
                      (let ()
                        (declare (not safe))
                        (_g117648117658_ _g117649117661_))))))
          (declare (not safe))
          (_g117647117684_ _stx117645_))))
    (define gxc#xform-module%
      (lambda (_stx117573_ . _args117574_)
        (let* ((_g117576117590_
                (lambda (_g117577117587_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117577117587_))))
               (_g117575117642_
                (lambda (_g117577117593_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117577117593_))
                      (let ((_e117582117595_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117577117593_))))
                        (let ((_hd117581117598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117582117595_)))
                              (_tl117580117600_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117582117595_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117580117600_))
                              (let ((_e117585117603_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117580117600_))))
                                (let ((_hd117584117606_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117585117603_)))
                                      (_tl117583117608_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117585117603_))))
                                  ((lambda (_L117611_ _L117612_)
                                     (let* ((_ctx117625_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L117612_)))
                                            (_code117627_
                                             (##structure-ref
                                              _ctx117625_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code117639_
                                             (let ((__tmp118163
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args117574_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code117627_))
                                                          (let ((_arg1117630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args117574_))
                        (_rest117632_ (cdr _args117574_)))
                    (if (let () (declare (not safe)) (null? _rest117632_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code117627_ _arg1117630_))
                        (let ((_arg2117635_ (car _rest117632_))
                              (_rest117637_ (cdr _rest117632_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest117637_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code117627_
                                 _arg1117630_
                                 _arg2117635_))
                              (apply gxc#compile-e
                                     _code117627_
                                     _arg1117630_
                                     _arg2117635_
                                     _rest117637_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp118163
                                                gx#current-expander-context
                                                _ctx117625_))))
                                       (##structure-set!
                                        _ctx117625_
                                        _code117639_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp118164
                                              (let ((__tmp118165
                                                     (let ((__tmp118166
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code117639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L117612_ __tmp118166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp118165))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp118164
                                          _stx117573_))))
                                   _tl117583117608_
                                   _hd117584117606_)))
                              (let ()
                                (declare (not safe))
                                (_g117576117590_ _g117577117593_)))))
                      (let ()
                        (declare (not safe))
                        (_g117576117590_ _g117577117593_))))))
          (declare (not safe))
          (_g117575117642_ _stx117573_))))
    (define gxc#xform-define-values%
      (lambda (_stx117494_ . _args117495_)
        (let* ((_g117497117514_
                (lambda (_g117498117511_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117498117511_))))
               (_g117496117570_
                (lambda (_g117498117517_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117498117517_))
                      (let ((_e117503117519_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117498117517_))))
                        (let ((_hd117502117522_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117503117519_)))
                              (_tl117501117524_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117503117519_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117501117524_))
                              (let ((_e117506117527_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117501117524_))))
                                (let ((_hd117505117530_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117506117527_)))
                                      (_tl117504117532_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117506117527_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117504117532_))
                                      (let ((_e117509117535_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117504117532_))))
                                        (let ((_hd117508117538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117509117535_)))
                                              (_tl117507117540_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117509117535_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117507117540_))
                                              ((lambda (_L117543_ _L117544_)
                                                 (let* ((_expr117568_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117495_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117543_))
                     (let ((_arg1117559_ (car _args117495_))
                           (_rest117561_ (cdr _args117495_)))
                       (if (let () (declare (not safe)) (null? _rest117561_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117543_ _arg1117559_))
                           (let ((_arg2117564_ (car _rest117561_))
                                 (_rest117566_ (cdr _rest117561_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117566_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117543_
                                    _arg1117559_
                                    _arg2117564_))
                                 (apply gxc#compile-e
                                        _L117543_
                                        _arg1117559_
                                        _arg2117564_
                                        _rest117566_)))))))
                (__tmp118167
                 (let ((__tmp118168
                        (let ((__tmp118169
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117568_ '()))))
                          (declare (not safe))
                          (cons _L117544_ __tmp118169))))
                   (declare (not safe))
                   (cons '%#define-values __tmp118168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118167
                                                    _stx117494_)))
                                               _hd117508117538_
                                               _hd117505117530_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117497117514_
                                                 _g117498117517_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117497117514_ _g117498117517_)))))
                              (let ()
                                (declare (not safe))
                                (_g117497117514_ _g117498117517_)))))
                      (let ()
                        (declare (not safe))
                        (_g117497117514_ _g117498117517_))))))
          (declare (not safe))
          (_g117496117570_ _stx117494_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx117414_ . _args117415_)
        (let* ((_g117417117434_
                (lambda (_g117418117431_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117418117431_))))
               (_g117416117491_
                (lambda (_g117418117437_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117418117437_))
                      (let ((_e117423117439_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117418117437_))))
                        (let ((_hd117422117442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117423117439_)))
                              (_tl117421117444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117423117439_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117421117444_))
                              (let ((_e117426117447_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117421117444_))))
                                (let ((_hd117425117450_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117426117447_)))
                                      (_tl117424117452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117426117447_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117424117452_))
                                      (let ((_e117429117455_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117424117452_))))
                                        (let ((_hd117428117458_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117429117455_)))
                                              (_tl117427117460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117429117455_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117427117460_))
                                              ((lambda (_L117463_ _L117464_)
                                                 (let ((__tmp118172
                                                        (lambda ()
                                                          (let* ((_expr117489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args117415_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L117463_))
                              (let ((_arg1117480_ (car _args117415_))
                                    (_rest117482_ (cdr _args117415_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest117482_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L117463_
                                       _arg1117480_))
                                    (let ((_arg2117485_ (car _rest117482_))
                                          (_rest117487_ (cdr _rest117482_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest117487_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L117463_
                                             _arg1117480_
                                             _arg2117485_))
                                          (apply gxc#compile-e
                                                 _L117463_
                                                 _arg1117480_
                                                 _arg2117485_
                                                 _rest117487_)))))))
                         (__tmp118173
                          (let ((__tmp118174
                                 (let ((__tmp118175
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr117489_ '()))))
                                   (declare (not safe))
                                   (cons _L117464_ __tmp118175))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp118174))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp118173 _stx117414_))))
               (__tmp118170
                (let ((__tmp118171 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp118171 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp118172
                                                    gx#current-expander-phi
                                                    __tmp118170)))
                                               _hd117428117458_
                                               _hd117425117450_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117417117434_
                                                 _g117418117437_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117417117434_ _g117418117437_)))))
                              (let ()
                                (declare (not safe))
                                (_g117417117434_ _g117418117437_)))))
                      (let ()
                        (declare (not safe))
                        (_g117417117434_ _g117418117437_))))))
          (declare (not safe))
          (_g117416117491_ _stx117414_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx117335_ . _args117336_)
        (let* ((_g117338117355_
                (lambda (_g117339117352_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117339117352_))))
               (_g117337117411_
                (lambda (_g117339117358_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117339117358_))
                      (let ((_e117344117360_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117339117358_))))
                        (let ((_hd117343117363_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117344117360_)))
                              (_tl117342117365_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117344117360_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117342117365_))
                              (let ((_e117347117368_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117342117365_))))
                                (let ((_hd117346117371_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117347117368_)))
                                      (_tl117345117373_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117347117368_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117345117373_))
                                      (let ((_e117350117376_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117345117373_))))
                                        (let ((_hd117349117379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117350117376_)))
                                              (_tl117348117381_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117350117376_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117348117381_))
                                              ((lambda (_L117384_ _L117385_)
                                                 (let* ((_expr117409_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117336_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117384_))
                     (let ((_arg1117400_ (car _args117336_))
                           (_rest117402_ (cdr _args117336_)))
                       (if (let () (declare (not safe)) (null? _rest117402_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117384_ _arg1117400_))
                           (let ((_arg2117405_ (car _rest117402_))
                                 (_rest117407_ (cdr _rest117402_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117407_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117384_
                                    _arg1117400_
                                    _arg2117405_))
                                 (apply gxc#compile-e
                                        _L117384_
                                        _arg1117400_
                                        _arg2117405_
                                        _rest117407_)))))))
                (__tmp118176
                 (let ((__tmp118177
                        (let ((__tmp118178
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117409_ '()))))
                          (declare (not safe))
                          (cons _L117385_ __tmp118178))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp118177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118176
                                                    _stx117335_)))
                                               _hd117349117379_
                                               _hd117346117371_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117338117355_
                                                 _g117339117358_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117338117355_ _g117339117358_)))))
                              (let ()
                                (declare (not safe))
                                (_g117338117355_ _g117339117358_)))))
                      (let ()
                        (declare (not safe))
                        (_g117338117355_ _g117339117358_))))))
          (declare (not safe))
          (_g117337117411_ _stx117335_))))
    (define gxc#xform-lambda%
      (lambda (_stx117278_ . _args117279_)
        (let* ((_g117281117295_
                (lambda (_g117282117292_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117282117292_))))
               (_g117280117332_
                (lambda (_g117282117298_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117282117298_))
                      (let ((_e117287117300_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117282117298_))))
                        (let ((_hd117286117303_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117287117300_)))
                              (_tl117285117305_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117287117300_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117285117305_))
                              (let ((_e117290117308_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117285117305_))))
                                (let ((_hd117289117311_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117290117308_)))
                                      (_tl117288117313_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117290117308_))))
                                  ((lambda (_L117316_ _L117317_)
                                     (let* ((_body117330_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args117279_))
                                                  _L117316_))
                                            (__tmp118179
                                             (let ((__tmp118180
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L117317_
                                                            _body117330_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp118180))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp118179
                                        _stx117278_)))
                                   _tl117288117313_
                                   _hd117289117311_)))
                              (let ()
                                (declare (not safe))
                                (_g117281117295_ _g117282117298_)))))
                      (let ()
                        (declare (not safe))
                        (_g117281117295_ _g117282117298_))))))
          (declare (not safe))
          (_g117280117332_ _stx117278_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx117191_ . _args117192_)
        (letrec ((_clause-e117194_
                  (lambda (_clause117235_)
                    (let* ((_g117237117248_
                            (lambda (_g117238117245_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g117238117245_))))
                           (_g117236117275_
                            (lambda (_g117238117251_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g117238117251_))
                                  (let ((_e117243117253_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g117238117251_))))
                                    (let ((_hd117242117256_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117243117253_)))
                                          (_tl117241117258_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117243117253_))))
                                      ((lambda (_L117261_ _L117262_)
                                         (let ((_body117273_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args117192_))
                                                     _L117261_)))
                                           (declare (not safe))
                                           (cons _L117262_ _body117273_)))
                                       _tl117241117258_
                                       _hd117242117256_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117237117248_ _g117238117251_))))))
                      (declare (not safe))
                      (_g117236117275_ _clause117235_)))))
          (let* ((_g117196117206_
                  (lambda (_g117197117203_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g117197117203_))))
                 (_g117195117232_
                  (lambda (_g117197117209_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g117197117209_))
                        (let ((_e117201117211_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g117197117209_))))
                          (let ((_hd117200117214_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117201117211_)))
                                (_tl117199117216_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117201117211_))))
                            ((lambda (_L117219_)
                               (let* ((_clauses117230_
                                       (map _clause-e117194_ _L117219_))
                                      (__tmp118181
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses117230_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp118181
                                  _stx117191_)))
                             _tl117199117216_)))
                        (let ()
                          (declare (not safe))
                          (_g117196117206_ _g117197117209_))))))
            (declare (not safe))
            (_g117195117232_ _stx117191_)))))
    (define gxc#xform-let-values%
      (lambda (_stx116985_ . _args116986_)
        (let* ((_g116988117021_
                (lambda (_g116989117018_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116989117018_))))
               (_g116987117188_
                (lambda (_g116989117024_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116989117024_))
                      (let ((_e116996117026_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116989117024_))))
                        (let ((_hd116995117029_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116996117026_)))
                              (_tl116994117031_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116996117026_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116994117031_))
                              (let ((_e116999117034_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116994117031_))))
                                (let ((_hd116998117037_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116999117034_)))
                                      (_tl116997117039_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116999117034_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd116998117037_))
                                      (let ((_g118182_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd116998117037_
                                                '0))))
                                        (begin
                                          (let ((_g118183_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118182_)
                                                       (##vector-length
                                                        _g118182_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118183_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118183_)))
                                          (let ((_target117000117042_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118182_ 0)))
                                                (_tl117002117044_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118182_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117002117044_))
                                                (letrec ((_loop117003117047_
                                                          (lambda (_hd117001117050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117007117052_
                           _hd117008117054_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117001117050_))
                        (let ((_e117004117057_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117001117050_))))
                          (let ((_lp-hd117005117060_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117004117057_)))
                                (_lp-tl117006117062_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117004117057_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117005117060_))
                                (let ((_e117013117065_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117005117060_))))
                                  (let ((_hd117012117068_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e117013117065_)))
                                        (_tl117011117070_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e117013117065_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117011117070_))
                                        (let ((_e117016117073_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117011117070_))))
                                          (let ((_hd117015117076_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117016117073_)))
                                                (_tl117014117078_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117016117073_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117014117078_))
                                                (let ((__tmp118196
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117015117076_
                                                               _expr117007117052_)))
                                                      (__tmp118195
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117012117068_
                                                               _hd117008117054_))))
                                                  (declare (not safe))
                                                  (_loop117003117047_
                                                   _lp-tl117006117062_
                                                   __tmp118196
                                                   __tmp118195))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116988117021_
                                                   _g116989117024_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g116988117021_ _g116989117024_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116988117021_ _g116989117024_)))))
                        (let ((_expr117009117081_ (reverse _expr117007117052_))
                              (_hd117010117083_ (reverse _hd117008117054_)))
                          ((lambda (_L117086_ _L117087_ _L117088_ _L117089_)
                             (let* ((_g117108117124_
                                     (lambda (_g117109117121_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g117109117121_))))
                                    (_g117107117178_
                                     (lambda (_g117109117127_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g117109117127_))
                                           (let ((_g118184_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g117109117127_
                                                     '0))))
                                             (begin
                                               (let ((_g118185_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g118184_)
                                                            (##vector-length
                                                             _g118184_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g118185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g118185_)))
                                               (let ((_target117111117129_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118184_
                                                         0)))
                                                     (_tl117113117131_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118184_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117113117131_))
                                                     (letrec ((_loop117114117134_
                                                               (lambda (_hd117112117137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr117118117139_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd117112117137_))
                             (let ((_e117115117142_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd117112117137_))))
                               (let ((_lp-hd117116117145_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e117115117142_)))
                                     (_lp-tl117117117147_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e117115117142_))))
                                 (let ((__tmp118192
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd117116117145_
                                                _expr117118117139_))))
                                   (declare (not safe))
                                   (_loop117114117134_
                                    _lp-tl117117117147_
                                    __tmp118192))))
                             (let ((_expr117119117150_
                                    (reverse _expr117118117139_)))
                               ((lambda (_L117153_)
                                  (let ()
                                    (let* ((_body117166_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args116986_))
                                                 _L117086_))
                                           (__tmp118186
                                            (let ((__tmp118187
                                                   (let ((__tmp118188
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L117153_
                                                               _L117088_))
                                                            (let ((__tmp118189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g117167117171_
                                    _g117168117173_
                                    _g117169117175_)
                             (let ((__tmp118190
                                    (let ((__tmp118191
                                           (let ()
                                             (declare (not safe))
                                             (cons _g117167117171_ '()))))
                                      (declare (not safe))
                                      (cons _g117168117173_ __tmp118191))))
                               (declare (not safe))
                               (cons __tmp118190 _g117169117175_)))))
                      (declare (not safe))
                      (foldr2 __tmp118189 '() _L117153_ _L117088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp118188
                                                           _body117166_))))
                                              (declare (not safe))
                                              (cons _L117089_ __tmp118187))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp118186
                                       _stx116985_))))
                                _expr117119117150_))))))
               (let ()
                 (declare (not safe))
                 (_loop117114117134_ _target117111117129_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g117108117124_
                                                        _g117109117127_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117108117124_
                                              _g117109117127_)))))
                                    (__tmp118193
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116986_))
                                          (let ((__tmp118194
                                                 (lambda (_g117180117183_
                                                          _g117181117185_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g117180117183_
                                                           _g117181117185_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp118194
                                                    '()
                                                    _L117087_)))))
                               (declare (not safe))
                               (_g117107117178_ __tmp118193)))
                           _tl116997117039_
                           _expr117009117081_
                           _hd117010117083_
                           _hd116995117029_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117003117047_
                                                     _target117000117042_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116988117021_
                                                   _g116989117024_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116988117021_ _g116989117024_)))))
                              (let ()
                                (declare (not safe))
                                (_g116988117021_ _g116989117024_)))))
                      (let ()
                        (declare (not safe))
                        (_g116988117021_ _g116989117024_))))))
          (declare (not safe))
          (_g116987117188_ _stx116985_))))
    (define gxc#xform-operands
      (lambda (_stx116941_ . _args116942_)
        (let* ((_g116944116955_
                (lambda (_g116945116952_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116945116952_))))
               (_g116943116982_
                (lambda (_g116945116958_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116945116958_))
                      (let ((_e116950116960_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116945116958_))))
                        (let ((_hd116949116963_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116950116960_)))
                              (_tl116948116965_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116950116960_))))
                          ((lambda (_L116968_ _L116969_)
                             (let* ((_rands116980_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116942_))
                                          _L116968_))
                                    (__tmp118197
                                     (let ()
                                       (declare (not safe))
                                       (cons _L116969_ _rands116980_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118197
                                _stx116941_)))
                           _tl116948116965_
                           _hd116949116963_)))
                      (let ()
                        (declare (not safe))
                        (_g116944116955_ _g116945116958_))))))
          (declare (not safe))
          (_g116943116982_ _stx116941_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx116862_ . _args116863_)
        (let* ((_g116865116882_
                (lambda (_g116866116879_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116866116879_))))
               (_g116864116938_
                (lambda (_g116866116885_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116866116885_))
                      (let ((_e116871116887_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116866116885_))))
                        (let ((_hd116870116890_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116871116887_)))
                              (_tl116869116892_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116871116887_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116869116892_))
                              (let ((_e116874116895_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116869116892_))))
                                (let ((_hd116873116898_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116874116895_)))
                                      (_tl116872116900_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116874116895_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116872116900_))
                                      (let ((_e116877116903_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116872116900_))))
                                        (let ((_hd116876116906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116877116903_)))
                                              (_tl116875116908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116877116903_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116875116908_))
                                              ((lambda (_L116911_ _L116912_)
                                                 (let* ((_expr116936_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116863_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116911_))
                     (let ((_arg1116927_ (car _args116863_))
                           (_rest116929_ (cdr _args116863_)))
                       (if (let () (declare (not safe)) (null? _rest116929_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116911_ _arg1116927_))
                           (let ((_arg2116932_ (car _rest116929_))
                                 (_rest116934_ (cdr _rest116929_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116934_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116911_
                                    _arg1116927_
                                    _arg2116932_))
                                 (apply gxc#compile-e
                                        _L116911_
                                        _arg1116927_
                                        _arg2116932_
                                        _rest116934_)))))))
                (__tmp118198
                 (let ((__tmp118199
                        (let ((__tmp118200
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116936_ '()))))
                          (declare (not safe))
                          (cons _L116912_ __tmp118200))))
                   (declare (not safe))
                   (cons '%#set! __tmp118199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118198
                                                    _stx116862_)))
                                               _hd116876116906_
                                               _hd116873116898_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116865116882_
                                                 _g116866116885_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116865116882_ _g116866116885_)))))
                              (let ()
                                (declare (not safe))
                                (_g116865116882_ _g116866116885_)))))
                      (let ()
                        (declare (not safe))
                        (_g116865116882_ _g116866116885_))))))
          (declare (not safe))
          (_g116864116938_ _stx116862_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx116793_)
        (let* ((_g116795116812_
                (lambda (_g116796116809_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116796116809_))))
               (_g116794116859_
                (lambda (_g116796116815_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116796116815_))
                      (let ((_e116801116817_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116796116815_))))
                        (let ((_hd116800116820_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116801116817_)))
                              (_tl116799116822_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116801116817_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116799116822_))
                              (let ((_e116804116825_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116799116822_))))
                                (let ((_hd116803116828_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116804116825_)))
                                      (_tl116802116830_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116804116825_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116802116830_))
                                      (let ((_e116807116833_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116802116830_))))
                                        (let ((_hd116806116836_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116807116833_)))
                                              (_tl116805116838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116807116833_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116805116838_))
                                              ((lambda (_L116841_ _L116842_)
                                                 (let ((_sym116857_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116842_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym116857_))
                                                   (let ((__tmp118201
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118201
                                                      _sym116857_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L116841_))))
                                               _hd116806116836_
                                               _hd116803116828_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116795116812_
                                                 _g116796116815_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116795116812_ _g116796116815_)))))
                              (let ()
                                (declare (not safe))
                                (_g116795116812_ _g116796116815_)))))
                      (let ()
                        (declare (not safe))
                        (_g116795116812_ _g116796116815_))))))
          (declare (not safe))
          (_g116794116859_ _stx116793_))))
    (define gxc#collect-methods-call%
      (lambda (_stx116347_)
        (let* ((___stx117891117892_ _stx116347_)
               (_g116351116453_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx117891117892_)))))
          (let ((___kont117893117894_
                 (lambda (_L116743_ _L116744_ _L116745_ _L116746_ _L116747_)
                   (let ((__tmp118202
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116744_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118202))))
                (___kont117895117896_
                 (lambda (_L116569_ _L116570_ _L116571_ _L116572_)
                   (let ((__tmp118203
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116569_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118203))))
                (___kont117897117898_ (lambda () '#!void)))
            (let ((___match118026118027_
                   (lambda (_e116360116615_
                            _hd116359116618_
                            _tl116358116620_
                            _e116363116623_
                            _hd116362116626_
                            _tl116361116628_
                            _e116366116631_
                            _hd116365116634_
                            _tl116364116636_
                            _e116369116639_
                            _hd116368116642_
                            _tl116367116644_
                            _e116372116647_
                            _hd116371116650_
                            _tl116370116652_
                            _e116375116655_
                            _hd116374116658_
                            _tl116373116660_
                            _e116378116663_
                            _hd116377116666_
                            _tl116376116668_
                            _e116381116671_
                            _hd116380116674_
                            _tl116379116676_
                            _e116384116679_
                            _hd116383116682_
                            _tl116382116684_
                            _e116387116687_
                            _hd116386116690_
                            _tl116385116692_
                            _e116390116695_
                            _hd116389116698_
                            _tl116388116700_
                            _e116393116703_
                            _hd116392116706_
                            _tl116391116708_
                            _e116396116711_
                            _hd116395116714_
                            _tl116394116716_
                            _e116399116719_
                            _hd116398116722_
                            _tl116397116724_
                            _e116402116727_
                            _hd116401116730_
                            _tl116400116732_
                            _e116405116735_
                            _hd116404116738_
                            _tl116403116740_)
                     (let ((_L116743_ _hd116404116738_)
                           (_L116744_ _hd116395116714_)
                           (_L116745_ _hd116386116690_)
                           (_L116746_ _hd116377116666_)
                           (_L116747_ _hd116368116642_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L116747_
                              'bind-method!))
                           (___kont117893117894_
                            _L116743_
                            _L116744_
                            _L116745_
                            _L116746_
                            _L116747_)
                           (___kont117897117898_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx117891117892_))
                  (let ((_e116360116615_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx117891117892_))))
                    (let ((_tl116358116620_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116360116615_)))
                          (_hd116359116618_
                           (let ()
                             (declare (not safe))
                             (##car _e116360116615_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116358116620_))
                          (let ((_e116363116623_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116358116620_))))
                            (let ((_tl116361116628_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116363116623_)))
                                  (_hd116362116626_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116363116623_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116362116626_))
                                  (let ((_e116366116631_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116362116626_))))
                                    (let ((_tl116364116636_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116366116631_)))
                                          (_hd116365116634_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116366116631_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd116365116634_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd116365116634_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116364116636_))
                                                  (let ((_e116369116639_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116364116636_))))
                                                    (let ((_tl116367116644_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116369116639_)))
                                                          (_hd116368116642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116369116639_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116367116644_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116361116628_))
                      (let ((_e116372116647_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116361116628_))))
                        (let ((_tl116370116652_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116372116647_)))
                              (_hd116371116650_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116372116647_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd116371116650_))
                              (let ((_e116375116655_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd116371116650_))))
                                (let ((_tl116373116660_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116375116655_)))
                                      (_hd116374116658_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116375116655_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd116374116658_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd116374116658_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl116373116660_))
                                              (let ((_e116378116663_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl116373116660_))))
                                                (let ((_tl116376116668_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e116378116663_)))
                                                      (_hd116377116666_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e116378116663_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116376116668_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl116370116652_))
                                                          (let ((_e116381116671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl116370116652_))))
                    (let ((_tl116379116676_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116381116671_)))
                          (_hd116380116674_
                           (let ()
                             (declare (not safe))
                             (##car _e116381116671_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd116380116674_))
                          (let ((_e116384116679_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd116380116674_))))
                            (let ((_tl116382116684_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116384116679_)))
                                  (_hd116383116682_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116384116679_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd116383116682_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd116383116682_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl116382116684_))
                                          (let ((_e116387116687_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl116382116684_))))
                                            (let ((_tl116385116692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116387116687_)))
                                                  (_hd116386116690_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116387116687_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl116385116692_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl116379116676_))
                                                      (let ((_e116390116695_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl116379116676_))))
                (let ((_tl116388116700_
                       (let () (declare (not safe)) (##cdr _e116390116695_)))
                      (_hd116389116698_
                       (let () (declare (not safe)) (##car _e116390116695_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd116389116698_))
                      (let ((_e116393116703_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd116389116698_))))
                        (let ((_tl116391116708_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116393116703_)))
                              (_hd116392116706_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116393116703_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd116392116706_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd116392116706_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116391116708_))
                                      (let ((_e116396116711_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116391116708_))))
                                        (let ((_tl116394116716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116396116711_)))
                                              (_hd116395116714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116396116711_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116394116716_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116388116700_))
                                                  (let ((_e116399116719_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116388116700_))))
                                                    (let ((_tl116397116724_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116399116719_)))
                                                          (_hd116398116722_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116399116719_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd116398116722_))
                                                          (let ((_e116402116727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd116398116722_))))
                    (let ((_tl116400116732_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116402116727_)))
                          (_hd116401116730_
                           (let ()
                             (declare (not safe))
                             (##car _e116402116727_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd116401116730_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd116401116730_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl116400116732_))
                                  (let ((_e116405116735_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl116400116732_))))
                                    (let ((_tl116403116740_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116405116735_)))
                                          (_hd116404116738_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116405116735_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl116403116740_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116397116724_))
                                              (___match118026118027_
                                               _e116360116615_
                                               _hd116359116618_
                                               _tl116358116620_
                                               _e116363116623_
                                               _hd116362116626_
                                               _tl116361116628_
                                               _e116366116631_
                                               _hd116365116634_
                                               _tl116364116636_
                                               _e116369116639_
                                               _hd116368116642_
                                               _tl116367116644_
                                               _e116372116647_
                                               _hd116371116650_
                                               _tl116370116652_
                                               _e116375116655_
                                               _hd116374116658_
                                               _tl116373116660_
                                               _e116378116663_
                                               _hd116377116666_
                                               _tl116376116668_
                                               _e116381116671_
                                               _hd116380116674_
                                               _tl116379116676_
                                               _e116384116679_
                                               _hd116383116682_
                                               _tl116382116684_
                                               _e116387116687_
                                               _hd116386116690_
                                               _tl116385116692_
                                               _e116390116695_
                                               _hd116389116698_
                                               _tl116388116700_
                                               _e116393116703_
                                               _hd116392116706_
                                               _tl116391116708_
                                               _e116396116711_
                                               _hd116395116714_
                                               _tl116394116716_
                                               _e116399116719_
                                               _hd116398116722_
                                               _tl116397116724_
                                               _e116402116727_
                                               _hd116401116730_
                                               _tl116400116732_
                                               _e116405116735_
                                               _hd116404116738_
                                               _tl116403116740_)
                                              (___kont117897117898_))
                                          (___kont117897117898_))))
                                  (___kont117897117898_))
                              (___kont117897117898_))
                          (___kont117897117898_))))
                  (___kont117897117898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116388116700_))
                                                      (if (let ((__tmp118204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118204 'bind-method!))
                  (let ((_L116569_ _hd116395116714_)
                        (_L116570_ _hd116386116690_)
                        (_L116571_ _hd116377116666_)
                        (_L116572_ _hd116368116642_))
                    (___kont117895117896_
                     _L116569_
                     _L116570_
                     _L116571_
                     _L116572_))
                  (___kont117897117898_))
              (___kont117897117898_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117897117898_))))
                                      (___kont117897117898_))
                                  (___kont117897117898_))
                              (___kont117897117898_))))
                      (___kont117897117898_))))
              (___kont117897117898_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117897117898_))))
                                          (___kont117897117898_))
                                      (___kont117897117898_))
                                  (___kont117897117898_))))
                          (___kont117897117898_))))
                  (___kont117897117898_))
              (___kont117897117898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117897117898_))
                                          (___kont117897117898_))
                                      (___kont117897117898_))))
                              (___kont117897117898_))))
                      (___kont117897117898_))
                  (___kont117897117898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117897117898_))
                                              (___kont117897117898_))
                                          (___kont117897117898_))))
                                  (___kont117897117898_))))
                          (___kont117897117898_))))
                  (___kont117897117898_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx116294_ _id116295_ _new-id116296_)
        (let* ((_g116298116311_
                (lambda (_g116299116308_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116299116308_))))
               (_g116297116344_
                (lambda (_g116299116314_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116299116314_))
                      (let ((_e116303116316_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116299116314_))))
                        (let ((_hd116302116319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116303116316_)))
                              (_tl116301116321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116303116316_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116301116321_))
                              (let ((_e116306116324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116301116321_))))
                                (let ((_hd116305116327_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116306116324_)))
                                      (_tl116304116329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116306116324_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116304116329_))
                                      ((lambda (_L116332_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L116332_
                                                _id116295_))
                                             (let ((__tmp118205
                                                    (let ((__tmp118206
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id116296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp118206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118205
                                                _stx116294_))
                                             _stx116294_))
                                       _hd116305116327_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116298116311_ _g116299116314_)))))
                              (let ()
                                (declare (not safe))
                                (_g116298116311_ _g116299116314_)))))
                      (let ()
                        (declare (not safe))
                        (_g116298116311_ _g116299116314_))))))
          (declare (not safe))
          (_g116297116344_ _stx116294_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx116235_ _subst116236_)
        (let* ((_g116238116251_
                (lambda (_g116239116248_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116239116248_))))
               (_g116237116291_
                (lambda (_g116239116254_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116239116254_))
                      (let ((_e116243116256_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116239116254_))))
                        (let ((_hd116242116259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116243116256_)))
                              (_tl116241116261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116243116256_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116241116261_))
                              (let ((_e116246116264_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116241116261_))))
                                (let ((_hd116245116267_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116246116264_)))
                                      (_tl116244116269_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116246116264_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116244116269_))
                                      ((lambda (_L116272_)
                                         (let ((_$e116286_
                                                (let ((__tmp118207
                                                       (lambda (_sub116284_)
                                                         (let ((__tmp118208
                                                                (car _sub116284_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L116272_
                                                            __tmp118208)))))
                                                  (declare (not safe))
                                                  (find __tmp118207
                                                        _subst116236_))))
                                           (if _$e116286_
                                               ((lambda (_sub116289_)
                                                  (let ((__tmp118209
                                                         (let ((__tmp118210
                                                                (let ((__tmp118211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub116289_)))
                          (declare (not safe))
                          (cons __tmp118211 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118209
                                                     _stx116235_)))
                                                _$e116286_)
                                               _stx116235_)))
                                       _hd116245116267_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116238116251_ _g116239116254_)))))
                              (let ()
                                (declare (not safe))
                                (_g116238116251_ _g116239116254_)))))
                      (let ()
                        (declare (not safe))
                        (_g116238116251_ _g116239116254_))))))
          (declare (not safe))
          (_g116237116291_ _stx116235_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx116163_ _id116164_ _new-id116165_)
        (let* ((_g116167116184_
                (lambda (_g116168116181_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116168116181_))))
               (_g116166116232_
                (lambda (_g116168116187_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116168116187_))
                      (let ((_e116173116189_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116168116187_))))
                        (let ((_hd116172116192_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116173116189_)))
                              (_tl116171116194_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116173116189_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116171116194_))
                              (let ((_e116176116197_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116171116194_))))
                                (let ((_hd116175116200_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116176116197_)))
                                      (_tl116174116202_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116176116197_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116174116202_))
                                      (let ((_e116179116205_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116174116202_))))
                                        (let ((_hd116178116208_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116179116205_)))
                                              (_tl116177116210_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116179116205_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116177116210_))
                                              ((lambda (_L116213_ _L116214_)
                                                 (let ((_new-expr116229_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L116213_
                                                           _id116164_
                                                           _new-id116165_)))
                                                       (_new-xid116230_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L116214_
                                                               _id116164_))
                                                            _new-id116165_
                                                            _L116214_)))
                                                   (let ((__tmp118212
                                                          (let ((__tmp118213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118214
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116229_ '()))))
                           (declare (not safe))
                           (cons _new-xid116230_ __tmp118214))))
                    (declare (not safe))
                    (cons '%#set! __tmp118213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118212
                                                      _stx116163_))))
                                               _hd116178116208_
                                               _hd116175116200_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116167116184_
                                                 _g116168116187_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116167116184_ _g116168116187_)))))
                              (let ()
                                (declare (not safe))
                                (_g116167116184_ _g116168116187_)))))
                      (let ()
                        (declare (not safe))
                        (_g116167116184_ _g116168116187_))))))
          (declare (not safe))
          (_g116166116232_ _stx116163_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx116087_ _subst116088_)
        (let* ((_g116090116107_
                (lambda (_g116091116104_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116091116104_))))
               (_g116089116160_
                (lambda (_g116091116110_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116091116110_))
                      (let ((_e116096116112_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116091116110_))))
                        (let ((_hd116095116115_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116096116112_)))
                              (_tl116094116117_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116096116112_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116094116117_))
                              (let ((_e116099116120_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116094116117_))))
                                (let ((_hd116098116123_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116099116120_)))
                                      (_tl116097116125_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116099116120_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116097116125_))
                                      (let ((_e116102116128_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116097116125_))))
                                        (let ((_hd116101116131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116102116128_)))
                                              (_tl116100116133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116102116128_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116100116133_))
                                              ((lambda (_L116136_ _L116137_)
                                                 (let ((_new-expr116157_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L116136_
                                                           _subst116088_)))
                                                       (_new-xid116158_
                                                        (let ((_$e116154_
                                                               (let ((__tmp118215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub116152_)
                                (let ((__tmp118216 (car _sub116152_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L116137_
                                   __tmp118216)))))
                         (declare (not safe))
                         (find __tmp118215 _subst116088_))))
                  (if _$e116154_ (cdr _$e116154_) _L116137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118217
                                                          (let ((__tmp118218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118219
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116157_ '()))))
                           (declare (not safe))
                           (cons _new-xid116158_ __tmp118219))))
                    (declare (not safe))
                    (cons '%#set! __tmp118218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118217
                                                      _stx116087_))))
                                               _hd116101116131_
                                               _hd116098116123_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116090116107_
                                                 _g116091116110_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116090116107_ _g116091116110_)))))
                              (let ()
                                (declare (not safe))
                                (_g116090116107_ _g116091116110_)))))
                      (let ()
                        (declare (not safe))
                        (_g116090116107_ _g116091116110_))))))
          (declare (not safe))
          (_g116089116160_ _stx116087_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx116033_ _ht116034_)
        (let* ((_g116036116049_
                (lambda (_g116037116046_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116037116046_))))
               (_g116035116084_
                (lambda (_g116037116052_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116037116052_))
                      (let ((_e116041116054_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116037116052_))))
                        (let ((_hd116040116057_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116041116054_)))
                              (_tl116039116059_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116041116054_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116039116059_))
                              (let ((_e116044116062_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116039116059_))))
                                (let ((_hd116043116065_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116044116062_)))
                                      (_tl116042116067_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116044116062_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116042116067_))
                                      ((lambda (_L116070_)
                                         (let ((_eid116082_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L116070_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht116034_
                                            _eid116082_
                                            1+
                                            '0)))
                                       _hd116043116065_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116036116049_ _g116037116052_)))))
                              (let ()
                                (declare (not safe))
                                (_g116036116049_ _g116037116052_)))))
                      (let ()
                        (declare (not safe))
                        (_g116036116049_ _g116037116052_))))))
          (declare (not safe))
          (_g116035116084_ _stx116033_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx115963_ _ht115964_)
        (let* ((_g115966115983_
                (lambda (_g115967115980_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115967115980_))))
               (_g115965116030_
                (lambda (_g115967115986_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115967115986_))
                      (let ((_e115972115988_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115967115986_))))
                        (let ((_hd115971115991_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115972115988_)))
                              (_tl115970115993_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115972115988_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115970115993_))
                              (let ((_e115975115996_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115970115993_))))
                                (let ((_hd115974115999_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115975115996_)))
                                      (_tl115973116001_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115975115996_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115973116001_))
                                      (let ((_e115978116004_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115973116001_))))
                                        (let ((_hd115977116007_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115978116004_)))
                                              (_tl115976116009_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115978116004_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115976116009_))
                                              ((lambda (_L116012_ _L116013_)
                                                 (let ((_eid116028_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116013_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht115964_
                                                      _eid116028_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L116012_
                                                      _ht115964_))))
                                               _hd115977116007_
                                               _hd115974115999_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115966115983_
                                                 _g115967115986_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115966115983_ _g115967115986_)))))
                              (let ()
                                (declare (not safe))
                                (_g115966115983_ _g115967115986_)))))
                      (let ()
                        (declare (not safe))
                        (_g115966115983_ _g115967115986_))))))
          (declare (not safe))
          (_g115965116030_ _stx115963_))))
    (define gxc#find-body%
      (lambda (_stx115876_ _arg115877_)
        (let* ((_g115879115898_
                (lambda (_g115880115895_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115880115895_))))
               (_g115878115960_
                (lambda (_g115880115901_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115880115901_))
                      (let ((_e115884115903_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115880115901_))))
                        (let ((_hd115883115906_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115884115903_)))
                              (_tl115882115908_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115884115903_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115882115908_))
                              (let ((_g118220_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115882115908_
                                        '0))))
                                (begin
                                  (let ((_g118221_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118220_)
                                               (##vector-length _g118220_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118221_ 2)))
                                        (error "Context expects 2 values"
                                               _g118221_)))
                                  (let ((_target115885115911_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118220_ 0)))
                                        (_tl115887115913_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118220_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115887115913_))
                                        (letrec ((_loop115888115916_
                                                  (lambda (_hd115886115919_
                                                           _expr115892115921_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115886115919_))
                                                        (let ((_e115889115924_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115886115919_))))
                  (let ((_lp-hd115890115927_
                         (let () (declare (not safe)) (##car _e115889115924_)))
                        (_lp-tl115891115929_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115889115924_))))
                    (let ((__tmp118225
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd115890115927_ _expr115892115921_))))
                      (declare (not safe))
                      (_loop115888115916_ _lp-tl115891115929_ __tmp118225))))
                (let ((_expr115893115932_ (reverse _expr115892115921_)))
                  ((lambda (_L115935_)
                     (let ((__tmp118224
                            (lambda (_g115948115950_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115948115950_
                                 _arg115877_))))
                           (__tmp118222
                            (let ((__tmp118223
                                   (lambda (_g115952115955_ _g115953115957_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115952115955_
                                             _g115953115957_)))))
                              (declare (not safe))
                              (foldr1 __tmp118223 '() _L115935_))))
                       (declare (not safe))
                       (ormap1 __tmp118224 __tmp118222)))
                   _expr115893115932_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115888115916_
                                             _target115885115911_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115879115898_
                                           _g115880115901_))))))
                              (let ()
                                (declare (not safe))
                                (_g115879115898_ _g115880115901_)))))
                      (let ()
                        (declare (not safe))
                        (_g115879115898_ _g115880115901_))))))
          (declare (not safe))
          (_g115878115960_ _stx115876_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx115808_ _arg115809_)
        (let* ((_g115811115828_
                (lambda (_g115812115825_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115812115825_))))
               (_g115810115873_
                (lambda (_g115812115831_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115812115831_))
                      (let ((_e115817115833_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115812115831_))))
                        (let ((_hd115816115836_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115817115833_)))
                              (_tl115815115838_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115817115833_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115815115838_))
                              (let ((_e115820115841_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115815115838_))))
                                (let ((_hd115819115844_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115820115841_)))
                                      (_tl115818115846_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115820115841_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115818115846_))
                                      (let ((_e115823115849_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115818115846_))))
                                        (let ((_hd115822115852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115823115849_)))
                                              (_tl115821115854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115823115849_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115821115854_))
                                              ((lambda (_L115857_ _L115858_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115857_
                                                    _arg115809_)))
                                               _hd115822115852_
                                               _hd115819115844_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115811115828_
                                                 _g115812115831_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115811115828_ _g115812115831_)))))
                              (let ()
                                (declare (not safe))
                                (_g115811115828_ _g115812115831_)))))
                      (let ()
                        (declare (not safe))
                        (_g115811115828_ _g115812115831_))))))
          (declare (not safe))
          (_g115810115873_ _stx115808_))))
    (define gxc#find-lambda%
      (lambda (_stx115740_ _arg115741_)
        (let* ((_g115743115760_
                (lambda (_g115744115757_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115744115757_))))
               (_g115742115805_
                (lambda (_g115744115763_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115744115763_))
                      (let ((_e115749115765_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115744115763_))))
                        (let ((_hd115748115768_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115749115765_)))
                              (_tl115747115770_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115749115765_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115747115770_))
                              (let ((_e115752115773_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115747115770_))))
                                (let ((_hd115751115776_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115752115773_)))
                                      (_tl115750115778_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115752115773_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115750115778_))
                                      (let ((_e115755115781_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115750115778_))))
                                        (let ((_hd115754115784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115755115781_)))
                                              (_tl115753115786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115755115781_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115753115786_))
                                              ((lambda (_L115789_ _L115790_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115789_
                                                    _arg115741_)))
                                               _hd115754115784_
                                               _hd115751115776_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115743115760_
                                                 _g115744115763_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115743115760_ _g115744115763_)))))
                              (let ()
                                (declare (not safe))
                                (_g115743115760_ _g115744115763_)))))
                      (let ()
                        (declare (not safe))
                        (_g115743115760_ _g115744115763_))))))
          (declare (not safe))
          (_g115742115805_ _stx115740_))))
    (define gxc#find-case-lambda%
      (lambda (_stx115622_ _arg115623_)
        (let* ((_g115625115653_
                (lambda (_g115626115650_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115626115650_))))
               (_g115624115737_
                (lambda (_g115626115656_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115626115656_))
                      (let ((_e115631115658_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115626115656_))))
                        (let ((_hd115630115661_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115631115658_)))
                              (_tl115629115663_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115631115658_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115629115663_))
                              (let ((_g118226_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115629115663_
                                        '0))))
                                (begin
                                  (let ((_g118227_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118226_)
                                               (##vector-length _g118226_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118227_ 2)))
                                        (error "Context expects 2 values"
                                               _g118227_)))
                                  (let ((_target115632115666_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118226_ 0)))
                                        (_tl115634115668_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118226_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115634115668_))
                                        (letrec ((_loop115635115671_
                                                  (lambda (_hd115633115674_
                                                           _body115639115676_
                                                           _hd115640115678_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115633115674_))
                                                        (let ((_e115636115681_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115633115674_))))
                  (let ((_lp-hd115637115684_
                         (let () (declare (not safe)) (##car _e115636115681_)))
                        (_lp-tl115638115686_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115636115681_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd115637115684_))
                        (let ((_e115645115689_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd115637115684_))))
                          (let ((_hd115644115692_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115645115689_)))
                                (_tl115643115694_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115645115689_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl115643115694_))
                                (let ((_e115648115697_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl115643115694_))))
                                  (let ((_hd115647115700_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115648115697_)))
                                        (_tl115646115702_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115648115697_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115646115702_))
                                        (let ((__tmp118232
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115647115700_
                                                       _body115639115676_)))
                                              (__tmp118231
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115644115692_
                                                       _hd115640115678_))))
                                          (declare (not safe))
                                          (_loop115635115671_
                                           _lp-tl115638115686_
                                           __tmp118232
                                           __tmp118231))
                                        (let ()
                                          (declare (not safe))
                                          (_g115625115653_ _g115626115656_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115625115653_ _g115626115656_)))))
                        (let ()
                          (declare (not safe))
                          (_g115625115653_ _g115626115656_)))))
                (let ((_body115641115705_ (reverse _body115639115676_))
                      (_hd115642115707_ (reverse _hd115640115678_)))
                  ((lambda (_L115710_ _L115711_)
                     (let ((__tmp118230
                            (lambda (_g115725115727_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115725115727_
                                 _arg115623_))))
                           (__tmp118228
                            (let ((__tmp118229
                                   (lambda (_g115729115732_ _g115730115734_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115729115732_
                                             _g115730115734_)))))
                              (declare (not safe))
                              (foldr1 __tmp118229 '() _L115710_))))
                       (declare (not safe))
                       (ormap1 __tmp118230 __tmp118228)))
                   _body115641115705_
                   _hd115642115707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115635115671_
                                             _target115632115666_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115625115653_
                                           _g115626115656_))))))
                              (let ()
                                (declare (not safe))
                                (_g115625115653_ _g115626115656_)))))
                      (let ()
                        (declare (not safe))
                        (_g115625115653_ _g115626115656_))))))
          (declare (not safe))
          (_g115624115737_ _stx115622_))))
    (define gxc#find-let-values%
      (lambda (_stx115472_ _arg115473_)
        (let* ((_g115475115510_
                (lambda (_g115476115507_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115476115507_))))
               (_g115474115619_
                (lambda (_g115476115513_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115476115513_))
                      (let ((_e115482115515_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115476115513_))))
                        (let ((_hd115481115518_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115482115515_)))
                              (_tl115480115520_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115482115515_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115480115520_))
                              (let ((_e115485115523_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115480115520_))))
                                (let ((_hd115484115526_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115485115523_)))
                                      (_tl115483115528_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115485115523_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115484115526_))
                                      (let ((_g118233_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115484115526_
                                                '0))))
                                        (begin
                                          (let ((_g118234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118233_)
                                                       (##vector-length
                                                        _g118233_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118234_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118234_)))
                                          (let ((_target115486115531_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118233_ 0)))
                                                (_tl115488115533_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118233_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115488115533_))
                                                (letrec ((_loop115489115536_
                                                          (lambda (_hd115487115539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115493115541_
                           _bind115494115543_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115487115539_))
                        (let ((_e115490115546_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115487115539_))))
                          (let ((_lp-hd115491115549_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115490115546_)))
                                (_lp-tl115492115551_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115490115546_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115491115549_))
                                (let ((_e115499115554_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115491115549_))))
                                  (let ((_hd115498115557_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115499115554_)))
                                        (_tl115497115559_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115499115554_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115497115559_))
                                        (let ((_e115502115562_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115497115559_))))
                                          (let ((_hd115501115565_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115502115562_)))
                                                (_tl115500115567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115502115562_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115500115567_))
                                                (let ((__tmp118239
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115501115565_
                                                               _expr115493115541_)))
                                                      (__tmp118238
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115498115557_
                                                               _bind115494115543_))))
                                                  (declare (not safe))
                                                  (_loop115489115536_
                                                   _lp-tl115492115551_
                                                   __tmp118239
                                                   __tmp118238))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115475115510_
                                                   _g115476115513_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115475115510_ _g115476115513_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115475115510_ _g115476115513_)))))
                        (let ((_expr115495115570_ (reverse _expr115493115541_))
                              (_bind115496115572_
                               (reverse _bind115494115543_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115483115528_))
                              (let ((_e115505115575_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115483115528_))))
                                (let ((_hd115504115578_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115505115575_)))
                                      (_tl115503115580_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115505115575_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115503115580_))
                                      ((lambda (_L115583_ _L115584_ _L115585_)
                                         (let ((_$e115616_
                                                (let ((__tmp118237
                                                       (lambda (_g115604115606_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g115604115606_
                                                            _arg115473_))))
                                                      (__tmp118235
                                                       (let ((__tmp118236
                                                              (lambda (_g115608115611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115609115613_)
                        (let ()
                          (declare (not safe))
                          (cons _g115608115611_ _g115609115613_)))))
                 (declare (not safe))
                 (foldr1 __tmp118236 '() _L115584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118237
                                                          __tmp118235))))
                                           (if _$e115616_
                                               _$e115616_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L115583_
                                                  _arg115473_)))))
                                       _hd115504115578_
                                       _expr115495115570_
                                       _bind115496115572_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115475115510_ _g115476115513_)))))
                              (let ()
                                (declare (not safe))
                                (_g115475115510_ _g115476115513_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115489115536_
                                                     _target115486115531_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115475115510_
                                                   _g115476115513_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115475115510_ _g115476115513_)))))
                              (let ()
                                (declare (not safe))
                                (_g115475115510_ _g115476115513_)))))
                      (let ()
                        (declare (not safe))
                        (_g115475115510_ _g115476115513_))))))
          (declare (not safe))
          (_g115474115619_ _stx115472_))))
    (define gxc#find-setq%
      (lambda (_stx115404_ _arg115405_)
        (let* ((_g115407115424_
                (lambda (_g115408115421_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115408115421_))))
               (_g115406115469_
                (lambda (_g115408115427_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115408115427_))
                      (let ((_e115413115429_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115408115427_))))
                        (let ((_hd115412115432_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115413115429_)))
                              (_tl115411115434_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115413115429_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115411115434_))
                              (let ((_e115416115437_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115411115434_))))
                                (let ((_hd115415115440_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115416115437_)))
                                      (_tl115414115442_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115416115437_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115414115442_))
                                      (let ((_e115419115445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115414115442_))))
                                        (let ((_hd115418115448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115419115445_)))
                                              (_tl115417115450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115419115445_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115417115450_))
                                              ((lambda (_L115453_ _L115454_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115453_
                                                    _arg115405_)))
                                               _hd115418115448_
                                               _hd115415115440_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115407115424_
                                                 _g115408115427_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115407115424_ _g115408115427_)))))
                              (let ()
                                (declare (not safe))
                                (_g115407115424_ _g115408115427_)))))
                      (let ()
                        (declare (not safe))
                        (_g115407115424_ _g115408115427_))))))
          (declare (not safe))
          (_g115406115469_ _stx115404_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx115348_ _ids115349_)
        (let* ((_g115351115364_
                (lambda (_g115352115361_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115352115361_))))
               (_g115350115401_
                (lambda (_g115352115367_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115352115367_))
                      (let ((_e115356115369_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115352115367_))))
                        (let ((_hd115355115372_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115356115369_)))
                              (_tl115354115374_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115356115369_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115354115374_))
                              (let ((_e115359115377_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115354115374_))))
                                (let ((_hd115358115380_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115359115377_)))
                                      (_tl115357115382_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115359115377_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115357115382_))
                                      ((lambda (_L115385_)
                                         (let ((__tmp118240
                                                (lambda (_g115396115398_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L115385_
                                                     _g115396115398_)))))
                                           (declare (not safe))
                                           (find __tmp118240 _ids115349_)))
                                       _hd115358115380_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115351115364_ _g115352115367_)))))
                              (let ()
                                (declare (not safe))
                                (_g115351115364_ _g115352115367_)))))
                      (let ()
                        (declare (not safe))
                        (_g115351115364_ _g115352115367_))))))
          (declare (not safe))
          (_g115350115401_ _stx115348_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx115272_ _ids115273_)
        (let* ((_g115275115292_
                (lambda (_g115276115289_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115276115289_))))
               (_g115274115345_
                (lambda (_g115276115295_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115276115295_))
                      (let ((_e115281115297_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115276115295_))))
                        (let ((_hd115280115300_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115281115297_)))
                              (_tl115279115302_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115281115297_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115279115302_))
                              (let ((_e115284115305_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115279115302_))))
                                (let ((_hd115283115308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115284115305_)))
                                      (_tl115282115310_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115284115305_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115282115310_))
                                      (let ((_e115287115313_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115282115310_))))
                                        (let ((_hd115286115316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115287115313_)))
                                              (_tl115285115318_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115287115313_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115285115318_))
                                              ((lambda (_L115321_ _L115322_)
                                                 (let ((_$e115342_
                                                        (let ((__tmp118241
                                                               (lambda (_g115337115339_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L115322_ _g115337115339_)))))
                  (declare (not safe))
                  (find __tmp118241 _ids115273_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e115342_
                                                       _$e115342_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L115321_
                                                          _ids115273_)))))
                                               _hd115286115316_
                                               _hd115283115308_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115275115292_
                                                 _g115276115295_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115275115292_ _g115276115295_)))))
                              (let ()
                                (declare (not safe))
                                (_g115275115292_ _g115276115295_)))))
                      (let ()
                        (declare (not safe))
                        (_g115275115292_ _g115276115295_))))))
          (declare (not safe))
          (_g115274115345_ _stx115272_))))))
