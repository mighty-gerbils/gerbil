(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1696371936)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl22835_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22835_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22835_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22835_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22835_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl22835_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl22831_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22831_ '%#declare gxc#xform-identity))
           _tbl22831_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl22827_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp23081 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl22827_ __tmp23081))
           (let ((__tmp23082 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl22827_ __tmp23082))
           _tbl22827_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl22823_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22823_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22823_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22823_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22823_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22823_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl22823_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl22819_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp23083 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl22819_ __tmp23083))
           (let ((__tmp23084 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl22819_ __tmp23084))
           (let ()
             (declare (not safe))
             (table-set! _tbl22819_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22819_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22819_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22819_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22819_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl22819_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl22815_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp23085 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl22815_ __tmp23085))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22815_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22815_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22815_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22815_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22815_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22815_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22815_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22815_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22815_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22815_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22815_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22815_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl22815_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx22808_ . _args22810_)
        (let ((__tmp23087
               (lambda () (apply gxc#compile-e _stx22808_ _args22810_)))
              (__tmp23086 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp23087
           gxc#current-compile-methods
           __tmp23086))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl22805_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp23088 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl22805_ __tmp23088))
           (let ()
             (declare (not safe))
             (table-set! _tbl22805_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22805_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22805_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22805_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22805_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl22805_))))
    (define gxc#apply-collect-methods
      (lambda (_stx22798_ . _args22800_)
        (let ((__tmp23090
               (lambda () (apply gxc#compile-e _stx22798_ _args22800_)))
              (__tmp23089 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp23090
           gxc#current-compile-methods
           __tmp23089))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl22795_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp23091 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl22795_ __tmp23091))
           (let ()
             (declare (not safe))
             (table-set! _tbl22795_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22795_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22795_ '%#set! gxc#expression-subst-setq%))
           _tbl22795_))))
    (define gxc#apply-expression-subst
      (lambda (_stx22788_ . _args22790_)
        (let ((__tmp23093
               (lambda () (apply gxc#compile-e _stx22788_ _args22790_)))
              (__tmp23092 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp23093
           gxc#current-compile-methods
           __tmp23092))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl22785_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp23094 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl22785_ __tmp23094))
           (let ()
             (declare (not safe))
             (table-set! _tbl22785_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22785_ '%#set! gxc#expression-subst*-setq%))
           _tbl22785_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx22778_ . _args22780_)
        (let ((__tmp23096
               (lambda () (apply gxc#compile-e _stx22778_ _args22780_)))
              (__tmp23095 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp23096
           gxc#current-compile-methods
           __tmp23095))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl22775_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp23097 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl22775_ __tmp23097))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22775_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22775_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl22775_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl22771_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp23098 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl22771_ __tmp23098))
           (let ()
             (declare (not safe))
             (table-set! _tbl22771_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22771_ '%#set! gxc#find-var-refs-setq%))
           _tbl22771_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx22764_ . _args22766_)
        (let ((__tmp23100
               (lambda () (apply gxc#compile-e _stx22764_ _args22766_)))
              (__tmp23099 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp23100
           gxc#current-compile-methods
           __tmp23099))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl22761_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp23101 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl22761_ __tmp23101))
           (let ()
             (declare (not safe))
             (table-set! _tbl22761_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22761_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl22761_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx22754_ . _args22756_)
        (let ((__tmp23103
               (lambda () (apply gxc#compile-e _stx22754_ _args22756_)))
              (__tmp23102 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp23103
           gxc#current-compile-methods
           __tmp23102))))
    (define gxc#xform-identity (lambda (_stx22751_ . _args22752_) _stx22751_))
    (define gxc#xform-wrap-source
      (lambda (_stx22748_ _src-stx22749_)
        (let ((__tmp23104
               (let () (declare (not safe)) (gx#stx-source _src-stx22749_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx22748_ __tmp23104))))
    (define gxc#xform-apply-compile-e
      (lambda (_args22742_)
        (lambda (_g2274322745_)
          (apply gxc#compile-e _g2274322745_ _args22742_))))
    (define gxc#xform-begin%
      (lambda (_stx22701_ . _args22702_)
        (let* ((_g2270422714_
                (lambda (_g2270522711_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2270522711_))))
               (_g2270322739_
                (lambda (_g2270522717_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2270522717_))
                      (let ((_e2270922719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2270522717_))))
                        (let ((_hd2270822722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2270922719_)))
                              (_tl2270722724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2270922719_))))
                          ((lambda (_L22727_)
                             (let* ((_forms22737_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args22702_))
                                          _L22727_))
                                    (__tmp23105
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms22737_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp23105 _stx22701_)))
                           _tl2270722724_)))
                      (let ()
                        (declare (not safe))
                        (_g2270422714_ _g2270522717_))))))
          (declare (not safe))
          (_g2270322739_ _stx22701_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx22659_ . _args22660_)
        (let* ((_g2266222672_
                (lambda (_g2266322669_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2266322669_))))
               (_g2266122698_
                (lambda (_g2266322675_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2266322675_))
                      (let ((_e2266722677_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2266322675_))))
                        (let ((_hd2266622680_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2266722677_)))
                              (_tl2266522682_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2266722677_))))
                          ((lambda (_L22685_)
                             (let ((__tmp23108
                                    (lambda ()
                                      (let* ((_forms22696_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args22660_))
                                                   _L22685_))
                                             (__tmp23109
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms22696_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp23109
                                         _stx22659_))))
                                   (__tmp23106
                                    (let ((__tmp23107
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp23107 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp23108
                                gx#current-expander-phi
                                __tmp23106)))
                           _tl2266522682_)))
                      (let ()
                        (declare (not safe))
                        (_g2266222672_ _g2266322675_))))))
          (declare (not safe))
          (_g2266122698_ _stx22659_))))
    (define gxc#xform-module%
      (lambda (_stx22596_ . _args22597_)
        (let* ((_g2259922613_
                (lambda (_g2260022610_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2260022610_))))
               (_g2259822656_
                (lambda (_g2260022616_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2260022616_))
                      (let ((_e2260522618_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2260022616_))))
                        (let ((_hd2260422621_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2260522618_)))
                              (_tl2260322623_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2260522618_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2260322623_))
                              (let ((_e2260822626_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2260322623_))))
                                (let ((_hd2260722629_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2260822626_)))
                                      (_tl2260622631_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2260822626_))))
                                  ((lambda (_L22634_ _L22635_)
                                     (let* ((_ctx22648_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L22635_)))
                                            (_code22650_
                                             (##structure-ref
                                              _ctx22648_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code22653_
                                             (let ((__tmp23110
                                                    (lambda ()
                                                      (apply gxc#compile-e
                                                             _code22650_
                                                             _args22597_))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp23110
                                                gx#current-expander-context
                                                _ctx22648_))))
                                       (##structure-set!
                                        _ctx22648_
                                        _code22653_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp23111
                                              (let ((__tmp23112
                                                     (let ((__tmp23113
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code22653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L22635_ __tmp23113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp23112))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp23111
                                          _stx22596_))))
                                   _tl2260622631_
                                   _hd2260722629_)))
                              (let ()
                                (declare (not safe))
                                (_g2259922613_ _g2260022616_)))))
                      (let ()
                        (declare (not safe))
                        (_g2259922613_ _g2260022616_))))))
          (declare (not safe))
          (_g2259822656_ _stx22596_))))
    (define gxc#xform-define-values%
      (lambda (_stx22526_ . _args22527_)
        (let* ((_g2252922546_
                (lambda (_g2253022543_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2253022543_))))
               (_g2252822593_
                (lambda (_g2253022549_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2253022549_))
                      (let ((_e2253522551_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2253022549_))))
                        (let ((_hd2253422554_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2253522551_)))
                              (_tl2253322556_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2253522551_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2253322556_))
                              (let ((_e2253822559_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2253322556_))))
                                (let ((_hd2253722562_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2253822559_)))
                                      (_tl2253622564_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2253822559_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2253622564_))
                                      (let ((_e2254122567_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2253622564_))))
                                        (let ((_hd2254022570_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2254122567_)))
                                              (_tl2253922572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2254122567_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2253922572_))
                                              ((lambda (_L22575_ _L22576_)
                                                 (let* ((_expr22591_
                                                         (apply gxc#compile-e
                                                                _L22575_
                                                                _args22527_))
                                                        (__tmp23114
                                                         (let ((__tmp23115
                                                                (let ((__tmp23116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr22591_ '()))))
                          (declare (not safe))
                          (cons _L22576_ __tmp23116))))
                   (declare (not safe))
                   (cons '%#define-values __tmp23115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp23114
                                                    _stx22526_)))
                                               _hd2254022570_
                                               _hd2253722562_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2252922546_
                                                 _g2253022549_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2252922546_ _g2253022549_)))))
                              (let ()
                                (declare (not safe))
                                (_g2252922546_ _g2253022549_)))))
                      (let ()
                        (declare (not safe))
                        (_g2252922546_ _g2253022549_))))))
          (declare (not safe))
          (_g2252822593_ _stx22526_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx22455_ . _args22456_)
        (let* ((_g2245822475_
                (lambda (_g2245922472_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2245922472_))))
               (_g2245722523_
                (lambda (_g2245922478_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2245922478_))
                      (let ((_e2246422480_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2245922478_))))
                        (let ((_hd2246322483_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2246422480_)))
                              (_tl2246222485_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2246422480_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2246222485_))
                              (let ((_e2246722488_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2246222485_))))
                                (let ((_hd2246622491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2246722488_)))
                                      (_tl2246522493_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2246722488_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2246522493_))
                                      (let ((_e2247022496_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2246522493_))))
                                        (let ((_hd2246922499_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2247022496_)))
                                              (_tl2246822501_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2247022496_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2246822501_))
                                              ((lambda (_L22504_ _L22505_)
                                                 (let ((__tmp23119
                                                        (lambda ()
                                                          (let* ((_expr22521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (apply gxc#compile-e _L22504_ _args22456_))
                         (__tmp23120
                          (let ((__tmp23121
                                 (let ((__tmp23122
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr22521_ '()))))
                                   (declare (not safe))
                                   (cons _L22505_ __tmp23122))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp23121))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp23120 _stx22455_))))
               (__tmp23117
                (let ((__tmp23118 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp23118 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp23119
                                                    gx#current-expander-phi
                                                    __tmp23117)))
                                               _hd2246922499_
                                               _hd2246622491_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2245822475_
                                                 _g2245922478_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2245822475_ _g2245922478_)))))
                              (let ()
                                (declare (not safe))
                                (_g2245822475_ _g2245922478_)))))
                      (let ()
                        (declare (not safe))
                        (_g2245822475_ _g2245922478_))))))
          (declare (not safe))
          (_g2245722523_ _stx22455_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx22385_ . _args22386_)
        (let* ((_g2238822405_
                (lambda (_g2238922402_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2238922402_))))
               (_g2238722452_
                (lambda (_g2238922408_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2238922408_))
                      (let ((_e2239422410_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2238922408_))))
                        (let ((_hd2239322413_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2239422410_)))
                              (_tl2239222415_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2239422410_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2239222415_))
                              (let ((_e2239722418_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2239222415_))))
                                (let ((_hd2239622421_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2239722418_)))
                                      (_tl2239522423_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2239722418_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2239522423_))
                                      (let ((_e2240022426_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2239522423_))))
                                        (let ((_hd2239922429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2240022426_)))
                                              (_tl2239822431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2240022426_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2239822431_))
                                              ((lambda (_L22434_ _L22435_)
                                                 (let* ((_expr22450_
                                                         (apply gxc#compile-e
                                                                _L22434_
                                                                _args22386_))
                                                        (__tmp23123
                                                         (let ((__tmp23124
                                                                (let ((__tmp23125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr22450_ '()))))
                          (declare (not safe))
                          (cons _L22435_ __tmp23125))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp23124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp23123
                                                    _stx22385_)))
                                               _hd2239922429_
                                               _hd2239622421_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2238822405_
                                                 _g2238922408_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2238822405_ _g2238922408_)))))
                              (let ()
                                (declare (not safe))
                                (_g2238822405_ _g2238922408_)))))
                      (let ()
                        (declare (not safe))
                        (_g2238822405_ _g2238922408_))))))
          (declare (not safe))
          (_g2238722452_ _stx22385_))))
    (define gxc#xform-lambda%
      (lambda (_stx22328_ . _args22329_)
        (let* ((_g2233122345_
                (lambda (_g2233222342_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2233222342_))))
               (_g2233022382_
                (lambda (_g2233222348_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2233222348_))
                      (let ((_e2233722350_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2233222348_))))
                        (let ((_hd2233622353_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2233722350_)))
                              (_tl2233522355_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2233722350_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2233522355_))
                              (let ((_e2234022358_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2233522355_))))
                                (let ((_hd2233922361_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2234022358_)))
                                      (_tl2233822363_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2234022358_))))
                                  ((lambda (_L22366_ _L22367_)
                                     (let* ((_body22380_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args22329_))
                                                  _L22366_))
                                            (__tmp23126
                                             (let ((__tmp23127
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L22367_
                                                            _body22380_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp23127))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp23126
                                        _stx22328_)))
                                   _tl2233822363_
                                   _hd2233922361_)))
                              (let ()
                                (declare (not safe))
                                (_g2233122345_ _g2233222348_)))))
                      (let ()
                        (declare (not safe))
                        (_g2233122345_ _g2233222348_))))))
          (declare (not safe))
          (_g2233022382_ _stx22328_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx22241_ . _args22242_)
        (letrec ((_clause-e22244_
                  (lambda (_clause22285_)
                    (let* ((_g2228722298_
                            (lambda (_g2228822295_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2228822295_))))
                           (_g2228622325_
                            (lambda (_g2228822301_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g2228822301_))
                                  (let ((_e2229322303_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g2228822301_))))
                                    (let ((_hd2229222306_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2229322303_)))
                                          (_tl2229122308_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2229322303_))))
                                      ((lambda (_L22311_ _L22312_)
                                         (let ((_body22323_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args22242_))
                                                     _L22311_)))
                                           (declare (not safe))
                                           (cons _L22312_ _body22323_)))
                                       _tl2229122308_
                                       _hd2229222306_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g2228722298_ _g2228822301_))))))
                      (declare (not safe))
                      (_g2228622325_ _clause22285_)))))
          (let* ((_g2224622256_
                  (lambda (_g2224722253_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g2224722253_))))
                 (_g2224522282_
                  (lambda (_g2224722259_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g2224722259_))
                        (let ((_e2225122261_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g2224722259_))))
                          (let ((_hd2225022264_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2225122261_)))
                                (_tl2224922266_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2225122261_))))
                            ((lambda (_L22269_)
                               (let* ((_clauses22280_
                                       (map _clause-e22244_ _L22269_))
                                      (__tmp23128
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses22280_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp23128
                                  _stx22241_)))
                             _tl2224922266_)))
                        (let ()
                          (declare (not safe))
                          (_g2224622256_ _g2224722259_))))))
            (declare (not safe))
            (_g2224522282_ _stx22241_)))))
    (define gxc#xform-let-values%
      (lambda (_stx22035_ . _args22036_)
        (let* ((_g2203822071_
                (lambda (_g2203922068_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2203922068_))))
               (_g2203722238_
                (lambda (_g2203922074_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2203922074_))
                      (let ((_e2204622076_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2203922074_))))
                        (let ((_hd2204522079_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2204622076_)))
                              (_tl2204422081_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2204622076_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2204422081_))
                              (let ((_e2204922084_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2204422081_))))
                                (let ((_hd2204822087_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2204922084_)))
                                      (_tl2204722089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2204922084_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd2204822087_))
                                      (let ((_g23129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd2204822087_
                                                '0))))
                                        (begin
                                          (let ((_g23130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23129_)
                                                       (##vector-length
                                                        _g23129_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23130_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23130_)))
                                          (let ((_target2205022092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23129_ 0)))
                                                (_tl2205222094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23129_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2205222094_))
                                                (letrec ((_loop2205322097_
                                                          (lambda (_hd2205122100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2205722102_
                           _hd2205822104_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd2205122100_))
                        (let ((_e2205422107_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd2205122100_))))
                          (let ((_lp-hd2205522110_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2205422107_)))
                                (_lp-tl2205622112_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2205422107_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd2205522110_))
                                (let ((_e2206322115_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd2205522110_))))
                                  (let ((_hd2206222118_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2206322115_)))
                                        (_tl2206122120_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2206322115_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl2206122120_))
                                        (let ((_e2206622123_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl2206122120_))))
                                          (let ((_hd2206522126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2206622123_)))
                                                (_tl2206422128_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2206622123_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2206422128_))
                                                (let ((__tmp23143
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2206522126_
                                                               _expr2205722102_)))
                                                      (__tmp23142
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2206222118_
                                                               _hd2205822104_))))
                                                  (declare (not safe))
                                                  (_loop2205322097_
                                                   _lp-tl2205622112_
                                                   __tmp23143
                                                   __tmp23142))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2203822071_
                                                   _g2203922074_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2203822071_ _g2203922074_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2203822071_ _g2203922074_)))))
                        (let ((_expr2205922131_ (reverse _expr2205722102_))
                              (_hd2206022133_ (reverse _hd2205822104_)))
                          ((lambda (_L22136_ _L22137_ _L22138_ _L22139_)
                             (let* ((_g2215822174_
                                     (lambda (_g2215922171_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2215922171_))))
                                    (_g2215722228_
                                     (lambda (_g2215922177_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null? _g2215922177_))
                                           (let ((_g23131_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g2215922177_
                                                     '0))))
                                             (begin
                                               (let ((_g23132_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g23131_)
                                                            (##vector-length
                                                             _g23131_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g23132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g23132_)))
                                               (let ((_target2216122179_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g23131_
                                                         0)))
                                                     (_tl2216322181_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g23131_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl2216322181_))
                                                     (letrec ((_loop2216422184_
                                                               (lambda (_hd2216222187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2216822189_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd2216222187_))
                             (let ((_e2216522192_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd2216222187_))))
                               (let ((_lp-hd2216622195_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2216522192_)))
                                     (_lp-tl2216722197_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2216522192_))))
                                 (let ((__tmp23139
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd2216622195_
                                                _expr2216822189_))))
                                   (declare (not safe))
                                   (_loop2216422184_
                                    _lp-tl2216722197_
                                    __tmp23139))))
                             (let ((_expr2216922200_
                                    (reverse _expr2216822189_)))
                               ((lambda (_L22203_)
                                  (let ()
                                    (let* ((_body22216_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args22036_))
                                                 _L22136_))
                                           (__tmp23133
                                            (let ((__tmp23134
                                                   (let ((__tmp23135
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L22203_
                                                               _L22138_))
                                                            (let ((__tmp23136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2221722221_ _g2221822223_ _g2221922225_)
                             (let ((__tmp23137
                                    (let ((__tmp23138
                                           (let ()
                                             (declare (not safe))
                                             (cons _g2221722221_ '()))))
                                      (declare (not safe))
                                      (cons _g2221822223_ __tmp23138))))
                               (declare (not safe))
                               (cons __tmp23137 _g2221922225_)))))
                      (declare (not safe))
                      (foldr2 __tmp23136 '() _L22203_ _L22138_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp23135
                                                           _body22216_))))
                                              (declare (not safe))
                                              (cons _L22139_ __tmp23134))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp23133
                                       _stx22035_))))
                                _expr2216922200_))))))
               (let ()
                 (declare (not safe))
                 (_loop2216422184_ _target2216122179_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2215822174_
                                                        _g2215922177_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2215822174_ _g2215922177_)))))
                                    (__tmp23140
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args22036_))
                                          (let ((__tmp23141
                                                 (lambda (_g2223022233_
                                                          _g2223122235_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2223022233_
                                                           _g2223122235_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp23141
                                                    '()
                                                    _L22137_)))))
                               (declare (not safe))
                               (_g2215722228_ __tmp23140)))
                           _tl2204722089_
                           _expr2205922131_
                           _hd2206022133_
                           _hd2204522079_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop2205322097_
                                                     _target2205022092_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2203822071_
                                                   _g2203922074_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2203822071_ _g2203922074_)))))
                              (let ()
                                (declare (not safe))
                                (_g2203822071_ _g2203922074_)))))
                      (let ()
                        (declare (not safe))
                        (_g2203822071_ _g2203922074_))))))
          (declare (not safe))
          (_g2203722238_ _stx22035_))))
    (define gxc#xform-operands
      (lambda (_stx21991_ . _args21992_)
        (let* ((_g2199422005_
                (lambda (_g2199522002_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2199522002_))))
               (_g2199322032_
                (lambda (_g2199522008_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2199522008_))
                      (let ((_e2200022010_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2199522008_))))
                        (let ((_hd2199922013_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2200022010_)))
                              (_tl2199822015_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2200022010_))))
                          ((lambda (_L22018_ _L22019_)
                             (let* ((_rands22030_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args21992_))
                                          _L22018_))
                                    (__tmp23144
                                     (let ()
                                       (declare (not safe))
                                       (cons _L22019_ _rands22030_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp23144 _stx21991_)))
                           _tl2199822015_
                           _hd2199922013_)))
                      (let ()
                        (declare (not safe))
                        (_g2199422005_ _g2199522008_))))))
          (declare (not safe))
          (_g2199322032_ _stx21991_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx21921_ . _args21922_)
        (let* ((_g2192421941_
                (lambda (_g2192521938_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2192521938_))))
               (_g2192321988_
                (lambda (_g2192521944_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2192521944_))
                      (let ((_e2193021946_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2192521944_))))
                        (let ((_hd2192921949_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2193021946_)))
                              (_tl2192821951_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2193021946_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2192821951_))
                              (let ((_e2193321954_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2192821951_))))
                                (let ((_hd2193221957_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2193321954_)))
                                      (_tl2193121959_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2193321954_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2193121959_))
                                      (let ((_e2193621962_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2193121959_))))
                                        (let ((_hd2193521965_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2193621962_)))
                                              (_tl2193421967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2193621962_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2193421967_))
                                              ((lambda (_L21970_ _L21971_)
                                                 (let* ((_expr21986_
                                                         (apply gxc#compile-e
                                                                _L21970_
                                                                _args21922_))
                                                        (__tmp23145
                                                         (let ((__tmp23146
                                                                (let ((__tmp23147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr21986_ '()))))
                          (declare (not safe))
                          (cons _L21971_ __tmp23147))))
                   (declare (not safe))
                   (cons '%#set! __tmp23146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp23145
                                                    _stx21921_)))
                                               _hd2193521965_
                                               _hd2193221957_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2192421941_
                                                 _g2192521944_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2192421941_ _g2192521944_)))))
                              (let ()
                                (declare (not safe))
                                (_g2192421941_ _g2192521944_)))))
                      (let ()
                        (declare (not safe))
                        (_g2192421941_ _g2192521944_))))))
          (declare (not safe))
          (_g2192321988_ _stx21921_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx21852_)
        (let* ((_g2185421871_
                (lambda (_g2185521868_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2185521868_))))
               (_g2185321918_
                (lambda (_g2185521874_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2185521874_))
                      (let ((_e2186021876_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2185521874_))))
                        (let ((_hd2185921879_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2186021876_)))
                              (_tl2185821881_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2186021876_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2185821881_))
                              (let ((_e2186321884_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2185821881_))))
                                (let ((_hd2186221887_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2186321884_)))
                                      (_tl2186121889_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2186321884_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2186121889_))
                                      (let ((_e2186621892_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2186121889_))))
                                        (let ((_hd2186521895_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2186621892_)))
                                              (_tl2186421897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2186621892_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2186421897_))
                                              ((lambda (_L21900_ _L21901_)
                                                 (let ((_sym21916_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L21901_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym21916_))
                                                   (let ((__tmp23148
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp23148
                                                      _sym21916_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L21900_))))
                                               _hd2186521895_
                                               _hd2186221887_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2185421871_
                                                 _g2185521874_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2185421871_ _g2185521874_)))))
                              (let ()
                                (declare (not safe))
                                (_g2185421871_ _g2185521874_)))))
                      (let ()
                        (declare (not safe))
                        (_g2185421871_ _g2185521874_))))))
          (declare (not safe))
          (_g2185321918_ _stx21852_))))
    (define gxc#collect-methods-call%
      (lambda (_stx21406_)
        (let* ((___stx2283822839_ _stx21406_)
               (_g2141021512_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx2283822839_)))))
          (let ((___kont2284022841_
                 (lambda (_L21802_ _L21803_ _L21804_ _L21805_ _L21806_)
                   (let ((__tmp23149
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L21803_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp23149))))
                (___kont2284222843_
                 (lambda (_L21628_ _L21629_ _L21630_ _L21631_)
                   (let ((__tmp23150
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L21628_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp23150))))
                (___kont2284422845_ (lambda () '#!void)))
            (let ((___match2297322974_
                   (lambda (_e2141921674_
                            _hd2141821677_
                            _tl2141721679_
                            _e2142221682_
                            _hd2142121685_
                            _tl2142021687_
                            _e2142521690_
                            _hd2142421693_
                            _tl2142321695_
                            _e2142821698_
                            _hd2142721701_
                            _tl2142621703_
                            _e2143121706_
                            _hd2143021709_
                            _tl2142921711_
                            _e2143421714_
                            _hd2143321717_
                            _tl2143221719_
                            _e2143721722_
                            _hd2143621725_
                            _tl2143521727_
                            _e2144021730_
                            _hd2143921733_
                            _tl2143821735_
                            _e2144321738_
                            _hd2144221741_
                            _tl2144121743_
                            _e2144621746_
                            _hd2144521749_
                            _tl2144421751_
                            _e2144921754_
                            _hd2144821757_
                            _tl2144721759_
                            _e2145221762_
                            _hd2145121765_
                            _tl2145021767_
                            _e2145521770_
                            _hd2145421773_
                            _tl2145321775_
                            _e2145821778_
                            _hd2145721781_
                            _tl2145621783_
                            _e2146121786_
                            _hd2146021789_
                            _tl2145921791_
                            _e2146421794_
                            _hd2146321797_
                            _tl2146221799_)
                     (let ((_L21802_ _hd2146321797_)
                           (_L21803_ _hd2145421773_)
                           (_L21804_ _hd2144521749_)
                           (_L21805_ _hd2143621725_)
                           (_L21806_ _hd2142721701_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L21806_ 'bind-method!))
                           (___kont2284022841_
                            _L21802_
                            _L21803_
                            _L21804_
                            _L21805_
                            _L21806_)
                           (___kont2284422845_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx2283822839_))
                  (let ((_e2141921674_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx2283822839_))))
                    (let ((_tl2141721679_
                           (let () (declare (not safe)) (##cdr _e2141921674_)))
                          (_hd2141821677_
                           (let ()
                             (declare (not safe))
                             (##car _e2141921674_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl2141721679_))
                          (let ((_e2142221682_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl2141721679_))))
                            (let ((_tl2142021687_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2142221682_)))
                                  (_hd2142121685_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2142221682_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd2142121685_))
                                  (let ((_e2142521690_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd2142121685_))))
                                    (let ((_tl2142321695_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2142521690_)))
                                          (_hd2142421693_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2142521690_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd2142421693_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd2142421693_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl2142321695_))
                                                  (let ((_e2142821698_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl2142321695_))))
                                                    (let ((_tl2142621703_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2142821698_)))
                                                          (_hd2142721701_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2142821698_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl2142621703_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl2142021687_))
                      (let ((_e2143121706_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl2142021687_))))
                        (let ((_tl2142921711_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2143121706_)))
                              (_hd2143021709_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2143121706_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd2143021709_))
                              (let ((_e2143421714_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd2143021709_))))
                                (let ((_tl2143221719_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2143421714_)))
                                      (_hd2143321717_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2143421714_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd2143321717_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd2143321717_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl2143221719_))
                                              (let ((_e2143721722_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl2143221719_))))
                                                (let ((_tl2143521727_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2143721722_)))
                                                      (_hd2143621725_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2143721722_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl2143521727_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl2142921711_))
                                                          (let ((_e2144021730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl2142921711_))))
                    (let ((_tl2143821735_
                           (let () (declare (not safe)) (##cdr _e2144021730_)))
                          (_hd2143921733_
                           (let ()
                             (declare (not safe))
                             (##car _e2144021730_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd2143921733_))
                          (let ((_e2144321738_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd2143921733_))))
                            (let ((_tl2144121743_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2144321738_)))
                                  (_hd2144221741_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2144321738_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd2144221741_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd2144221741_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl2144121743_))
                                          (let ((_e2144621746_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl2144121743_))))
                                            (let ((_tl2144421751_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2144621746_)))
                                                  (_hd2144521749_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2144621746_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl2144421751_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl2143821735_))
                                                      (let ((_e2144921754_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl2143821735_))))
                (let ((_tl2144721759_
                       (let () (declare (not safe)) (##cdr _e2144921754_)))
                      (_hd2144821757_
                       (let () (declare (not safe)) (##car _e2144921754_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd2144821757_))
                      (let ((_e2145221762_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd2144821757_))))
                        (let ((_tl2145021767_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2145221762_)))
                              (_hd2145121765_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2145221762_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd2145121765_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd2145121765_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2145021767_))
                                      (let ((_e2145521770_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2145021767_))))
                                        (let ((_tl2145321775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2145521770_)))
                                              (_hd2145421773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2145521770_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2145321775_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl2144721759_))
                                                  (let ((_e2145821778_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl2144721759_))))
                                                    (let ((_tl2145621783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2145821778_)))
                                                          (_hd2145721781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2145821778_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd2145721781_))
                                                          (let ((_e2146121786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd2145721781_))))
                    (let ((_tl2145921791_
                           (let () (declare (not safe)) (##cdr _e2146121786_)))
                          (_hd2146021789_
                           (let ()
                             (declare (not safe))
                             (##car _e2146121786_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd2146021789_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd2146021789_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl2145921791_))
                                  (let ((_e2146421794_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl2145921791_))))
                                    (let ((_tl2146221799_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2146421794_)))
                                          (_hd2146321797_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2146421794_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl2146221799_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2145621783_))
                                              (___match2297322974_
                                               _e2141921674_
                                               _hd2141821677_
                                               _tl2141721679_
                                               _e2142221682_
                                               _hd2142121685_
                                               _tl2142021687_
                                               _e2142521690_
                                               _hd2142421693_
                                               _tl2142321695_
                                               _e2142821698_
                                               _hd2142721701_
                                               _tl2142621703_
                                               _e2143121706_
                                               _hd2143021709_
                                               _tl2142921711_
                                               _e2143421714_
                                               _hd2143321717_
                                               _tl2143221719_
                                               _e2143721722_
                                               _hd2143621725_
                                               _tl2143521727_
                                               _e2144021730_
                                               _hd2143921733_
                                               _tl2143821735_
                                               _e2144321738_
                                               _hd2144221741_
                                               _tl2144121743_
                                               _e2144621746_
                                               _hd2144521749_
                                               _tl2144421751_
                                               _e2144921754_
                                               _hd2144821757_
                                               _tl2144721759_
                                               _e2145221762_
                                               _hd2145121765_
                                               _tl2145021767_
                                               _e2145521770_
                                               _hd2145421773_
                                               _tl2145321775_
                                               _e2145821778_
                                               _hd2145721781_
                                               _tl2145621783_
                                               _e2146121786_
                                               _hd2146021789_
                                               _tl2145921791_
                                               _e2146421794_
                                               _hd2146321797_
                                               _tl2146221799_)
                                              (___kont2284422845_))
                                          (___kont2284422845_))))
                                  (___kont2284422845_))
                              (___kont2284422845_))
                          (___kont2284422845_))))
                  (___kont2284422845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl2144721759_))
                                                      (if (let ((__tmp23151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp23151 'bind-method!))
                  (let ((_L21628_ _hd2145421773_)
                        (_L21629_ _hd2144521749_)
                        (_L21630_ _hd2143621725_)
                        (_L21631_ _hd2142721701_))
                    (___kont2284222843_ _L21628_ _L21629_ _L21630_ _L21631_))
                  (___kont2284422845_))
              (___kont2284422845_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2284422845_))))
                                      (___kont2284422845_))
                                  (___kont2284422845_))
                              (___kont2284422845_))))
                      (___kont2284422845_))))
              (___kont2284422845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2284422845_))))
                                          (___kont2284422845_))
                                      (___kont2284422845_))
                                  (___kont2284422845_))))
                          (___kont2284422845_))))
                  (___kont2284422845_))
              (___kont2284422845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2284422845_))
                                          (___kont2284422845_))
                                      (___kont2284422845_))))
                              (___kont2284422845_))))
                      (___kont2284422845_))
                  (___kont2284422845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2284422845_))
                                              (___kont2284422845_))
                                          (___kont2284422845_))))
                                  (___kont2284422845_))))
                          (___kont2284422845_))))
                  (___kont2284422845_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx21353_ _id21354_ _new-id21355_)
        (let* ((_g2135721370_
                (lambda (_g2135821367_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2135821367_))))
               (_g2135621403_
                (lambda (_g2135821373_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2135821373_))
                      (let ((_e2136221375_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2135821373_))))
                        (let ((_hd2136121378_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2136221375_)))
                              (_tl2136021380_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2136221375_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2136021380_))
                              (let ((_e2136521383_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2136021380_))))
                                (let ((_hd2136421386_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2136521383_)))
                                      (_tl2136321388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2136521383_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2136321388_))
                                      ((lambda (_L21391_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L21391_
                                                _id21354_))
                                             (let ((__tmp23152
                                                    (let ((__tmp23153
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id21355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp23153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp23152
                                                _stx21353_))
                                             _stx21353_))
                                       _hd2136421386_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2135721370_ _g2135821373_)))))
                              (let ()
                                (declare (not safe))
                                (_g2135721370_ _g2135821373_)))))
                      (let ()
                        (declare (not safe))
                        (_g2135721370_ _g2135821373_))))))
          (declare (not safe))
          (_g2135621403_ _stx21353_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx21294_ _subst21295_)
        (let* ((_g2129721310_
                (lambda (_g2129821307_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2129821307_))))
               (_g2129621350_
                (lambda (_g2129821313_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2129821313_))
                      (let ((_e2130221315_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2129821313_))))
                        (let ((_hd2130121318_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2130221315_)))
                              (_tl2130021320_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2130221315_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2130021320_))
                              (let ((_e2130521323_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2130021320_))))
                                (let ((_hd2130421326_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2130521323_)))
                                      (_tl2130321328_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2130521323_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2130321328_))
                                      ((lambda (_L21331_)
                                         (let ((_$e21345_
                                                (let ((__tmp23154
                                                       (lambda (_sub21343_)
                                                         (let ((__tmp23155
                                                                (car _sub21343_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L21331_
                                                            __tmp23155)))))
                                                  (declare (not safe))
                                                  (find __tmp23154
                                                        _subst21295_))))
                                           (if _$e21345_
                                               ((lambda (_sub21348_)
                                                  (let ((__tmp23156
                                                         (let ((__tmp23157
                                                                (let ((__tmp23158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub21348_)))
                          (declare (not safe))
                          (cons __tmp23158 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp23157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp23156
                                                     _stx21294_)))
                                                _$e21345_)
                                               _stx21294_)))
                                       _hd2130421326_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2129721310_ _g2129821313_)))))
                              (let ()
                                (declare (not safe))
                                (_g2129721310_ _g2129821313_)))))
                      (let ()
                        (declare (not safe))
                        (_g2129721310_ _g2129821313_))))))
          (declare (not safe))
          (_g2129621350_ _stx21294_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx21222_ _id21223_ _new-id21224_)
        (let* ((_g2122621243_
                (lambda (_g2122721240_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2122721240_))))
               (_g2122521291_
                (lambda (_g2122721246_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2122721246_))
                      (let ((_e2123221248_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2122721246_))))
                        (let ((_hd2123121251_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2123221248_)))
                              (_tl2123021253_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2123221248_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2123021253_))
                              (let ((_e2123521256_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2123021253_))))
                                (let ((_hd2123421259_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2123521256_)))
                                      (_tl2123321261_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2123521256_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2123321261_))
                                      (let ((_e2123821264_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2123321261_))))
                                        (let ((_hd2123721267_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2123821264_)))
                                              (_tl2123621269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2123821264_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2123621269_))
                                              ((lambda (_L21272_ _L21273_)
                                                 (let ((_new-expr21288_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           _L21272_
                                                           _id21223_
                                                           _new-id21224_)))
                                                       (_new-xid21289_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L21273_
                                                               _id21223_))
                                                            _new-id21224_
                                                            _L21273_)))
                                                   (let ((__tmp23159
                                                          (let ((__tmp23160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp23161
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr21288_ '()))))
                           (declare (not safe))
                           (cons _new-xid21289_ __tmp23161))))
                    (declare (not safe))
                    (cons '%#set! __tmp23160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp23159
                                                      _stx21222_))))
                                               _hd2123721267_
                                               _hd2123421259_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2122621243_
                                                 _g2122721246_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2122621243_ _g2122721246_)))))
                              (let ()
                                (declare (not safe))
                                (_g2122621243_ _g2122721246_)))))
                      (let ()
                        (declare (not safe))
                        (_g2122621243_ _g2122721246_))))))
          (declare (not safe))
          (_g2122521291_ _stx21222_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx21146_ _subst21147_)
        (let* ((_g2114921166_
                (lambda (_g2115021163_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2115021163_))))
               (_g2114821219_
                (lambda (_g2115021169_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2115021169_))
                      (let ((_e2115521171_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2115021169_))))
                        (let ((_hd2115421174_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2115521171_)))
                              (_tl2115321176_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2115521171_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2115321176_))
                              (let ((_e2115821179_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2115321176_))))
                                (let ((_hd2115721182_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2115821179_)))
                                      (_tl2115621184_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2115821179_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2115621184_))
                                      (let ((_e2116121187_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2115621184_))))
                                        (let ((_hd2116021190_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2116121187_)))
                                              (_tl2115921192_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2116121187_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2115921192_))
                                              ((lambda (_L21195_ _L21196_)
                                                 (let ((_new-expr21216_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           _L21195_
                                                           _subst21147_)))
                                                       (_new-xid21217_
                                                        (let ((_$e21213_
                                                               (let ((__tmp23162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub21211_)
                                (let ((__tmp23163 (car _sub21211_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L21196_
                                   __tmp23163)))))
                         (declare (not safe))
                         (find __tmp23162 _subst21147_))))
                  (if _$e21213_ (cdr _$e21213_) _L21196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp23164
                                                          (let ((__tmp23165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp23166
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr21216_ '()))))
                           (declare (not safe))
                           (cons _new-xid21217_ __tmp23166))))
                    (declare (not safe))
                    (cons '%#set! __tmp23165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp23164
                                                      _stx21146_))))
                                               _hd2116021190_
                                               _hd2115721182_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2114921166_
                                                 _g2115021169_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2114921166_ _g2115021169_)))))
                              (let ()
                                (declare (not safe))
                                (_g2114921166_ _g2115021169_)))))
                      (let ()
                        (declare (not safe))
                        (_g2114921166_ _g2115021169_))))))
          (declare (not safe))
          (_g2114821219_ _stx21146_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx21092_ _ht21093_)
        (let* ((_g2109521108_
                (lambda (_g2109621105_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2109621105_))))
               (_g2109421143_
                (lambda (_g2109621111_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2109621111_))
                      (let ((_e2110021113_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2109621111_))))
                        (let ((_hd2109921116_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2110021113_)))
                              (_tl2109821118_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2110021113_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2109821118_))
                              (let ((_e2110321121_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2109821118_))))
                                (let ((_hd2110221124_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2110321121_)))
                                      (_tl2110121126_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2110321121_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2110121126_))
                                      ((lambda (_L21129_)
                                         (let ((_eid21141_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L21129_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht21093_
                                            _eid21141_
                                            1+
                                            '0)))
                                       _hd2110221124_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2109521108_ _g2109621111_)))))
                              (let ()
                                (declare (not safe))
                                (_g2109521108_ _g2109621111_)))))
                      (let ()
                        (declare (not safe))
                        (_g2109521108_ _g2109621111_))))))
          (declare (not safe))
          (_g2109421143_ _stx21092_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx21022_ _ht21023_)
        (let* ((_g2102521042_
                (lambda (_g2102621039_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2102621039_))))
               (_g2102421089_
                (lambda (_g2102621045_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2102621045_))
                      (let ((_e2103121047_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2102621045_))))
                        (let ((_hd2103021050_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2103121047_)))
                              (_tl2102921052_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2103121047_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2102921052_))
                              (let ((_e2103421055_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2102921052_))))
                                (let ((_hd2103321058_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2103421055_)))
                                      (_tl2103221060_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2103421055_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2103221060_))
                                      (let ((_e2103721063_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2103221060_))))
                                        (let ((_hd2103621066_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2103721063_)))
                                              (_tl2103521068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2103721063_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2103521068_))
                                              ((lambda (_L21071_ _L21072_)
                                                 (let ((_eid21087_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L21072_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht21023_
                                                      _eid21087_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L21071_
                                                      _ht21023_))))
                                               _hd2103621066_
                                               _hd2103321058_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2102521042_
                                                 _g2102621045_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2102521042_ _g2102621045_)))))
                              (let ()
                                (declare (not safe))
                                (_g2102521042_ _g2102621045_)))))
                      (let ()
                        (declare (not safe))
                        (_g2102521042_ _g2102621045_))))))
          (declare (not safe))
          (_g2102421089_ _stx21022_))))
    (define gxc#find-body%
      (lambda (_stx20935_ _arg20936_)
        (let* ((_g2093820957_
                (lambda (_g2093920954_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2093920954_))))
               (_g2093721019_
                (lambda (_g2093920960_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2093920960_))
                      (let ((_e2094320962_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2093920960_))))
                        (let ((_hd2094220965_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2094320962_)))
                              (_tl2094120967_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2094320962_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl2094120967_))
                              (let ((_g23167_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl2094120967_
                                        '0))))
                                (begin
                                  (let ((_g23168_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g23167_)
                                               (##vector-length _g23167_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g23168_ 2)))
                                        (error "Context expects 2 values"
                                               _g23168_)))
                                  (let ((_target2094420970_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23167_ 0)))
                                        (_tl2094620972_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23167_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2094620972_))
                                        (letrec ((_loop2094720975_
                                                  (lambda (_hd2094520978_
                                                           _expr2095120980_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd2094520978_))
                                                        (let ((_e2094820983_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd2094520978_))))
                  (let ((_lp-hd2094920986_
                         (let () (declare (not safe)) (##car _e2094820983_)))
                        (_lp-tl2095020988_
                         (let () (declare (not safe)) (##cdr _e2094820983_))))
                    (let ((__tmp23172
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd2094920986_ _expr2095120980_))))
                      (declare (not safe))
                      (_loop2094720975_ _lp-tl2095020988_ __tmp23172))))
                (let ((_expr2095220991_ (reverse _expr2095120980_)))
                  ((lambda (_L20994_)
                     (let ((__tmp23171
                            (lambda (_g2100721009_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _g2100721009_ _arg20936_))))
                           (__tmp23169
                            (let ((__tmp23170
                                   (lambda (_g2101121014_ _g2101221016_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2101121014_ _g2101221016_)))))
                              (declare (not safe))
                              (foldr1 __tmp23170 '() _L20994_))))
                       (declare (not safe))
                       (ormap1 __tmp23171 __tmp23169)))
                   _expr2095220991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2094720975_
                                             _target2094420970_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2093820957_ _g2093920960_))))))
                              (let ()
                                (declare (not safe))
                                (_g2093820957_ _g2093920960_)))))
                      (let ()
                        (declare (not safe))
                        (_g2093820957_ _g2093920960_))))))
          (declare (not safe))
          (_g2093721019_ _stx20935_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx20867_ _arg20868_)
        (let* ((_g2087020887_
                (lambda (_g2087120884_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2087120884_))))
               (_g2086920932_
                (lambda (_g2087120890_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2087120890_))
                      (let ((_e2087620892_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2087120890_))))
                        (let ((_hd2087520895_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2087620892_)))
                              (_tl2087420897_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2087620892_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2087420897_))
                              (let ((_e2087920900_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2087420897_))))
                                (let ((_hd2087820903_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2087920900_)))
                                      (_tl2087720905_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2087920900_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2087720905_))
                                      (let ((_e2088220908_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2087720905_))))
                                        (let ((_hd2088120911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2088220908_)))
                                              (_tl2088020913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2088220908_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2088020913_))
                                              ((lambda (_L20916_ _L20917_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L20916_
                                                    _arg20868_)))
                                               _hd2088120911_
                                               _hd2087820903_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2087020887_
                                                 _g2087120890_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2087020887_ _g2087120890_)))))
                              (let ()
                                (declare (not safe))
                                (_g2087020887_ _g2087120890_)))))
                      (let ()
                        (declare (not safe))
                        (_g2087020887_ _g2087120890_))))))
          (declare (not safe))
          (_g2086920932_ _stx20867_))))
    (define gxc#find-lambda%
      (lambda (_stx20799_ _arg20800_)
        (let* ((_g2080220819_
                (lambda (_g2080320816_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2080320816_))))
               (_g2080120864_
                (lambda (_g2080320822_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2080320822_))
                      (let ((_e2080820824_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2080320822_))))
                        (let ((_hd2080720827_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2080820824_)))
                              (_tl2080620829_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2080820824_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2080620829_))
                              (let ((_e2081120832_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2080620829_))))
                                (let ((_hd2081020835_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2081120832_)))
                                      (_tl2080920837_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2081120832_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2080920837_))
                                      (let ((_e2081420840_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2080920837_))))
                                        (let ((_hd2081320843_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2081420840_)))
                                              (_tl2081220845_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2081420840_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2081220845_))
                                              ((lambda (_L20848_ _L20849_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L20848_
                                                    _arg20800_)))
                                               _hd2081320843_
                                               _hd2081020835_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2080220819_
                                                 _g2080320822_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2080220819_ _g2080320822_)))))
                              (let ()
                                (declare (not safe))
                                (_g2080220819_ _g2080320822_)))))
                      (let ()
                        (declare (not safe))
                        (_g2080220819_ _g2080320822_))))))
          (declare (not safe))
          (_g2080120864_ _stx20799_))))
    (define gxc#find-case-lambda%
      (lambda (_stx20681_ _arg20682_)
        (let* ((_g2068420712_
                (lambda (_g2068520709_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2068520709_))))
               (_g2068320796_
                (lambda (_g2068520715_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2068520715_))
                      (let ((_e2069020717_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2068520715_))))
                        (let ((_hd2068920720_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2069020717_)))
                              (_tl2068820722_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2069020717_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl2068820722_))
                              (let ((_g23173_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl2068820722_
                                        '0))))
                                (begin
                                  (let ((_g23174_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g23173_)
                                               (##vector-length _g23173_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g23174_ 2)))
                                        (error "Context expects 2 values"
                                               _g23174_)))
                                  (let ((_target2069120725_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23173_ 0)))
                                        (_tl2069320727_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23173_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2069320727_))
                                        (letrec ((_loop2069420730_
                                                  (lambda (_hd2069220733_
                                                           _body2069820735_
                                                           _hd2069920737_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd2069220733_))
                                                        (let ((_e2069520740_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd2069220733_))))
                  (let ((_lp-hd2069620743_
                         (let () (declare (not safe)) (##car _e2069520740_)))
                        (_lp-tl2069720745_
                         (let () (declare (not safe)) (##cdr _e2069520740_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd2069620743_))
                        (let ((_e2070420748_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd2069620743_))))
                          (let ((_hd2070320751_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2070420748_)))
                                (_tl2070220753_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2070420748_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl2070220753_))
                                (let ((_e2070720756_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl2070220753_))))
                                  (let ((_hd2070620759_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2070720756_)))
                                        (_tl2070520761_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2070720756_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2070520761_))
                                        (let ((__tmp23179
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd2070620759_
                                                       _body2069820735_)))
                                              (__tmp23178
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd2070320751_
                                                       _hd2069920737_))))
                                          (declare (not safe))
                                          (_loop2069420730_
                                           _lp-tl2069720745_
                                           __tmp23179
                                           __tmp23178))
                                        (let ()
                                          (declare (not safe))
                                          (_g2068420712_ _g2068520715_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2068420712_ _g2068520715_)))))
                        (let ()
                          (declare (not safe))
                          (_g2068420712_ _g2068520715_)))))
                (let ((_body2070020764_ (reverse _body2069820735_))
                      (_hd2070120766_ (reverse _hd2069920737_)))
                  ((lambda (_L20769_ _L20770_)
                     (let ((__tmp23177
                            (lambda (_g2078420786_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _g2078420786_ _arg20682_))))
                           (__tmp23175
                            (let ((__tmp23176
                                   (lambda (_g2078820791_ _g2078920793_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2078820791_ _g2078920793_)))))
                              (declare (not safe))
                              (foldr1 __tmp23176 '() _L20769_))))
                       (declare (not safe))
                       (ormap1 __tmp23177 __tmp23175)))
                   _body2070020764_
                   _hd2070120766_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2069420730_
                                             _target2069120725_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2068420712_ _g2068520715_))))))
                              (let ()
                                (declare (not safe))
                                (_g2068420712_ _g2068520715_)))))
                      (let ()
                        (declare (not safe))
                        (_g2068420712_ _g2068520715_))))))
          (declare (not safe))
          (_g2068320796_ _stx20681_))))
    (define gxc#find-let-values%
      (lambda (_stx20531_ _arg20532_)
        (let* ((_g2053420569_
                (lambda (_g2053520566_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2053520566_))))
               (_g2053320678_
                (lambda (_g2053520572_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2053520572_))
                      (let ((_e2054120574_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2053520572_))))
                        (let ((_hd2054020577_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2054120574_)))
                              (_tl2053920579_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2054120574_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2053920579_))
                              (let ((_e2054420582_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2053920579_))))
                                (let ((_hd2054320585_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2054420582_)))
                                      (_tl2054220587_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2054420582_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd2054320585_))
                                      (let ((_g23180_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd2054320585_
                                                '0))))
                                        (begin
                                          (let ((_g23181_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23180_)
                                                       (##vector-length
                                                        _g23180_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23181_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23181_)))
                                          (let ((_target2054520590_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23180_ 0)))
                                                (_tl2054720592_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23180_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2054720592_))
                                                (letrec ((_loop2054820595_
                                                          (lambda (_hd2054620598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2055220600_
                           _bind2055320602_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd2054620598_))
                        (let ((_e2054920605_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd2054620598_))))
                          (let ((_lp-hd2055020608_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2054920605_)))
                                (_lp-tl2055120610_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2054920605_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd2055020608_))
                                (let ((_e2055820613_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd2055020608_))))
                                  (let ((_hd2055720616_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2055820613_)))
                                        (_tl2055620618_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2055820613_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl2055620618_))
                                        (let ((_e2056120621_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl2055620618_))))
                                          (let ((_hd2056020624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2056120621_)))
                                                (_tl2055920626_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2056120621_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2055920626_))
                                                (let ((__tmp23186
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2056020624_
                                                               _expr2055220600_)))
                                                      (__tmp23185
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2055720616_
                                                               _bind2055320602_))))
                                                  (declare (not safe))
                                                  (_loop2054820595_
                                                   _lp-tl2055120610_
                                                   __tmp23186
                                                   __tmp23185))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2053420569_
                                                   _g2053520572_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2053420569_ _g2053520572_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2053420569_ _g2053520572_)))))
                        (let ((_expr2055420629_ (reverse _expr2055220600_))
                              (_bind2055520631_ (reverse _bind2055320602_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2054220587_))
                              (let ((_e2056420634_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2054220587_))))
                                (let ((_hd2056320637_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2056420634_)))
                                      (_tl2056220639_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2056420634_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2056220639_))
                                      ((lambda (_L20642_ _L20643_ _L20644_)
                                         (let ((_$e20675_
                                                (let ((__tmp23184
                                                       (lambda (_g2066320665_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _g2066320665_
                                                            _arg20532_))))
                                                      (__tmp23182
                                                       (let ((__tmp23183
                                                              (lambda (_g2066720670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2066820672_)
                        (let ()
                          (declare (not safe))
                          (cons _g2066720670_ _g2066820672_)))))
                 (declare (not safe))
                 (foldr1 __tmp23183 '() _L20643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp23184
                                                          __tmp23182))))
                                           (if _$e20675_
                                               _$e20675_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e
                                                  _L20642_
                                                  _arg20532_)))))
                                       _hd2056320637_
                                       _expr2055420629_
                                       _bind2055520631_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2053420569_ _g2053520572_)))))
                              (let ()
                                (declare (not safe))
                                (_g2053420569_ _g2053520572_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop2054820595_
                                                     _target2054520590_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2053420569_
                                                   _g2053520572_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2053420569_ _g2053520572_)))))
                              (let ()
                                (declare (not safe))
                                (_g2053420569_ _g2053520572_)))))
                      (let ()
                        (declare (not safe))
                        (_g2053420569_ _g2053520572_))))))
          (declare (not safe))
          (_g2053320678_ _stx20531_))))
    (define gxc#find-setq%
      (lambda (_stx20463_ _arg20464_)
        (let* ((_g2046620483_
                (lambda (_g2046720480_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2046720480_))))
               (_g2046520528_
                (lambda (_g2046720486_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2046720486_))
                      (let ((_e2047220488_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2046720486_))))
                        (let ((_hd2047120491_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2047220488_)))
                              (_tl2047020493_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2047220488_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2047020493_))
                              (let ((_e2047520496_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2047020493_))))
                                (let ((_hd2047420499_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2047520496_)))
                                      (_tl2047320501_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2047520496_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2047320501_))
                                      (let ((_e2047820504_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2047320501_))))
                                        (let ((_hd2047720507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2047820504_)))
                                              (_tl2047620509_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2047820504_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2047620509_))
                                              ((lambda (_L20512_ _L20513_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L20512_
                                                    _arg20464_)))
                                               _hd2047720507_
                                               _hd2047420499_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2046620483_
                                                 _g2046720486_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2046620483_ _g2046720486_)))))
                              (let ()
                                (declare (not safe))
                                (_g2046620483_ _g2046720486_)))))
                      (let ()
                        (declare (not safe))
                        (_g2046620483_ _g2046720486_))))))
          (declare (not safe))
          (_g2046520528_ _stx20463_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx20407_ _ids20408_)
        (let* ((_g2041020423_
                (lambda (_g2041120420_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2041120420_))))
               (_g2040920460_
                (lambda (_g2041120426_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2041120426_))
                      (let ((_e2041520428_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2041120426_))))
                        (let ((_hd2041420431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2041520428_)))
                              (_tl2041320433_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2041520428_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2041320433_))
                              (let ((_e2041820436_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2041320433_))))
                                (let ((_hd2041720439_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2041820436_)))
                                      (_tl2041620441_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2041820436_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2041620441_))
                                      ((lambda (_L20444_)
                                         (let ((__tmp23187
                                                (lambda (_g2045520457_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L20444_
                                                     _g2045520457_)))))
                                           (declare (not safe))
                                           (find __tmp23187 _ids20408_)))
                                       _hd2041720439_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2041020423_ _g2041120426_)))))
                              (let ()
                                (declare (not safe))
                                (_g2041020423_ _g2041120426_)))))
                      (let ()
                        (declare (not safe))
                        (_g2041020423_ _g2041120426_))))))
          (declare (not safe))
          (_g2040920460_ _stx20407_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx20331_ _ids20332_)
        (let* ((_g2033420351_
                (lambda (_g2033520348_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2033520348_))))
               (_g2033320404_
                (lambda (_g2033520354_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2033520354_))
                      (let ((_e2034020356_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2033520354_))))
                        (let ((_hd2033920359_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2034020356_)))
                              (_tl2033820361_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2034020356_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2033820361_))
                              (let ((_e2034320364_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2033820361_))))
                                (let ((_hd2034220367_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2034320364_)))
                                      (_tl2034120369_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2034320364_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2034120369_))
                                      (let ((_e2034620372_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2034120369_))))
                                        (let ((_hd2034520375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2034620372_)))
                                              (_tl2034420377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2034620372_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2034420377_))
                                              ((lambda (_L20380_ _L20381_)
                                                 (let ((_$e20401_
                                                        (let ((__tmp23188
                                                               (lambda (_g2039620398_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L20381_ _g2039620398_)))))
                  (declare (not safe))
                  (find __tmp23188 _ids20332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e20401_
                                                       _$e20401_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e
                                                          _L20380_
                                                          _ids20332_)))))
                                               _hd2034520375_
                                               _hd2034220367_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2033420351_
                                                 _g2033520354_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2033420351_ _g2033520354_)))))
                              (let ()
                                (declare (not safe))
                                (_g2033420351_ _g2033520354_)))))
                      (let ()
                        (declare (not safe))
                        (_g2033420351_ _g2033520354_))))))
          (declare (not safe))
          (_g2033320404_ _stx20331_))))))
