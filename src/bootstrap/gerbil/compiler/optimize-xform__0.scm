(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1709213451)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl117908_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117908_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117908_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117908_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117908_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl117908_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl117904_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117904_ '%#declare gxc#xform-identity))
           _tbl117904_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl117900_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118154 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl117900_ __tmp118154))
           (let ((__tmp118155 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl117900_ __tmp118155))
           _tbl117900_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl117896_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117896_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117896_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117896_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117896_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117896_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl117896_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl117892_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118156 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117892_ __tmp118156))
           (let ((__tmp118157 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl117892_ __tmp118157))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117892_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117892_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117892_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117892_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117892_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl117892_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl117888_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118158 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117888_ __tmp118158))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117888_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117888_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl117888_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx117871_ . _args117873_)
        (let ((__tmp118160
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117873_)
                     (gxc#compile-e__0 _stx117871_)
                     (let ((_arg1117878_ (car _args117873_))
                           (_rest117880_ (cdr _args117873_)))
                       (if (null? _rest117880_)
                           (gxc#compile-e__1 _stx117871_ _arg1117878_)
                           (let ((_arg2117883_ (car _rest117880_))
                                 (_rest117885_ (cdr _rest117880_)))
                             (if (null? _rest117885_)
                                 (gxc#compile-e__2
                                  _stx117871_
                                  _arg1117878_
                                  _arg2117883_)
                                 (apply gxc#compile-e
                                        _stx117871_
                                        _arg1117878_
                                        _arg2117883_
                                        _rest117885_))))))))
              (__tmp118159 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp118160
           gxc#current-compile-methods
           __tmp118159))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl117868_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118161 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117868_ __tmp118161))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117868_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117868_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl117868_))))
    (define gxc#apply-collect-methods
      (lambda (_stx117851_ . _args117853_)
        (let ((__tmp118163
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
              (__tmp118162 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp118163
           gxc#current-compile-methods
           __tmp118162))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl117848_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118164 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117848_ __tmp118164))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117848_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117848_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117848_ '%#set! gxc#expression-subst-setq%))
           _tbl117848_))))
    (define gxc#apply-expression-subst
      (lambda (_stx117831_ . _args117833_)
        (let ((__tmp118166
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
              (__tmp118165 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp118166
           gxc#current-compile-methods
           __tmp118165))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl117828_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118167 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl117828_ __tmp118167))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117828_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117828_ '%#set! gxc#expression-subst*-setq%))
           _tbl117828_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx117811_ . _args117813_)
        (let ((__tmp118169
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
              (__tmp118168 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp118169
           gxc#current-compile-methods
           __tmp118168))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl117808_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118170 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl117808_ __tmp118170))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117808_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117808_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl117808_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl117804_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118171 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl117804_ __tmp118171))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117804_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117804_ '%#set! gxc#find-var-refs-setq%))
           _tbl117804_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx117787_ . _args117789_)
        (let ((__tmp118173
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117789_)
                     (gxc#compile-e__0 _stx117787_)
                     (let ((_arg1117794_ (car _args117789_))
                           (_rest117796_ (cdr _args117789_)))
                       (if (null? _rest117796_)
                           (gxc#compile-e__1 _stx117787_ _arg1117794_)
                           (let ((_arg2117799_ (car _rest117796_))
                                 (_rest117801_ (cdr _rest117796_)))
                             (if (null? _rest117801_)
                                 (gxc#compile-e__2
                                  _stx117787_
                                  _arg1117794_
                                  _arg2117799_)
                                 (apply gxc#compile-e
                                        _stx117787_
                                        _arg1117794_
                                        _arg2117799_
                                        _rest117801_))))))))
              (__tmp118172 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118173
           gxc#current-compile-methods
           __tmp118172))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl117784_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118174 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl117784_ __tmp118174))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117784_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117784_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl117784_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx117767_ . _args117769_)
        (let ((__tmp118176
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
              (__tmp118175 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118176
           gxc#current-compile-methods
           __tmp118175))))
    (define gxc#xform-identity
      (lambda (_stx117764_ . _args117765_) _stx117764_))
    (define gxc#xform-wrap-source
      (lambda (_stx117761_ _src-stx117762_)
        (let ((__tmp118177
               (let () (declare (not safe)) (gx#stx-source _src-stx117762_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx117761_ __tmp118177))))
    (define gxc#xform-apply-compile-e
      (lambda (_args117748_)
        (lambda (_stx117750_)
          (if (let () (declare (not safe)) (null? _args117748_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx117750_))
              (let ((_arg1117752_ (car _args117748_))
                    (_rest117754_ (cdr _args117748_)))
                (if (let () (declare (not safe)) (null? _rest117754_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx117750_ _arg1117752_))
                    (let ((_arg2117757_ (car _rest117754_))
                          (_rest117759_ (cdr _rest117754_)))
                      (if (let () (declare (not safe)) (null? _rest117759_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx117750_
                             _arg1117752_
                             _arg2117757_))
                          (apply gxc#compile-e
                                 _stx117750_
                                 _arg1117752_
                                 _arg2117757_
                                 _rest117759_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx117707_ . _args117708_)
        (let* ((_g117710117720_
                (lambda (_g117711117717_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117711117717_))))
               (_g117709117745_
                (lambda (_g117711117723_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117711117723_))
                      (let ((_e117715117725_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117711117723_))))
                        (let ((_hd117714117728_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117715117725_)))
                              (_tl117713117730_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117715117725_))))
                          ((lambda (_L117733_)
                             (let* ((_forms117743_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117708_))
                                          _L117733_))
                                    (__tmp118178
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms117743_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118178
                                _stx117707_)))
                           _tl117713117730_)))
                      (let ()
                        (declare (not safe))
                        (_g117710117720_ _g117711117723_))))))
          (declare (not safe))
          (_g117709117745_ _stx117707_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx117665_ . _args117666_)
        (let* ((_g117668117678_
                (lambda (_g117669117675_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117669117675_))))
               (_g117667117704_
                (lambda (_g117669117681_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117669117681_))
                      (let ((_e117673117683_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117669117681_))))
                        (let ((_hd117672117686_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117673117683_)))
                              (_tl117671117688_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117673117683_))))
                          ((lambda (_L117691_)
                             (let ((__tmp118181
                                    (lambda ()
                                      (let* ((_forms117702_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args117666_))
                                                   _L117691_))
                                             (__tmp118182
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms117702_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp118182
                                         _stx117665_))))
                                   (__tmp118179
                                    (let ((__tmp118180
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp118180 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp118181
                                gx#current-expander-phi
                                __tmp118179)))
                           _tl117671117688_)))
                      (let ()
                        (declare (not safe))
                        (_g117668117678_ _g117669117681_))))))
          (declare (not safe))
          (_g117667117704_ _stx117665_))))
    (define gxc#xform-module%
      (lambda (_stx117593_ . _args117594_)
        (let* ((_g117596117610_
                (lambda (_g117597117607_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117597117607_))))
               (_g117595117662_
                (lambda (_g117597117613_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117597117613_))
                      (let ((_e117602117615_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117597117613_))))
                        (let ((_hd117601117618_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117602117615_)))
                              (_tl117600117620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117602117615_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117600117620_))
                              (let ((_e117605117623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117600117620_))))
                                (let ((_hd117604117626_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117605117623_)))
                                      (_tl117603117628_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117605117623_))))
                                  ((lambda (_L117631_ _L117632_)
                                     (let* ((_ctx117645_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L117632_)))
                                            (_code117647_
                                             (##structure-ref
                                              _ctx117645_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code117659_
                                             (let ((__tmp118183
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args117594_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code117647_))
                                                          (let ((_arg1117650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args117594_))
                        (_rest117652_ (cdr _args117594_)))
                    (if (let () (declare (not safe)) (null? _rest117652_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code117647_ _arg1117650_))
                        (let ((_arg2117655_ (car _rest117652_))
                              (_rest117657_ (cdr _rest117652_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest117657_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code117647_
                                 _arg1117650_
                                 _arg2117655_))
                              (apply gxc#compile-e
                                     _code117647_
                                     _arg1117650_
                                     _arg2117655_
                                     _rest117657_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp118183
                                                gx#current-expander-context
                                                _ctx117645_))))
                                       (##structure-set!
                                        _ctx117645_
                                        _code117659_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp118184
                                              (let ((__tmp118185
                                                     (let ((__tmp118186
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code117659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L117632_ __tmp118186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp118185))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp118184
                                          _stx117593_))))
                                   _tl117603117628_
                                   _hd117604117626_)))
                              (let ()
                                (declare (not safe))
                                (_g117596117610_ _g117597117613_)))))
                      (let ()
                        (declare (not safe))
                        (_g117596117610_ _g117597117613_))))))
          (declare (not safe))
          (_g117595117662_ _stx117593_))))
    (define gxc#xform-define-values%
      (lambda (_stx117514_ . _args117515_)
        (let* ((_g117517117534_
                (lambda (_g117518117531_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117518117531_))))
               (_g117516117590_
                (lambda (_g117518117537_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117518117537_))
                      (let ((_e117523117539_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117518117537_))))
                        (let ((_hd117522117542_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117523117539_)))
                              (_tl117521117544_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117523117539_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117521117544_))
                              (let ((_e117526117547_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117521117544_))))
                                (let ((_hd117525117550_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117526117547_)))
                                      (_tl117524117552_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117526117547_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117524117552_))
                                      (let ((_e117529117555_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117524117552_))))
                                        (let ((_hd117528117558_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117529117555_)))
                                              (_tl117527117560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117529117555_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117527117560_))
                                              ((lambda (_L117563_ _L117564_)
                                                 (let* ((_expr117588_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117515_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117563_))
                     (let ((_arg1117579_ (car _args117515_))
                           (_rest117581_ (cdr _args117515_)))
                       (if (let () (declare (not safe)) (null? _rest117581_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117563_ _arg1117579_))
                           (let ((_arg2117584_ (car _rest117581_))
                                 (_rest117586_ (cdr _rest117581_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117586_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117563_
                                    _arg1117579_
                                    _arg2117584_))
                                 (apply gxc#compile-e
                                        _L117563_
                                        _arg1117579_
                                        _arg2117584_
                                        _rest117586_)))))))
                (__tmp118187
                 (let ((__tmp118188
                        (let ((__tmp118189
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117588_ '()))))
                          (declare (not safe))
                          (cons _L117564_ __tmp118189))))
                   (declare (not safe))
                   (cons '%#define-values __tmp118188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118187
                                                    _stx117514_)))
                                               _hd117528117558_
                                               _hd117525117550_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117517117534_
                                                 _g117518117537_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117517117534_ _g117518117537_)))))
                              (let ()
                                (declare (not safe))
                                (_g117517117534_ _g117518117537_)))))
                      (let ()
                        (declare (not safe))
                        (_g117517117534_ _g117518117537_))))))
          (declare (not safe))
          (_g117516117590_ _stx117514_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx117434_ . _args117435_)
        (let* ((_g117437117454_
                (lambda (_g117438117451_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117438117451_))))
               (_g117436117511_
                (lambda (_g117438117457_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117438117457_))
                      (let ((_e117443117459_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117438117457_))))
                        (let ((_hd117442117462_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117443117459_)))
                              (_tl117441117464_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117443117459_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117441117464_))
                              (let ((_e117446117467_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117441117464_))))
                                (let ((_hd117445117470_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117446117467_)))
                                      (_tl117444117472_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117446117467_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117444117472_))
                                      (let ((_e117449117475_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117444117472_))))
                                        (let ((_hd117448117478_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117449117475_)))
                                              (_tl117447117480_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117449117475_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117447117480_))
                                              ((lambda (_L117483_ _L117484_)
                                                 (let ((__tmp118192
                                                        (lambda ()
                                                          (let* ((_expr117509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args117435_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L117483_))
                              (let ((_arg1117500_ (car _args117435_))
                                    (_rest117502_ (cdr _args117435_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest117502_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L117483_
                                       _arg1117500_))
                                    (let ((_arg2117505_ (car _rest117502_))
                                          (_rest117507_ (cdr _rest117502_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest117507_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L117483_
                                             _arg1117500_
                                             _arg2117505_))
                                          (apply gxc#compile-e
                                                 _L117483_
                                                 _arg1117500_
                                                 _arg2117505_
                                                 _rest117507_)))))))
                         (__tmp118193
                          (let ((__tmp118194
                                 (let ((__tmp118195
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr117509_ '()))))
                                   (declare (not safe))
                                   (cons _L117484_ __tmp118195))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp118194))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp118193 _stx117434_))))
               (__tmp118190
                (let ((__tmp118191 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp118191 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp118192
                                                    gx#current-expander-phi
                                                    __tmp118190)))
                                               _hd117448117478_
                                               _hd117445117470_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117437117454_
                                                 _g117438117457_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117437117454_ _g117438117457_)))))
                              (let ()
                                (declare (not safe))
                                (_g117437117454_ _g117438117457_)))))
                      (let ()
                        (declare (not safe))
                        (_g117437117454_ _g117438117457_))))))
          (declare (not safe))
          (_g117436117511_ _stx117434_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx117355_ . _args117356_)
        (let* ((_g117358117375_
                (lambda (_g117359117372_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117359117372_))))
               (_g117357117431_
                (lambda (_g117359117378_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117359117378_))
                      (let ((_e117364117380_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117359117378_))))
                        (let ((_hd117363117383_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117364117380_)))
                              (_tl117362117385_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117364117380_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117362117385_))
                              (let ((_e117367117388_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117362117385_))))
                                (let ((_hd117366117391_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117367117388_)))
                                      (_tl117365117393_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117367117388_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117365117393_))
                                      (let ((_e117370117396_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117365117393_))))
                                        (let ((_hd117369117399_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117370117396_)))
                                              (_tl117368117401_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117370117396_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117368117401_))
                                              ((lambda (_L117404_ _L117405_)
                                                 (let* ((_expr117429_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117356_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117404_))
                     (let ((_arg1117420_ (car _args117356_))
                           (_rest117422_ (cdr _args117356_)))
                       (if (let () (declare (not safe)) (null? _rest117422_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117404_ _arg1117420_))
                           (let ((_arg2117425_ (car _rest117422_))
                                 (_rest117427_ (cdr _rest117422_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117427_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117404_
                                    _arg1117420_
                                    _arg2117425_))
                                 (apply gxc#compile-e
                                        _L117404_
                                        _arg1117420_
                                        _arg2117425_
                                        _rest117427_)))))))
                (__tmp118196
                 (let ((__tmp118197
                        (let ((__tmp118198
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117429_ '()))))
                          (declare (not safe))
                          (cons _L117405_ __tmp118198))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp118197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118196
                                                    _stx117355_)))
                                               _hd117369117399_
                                               _hd117366117391_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117358117375_
                                                 _g117359117378_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117358117375_ _g117359117378_)))))
                              (let ()
                                (declare (not safe))
                                (_g117358117375_ _g117359117378_)))))
                      (let ()
                        (declare (not safe))
                        (_g117358117375_ _g117359117378_))))))
          (declare (not safe))
          (_g117357117431_ _stx117355_))))
    (define gxc#xform-lambda%
      (lambda (_stx117298_ . _args117299_)
        (let* ((_g117301117315_
                (lambda (_g117302117312_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117302117312_))))
               (_g117300117352_
                (lambda (_g117302117318_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117302117318_))
                      (let ((_e117307117320_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117302117318_))))
                        (let ((_hd117306117323_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117307117320_)))
                              (_tl117305117325_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117307117320_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117305117325_))
                              (let ((_e117310117328_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117305117325_))))
                                (let ((_hd117309117331_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117310117328_)))
                                      (_tl117308117333_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117310117328_))))
                                  ((lambda (_L117336_ _L117337_)
                                     (let* ((_body117350_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args117299_))
                                                  _L117336_))
                                            (__tmp118199
                                             (let ((__tmp118200
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L117337_
                                                            _body117350_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp118200))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp118199
                                        _stx117298_)))
                                   _tl117308117333_
                                   _hd117309117331_)))
                              (let ()
                                (declare (not safe))
                                (_g117301117315_ _g117302117318_)))))
                      (let ()
                        (declare (not safe))
                        (_g117301117315_ _g117302117318_))))))
          (declare (not safe))
          (_g117300117352_ _stx117298_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx117211_ . _args117212_)
        (letrec ((_clause-e117214_
                  (lambda (_clause117255_)
                    (let* ((_g117257117268_
                            (lambda (_g117258117265_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g117258117265_))))
                           (_g117256117295_
                            (lambda (_g117258117271_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g117258117271_))
                                  (let ((_e117263117273_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g117258117271_))))
                                    (let ((_hd117262117276_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117263117273_)))
                                          (_tl117261117278_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117263117273_))))
                                      ((lambda (_L117281_ _L117282_)
                                         (let ((_body117293_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args117212_))
                                                     _L117281_)))
                                           (declare (not safe))
                                           (cons _L117282_ _body117293_)))
                                       _tl117261117278_
                                       _hd117262117276_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117257117268_ _g117258117271_))))))
                      (declare (not safe))
                      (_g117256117295_ _clause117255_)))))
          (let* ((_g117216117226_
                  (lambda (_g117217117223_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g117217117223_))))
                 (_g117215117252_
                  (lambda (_g117217117229_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g117217117229_))
                        (let ((_e117221117231_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g117217117229_))))
                          (let ((_hd117220117234_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117221117231_)))
                                (_tl117219117236_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117221117231_))))
                            ((lambda (_L117239_)
                               (let* ((_clauses117250_
                                       (map _clause-e117214_ _L117239_))
                                      (__tmp118201
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses117250_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp118201
                                  _stx117211_)))
                             _tl117219117236_)))
                        (let ()
                          (declare (not safe))
                          (_g117216117226_ _g117217117229_))))))
            (declare (not safe))
            (_g117215117252_ _stx117211_)))))
    (define gxc#xform-let-values%
      (lambda (_stx117005_ . _args117006_)
        (let* ((_g117008117041_
                (lambda (_g117009117038_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117009117038_))))
               (_g117007117208_
                (lambda (_g117009117044_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117009117044_))
                      (let ((_e117016117046_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117009117044_))))
                        (let ((_hd117015117049_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117016117046_)))
                              (_tl117014117051_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117016117046_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117014117051_))
                              (let ((_e117019117054_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117014117051_))))
                                (let ((_hd117018117057_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117019117054_)))
                                      (_tl117017117059_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117019117054_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd117018117057_))
                                      (let ((_g118202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd117018117057_
                                                '0))))
                                        (begin
                                          (let ((_g118203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118202_)
                                                       (##vector-length
                                                        _g118202_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118203_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118203_)))
                                          (let ((_target117020117062_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118202_ 0)))
                                                (_tl117022117064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118202_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117022117064_))
                                                (letrec ((_loop117023117067_
                                                          (lambda (_hd117021117070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117027117072_
                           _hd117028117074_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117021117070_))
                        (let ((_e117024117077_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117021117070_))))
                          (let ((_lp-hd117025117080_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117024117077_)))
                                (_lp-tl117026117082_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117024117077_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117025117080_))
                                (let ((_e117033117085_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117025117080_))))
                                  (let ((_hd117032117088_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e117033117085_)))
                                        (_tl117031117090_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e117033117085_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117031117090_))
                                        (let ((_e117036117093_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117031117090_))))
                                          (let ((_hd117035117096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117036117093_)))
                                                (_tl117034117098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117036117093_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117034117098_))
                                                (let ((__tmp118216
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117035117096_
                                                               _expr117027117072_)))
                                                      (__tmp118215
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117032117088_
                                                               _hd117028117074_))))
                                                  (declare (not safe))
                                                  (_loop117023117067_
                                                   _lp-tl117026117082_
                                                   __tmp118216
                                                   __tmp118215))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117008117041_
                                                   _g117009117044_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g117008117041_ _g117009117044_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g117008117041_ _g117009117044_)))))
                        (let ((_expr117029117101_ (reverse _expr117027117072_))
                              (_hd117030117103_ (reverse _hd117028117074_)))
                          ((lambda (_L117106_ _L117107_ _L117108_ _L117109_)
                             (let* ((_g117128117144_
                                     (lambda (_g117129117141_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g117129117141_))))
                                    (_g117127117198_
                                     (lambda (_g117129117147_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g117129117147_))
                                           (let ((_g118204_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g117129117147_
                                                     '0))))
                                             (begin
                                               (let ((_g118205_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g118204_)
                                                            (##vector-length
                                                             _g118204_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g118205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g118205_)))
                                               (let ((_target117131117149_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118204_
                                                         0)))
                                                     (_tl117133117151_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118204_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117133117151_))
                                                     (letrec ((_loop117134117154_
                                                               (lambda (_hd117132117157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr117138117159_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd117132117157_))
                             (let ((_e117135117162_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd117132117157_))))
                               (let ((_lp-hd117136117165_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e117135117162_)))
                                     (_lp-tl117137117167_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e117135117162_))))
                                 (let ((__tmp118212
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd117136117165_
                                                _expr117138117159_))))
                                   (declare (not safe))
                                   (_loop117134117154_
                                    _lp-tl117137117167_
                                    __tmp118212))))
                             (let ((_expr117139117170_
                                    (reverse _expr117138117159_)))
                               ((lambda (_L117173_)
                                  (let ()
                                    (let* ((_body117186_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args117006_))
                                                 _L117106_))
                                           (__tmp118206
                                            (let ((__tmp118207
                                                   (let ((__tmp118208
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L117173_
                                                               _L117108_))
                                                            (let ((__tmp118209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g117187117191_
                                    _g117188117193_
                                    _g117189117195_)
                             (let ((__tmp118210
                                    (let ((__tmp118211
                                           (let ()
                                             (declare (not safe))
                                             (cons _g117187117191_ '()))))
                                      (declare (not safe))
                                      (cons _g117188117193_ __tmp118211))))
                               (declare (not safe))
                               (cons __tmp118210 _g117189117195_)))))
                      (declare (not safe))
                      (foldr2 __tmp118209 '() _L117173_ _L117108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp118208
                                                           _body117186_))))
                                              (declare (not safe))
                                              (cons _L117109_ __tmp118207))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp118206
                                       _stx117005_))))
                                _expr117139117170_))))))
               (let ()
                 (declare (not safe))
                 (_loop117134117154_ _target117131117149_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g117128117144_
                                                        _g117129117147_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117128117144_
                                              _g117129117147_)))))
                                    (__tmp118213
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117006_))
                                          (let ((__tmp118214
                                                 (lambda (_g117200117203_
                                                          _g117201117205_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g117200117203_
                                                           _g117201117205_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp118214
                                                    '()
                                                    _L117107_)))))
                               (declare (not safe))
                               (_g117127117198_ __tmp118213)))
                           _tl117017117059_
                           _expr117029117101_
                           _hd117030117103_
                           _hd117015117049_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117023117067_
                                                     _target117020117062_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117008117041_
                                                   _g117009117044_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117008117041_ _g117009117044_)))))
                              (let ()
                                (declare (not safe))
                                (_g117008117041_ _g117009117044_)))))
                      (let ()
                        (declare (not safe))
                        (_g117008117041_ _g117009117044_))))))
          (declare (not safe))
          (_g117007117208_ _stx117005_))))
    (define gxc#xform-operands
      (lambda (_stx116961_ . _args116962_)
        (let* ((_g116964116975_
                (lambda (_g116965116972_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116965116972_))))
               (_g116963117002_
                (lambda (_g116965116978_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116965116978_))
                      (let ((_e116970116980_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116965116978_))))
                        (let ((_hd116969116983_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116970116980_)))
                              (_tl116968116985_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116970116980_))))
                          ((lambda (_L116988_ _L116989_)
                             (let* ((_rands117000_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116962_))
                                          _L116988_))
                                    (__tmp118217
                                     (let ()
                                       (declare (not safe))
                                       (cons _L116989_ _rands117000_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118217
                                _stx116961_)))
                           _tl116968116985_
                           _hd116969116983_)))
                      (let ()
                        (declare (not safe))
                        (_g116964116975_ _g116965116978_))))))
          (declare (not safe))
          (_g116963117002_ _stx116961_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx116882_ . _args116883_)
        (let* ((_g116885116902_
                (lambda (_g116886116899_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116886116899_))))
               (_g116884116958_
                (lambda (_g116886116905_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116886116905_))
                      (let ((_e116891116907_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116886116905_))))
                        (let ((_hd116890116910_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116891116907_)))
                              (_tl116889116912_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116891116907_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116889116912_))
                              (let ((_e116894116915_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116889116912_))))
                                (let ((_hd116893116918_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116894116915_)))
                                      (_tl116892116920_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116894116915_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116892116920_))
                                      (let ((_e116897116923_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116892116920_))))
                                        (let ((_hd116896116926_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116897116923_)))
                                              (_tl116895116928_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116897116923_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116895116928_))
                                              ((lambda (_L116931_ _L116932_)
                                                 (let* ((_expr116956_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116883_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116931_))
                     (let ((_arg1116947_ (car _args116883_))
                           (_rest116949_ (cdr _args116883_)))
                       (if (let () (declare (not safe)) (null? _rest116949_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116931_ _arg1116947_))
                           (let ((_arg2116952_ (car _rest116949_))
                                 (_rest116954_ (cdr _rest116949_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116954_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116931_
                                    _arg1116947_
                                    _arg2116952_))
                                 (apply gxc#compile-e
                                        _L116931_
                                        _arg1116947_
                                        _arg2116952_
                                        _rest116954_)))))))
                (__tmp118218
                 (let ((__tmp118219
                        (let ((__tmp118220
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116956_ '()))))
                          (declare (not safe))
                          (cons _L116932_ __tmp118220))))
                   (declare (not safe))
                   (cons '%#set! __tmp118219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118218
                                                    _stx116882_)))
                                               _hd116896116926_
                                               _hd116893116918_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116885116902_
                                                 _g116886116905_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116885116902_ _g116886116905_)))))
                              (let ()
                                (declare (not safe))
                                (_g116885116902_ _g116886116905_)))))
                      (let ()
                        (declare (not safe))
                        (_g116885116902_ _g116886116905_))))))
          (declare (not safe))
          (_g116884116958_ _stx116882_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx116813_)
        (let* ((_g116815116832_
                (lambda (_g116816116829_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116816116829_))))
               (_g116814116879_
                (lambda (_g116816116835_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116816116835_))
                      (let ((_e116821116837_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116816116835_))))
                        (let ((_hd116820116840_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116821116837_)))
                              (_tl116819116842_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116821116837_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116819116842_))
                              (let ((_e116824116845_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116819116842_))))
                                (let ((_hd116823116848_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116824116845_)))
                                      (_tl116822116850_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116824116845_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116822116850_))
                                      (let ((_e116827116853_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116822116850_))))
                                        (let ((_hd116826116856_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116827116853_)))
                                              (_tl116825116858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116827116853_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116825116858_))
                                              ((lambda (_L116861_ _L116862_)
                                                 (let ((_sym116877_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116862_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym116877_))
                                                   (let ((__tmp118221
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118221
                                                      _sym116877_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L116861_))))
                                               _hd116826116856_
                                               _hd116823116848_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116815116832_
                                                 _g116816116835_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116815116832_ _g116816116835_)))))
                              (let ()
                                (declare (not safe))
                                (_g116815116832_ _g116816116835_)))))
                      (let ()
                        (declare (not safe))
                        (_g116815116832_ _g116816116835_))))))
          (declare (not safe))
          (_g116814116879_ _stx116813_))))
    (define gxc#collect-methods-call%
      (lambda (_stx116367_)
        (let* ((___stx117911117912_ _stx116367_)
               (_g116371116473_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx117911117912_)))))
          (let ((___kont117913117914_
                 (lambda (_L116763_ _L116764_ _L116765_ _L116766_ _L116767_)
                   (let ((__tmp118222
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116764_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118222))))
                (___kont117915117916_
                 (lambda (_L116589_ _L116590_ _L116591_ _L116592_)
                   (let ((__tmp118223
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116589_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118223))))
                (___kont117917117918_ (lambda () '#!void)))
            (let ((___match118046118047_
                   (lambda (_e116380116635_
                            _hd116379116638_
                            _tl116378116640_
                            _e116383116643_
                            _hd116382116646_
                            _tl116381116648_
                            _e116386116651_
                            _hd116385116654_
                            _tl116384116656_
                            _e116389116659_
                            _hd116388116662_
                            _tl116387116664_
                            _e116392116667_
                            _hd116391116670_
                            _tl116390116672_
                            _e116395116675_
                            _hd116394116678_
                            _tl116393116680_
                            _e116398116683_
                            _hd116397116686_
                            _tl116396116688_
                            _e116401116691_
                            _hd116400116694_
                            _tl116399116696_
                            _e116404116699_
                            _hd116403116702_
                            _tl116402116704_
                            _e116407116707_
                            _hd116406116710_
                            _tl116405116712_
                            _e116410116715_
                            _hd116409116718_
                            _tl116408116720_
                            _e116413116723_
                            _hd116412116726_
                            _tl116411116728_
                            _e116416116731_
                            _hd116415116734_
                            _tl116414116736_
                            _e116419116739_
                            _hd116418116742_
                            _tl116417116744_
                            _e116422116747_
                            _hd116421116750_
                            _tl116420116752_
                            _e116425116755_
                            _hd116424116758_
                            _tl116423116760_)
                     (let ((_L116763_ _hd116424116758_)
                           (_L116764_ _hd116415116734_)
                           (_L116765_ _hd116406116710_)
                           (_L116766_ _hd116397116686_)
                           (_L116767_ _hd116388116662_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L116767_
                              'bind-method!))
                           (___kont117913117914_
                            _L116763_
                            _L116764_
                            _L116765_
                            _L116766_
                            _L116767_)
                           (___kont117917117918_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx117911117912_))
                  (let ((_e116380116635_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx117911117912_))))
                    (let ((_tl116378116640_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116380116635_)))
                          (_hd116379116638_
                           (let ()
                             (declare (not safe))
                             (##car _e116380116635_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116378116640_))
                          (let ((_e116383116643_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116378116640_))))
                            (let ((_tl116381116648_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116383116643_)))
                                  (_hd116382116646_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116383116643_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116382116646_))
                                  (let ((_e116386116651_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116382116646_))))
                                    (let ((_tl116384116656_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116386116651_)))
                                          (_hd116385116654_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116386116651_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd116385116654_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd116385116654_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116384116656_))
                                                  (let ((_e116389116659_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116384116656_))))
                                                    (let ((_tl116387116664_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116389116659_)))
                                                          (_hd116388116662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116389116659_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116387116664_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116381116648_))
                      (let ((_e116392116667_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116381116648_))))
                        (let ((_tl116390116672_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116392116667_)))
                              (_hd116391116670_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116392116667_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd116391116670_))
                              (let ((_e116395116675_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd116391116670_))))
                                (let ((_tl116393116680_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116395116675_)))
                                      (_hd116394116678_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116395116675_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd116394116678_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd116394116678_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl116393116680_))
                                              (let ((_e116398116683_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl116393116680_))))
                                                (let ((_tl116396116688_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e116398116683_)))
                                                      (_hd116397116686_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e116398116683_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116396116688_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl116390116672_))
                                                          (let ((_e116401116691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl116390116672_))))
                    (let ((_tl116399116696_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116401116691_)))
                          (_hd116400116694_
                           (let ()
                             (declare (not safe))
                             (##car _e116401116691_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd116400116694_))
                          (let ((_e116404116699_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd116400116694_))))
                            (let ((_tl116402116704_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116404116699_)))
                                  (_hd116403116702_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116404116699_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd116403116702_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd116403116702_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl116402116704_))
                                          (let ((_e116407116707_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl116402116704_))))
                                            (let ((_tl116405116712_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116407116707_)))
                                                  (_hd116406116710_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116407116707_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl116405116712_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl116399116696_))
                                                      (let ((_e116410116715_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl116399116696_))))
                (let ((_tl116408116720_
                       (let () (declare (not safe)) (##cdr _e116410116715_)))
                      (_hd116409116718_
                       (let () (declare (not safe)) (##car _e116410116715_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd116409116718_))
                      (let ((_e116413116723_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd116409116718_))))
                        (let ((_tl116411116728_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116413116723_)))
                              (_hd116412116726_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116413116723_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd116412116726_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd116412116726_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116411116728_))
                                      (let ((_e116416116731_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116411116728_))))
                                        (let ((_tl116414116736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116416116731_)))
                                              (_hd116415116734_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116416116731_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116414116736_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116408116720_))
                                                  (let ((_e116419116739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116408116720_))))
                                                    (let ((_tl116417116744_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116419116739_)))
                                                          (_hd116418116742_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116419116739_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd116418116742_))
                                                          (let ((_e116422116747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd116418116742_))))
                    (let ((_tl116420116752_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116422116747_)))
                          (_hd116421116750_
                           (let ()
                             (declare (not safe))
                             (##car _e116422116747_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd116421116750_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd116421116750_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl116420116752_))
                                  (let ((_e116425116755_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl116420116752_))))
                                    (let ((_tl116423116760_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116425116755_)))
                                          (_hd116424116758_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116425116755_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl116423116760_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116417116744_))
                                              (___match118046118047_
                                               _e116380116635_
                                               _hd116379116638_
                                               _tl116378116640_
                                               _e116383116643_
                                               _hd116382116646_
                                               _tl116381116648_
                                               _e116386116651_
                                               _hd116385116654_
                                               _tl116384116656_
                                               _e116389116659_
                                               _hd116388116662_
                                               _tl116387116664_
                                               _e116392116667_
                                               _hd116391116670_
                                               _tl116390116672_
                                               _e116395116675_
                                               _hd116394116678_
                                               _tl116393116680_
                                               _e116398116683_
                                               _hd116397116686_
                                               _tl116396116688_
                                               _e116401116691_
                                               _hd116400116694_
                                               _tl116399116696_
                                               _e116404116699_
                                               _hd116403116702_
                                               _tl116402116704_
                                               _e116407116707_
                                               _hd116406116710_
                                               _tl116405116712_
                                               _e116410116715_
                                               _hd116409116718_
                                               _tl116408116720_
                                               _e116413116723_
                                               _hd116412116726_
                                               _tl116411116728_
                                               _e116416116731_
                                               _hd116415116734_
                                               _tl116414116736_
                                               _e116419116739_
                                               _hd116418116742_
                                               _tl116417116744_
                                               _e116422116747_
                                               _hd116421116750_
                                               _tl116420116752_
                                               _e116425116755_
                                               _hd116424116758_
                                               _tl116423116760_)
                                              (___kont117917117918_))
                                          (___kont117917117918_))))
                                  (___kont117917117918_))
                              (___kont117917117918_))
                          (___kont117917117918_))))
                  (___kont117917117918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116408116720_))
                                                      (if (let ((__tmp118224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118224 'bind-method!))
                  (let ((_L116589_ _hd116415116734_)
                        (_L116590_ _hd116406116710_)
                        (_L116591_ _hd116397116686_)
                        (_L116592_ _hd116388116662_))
                    (___kont117915117916_
                     _L116589_
                     _L116590_
                     _L116591_
                     _L116592_))
                  (___kont117917117918_))
              (___kont117917117918_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117917117918_))))
                                      (___kont117917117918_))
                                  (___kont117917117918_))
                              (___kont117917117918_))))
                      (___kont117917117918_))))
              (___kont117917117918_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117917117918_))))
                                          (___kont117917117918_))
                                      (___kont117917117918_))
                                  (___kont117917117918_))))
                          (___kont117917117918_))))
                  (___kont117917117918_))
              (___kont117917117918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117917117918_))
                                          (___kont117917117918_))
                                      (___kont117917117918_))))
                              (___kont117917117918_))))
                      (___kont117917117918_))
                  (___kont117917117918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117917117918_))
                                              (___kont117917117918_))
                                          (___kont117917117918_))))
                                  (___kont117917117918_))))
                          (___kont117917117918_))))
                  (___kont117917117918_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx116314_ _id116315_ _new-id116316_)
        (let* ((_g116318116331_
                (lambda (_g116319116328_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116319116328_))))
               (_g116317116364_
                (lambda (_g116319116334_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116319116334_))
                      (let ((_e116323116336_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116319116334_))))
                        (let ((_hd116322116339_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116323116336_)))
                              (_tl116321116341_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116323116336_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116321116341_))
                              (let ((_e116326116344_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116321116341_))))
                                (let ((_hd116325116347_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116326116344_)))
                                      (_tl116324116349_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116326116344_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116324116349_))
                                      ((lambda (_L116352_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L116352_
                                                _id116315_))
                                             (let ((__tmp118225
                                                    (let ((__tmp118226
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id116316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp118226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118225
                                                _stx116314_))
                                             _stx116314_))
                                       _hd116325116347_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116318116331_ _g116319116334_)))))
                              (let ()
                                (declare (not safe))
                                (_g116318116331_ _g116319116334_)))))
                      (let ()
                        (declare (not safe))
                        (_g116318116331_ _g116319116334_))))))
          (declare (not safe))
          (_g116317116364_ _stx116314_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx116255_ _subst116256_)
        (let* ((_g116258116271_
                (lambda (_g116259116268_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116259116268_))))
               (_g116257116311_
                (lambda (_g116259116274_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116259116274_))
                      (let ((_e116263116276_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116259116274_))))
                        (let ((_hd116262116279_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116263116276_)))
                              (_tl116261116281_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116263116276_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116261116281_))
                              (let ((_e116266116284_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116261116281_))))
                                (let ((_hd116265116287_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116266116284_)))
                                      (_tl116264116289_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116266116284_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116264116289_))
                                      ((lambda (_L116292_)
                                         (let ((_$e116306_
                                                (let ((__tmp118227
                                                       (lambda (_sub116304_)
                                                         (let ((__tmp118228
                                                                (car _sub116304_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L116292_
                                                            __tmp118228)))))
                                                  (declare (not safe))
                                                  (find __tmp118227
                                                        _subst116256_))))
                                           (if _$e116306_
                                               ((lambda (_sub116309_)
                                                  (let ((__tmp118229
                                                         (let ((__tmp118230
                                                                (let ((__tmp118231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub116309_)))
                          (declare (not safe))
                          (cons __tmp118231 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118229
                                                     _stx116255_)))
                                                _$e116306_)
                                               _stx116255_)))
                                       _hd116265116287_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116258116271_ _g116259116274_)))))
                              (let ()
                                (declare (not safe))
                                (_g116258116271_ _g116259116274_)))))
                      (let ()
                        (declare (not safe))
                        (_g116258116271_ _g116259116274_))))))
          (declare (not safe))
          (_g116257116311_ _stx116255_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx116183_ _id116184_ _new-id116185_)
        (let* ((_g116187116204_
                (lambda (_g116188116201_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116188116201_))))
               (_g116186116252_
                (lambda (_g116188116207_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116188116207_))
                      (let ((_e116193116209_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116188116207_))))
                        (let ((_hd116192116212_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116193116209_)))
                              (_tl116191116214_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116193116209_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116191116214_))
                              (let ((_e116196116217_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116191116214_))))
                                (let ((_hd116195116220_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116196116217_)))
                                      (_tl116194116222_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116196116217_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116194116222_))
                                      (let ((_e116199116225_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116194116222_))))
                                        (let ((_hd116198116228_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116199116225_)))
                                              (_tl116197116230_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116199116225_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116197116230_))
                                              ((lambda (_L116233_ _L116234_)
                                                 (let ((_new-expr116249_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L116233_
                                                           _id116184_
                                                           _new-id116185_)))
                                                       (_new-xid116250_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L116234_
                                                               _id116184_))
                                                            _new-id116185_
                                                            _L116234_)))
                                                   (let ((__tmp118232
                                                          (let ((__tmp118233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118234
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116249_ '()))))
                           (declare (not safe))
                           (cons _new-xid116250_ __tmp118234))))
                    (declare (not safe))
                    (cons '%#set! __tmp118233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118232
                                                      _stx116183_))))
                                               _hd116198116228_
                                               _hd116195116220_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116187116204_
                                                 _g116188116207_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116187116204_ _g116188116207_)))))
                              (let ()
                                (declare (not safe))
                                (_g116187116204_ _g116188116207_)))))
                      (let ()
                        (declare (not safe))
                        (_g116187116204_ _g116188116207_))))))
          (declare (not safe))
          (_g116186116252_ _stx116183_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx116107_ _subst116108_)
        (let* ((_g116110116127_
                (lambda (_g116111116124_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116111116124_))))
               (_g116109116180_
                (lambda (_g116111116130_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116111116130_))
                      (let ((_e116116116132_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116111116130_))))
                        (let ((_hd116115116135_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116116116132_)))
                              (_tl116114116137_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116116116132_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116114116137_))
                              (let ((_e116119116140_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116114116137_))))
                                (let ((_hd116118116143_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116119116140_)))
                                      (_tl116117116145_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116119116140_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116117116145_))
                                      (let ((_e116122116148_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116117116145_))))
                                        (let ((_hd116121116151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116122116148_)))
                                              (_tl116120116153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116122116148_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116120116153_))
                                              ((lambda (_L116156_ _L116157_)
                                                 (let ((_new-expr116177_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L116156_
                                                           _subst116108_)))
                                                       (_new-xid116178_
                                                        (let ((_$e116174_
                                                               (let ((__tmp118235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub116172_)
                                (let ((__tmp118236 (car _sub116172_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L116157_
                                   __tmp118236)))))
                         (declare (not safe))
                         (find __tmp118235 _subst116108_))))
                  (if _$e116174_ (cdr _$e116174_) _L116157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118237
                                                          (let ((__tmp118238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118239
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116177_ '()))))
                           (declare (not safe))
                           (cons _new-xid116178_ __tmp118239))))
                    (declare (not safe))
                    (cons '%#set! __tmp118238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118237
                                                      _stx116107_))))
                                               _hd116121116151_
                                               _hd116118116143_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116110116127_
                                                 _g116111116130_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116110116127_ _g116111116130_)))))
                              (let ()
                                (declare (not safe))
                                (_g116110116127_ _g116111116130_)))))
                      (let ()
                        (declare (not safe))
                        (_g116110116127_ _g116111116130_))))))
          (declare (not safe))
          (_g116109116180_ _stx116107_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx116053_ _ht116054_)
        (let* ((_g116056116069_
                (lambda (_g116057116066_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116057116066_))))
               (_g116055116104_
                (lambda (_g116057116072_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116057116072_))
                      (let ((_e116061116074_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116057116072_))))
                        (let ((_hd116060116077_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116061116074_)))
                              (_tl116059116079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116061116074_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116059116079_))
                              (let ((_e116064116082_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116059116079_))))
                                (let ((_hd116063116085_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116064116082_)))
                                      (_tl116062116087_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116064116082_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116062116087_))
                                      ((lambda (_L116090_)
                                         (let ((_eid116102_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L116090_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht116054_
                                            _eid116102_
                                            1+
                                            '0)))
                                       _hd116063116085_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116056116069_ _g116057116072_)))))
                              (let ()
                                (declare (not safe))
                                (_g116056116069_ _g116057116072_)))))
                      (let ()
                        (declare (not safe))
                        (_g116056116069_ _g116057116072_))))))
          (declare (not safe))
          (_g116055116104_ _stx116053_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx115983_ _ht115984_)
        (let* ((_g115986116003_
                (lambda (_g115987116000_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115987116000_))))
               (_g115985116050_
                (lambda (_g115987116006_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115987116006_))
                      (let ((_e115992116008_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115987116006_))))
                        (let ((_hd115991116011_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115992116008_)))
                              (_tl115990116013_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115992116008_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115990116013_))
                              (let ((_e115995116016_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115990116013_))))
                                (let ((_hd115994116019_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115995116016_)))
                                      (_tl115993116021_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115995116016_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115993116021_))
                                      (let ((_e115998116024_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115993116021_))))
                                        (let ((_hd115997116027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115998116024_)))
                                              (_tl115996116029_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115998116024_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115996116029_))
                                              ((lambda (_L116032_ _L116033_)
                                                 (let ((_eid116048_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116033_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht115984_
                                                      _eid116048_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L116032_
                                                      _ht115984_))))
                                               _hd115997116027_
                                               _hd115994116019_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115986116003_
                                                 _g115987116006_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115986116003_ _g115987116006_)))))
                              (let ()
                                (declare (not safe))
                                (_g115986116003_ _g115987116006_)))))
                      (let ()
                        (declare (not safe))
                        (_g115986116003_ _g115987116006_))))))
          (declare (not safe))
          (_g115985116050_ _stx115983_))))
    (define gxc#find-body%
      (lambda (_stx115896_ _arg115897_)
        (let* ((_g115899115918_
                (lambda (_g115900115915_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115900115915_))))
               (_g115898115980_
                (lambda (_g115900115921_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115900115921_))
                      (let ((_e115904115923_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115900115921_))))
                        (let ((_hd115903115926_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115904115923_)))
                              (_tl115902115928_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115904115923_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115902115928_))
                              (let ((_g118240_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115902115928_
                                        '0))))
                                (begin
                                  (let ((_g118241_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118240_)
                                               (##vector-length _g118240_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118241_ 2)))
                                        (error "Context expects 2 values"
                                               _g118241_)))
                                  (let ((_target115905115931_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118240_ 0)))
                                        (_tl115907115933_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118240_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115907115933_))
                                        (letrec ((_loop115908115936_
                                                  (lambda (_hd115906115939_
                                                           _expr115912115941_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115906115939_))
                                                        (let ((_e115909115944_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115906115939_))))
                  (let ((_lp-hd115910115947_
                         (let () (declare (not safe)) (##car _e115909115944_)))
                        (_lp-tl115911115949_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115909115944_))))
                    (let ((__tmp118245
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd115910115947_ _expr115912115941_))))
                      (declare (not safe))
                      (_loop115908115936_ _lp-tl115911115949_ __tmp118245))))
                (let ((_expr115913115952_ (reverse _expr115912115941_)))
                  ((lambda (_L115955_)
                     (let ((__tmp118244
                            (lambda (_g115968115970_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115968115970_
                                 _arg115897_))))
                           (__tmp118242
                            (let ((__tmp118243
                                   (lambda (_g115972115975_ _g115973115977_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115972115975_
                                             _g115973115977_)))))
                              (declare (not safe))
                              (foldr1 __tmp118243 '() _L115955_))))
                       (declare (not safe))
                       (ormap1 __tmp118244 __tmp118242)))
                   _expr115913115952_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115908115936_
                                             _target115905115931_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115899115918_
                                           _g115900115921_))))))
                              (let ()
                                (declare (not safe))
                                (_g115899115918_ _g115900115921_)))))
                      (let ()
                        (declare (not safe))
                        (_g115899115918_ _g115900115921_))))))
          (declare (not safe))
          (_g115898115980_ _stx115896_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx115828_ _arg115829_)
        (let* ((_g115831115848_
                (lambda (_g115832115845_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115832115845_))))
               (_g115830115893_
                (lambda (_g115832115851_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115832115851_))
                      (let ((_e115837115853_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115832115851_))))
                        (let ((_hd115836115856_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115837115853_)))
                              (_tl115835115858_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115837115853_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115835115858_))
                              (let ((_e115840115861_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115835115858_))))
                                (let ((_hd115839115864_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115840115861_)))
                                      (_tl115838115866_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115840115861_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115838115866_))
                                      (let ((_e115843115869_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115838115866_))))
                                        (let ((_hd115842115872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115843115869_)))
                                              (_tl115841115874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115843115869_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115841115874_))
                                              ((lambda (_L115877_ _L115878_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115877_
                                                    _arg115829_)))
                                               _hd115842115872_
                                               _hd115839115864_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115831115848_
                                                 _g115832115851_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115831115848_ _g115832115851_)))))
                              (let ()
                                (declare (not safe))
                                (_g115831115848_ _g115832115851_)))))
                      (let ()
                        (declare (not safe))
                        (_g115831115848_ _g115832115851_))))))
          (declare (not safe))
          (_g115830115893_ _stx115828_))))
    (define gxc#find-lambda%
      (lambda (_stx115760_ _arg115761_)
        (let* ((_g115763115780_
                (lambda (_g115764115777_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115764115777_))))
               (_g115762115825_
                (lambda (_g115764115783_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115764115783_))
                      (let ((_e115769115785_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115764115783_))))
                        (let ((_hd115768115788_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115769115785_)))
                              (_tl115767115790_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115769115785_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115767115790_))
                              (let ((_e115772115793_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115767115790_))))
                                (let ((_hd115771115796_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115772115793_)))
                                      (_tl115770115798_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115772115793_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115770115798_))
                                      (let ((_e115775115801_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115770115798_))))
                                        (let ((_hd115774115804_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115775115801_)))
                                              (_tl115773115806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115775115801_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115773115806_))
                                              ((lambda (_L115809_ _L115810_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115809_
                                                    _arg115761_)))
                                               _hd115774115804_
                                               _hd115771115796_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115763115780_
                                                 _g115764115783_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115763115780_ _g115764115783_)))))
                              (let ()
                                (declare (not safe))
                                (_g115763115780_ _g115764115783_)))))
                      (let ()
                        (declare (not safe))
                        (_g115763115780_ _g115764115783_))))))
          (declare (not safe))
          (_g115762115825_ _stx115760_))))
    (define gxc#find-case-lambda%
      (lambda (_stx115642_ _arg115643_)
        (let* ((_g115645115673_
                (lambda (_g115646115670_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115646115670_))))
               (_g115644115757_
                (lambda (_g115646115676_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115646115676_))
                      (let ((_e115651115678_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115646115676_))))
                        (let ((_hd115650115681_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115651115678_)))
                              (_tl115649115683_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115651115678_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115649115683_))
                              (let ((_g118246_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115649115683_
                                        '0))))
                                (begin
                                  (let ((_g118247_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118246_)
                                               (##vector-length _g118246_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118247_ 2)))
                                        (error "Context expects 2 values"
                                               _g118247_)))
                                  (let ((_target115652115686_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118246_ 0)))
                                        (_tl115654115688_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118246_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115654115688_))
                                        (letrec ((_loop115655115691_
                                                  (lambda (_hd115653115694_
                                                           _body115659115696_
                                                           _hd115660115698_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115653115694_))
                                                        (let ((_e115656115701_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115653115694_))))
                  (let ((_lp-hd115657115704_
                         (let () (declare (not safe)) (##car _e115656115701_)))
                        (_lp-tl115658115706_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115656115701_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd115657115704_))
                        (let ((_e115665115709_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd115657115704_))))
                          (let ((_hd115664115712_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115665115709_)))
                                (_tl115663115714_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115665115709_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl115663115714_))
                                (let ((_e115668115717_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl115663115714_))))
                                  (let ((_hd115667115720_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115668115717_)))
                                        (_tl115666115722_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115668115717_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115666115722_))
                                        (let ((__tmp118252
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115667115720_
                                                       _body115659115696_)))
                                              (__tmp118251
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115664115712_
                                                       _hd115660115698_))))
                                          (declare (not safe))
                                          (_loop115655115691_
                                           _lp-tl115658115706_
                                           __tmp118252
                                           __tmp118251))
                                        (let ()
                                          (declare (not safe))
                                          (_g115645115673_ _g115646115676_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115645115673_ _g115646115676_)))))
                        (let ()
                          (declare (not safe))
                          (_g115645115673_ _g115646115676_)))))
                (let ((_body115661115725_ (reverse _body115659115696_))
                      (_hd115662115727_ (reverse _hd115660115698_)))
                  ((lambda (_L115730_ _L115731_)
                     (let ((__tmp118250
                            (lambda (_g115745115747_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115745115747_
                                 _arg115643_))))
                           (__tmp118248
                            (let ((__tmp118249
                                   (lambda (_g115749115752_ _g115750115754_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115749115752_
                                             _g115750115754_)))))
                              (declare (not safe))
                              (foldr1 __tmp118249 '() _L115730_))))
                       (declare (not safe))
                       (ormap1 __tmp118250 __tmp118248)))
                   _body115661115725_
                   _hd115662115727_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115655115691_
                                             _target115652115686_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115645115673_
                                           _g115646115676_))))))
                              (let ()
                                (declare (not safe))
                                (_g115645115673_ _g115646115676_)))))
                      (let ()
                        (declare (not safe))
                        (_g115645115673_ _g115646115676_))))))
          (declare (not safe))
          (_g115644115757_ _stx115642_))))
    (define gxc#find-let-values%
      (lambda (_stx115492_ _arg115493_)
        (let* ((_g115495115530_
                (lambda (_g115496115527_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115496115527_))))
               (_g115494115639_
                (lambda (_g115496115533_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115496115533_))
                      (let ((_e115502115535_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115496115533_))))
                        (let ((_hd115501115538_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115502115535_)))
                              (_tl115500115540_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115502115535_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115500115540_))
                              (let ((_e115505115543_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115500115540_))))
                                (let ((_hd115504115546_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115505115543_)))
                                      (_tl115503115548_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115505115543_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115504115546_))
                                      (let ((_g118253_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115504115546_
                                                '0))))
                                        (begin
                                          (let ((_g118254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118253_)
                                                       (##vector-length
                                                        _g118253_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118254_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118254_)))
                                          (let ((_target115506115551_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118253_ 0)))
                                                (_tl115508115553_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118253_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115508115553_))
                                                (letrec ((_loop115509115556_
                                                          (lambda (_hd115507115559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115513115561_
                           _bind115514115563_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115507115559_))
                        (let ((_e115510115566_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115507115559_))))
                          (let ((_lp-hd115511115569_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115510115566_)))
                                (_lp-tl115512115571_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115510115566_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115511115569_))
                                (let ((_e115519115574_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115511115569_))))
                                  (let ((_hd115518115577_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115519115574_)))
                                        (_tl115517115579_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115519115574_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115517115579_))
                                        (let ((_e115522115582_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115517115579_))))
                                          (let ((_hd115521115585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115522115582_)))
                                                (_tl115520115587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115522115582_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115520115587_))
                                                (let ((__tmp118259
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115521115585_
                                                               _expr115513115561_)))
                                                      (__tmp118258
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115518115577_
                                                               _bind115514115563_))))
                                                  (declare (not safe))
                                                  (_loop115509115556_
                                                   _lp-tl115512115571_
                                                   __tmp118259
                                                   __tmp118258))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115495115530_
                                                   _g115496115533_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115495115530_ _g115496115533_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115495115530_ _g115496115533_)))))
                        (let ((_expr115515115590_ (reverse _expr115513115561_))
                              (_bind115516115592_
                               (reverse _bind115514115563_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115503115548_))
                              (let ((_e115525115595_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115503115548_))))
                                (let ((_hd115524115598_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115525115595_)))
                                      (_tl115523115600_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115525115595_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115523115600_))
                                      ((lambda (_L115603_ _L115604_ _L115605_)
                                         (let ((_$e115636_
                                                (let ((__tmp118257
                                                       (lambda (_g115624115626_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g115624115626_
                                                            _arg115493_))))
                                                      (__tmp118255
                                                       (let ((__tmp118256
                                                              (lambda (_g115628115631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115629115633_)
                        (let ()
                          (declare (not safe))
                          (cons _g115628115631_ _g115629115633_)))))
                 (declare (not safe))
                 (foldr1 __tmp118256 '() _L115604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118257
                                                          __tmp118255))))
                                           (if _$e115636_
                                               _$e115636_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L115603_
                                                  _arg115493_)))))
                                       _hd115524115598_
                                       _expr115515115590_
                                       _bind115516115592_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115495115530_ _g115496115533_)))))
                              (let ()
                                (declare (not safe))
                                (_g115495115530_ _g115496115533_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115509115556_
                                                     _target115506115551_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115495115530_
                                                   _g115496115533_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115495115530_ _g115496115533_)))))
                              (let ()
                                (declare (not safe))
                                (_g115495115530_ _g115496115533_)))))
                      (let ()
                        (declare (not safe))
                        (_g115495115530_ _g115496115533_))))))
          (declare (not safe))
          (_g115494115639_ _stx115492_))))
    (define gxc#find-setq%
      (lambda (_stx115424_ _arg115425_)
        (let* ((_g115427115444_
                (lambda (_g115428115441_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115428115441_))))
               (_g115426115489_
                (lambda (_g115428115447_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115428115447_))
                      (let ((_e115433115449_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115428115447_))))
                        (let ((_hd115432115452_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115433115449_)))
                              (_tl115431115454_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115433115449_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115431115454_))
                              (let ((_e115436115457_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115431115454_))))
                                (let ((_hd115435115460_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115436115457_)))
                                      (_tl115434115462_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115436115457_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115434115462_))
                                      (let ((_e115439115465_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115434115462_))))
                                        (let ((_hd115438115468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115439115465_)))
                                              (_tl115437115470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115439115465_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115437115470_))
                                              ((lambda (_L115473_ _L115474_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115473_
                                                    _arg115425_)))
                                               _hd115438115468_
                                               _hd115435115460_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115427115444_
                                                 _g115428115447_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115427115444_ _g115428115447_)))))
                              (let ()
                                (declare (not safe))
                                (_g115427115444_ _g115428115447_)))))
                      (let ()
                        (declare (not safe))
                        (_g115427115444_ _g115428115447_))))))
          (declare (not safe))
          (_g115426115489_ _stx115424_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx115368_ _ids115369_)
        (let* ((_g115371115384_
                (lambda (_g115372115381_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115372115381_))))
               (_g115370115421_
                (lambda (_g115372115387_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115372115387_))
                      (let ((_e115376115389_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115372115387_))))
                        (let ((_hd115375115392_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115376115389_)))
                              (_tl115374115394_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115376115389_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115374115394_))
                              (let ((_e115379115397_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115374115394_))))
                                (let ((_hd115378115400_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115379115397_)))
                                      (_tl115377115402_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115379115397_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115377115402_))
                                      ((lambda (_L115405_)
                                         (let ((__tmp118260
                                                (lambda (_g115416115418_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L115405_
                                                     _g115416115418_)))))
                                           (declare (not safe))
                                           (find __tmp118260 _ids115369_)))
                                       _hd115378115400_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115371115384_ _g115372115387_)))))
                              (let ()
                                (declare (not safe))
                                (_g115371115384_ _g115372115387_)))))
                      (let ()
                        (declare (not safe))
                        (_g115371115384_ _g115372115387_))))))
          (declare (not safe))
          (_g115370115421_ _stx115368_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx115292_ _ids115293_)
        (let* ((_g115295115312_
                (lambda (_g115296115309_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115296115309_))))
               (_g115294115365_
                (lambda (_g115296115315_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115296115315_))
                      (let ((_e115301115317_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115296115315_))))
                        (let ((_hd115300115320_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115301115317_)))
                              (_tl115299115322_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115301115317_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115299115322_))
                              (let ((_e115304115325_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115299115322_))))
                                (let ((_hd115303115328_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115304115325_)))
                                      (_tl115302115330_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115304115325_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115302115330_))
                                      (let ((_e115307115333_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115302115330_))))
                                        (let ((_hd115306115336_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115307115333_)))
                                              (_tl115305115338_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115307115333_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115305115338_))
                                              ((lambda (_L115341_ _L115342_)
                                                 (let ((_$e115362_
                                                        (let ((__tmp118261
                                                               (lambda (_g115357115359_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L115342_ _g115357115359_)))))
                  (declare (not safe))
                  (find __tmp118261 _ids115293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e115362_
                                                       _$e115362_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L115341_
                                                          _ids115293_)))))
                                               _hd115306115336_
                                               _hd115303115328_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115295115312_
                                                 _g115296115315_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115295115312_ _g115296115315_)))))
                              (let ()
                                (declare (not safe))
                                (_g115295115312_ _g115296115315_)))))
                      (let ()
                        (declare (not safe))
                        (_g115295115312_ _g115296115315_))))))
          (declare (not safe))
          (_g115294115365_ _stx115292_))))))
