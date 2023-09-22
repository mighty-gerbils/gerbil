(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1695377617)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl22695_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22695_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22695_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22695_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22695_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl22695_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl22691_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22691_ '%#declare gxc#xform-identity))
           _tbl22691_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl22687_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22941 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl22687_ __tmp22941))
           (let ((__tmp22942 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl22687_ __tmp22942))
           _tbl22687_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl22683_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22683_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22683_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22683_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22683_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22683_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl22683_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl22679_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22943 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl22679_ __tmp22943))
           (let ((__tmp22944 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl22679_ __tmp22944))
           (let ()
             (declare (not safe))
             (table-set! _tbl22679_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22679_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22679_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22679_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22679_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl22679_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl22675_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22945 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl22675_ __tmp22945))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22675_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22675_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22675_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22675_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22675_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22675_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22675_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22675_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22675_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22675_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22675_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22675_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl22675_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx22668_ . _args22670_)
        (let ((__tmp22947
               (lambda () (apply gxc#compile-e _stx22668_ _args22670_)))
              (__tmp22946 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp22947
           gxc#current-compile-methods
           __tmp22946))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl22665_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22948 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl22665_ __tmp22948))
           (let ()
             (declare (not safe))
             (table-set! _tbl22665_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22665_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22665_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22665_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22665_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl22665_))))
    (define gxc#apply-collect-methods
      (lambda (_stx22658_ . _args22660_)
        (let ((__tmp22950
               (lambda () (apply gxc#compile-e _stx22658_ _args22660_)))
              (__tmp22949 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp22950
           gxc#current-compile-methods
           __tmp22949))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl22655_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22951 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl22655_ __tmp22951))
           (let ()
             (declare (not safe))
             (table-set! _tbl22655_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22655_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22655_ '%#set! gxc#expression-subst-setq%))
           _tbl22655_))))
    (define gxc#apply-expression-subst
      (lambda (_stx22648_ . _args22650_)
        (let ((__tmp22953
               (lambda () (apply gxc#compile-e _stx22648_ _args22650_)))
              (__tmp22952 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp22953
           gxc#current-compile-methods
           __tmp22952))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl22645_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22954 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl22645_ __tmp22954))
           (let ()
             (declare (not safe))
             (table-set! _tbl22645_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22645_ '%#set! gxc#expression-subst*-setq%))
           _tbl22645_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx22638_ . _args22640_)
        (let ((__tmp22956
               (lambda () (apply gxc#compile-e _stx22638_ _args22640_)))
              (__tmp22955 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp22956
           gxc#current-compile-methods
           __tmp22955))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl22635_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22957 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl22635_ __tmp22957))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22635_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22635_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl22635_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl22631_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22958 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl22631_ __tmp22958))
           (let ()
             (declare (not safe))
             (table-set! _tbl22631_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22631_ '%#set! gxc#find-var-refs-setq%))
           _tbl22631_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx22624_ . _args22626_)
        (let ((__tmp22960
               (lambda () (apply gxc#compile-e _stx22624_ _args22626_)))
              (__tmp22959 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp22960
           gxc#current-compile-methods
           __tmp22959))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl22621_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22961 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl22621_ __tmp22961))
           (let ()
             (declare (not safe))
             (table-set! _tbl22621_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22621_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl22621_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx22614_ . _args22616_)
        (let ((__tmp22963
               (lambda () (apply gxc#compile-e _stx22614_ _args22616_)))
              (__tmp22962 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp22963
           gxc#current-compile-methods
           __tmp22962))))
    (define gxc#xform-identity (lambda (_stx22611_ . _args22612_) _stx22611_))
    (define gxc#xform-wrap-source
      (lambda (_stx22608_ _src-stx22609_)
        (let ((__tmp22964
               (let () (declare (not safe)) (gx#stx-source _src-stx22609_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx22608_ __tmp22964))))
    (define gxc#xform-apply-compile-e
      (lambda (_args22602_)
        (lambda (_g2260322605_)
          (apply gxc#compile-e _g2260322605_ _args22602_))))
    (define gxc#xform-begin%
      (lambda (_stx22561_ . _args22562_)
        (let* ((_g2256422574_
                (lambda (_g2256522571_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2256522571_))))
               (_g2256322599_
                (lambda (_g2256522577_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2256522577_))
                      (let ((_e2256922579_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2256522577_))))
                        (let ((_hd2256822582_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2256922579_)))
                              (_tl2256722584_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2256922579_))))
                          ((lambda (_L22587_)
                             (let* ((_forms22597_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args22562_))
                                          _L22587_))
                                    (__tmp22965
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms22597_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp22965 _stx22561_)))
                           _tl2256722584_)))
                      (let ()
                        (declare (not safe))
                        (_g2256422574_ _g2256522577_))))))
          (declare (not safe))
          (_g2256322599_ _stx22561_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx22519_ . _args22520_)
        (let* ((_g2252222532_
                (lambda (_g2252322529_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2252322529_))))
               (_g2252122558_
                (lambda (_g2252322535_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2252322535_))
                      (let ((_e2252722537_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2252322535_))))
                        (let ((_hd2252622540_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2252722537_)))
                              (_tl2252522542_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2252722537_))))
                          ((lambda (_L22545_)
                             (let ((__tmp22968
                                    (lambda ()
                                      (let* ((_forms22556_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args22520_))
                                                   _L22545_))
                                             (__tmp22969
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms22556_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp22969
                                         _stx22519_))))
                                   (__tmp22966
                                    (let ((__tmp22967
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp22967 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp22968
                                gx#current-expander-phi
                                __tmp22966)))
                           _tl2252522542_)))
                      (let ()
                        (declare (not safe))
                        (_g2252222532_ _g2252322535_))))))
          (declare (not safe))
          (_g2252122558_ _stx22519_))))
    (define gxc#xform-module%
      (lambda (_stx22456_ . _args22457_)
        (let* ((_g2245922473_
                (lambda (_g2246022470_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2246022470_))))
               (_g2245822516_
                (lambda (_g2246022476_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2246022476_))
                      (let ((_e2246522478_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2246022476_))))
                        (let ((_hd2246422481_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2246522478_)))
                              (_tl2246322483_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2246522478_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2246322483_))
                              (let ((_e2246822486_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2246322483_))))
                                (let ((_hd2246722489_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2246822486_)))
                                      (_tl2246622491_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2246822486_))))
                                  ((lambda (_L22494_ _L22495_)
                                     (let* ((_ctx22508_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L22495_)))
                                            (_code22510_
                                             (##structure-ref
                                              _ctx22508_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code22513_
                                             (let ((__tmp22970
                                                    (lambda ()
                                                      (apply gxc#compile-e
                                                             _code22510_
                                                             _args22457_))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp22970
                                                gx#current-expander-context
                                                _ctx22508_))))
                                       (##structure-set!
                                        _ctx22508_
                                        _code22513_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp22971
                                              (let ((__tmp22972
                                                     (let ((__tmp22973
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code22513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L22495_ __tmp22973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp22972))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp22971
                                          _stx22456_))))
                                   _tl2246622491_
                                   _hd2246722489_)))
                              (let ()
                                (declare (not safe))
                                (_g2245922473_ _g2246022476_)))))
                      (let ()
                        (declare (not safe))
                        (_g2245922473_ _g2246022476_))))))
          (declare (not safe))
          (_g2245822516_ _stx22456_))))
    (define gxc#xform-define-values%
      (lambda (_stx22386_ . _args22387_)
        (let* ((_g2238922406_
                (lambda (_g2239022403_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2239022403_))))
               (_g2238822453_
                (lambda (_g2239022409_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2239022409_))
                      (let ((_e2239522411_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2239022409_))))
                        (let ((_hd2239422414_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2239522411_)))
                              (_tl2239322416_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2239522411_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2239322416_))
                              (let ((_e2239822419_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2239322416_))))
                                (let ((_hd2239722422_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2239822419_)))
                                      (_tl2239622424_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2239822419_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2239622424_))
                                      (let ((_e2240122427_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2239622424_))))
                                        (let ((_hd2240022430_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2240122427_)))
                                              (_tl2239922432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2240122427_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2239922432_))
                                              ((lambda (_L22435_ _L22436_)
                                                 (let* ((_expr22451_
                                                         (apply gxc#compile-e
                                                                _L22435_
                                                                _args22387_))
                                                        (__tmp22974
                                                         (let ((__tmp22975
                                                                (let ((__tmp22976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr22451_ '()))))
                          (declare (not safe))
                          (cons _L22436_ __tmp22976))))
                   (declare (not safe))
                   (cons '%#define-values __tmp22975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp22974
                                                    _stx22386_)))
                                               _hd2240022430_
                                               _hd2239722422_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2238922406_
                                                 _g2239022409_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2238922406_ _g2239022409_)))))
                              (let ()
                                (declare (not safe))
                                (_g2238922406_ _g2239022409_)))))
                      (let ()
                        (declare (not safe))
                        (_g2238922406_ _g2239022409_))))))
          (declare (not safe))
          (_g2238822453_ _stx22386_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx22315_ . _args22316_)
        (let* ((_g2231822335_
                (lambda (_g2231922332_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2231922332_))))
               (_g2231722383_
                (lambda (_g2231922338_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2231922338_))
                      (let ((_e2232422340_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2231922338_))))
                        (let ((_hd2232322343_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2232422340_)))
                              (_tl2232222345_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2232422340_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2232222345_))
                              (let ((_e2232722348_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2232222345_))))
                                (let ((_hd2232622351_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2232722348_)))
                                      (_tl2232522353_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2232722348_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2232522353_))
                                      (let ((_e2233022356_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2232522353_))))
                                        (let ((_hd2232922359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2233022356_)))
                                              (_tl2232822361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2233022356_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2232822361_))
                                              ((lambda (_L22364_ _L22365_)
                                                 (let ((__tmp22979
                                                        (lambda ()
                                                          (let* ((_expr22381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (apply gxc#compile-e _L22364_ _args22316_))
                         (__tmp22980
                          (let ((__tmp22981
                                 (let ((__tmp22982
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr22381_ '()))))
                                   (declare (not safe))
                                   (cons _L22365_ __tmp22982))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp22981))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp22980 _stx22315_))))
               (__tmp22977
                (let ((__tmp22978 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp22978 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp22979
                                                    gx#current-expander-phi
                                                    __tmp22977)))
                                               _hd2232922359_
                                               _hd2232622351_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2231822335_
                                                 _g2231922338_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2231822335_ _g2231922338_)))))
                              (let ()
                                (declare (not safe))
                                (_g2231822335_ _g2231922338_)))))
                      (let ()
                        (declare (not safe))
                        (_g2231822335_ _g2231922338_))))))
          (declare (not safe))
          (_g2231722383_ _stx22315_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx22245_ . _args22246_)
        (let* ((_g2224822265_
                (lambda (_g2224922262_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2224922262_))))
               (_g2224722312_
                (lambda (_g2224922268_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2224922268_))
                      (let ((_e2225422270_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2224922268_))))
                        (let ((_hd2225322273_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2225422270_)))
                              (_tl2225222275_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2225422270_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2225222275_))
                              (let ((_e2225722278_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2225222275_))))
                                (let ((_hd2225622281_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2225722278_)))
                                      (_tl2225522283_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2225722278_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2225522283_))
                                      (let ((_e2226022286_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2225522283_))))
                                        (let ((_hd2225922289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2226022286_)))
                                              (_tl2225822291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2226022286_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2225822291_))
                                              ((lambda (_L22294_ _L22295_)
                                                 (let* ((_expr22310_
                                                         (apply gxc#compile-e
                                                                _L22294_
                                                                _args22246_))
                                                        (__tmp22983
                                                         (let ((__tmp22984
                                                                (let ((__tmp22985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr22310_ '()))))
                          (declare (not safe))
                          (cons _L22295_ __tmp22985))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp22984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp22983
                                                    _stx22245_)))
                                               _hd2225922289_
                                               _hd2225622281_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2224822265_
                                                 _g2224922268_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2224822265_ _g2224922268_)))))
                              (let ()
                                (declare (not safe))
                                (_g2224822265_ _g2224922268_)))))
                      (let ()
                        (declare (not safe))
                        (_g2224822265_ _g2224922268_))))))
          (declare (not safe))
          (_g2224722312_ _stx22245_))))
    (define gxc#xform-lambda%
      (lambda (_stx22188_ . _args22189_)
        (let* ((_g2219122205_
                (lambda (_g2219222202_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2219222202_))))
               (_g2219022242_
                (lambda (_g2219222208_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2219222208_))
                      (let ((_e2219722210_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2219222208_))))
                        (let ((_hd2219622213_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2219722210_)))
                              (_tl2219522215_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2219722210_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2219522215_))
                              (let ((_e2220022218_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2219522215_))))
                                (let ((_hd2219922221_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2220022218_)))
                                      (_tl2219822223_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2220022218_))))
                                  ((lambda (_L22226_ _L22227_)
                                     (let* ((_body22240_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args22189_))
                                                  _L22226_))
                                            (__tmp22986
                                             (let ((__tmp22987
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L22227_
                                                            _body22240_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp22987))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp22986
                                        _stx22188_)))
                                   _tl2219822223_
                                   _hd2219922221_)))
                              (let ()
                                (declare (not safe))
                                (_g2219122205_ _g2219222208_)))))
                      (let ()
                        (declare (not safe))
                        (_g2219122205_ _g2219222208_))))))
          (declare (not safe))
          (_g2219022242_ _stx22188_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx22101_ . _args22102_)
        (letrec ((_clause-e22104_
                  (lambda (_clause22145_)
                    (let* ((_g2214722158_
                            (lambda (_g2214822155_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2214822155_))))
                           (_g2214622185_
                            (lambda (_g2214822161_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g2214822161_))
                                  (let ((_e2215322163_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g2214822161_))))
                                    (let ((_hd2215222166_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2215322163_)))
                                          (_tl2215122168_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2215322163_))))
                                      ((lambda (_L22171_ _L22172_)
                                         (let ((_body22183_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args22102_))
                                                     _L22171_)))
                                           (declare (not safe))
                                           (cons _L22172_ _body22183_)))
                                       _tl2215122168_
                                       _hd2215222166_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g2214722158_ _g2214822161_))))))
                      (declare (not safe))
                      (_g2214622185_ _clause22145_)))))
          (let* ((_g2210622116_
                  (lambda (_g2210722113_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g2210722113_))))
                 (_g2210522142_
                  (lambda (_g2210722119_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g2210722119_))
                        (let ((_e2211122121_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g2210722119_))))
                          (let ((_hd2211022124_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2211122121_)))
                                (_tl2210922126_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2211122121_))))
                            ((lambda (_L22129_)
                               (let* ((_clauses22140_
                                       (map _clause-e22104_ _L22129_))
                                      (__tmp22988
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses22140_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp22988
                                  _stx22101_)))
                             _tl2210922126_)))
                        (let ()
                          (declare (not safe))
                          (_g2210622116_ _g2210722119_))))))
            (declare (not safe))
            (_g2210522142_ _stx22101_)))))
    (define gxc#xform-let-values%
      (lambda (_stx21895_ . _args21896_)
        (let* ((_g2189821931_
                (lambda (_g2189921928_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2189921928_))))
               (_g2189722098_
                (lambda (_g2189921934_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2189921934_))
                      (let ((_e2190621936_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2189921934_))))
                        (let ((_hd2190521939_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2190621936_)))
                              (_tl2190421941_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2190621936_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2190421941_))
                              (let ((_e2190921944_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2190421941_))))
                                (let ((_hd2190821947_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2190921944_)))
                                      (_tl2190721949_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2190921944_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd2190821947_))
                                      (let ((_g22989_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd2190821947_
                                                '0))))
                                        (begin
                                          (let ((_g22990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g22989_)
                                                       (##vector-length
                                                        _g22989_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g22990_ 2)))
                                                (error "Context expects 2 values"
                                                       _g22990_)))
                                          (let ((_target2191021952_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g22989_ 0)))
                                                (_tl2191221954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g22989_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2191221954_))
                                                (letrec ((_loop2191321957_
                                                          (lambda (_hd2191121960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2191721962_
                           _hd2191821964_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd2191121960_))
                        (let ((_e2191421967_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd2191121960_))))
                          (let ((_lp-hd2191521970_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2191421967_)))
                                (_lp-tl2191621972_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2191421967_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd2191521970_))
                                (let ((_e2192321975_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd2191521970_))))
                                  (let ((_hd2192221978_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2192321975_)))
                                        (_tl2192121980_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2192321975_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl2192121980_))
                                        (let ((_e2192621983_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl2192121980_))))
                                          (let ((_hd2192521986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2192621983_)))
                                                (_tl2192421988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2192621983_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2192421988_))
                                                (let ((__tmp23003
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2192521986_
                                                               _expr2191721962_)))
                                                      (__tmp23002
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2192221978_
                                                               _hd2191821964_))))
                                                  (declare (not safe))
                                                  (_loop2191321957_
                                                   _lp-tl2191621972_
                                                   __tmp23003
                                                   __tmp23002))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2189821931_
                                                   _g2189921934_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2189821931_ _g2189921934_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2189821931_ _g2189921934_)))))
                        (let ((_expr2191921991_ (reverse _expr2191721962_))
                              (_hd2192021993_ (reverse _hd2191821964_)))
                          ((lambda (_L21996_ _L21997_ _L21998_ _L21999_)
                             (let* ((_g2201822034_
                                     (lambda (_g2201922031_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2201922031_))))
                                    (_g2201722088_
                                     (lambda (_g2201922037_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null? _g2201922037_))
                                           (let ((_g22991_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g2201922037_
                                                     '0))))
                                             (begin
                                               (let ((_g22992_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g22991_)
                                                            (##vector-length
                                                             _g22991_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g22992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g22992_)))
                                               (let ((_target2202122039_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g22991_
                                                         0)))
                                                     (_tl2202322041_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g22991_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl2202322041_))
                                                     (letrec ((_loop2202422044_
                                                               (lambda (_hd2202222047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2202822049_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd2202222047_))
                             (let ((_e2202522052_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd2202222047_))))
                               (let ((_lp-hd2202622055_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2202522052_)))
                                     (_lp-tl2202722057_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2202522052_))))
                                 (let ((__tmp22999
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd2202622055_
                                                _expr2202822049_))))
                                   (declare (not safe))
                                   (_loop2202422044_
                                    _lp-tl2202722057_
                                    __tmp22999))))
                             (let ((_expr2202922060_
                                    (reverse _expr2202822049_)))
                               ((lambda (_L22063_)
                                  (let ()
                                    (let* ((_body22076_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args21896_))
                                                 _L21996_))
                                           (__tmp22993
                                            (let ((__tmp22994
                                                   (let ((__tmp22995
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L22063_
                                                               _L21998_))
                                                            (let ((__tmp22996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2207722081_ _g2207822083_ _g2207922085_)
                             (let ((__tmp22997
                                    (let ((__tmp22998
                                           (let ()
                                             (declare (not safe))
                                             (cons _g2207722081_ '()))))
                                      (declare (not safe))
                                      (cons _g2207822083_ __tmp22998))))
                               (declare (not safe))
                               (cons __tmp22997 _g2207922085_)))))
                      (declare (not safe))
                      (foldr2 __tmp22996 '() _L22063_ _L21998_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp22995
                                                           _body22076_))))
                                              (declare (not safe))
                                              (cons _L21999_ __tmp22994))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp22993
                                       _stx21895_))))
                                _expr2202922060_))))))
               (let ()
                 (declare (not safe))
                 (_loop2202422044_ _target2202122039_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2201822034_
                                                        _g2201922037_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2201822034_ _g2201922037_)))))
                                    (__tmp23000
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args21896_))
                                          (let ((__tmp23001
                                                 (lambda (_g2209022093_
                                                          _g2209122095_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2209022093_
                                                           _g2209122095_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp23001
                                                    '()
                                                    _L21997_)))))
                               (declare (not safe))
                               (_g2201722088_ __tmp23000)))
                           _tl2190721949_
                           _expr2191921991_
                           _hd2192021993_
                           _hd2190521939_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop2191321957_
                                                     _target2191021952_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2189821931_
                                                   _g2189921934_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2189821931_ _g2189921934_)))))
                              (let ()
                                (declare (not safe))
                                (_g2189821931_ _g2189921934_)))))
                      (let ()
                        (declare (not safe))
                        (_g2189821931_ _g2189921934_))))))
          (declare (not safe))
          (_g2189722098_ _stx21895_))))
    (define gxc#xform-operands
      (lambda (_stx21851_ . _args21852_)
        (let* ((_g2185421865_
                (lambda (_g2185521862_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2185521862_))))
               (_g2185321892_
                (lambda (_g2185521868_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2185521868_))
                      (let ((_e2186021870_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2185521868_))))
                        (let ((_hd2185921873_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2186021870_)))
                              (_tl2185821875_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2186021870_))))
                          ((lambda (_L21878_ _L21879_)
                             (let* ((_rands21890_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args21852_))
                                          _L21878_))
                                    (__tmp23004
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21879_ _rands21890_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp23004 _stx21851_)))
                           _tl2185821875_
                           _hd2185921873_)))
                      (let ()
                        (declare (not safe))
                        (_g2185421865_ _g2185521868_))))))
          (declare (not safe))
          (_g2185321892_ _stx21851_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx21781_ . _args21782_)
        (let* ((_g2178421801_
                (lambda (_g2178521798_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2178521798_))))
               (_g2178321848_
                (lambda (_g2178521804_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2178521804_))
                      (let ((_e2179021806_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2178521804_))))
                        (let ((_hd2178921809_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2179021806_)))
                              (_tl2178821811_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2179021806_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2178821811_))
                              (let ((_e2179321814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2178821811_))))
                                (let ((_hd2179221817_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2179321814_)))
                                      (_tl2179121819_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2179321814_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2179121819_))
                                      (let ((_e2179621822_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2179121819_))))
                                        (let ((_hd2179521825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2179621822_)))
                                              (_tl2179421827_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2179621822_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2179421827_))
                                              ((lambda (_L21830_ _L21831_)
                                                 (let* ((_expr21846_
                                                         (apply gxc#compile-e
                                                                _L21830_
                                                                _args21782_))
                                                        (__tmp23005
                                                         (let ((__tmp23006
                                                                (let ((__tmp23007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr21846_ '()))))
                          (declare (not safe))
                          (cons _L21831_ __tmp23007))))
                   (declare (not safe))
                   (cons '%#set! __tmp23006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp23005
                                                    _stx21781_)))
                                               _hd2179521825_
                                               _hd2179221817_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2178421801_
                                                 _g2178521804_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2178421801_ _g2178521804_)))))
                              (let ()
                                (declare (not safe))
                                (_g2178421801_ _g2178521804_)))))
                      (let ()
                        (declare (not safe))
                        (_g2178421801_ _g2178521804_))))))
          (declare (not safe))
          (_g2178321848_ _stx21781_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx21712_)
        (let* ((_g2171421731_
                (lambda (_g2171521728_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2171521728_))))
               (_g2171321778_
                (lambda (_g2171521734_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2171521734_))
                      (let ((_e2172021736_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2171521734_))))
                        (let ((_hd2171921739_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2172021736_)))
                              (_tl2171821741_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2172021736_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2171821741_))
                              (let ((_e2172321744_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2171821741_))))
                                (let ((_hd2172221747_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2172321744_)))
                                      (_tl2172121749_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2172321744_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2172121749_))
                                      (let ((_e2172621752_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2172121749_))))
                                        (let ((_hd2172521755_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2172621752_)))
                                              (_tl2172421757_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2172621752_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2172421757_))
                                              ((lambda (_L21760_ _L21761_)
                                                 (let ((_sym21776_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L21761_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym21776_))
                                                   (let ((__tmp23008
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp23008
                                                      _sym21776_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L21760_))))
                                               _hd2172521755_
                                               _hd2172221747_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2171421731_
                                                 _g2171521734_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2171421731_ _g2171521734_)))))
                              (let ()
                                (declare (not safe))
                                (_g2171421731_ _g2171521734_)))))
                      (let ()
                        (declare (not safe))
                        (_g2171421731_ _g2171521734_))))))
          (declare (not safe))
          (_g2171321778_ _stx21712_))))
    (define gxc#collect-methods-call%
      (lambda (_stx21266_)
        (let* ((___stx2269822699_ _stx21266_)
               (_g2127021372_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx2269822699_)))))
          (let ((___kont2270022701_
                 (lambda (_L21662_ _L21663_ _L21664_ _L21665_ _L21666_)
                   (let ((__tmp23009
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L21663_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp23009))))
                (___kont2270222703_
                 (lambda (_L21488_ _L21489_ _L21490_ _L21491_)
                   (let ((__tmp23010
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L21488_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp23010))))
                (___kont2270422705_ (lambda () '#!void)))
            (let ((___match2283322834_
                   (lambda (_e2127921534_
                            _hd2127821537_
                            _tl2127721539_
                            _e2128221542_
                            _hd2128121545_
                            _tl2128021547_
                            _e2128521550_
                            _hd2128421553_
                            _tl2128321555_
                            _e2128821558_
                            _hd2128721561_
                            _tl2128621563_
                            _e2129121566_
                            _hd2129021569_
                            _tl2128921571_
                            _e2129421574_
                            _hd2129321577_
                            _tl2129221579_
                            _e2129721582_
                            _hd2129621585_
                            _tl2129521587_
                            _e2130021590_
                            _hd2129921593_
                            _tl2129821595_
                            _e2130321598_
                            _hd2130221601_
                            _tl2130121603_
                            _e2130621606_
                            _hd2130521609_
                            _tl2130421611_
                            _e2130921614_
                            _hd2130821617_
                            _tl2130721619_
                            _e2131221622_
                            _hd2131121625_
                            _tl2131021627_
                            _e2131521630_
                            _hd2131421633_
                            _tl2131321635_
                            _e2131821638_
                            _hd2131721641_
                            _tl2131621643_
                            _e2132121646_
                            _hd2132021649_
                            _tl2131921651_
                            _e2132421654_
                            _hd2132321657_
                            _tl2132221659_)
                     (let ((_L21662_ _hd2132321657_)
                           (_L21663_ _hd2131421633_)
                           (_L21664_ _hd2130521609_)
                           (_L21665_ _hd2129621585_)
                           (_L21666_ _hd2128721561_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L21666_ 'bind-method!))
                           (___kont2270022701_
                            _L21662_
                            _L21663_
                            _L21664_
                            _L21665_
                            _L21666_)
                           (___kont2270422705_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx2269822699_))
                  (let ((_e2127921534_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx2269822699_))))
                    (let ((_tl2127721539_
                           (let () (declare (not safe)) (##cdr _e2127921534_)))
                          (_hd2127821537_
                           (let ()
                             (declare (not safe))
                             (##car _e2127921534_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl2127721539_))
                          (let ((_e2128221542_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl2127721539_))))
                            (let ((_tl2128021547_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2128221542_)))
                                  (_hd2128121545_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2128221542_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd2128121545_))
                                  (let ((_e2128521550_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd2128121545_))))
                                    (let ((_tl2128321555_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2128521550_)))
                                          (_hd2128421553_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2128521550_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd2128421553_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd2128421553_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl2128321555_))
                                                  (let ((_e2128821558_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl2128321555_))))
                                                    (let ((_tl2128621563_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2128821558_)))
                                                          (_hd2128721561_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2128821558_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl2128621563_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl2128021547_))
                      (let ((_e2129121566_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl2128021547_))))
                        (let ((_tl2128921571_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2129121566_)))
                              (_hd2129021569_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2129121566_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd2129021569_))
                              (let ((_e2129421574_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd2129021569_))))
                                (let ((_tl2129221579_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2129421574_)))
                                      (_hd2129321577_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2129421574_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd2129321577_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd2129321577_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl2129221579_))
                                              (let ((_e2129721582_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl2129221579_))))
                                                (let ((_tl2129521587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2129721582_)))
                                                      (_hd2129621585_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2129721582_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl2129521587_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl2128921571_))
                                                          (let ((_e2130021590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl2128921571_))))
                    (let ((_tl2129821595_
                           (let () (declare (not safe)) (##cdr _e2130021590_)))
                          (_hd2129921593_
                           (let ()
                             (declare (not safe))
                             (##car _e2130021590_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd2129921593_))
                          (let ((_e2130321598_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd2129921593_))))
                            (let ((_tl2130121603_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2130321598_)))
                                  (_hd2130221601_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2130321598_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd2130221601_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd2130221601_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl2130121603_))
                                          (let ((_e2130621606_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl2130121603_))))
                                            (let ((_tl2130421611_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2130621606_)))
                                                  (_hd2130521609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2130621606_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl2130421611_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl2129821595_))
                                                      (let ((_e2130921614_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl2129821595_))))
                (let ((_tl2130721619_
                       (let () (declare (not safe)) (##cdr _e2130921614_)))
                      (_hd2130821617_
                       (let () (declare (not safe)) (##car _e2130921614_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd2130821617_))
                      (let ((_e2131221622_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd2130821617_))))
                        (let ((_tl2131021627_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2131221622_)))
                              (_hd2131121625_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2131221622_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd2131121625_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd2131121625_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2131021627_))
                                      (let ((_e2131521630_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2131021627_))))
                                        (let ((_tl2131321635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2131521630_)))
                                              (_hd2131421633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2131521630_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2131321635_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl2130721619_))
                                                  (let ((_e2131821638_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl2130721619_))))
                                                    (let ((_tl2131621643_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2131821638_)))
                                                          (_hd2131721641_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2131821638_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd2131721641_))
                                                          (let ((_e2132121646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd2131721641_))))
                    (let ((_tl2131921651_
                           (let () (declare (not safe)) (##cdr _e2132121646_)))
                          (_hd2132021649_
                           (let ()
                             (declare (not safe))
                             (##car _e2132121646_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd2132021649_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd2132021649_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl2131921651_))
                                  (let ((_e2132421654_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl2131921651_))))
                                    (let ((_tl2132221659_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2132421654_)))
                                          (_hd2132321657_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2132421654_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl2132221659_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2131621643_))
                                              (___match2283322834_
                                               _e2127921534_
                                               _hd2127821537_
                                               _tl2127721539_
                                               _e2128221542_
                                               _hd2128121545_
                                               _tl2128021547_
                                               _e2128521550_
                                               _hd2128421553_
                                               _tl2128321555_
                                               _e2128821558_
                                               _hd2128721561_
                                               _tl2128621563_
                                               _e2129121566_
                                               _hd2129021569_
                                               _tl2128921571_
                                               _e2129421574_
                                               _hd2129321577_
                                               _tl2129221579_
                                               _e2129721582_
                                               _hd2129621585_
                                               _tl2129521587_
                                               _e2130021590_
                                               _hd2129921593_
                                               _tl2129821595_
                                               _e2130321598_
                                               _hd2130221601_
                                               _tl2130121603_
                                               _e2130621606_
                                               _hd2130521609_
                                               _tl2130421611_
                                               _e2130921614_
                                               _hd2130821617_
                                               _tl2130721619_
                                               _e2131221622_
                                               _hd2131121625_
                                               _tl2131021627_
                                               _e2131521630_
                                               _hd2131421633_
                                               _tl2131321635_
                                               _e2131821638_
                                               _hd2131721641_
                                               _tl2131621643_
                                               _e2132121646_
                                               _hd2132021649_
                                               _tl2131921651_
                                               _e2132421654_
                                               _hd2132321657_
                                               _tl2132221659_)
                                              (___kont2270422705_))
                                          (___kont2270422705_))))
                                  (___kont2270422705_))
                              (___kont2270422705_))
                          (___kont2270422705_))))
                  (___kont2270422705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl2130721619_))
                                                      (if (let ((__tmp23011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp23011 'bind-method!))
                  (let ((_L21488_ _hd2131421633_)
                        (_L21489_ _hd2130521609_)
                        (_L21490_ _hd2129621585_)
                        (_L21491_ _hd2128721561_))
                    (___kont2270222703_ _L21488_ _L21489_ _L21490_ _L21491_))
                  (___kont2270422705_))
              (___kont2270422705_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2270422705_))))
                                      (___kont2270422705_))
                                  (___kont2270422705_))
                              (___kont2270422705_))))
                      (___kont2270422705_))))
              (___kont2270422705_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2270422705_))))
                                          (___kont2270422705_))
                                      (___kont2270422705_))
                                  (___kont2270422705_))))
                          (___kont2270422705_))))
                  (___kont2270422705_))
              (___kont2270422705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2270422705_))
                                          (___kont2270422705_))
                                      (___kont2270422705_))))
                              (___kont2270422705_))))
                      (___kont2270422705_))
                  (___kont2270422705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2270422705_))
                                              (___kont2270422705_))
                                          (___kont2270422705_))))
                                  (___kont2270422705_))))
                          (___kont2270422705_))))
                  (___kont2270422705_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx21213_ _id21214_ _new-id21215_)
        (let* ((_g2121721230_
                (lambda (_g2121821227_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2121821227_))))
               (_g2121621263_
                (lambda (_g2121821233_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2121821233_))
                      (let ((_e2122221235_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2121821233_))))
                        (let ((_hd2122121238_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2122221235_)))
                              (_tl2122021240_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2122221235_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2122021240_))
                              (let ((_e2122521243_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2122021240_))))
                                (let ((_hd2122421246_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2122521243_)))
                                      (_tl2122321248_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2122521243_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2122321248_))
                                      ((lambda (_L21251_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L21251_
                                                _id21214_))
                                             (let ((__tmp23012
                                                    (let ((__tmp23013
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id21215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp23013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp23012
                                                _stx21213_))
                                             _stx21213_))
                                       _hd2122421246_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2121721230_ _g2121821233_)))))
                              (let ()
                                (declare (not safe))
                                (_g2121721230_ _g2121821233_)))))
                      (let ()
                        (declare (not safe))
                        (_g2121721230_ _g2121821233_))))))
          (declare (not safe))
          (_g2121621263_ _stx21213_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx21154_ _subst21155_)
        (let* ((_g2115721170_
                (lambda (_g2115821167_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2115821167_))))
               (_g2115621210_
                (lambda (_g2115821173_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2115821173_))
                      (let ((_e2116221175_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2115821173_))))
                        (let ((_hd2116121178_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2116221175_)))
                              (_tl2116021180_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2116221175_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2116021180_))
                              (let ((_e2116521183_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2116021180_))))
                                (let ((_hd2116421186_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2116521183_)))
                                      (_tl2116321188_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2116521183_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2116321188_))
                                      ((lambda (_L21191_)
                                         (let ((_$e21205_
                                                (let ((__tmp23014
                                                       (lambda (_sub21203_)
                                                         (let ((__tmp23015
                                                                (car _sub21203_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L21191_
                                                            __tmp23015)))))
                                                  (declare (not safe))
                                                  (find __tmp23014
                                                        _subst21155_))))
                                           (if _$e21205_
                                               ((lambda (_sub21208_)
                                                  (let ((__tmp23016
                                                         (let ((__tmp23017
                                                                (let ((__tmp23018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub21208_)))
                          (declare (not safe))
                          (cons __tmp23018 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp23017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp23016
                                                     _stx21154_)))
                                                _$e21205_)
                                               _stx21154_)))
                                       _hd2116421186_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2115721170_ _g2115821173_)))))
                              (let ()
                                (declare (not safe))
                                (_g2115721170_ _g2115821173_)))))
                      (let ()
                        (declare (not safe))
                        (_g2115721170_ _g2115821173_))))))
          (declare (not safe))
          (_g2115621210_ _stx21154_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx21082_ _id21083_ _new-id21084_)
        (let* ((_g2108621103_
                (lambda (_g2108721100_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2108721100_))))
               (_g2108521151_
                (lambda (_g2108721106_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2108721106_))
                      (let ((_e2109221108_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2108721106_))))
                        (let ((_hd2109121111_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2109221108_)))
                              (_tl2109021113_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2109221108_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2109021113_))
                              (let ((_e2109521116_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2109021113_))))
                                (let ((_hd2109421119_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2109521116_)))
                                      (_tl2109321121_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2109521116_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2109321121_))
                                      (let ((_e2109821124_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2109321121_))))
                                        (let ((_hd2109721127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2109821124_)))
                                              (_tl2109621129_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2109821124_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2109621129_))
                                              ((lambda (_L21132_ _L21133_)
                                                 (let ((_new-expr21148_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           _L21132_
                                                           _id21083_
                                                           _new-id21084_)))
                                                       (_new-xid21149_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L21133_
                                                               _id21083_))
                                                            _new-id21084_
                                                            _L21133_)))
                                                   (let ((__tmp23019
                                                          (let ((__tmp23020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp23021
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr21148_ '()))))
                           (declare (not safe))
                           (cons _new-xid21149_ __tmp23021))))
                    (declare (not safe))
                    (cons '%#set! __tmp23020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp23019
                                                      _stx21082_))))
                                               _hd2109721127_
                                               _hd2109421119_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2108621103_
                                                 _g2108721106_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2108621103_ _g2108721106_)))))
                              (let ()
                                (declare (not safe))
                                (_g2108621103_ _g2108721106_)))))
                      (let ()
                        (declare (not safe))
                        (_g2108621103_ _g2108721106_))))))
          (declare (not safe))
          (_g2108521151_ _stx21082_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx21006_ _subst21007_)
        (let* ((_g2100921026_
                (lambda (_g2101021023_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2101021023_))))
               (_g2100821079_
                (lambda (_g2101021029_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2101021029_))
                      (let ((_e2101521031_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2101021029_))))
                        (let ((_hd2101421034_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2101521031_)))
                              (_tl2101321036_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2101521031_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2101321036_))
                              (let ((_e2101821039_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2101321036_))))
                                (let ((_hd2101721042_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2101821039_)))
                                      (_tl2101621044_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2101821039_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2101621044_))
                                      (let ((_e2102121047_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2101621044_))))
                                        (let ((_hd2102021050_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2102121047_)))
                                              (_tl2101921052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2102121047_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2101921052_))
                                              ((lambda (_L21055_ _L21056_)
                                                 (let ((_new-expr21076_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           _L21055_
                                                           _subst21007_)))
                                                       (_new-xid21077_
                                                        (let ((_$e21073_
                                                               (let ((__tmp23022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub21071_)
                                (let ((__tmp23023 (car _sub21071_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L21056_
                                   __tmp23023)))))
                         (declare (not safe))
                         (find __tmp23022 _subst21007_))))
                  (if _$e21073_ (cdr _$e21073_) _L21056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp23024
                                                          (let ((__tmp23025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp23026
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr21076_ '()))))
                           (declare (not safe))
                           (cons _new-xid21077_ __tmp23026))))
                    (declare (not safe))
                    (cons '%#set! __tmp23025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp23024
                                                      _stx21006_))))
                                               _hd2102021050_
                                               _hd2101721042_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2100921026_
                                                 _g2101021029_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2100921026_ _g2101021029_)))))
                              (let ()
                                (declare (not safe))
                                (_g2100921026_ _g2101021029_)))))
                      (let ()
                        (declare (not safe))
                        (_g2100921026_ _g2101021029_))))))
          (declare (not safe))
          (_g2100821079_ _stx21006_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx20952_ _ht20953_)
        (let* ((_g2095520968_
                (lambda (_g2095620965_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2095620965_))))
               (_g2095421003_
                (lambda (_g2095620971_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2095620971_))
                      (let ((_e2096020973_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2095620971_))))
                        (let ((_hd2095920976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2096020973_)))
                              (_tl2095820978_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2096020973_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2095820978_))
                              (let ((_e2096320981_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2095820978_))))
                                (let ((_hd2096220984_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2096320981_)))
                                      (_tl2096120986_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2096320981_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2096120986_))
                                      ((lambda (_L20989_)
                                         (let ((_eid21001_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L20989_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht20953_
                                            _eid21001_
                                            1+
                                            '0)))
                                       _hd2096220984_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2095520968_ _g2095620971_)))))
                              (let ()
                                (declare (not safe))
                                (_g2095520968_ _g2095620971_)))))
                      (let ()
                        (declare (not safe))
                        (_g2095520968_ _g2095620971_))))))
          (declare (not safe))
          (_g2095421003_ _stx20952_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx20882_ _ht20883_)
        (let* ((_g2088520902_
                (lambda (_g2088620899_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2088620899_))))
               (_g2088420949_
                (lambda (_g2088620905_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2088620905_))
                      (let ((_e2089120907_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2088620905_))))
                        (let ((_hd2089020910_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2089120907_)))
                              (_tl2088920912_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2089120907_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2088920912_))
                              (let ((_e2089420915_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2088920912_))))
                                (let ((_hd2089320918_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2089420915_)))
                                      (_tl2089220920_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2089420915_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2089220920_))
                                      (let ((_e2089720923_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2089220920_))))
                                        (let ((_hd2089620926_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2089720923_)))
                                              (_tl2089520928_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2089720923_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2089520928_))
                                              ((lambda (_L20931_ _L20932_)
                                                 (let ((_eid20947_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L20932_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht20883_
                                                      _eid20947_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L20931_
                                                      _ht20883_))))
                                               _hd2089620926_
                                               _hd2089320918_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2088520902_
                                                 _g2088620905_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2088520902_ _g2088620905_)))))
                              (let ()
                                (declare (not safe))
                                (_g2088520902_ _g2088620905_)))))
                      (let ()
                        (declare (not safe))
                        (_g2088520902_ _g2088620905_))))))
          (declare (not safe))
          (_g2088420949_ _stx20882_))))
    (define gxc#find-body%
      (lambda (_stx20795_ _arg20796_)
        (let* ((_g2079820817_
                (lambda (_g2079920814_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2079920814_))))
               (_g2079720879_
                (lambda (_g2079920820_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2079920820_))
                      (let ((_e2080320822_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2079920820_))))
                        (let ((_hd2080220825_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2080320822_)))
                              (_tl2080120827_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2080320822_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl2080120827_))
                              (let ((_g23027_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl2080120827_
                                        '0))))
                                (begin
                                  (let ((_g23028_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g23027_)
                                               (##vector-length _g23027_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g23028_ 2)))
                                        (error "Context expects 2 values"
                                               _g23028_)))
                                  (let ((_target2080420830_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23027_ 0)))
                                        (_tl2080620832_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23027_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2080620832_))
                                        (letrec ((_loop2080720835_
                                                  (lambda (_hd2080520838_
                                                           _expr2081120840_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd2080520838_))
                                                        (let ((_e2080820843_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd2080520838_))))
                  (let ((_lp-hd2080920846_
                         (let () (declare (not safe)) (##car _e2080820843_)))
                        (_lp-tl2081020848_
                         (let () (declare (not safe)) (##cdr _e2080820843_))))
                    (let ((__tmp23032
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd2080920846_ _expr2081120840_))))
                      (declare (not safe))
                      (_loop2080720835_ _lp-tl2081020848_ __tmp23032))))
                (let ((_expr2081220851_ (reverse _expr2081120840_)))
                  ((lambda (_L20854_)
                     (let ((__tmp23031
                            (lambda (_g2086720869_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _g2086720869_ _arg20796_))))
                           (__tmp23029
                            (let ((__tmp23030
                                   (lambda (_g2087120874_ _g2087220876_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2087120874_ _g2087220876_)))))
                              (declare (not safe))
                              (foldr1 __tmp23030 '() _L20854_))))
                       (declare (not safe))
                       (ormap1 __tmp23031 __tmp23029)))
                   _expr2081220851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2080720835_
                                             _target2080420830_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2079820817_ _g2079920820_))))))
                              (let ()
                                (declare (not safe))
                                (_g2079820817_ _g2079920820_)))))
                      (let ()
                        (declare (not safe))
                        (_g2079820817_ _g2079920820_))))))
          (declare (not safe))
          (_g2079720879_ _stx20795_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx20727_ _arg20728_)
        (let* ((_g2073020747_
                (lambda (_g2073120744_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2073120744_))))
               (_g2072920792_
                (lambda (_g2073120750_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2073120750_))
                      (let ((_e2073620752_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2073120750_))))
                        (let ((_hd2073520755_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2073620752_)))
                              (_tl2073420757_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2073620752_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2073420757_))
                              (let ((_e2073920760_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2073420757_))))
                                (let ((_hd2073820763_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2073920760_)))
                                      (_tl2073720765_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2073920760_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2073720765_))
                                      (let ((_e2074220768_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2073720765_))))
                                        (let ((_hd2074120771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2074220768_)))
                                              (_tl2074020773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2074220768_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2074020773_))
                                              ((lambda (_L20776_ _L20777_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L20776_
                                                    _arg20728_)))
                                               _hd2074120771_
                                               _hd2073820763_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2073020747_
                                                 _g2073120750_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2073020747_ _g2073120750_)))))
                              (let ()
                                (declare (not safe))
                                (_g2073020747_ _g2073120750_)))))
                      (let ()
                        (declare (not safe))
                        (_g2073020747_ _g2073120750_))))))
          (declare (not safe))
          (_g2072920792_ _stx20727_))))
    (define gxc#find-lambda%
      (lambda (_stx20659_ _arg20660_)
        (let* ((_g2066220679_
                (lambda (_g2066320676_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2066320676_))))
               (_g2066120724_
                (lambda (_g2066320682_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2066320682_))
                      (let ((_e2066820684_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2066320682_))))
                        (let ((_hd2066720687_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2066820684_)))
                              (_tl2066620689_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2066820684_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2066620689_))
                              (let ((_e2067120692_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2066620689_))))
                                (let ((_hd2067020695_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2067120692_)))
                                      (_tl2066920697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2067120692_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2066920697_))
                                      (let ((_e2067420700_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2066920697_))))
                                        (let ((_hd2067320703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2067420700_)))
                                              (_tl2067220705_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2067420700_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2067220705_))
                                              ((lambda (_L20708_ _L20709_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L20708_
                                                    _arg20660_)))
                                               _hd2067320703_
                                               _hd2067020695_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2066220679_
                                                 _g2066320682_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2066220679_ _g2066320682_)))))
                              (let ()
                                (declare (not safe))
                                (_g2066220679_ _g2066320682_)))))
                      (let ()
                        (declare (not safe))
                        (_g2066220679_ _g2066320682_))))))
          (declare (not safe))
          (_g2066120724_ _stx20659_))))
    (define gxc#find-case-lambda%
      (lambda (_stx20541_ _arg20542_)
        (let* ((_g2054420572_
                (lambda (_g2054520569_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2054520569_))))
               (_g2054320656_
                (lambda (_g2054520575_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2054520575_))
                      (let ((_e2055020577_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2054520575_))))
                        (let ((_hd2054920580_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2055020577_)))
                              (_tl2054820582_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2055020577_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl2054820582_))
                              (let ((_g23033_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl2054820582_
                                        '0))))
                                (begin
                                  (let ((_g23034_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g23033_)
                                               (##vector-length _g23033_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g23034_ 2)))
                                        (error "Context expects 2 values"
                                               _g23034_)))
                                  (let ((_target2055120585_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23033_ 0)))
                                        (_tl2055320587_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23033_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2055320587_))
                                        (letrec ((_loop2055420590_
                                                  (lambda (_hd2055220593_
                                                           _body2055820595_
                                                           _hd2055920597_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd2055220593_))
                                                        (let ((_e2055520600_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd2055220593_))))
                  (let ((_lp-hd2055620603_
                         (let () (declare (not safe)) (##car _e2055520600_)))
                        (_lp-tl2055720605_
                         (let () (declare (not safe)) (##cdr _e2055520600_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd2055620603_))
                        (let ((_e2056420608_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd2055620603_))))
                          (let ((_hd2056320611_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2056420608_)))
                                (_tl2056220613_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2056420608_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl2056220613_))
                                (let ((_e2056720616_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl2056220613_))))
                                  (let ((_hd2056620619_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2056720616_)))
                                        (_tl2056520621_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2056720616_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2056520621_))
                                        (let ((__tmp23039
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd2056620619_
                                                       _body2055820595_)))
                                              (__tmp23038
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd2056320611_
                                                       _hd2055920597_))))
                                          (declare (not safe))
                                          (_loop2055420590_
                                           _lp-tl2055720605_
                                           __tmp23039
                                           __tmp23038))
                                        (let ()
                                          (declare (not safe))
                                          (_g2054420572_ _g2054520575_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2054420572_ _g2054520575_)))))
                        (let ()
                          (declare (not safe))
                          (_g2054420572_ _g2054520575_)))))
                (let ((_body2056020624_ (reverse _body2055820595_))
                      (_hd2056120626_ (reverse _hd2055920597_)))
                  ((lambda (_L20629_ _L20630_)
                     (let ((__tmp23037
                            (lambda (_g2064420646_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _g2064420646_ _arg20542_))))
                           (__tmp23035
                            (let ((__tmp23036
                                   (lambda (_g2064820651_ _g2064920653_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2064820651_ _g2064920653_)))))
                              (declare (not safe))
                              (foldr1 __tmp23036 '() _L20629_))))
                       (declare (not safe))
                       (ormap1 __tmp23037 __tmp23035)))
                   _body2056020624_
                   _hd2056120626_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2055420590_
                                             _target2055120585_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2054420572_ _g2054520575_))))))
                              (let ()
                                (declare (not safe))
                                (_g2054420572_ _g2054520575_)))))
                      (let ()
                        (declare (not safe))
                        (_g2054420572_ _g2054520575_))))))
          (declare (not safe))
          (_g2054320656_ _stx20541_))))
    (define gxc#find-let-values%
      (lambda (_stx20391_ _arg20392_)
        (let* ((_g2039420429_
                (lambda (_g2039520426_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2039520426_))))
               (_g2039320538_
                (lambda (_g2039520432_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2039520432_))
                      (let ((_e2040120434_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2039520432_))))
                        (let ((_hd2040020437_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2040120434_)))
                              (_tl2039920439_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2040120434_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2039920439_))
                              (let ((_e2040420442_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2039920439_))))
                                (let ((_hd2040320445_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2040420442_)))
                                      (_tl2040220447_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2040420442_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd2040320445_))
                                      (let ((_g23040_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd2040320445_
                                                '0))))
                                        (begin
                                          (let ((_g23041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23040_)
                                                       (##vector-length
                                                        _g23040_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23041_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23041_)))
                                          (let ((_target2040520450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23040_ 0)))
                                                (_tl2040720452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23040_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2040720452_))
                                                (letrec ((_loop2040820455_
                                                          (lambda (_hd2040620458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2041220460_
                           _bind2041320462_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd2040620458_))
                        (let ((_e2040920465_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd2040620458_))))
                          (let ((_lp-hd2041020468_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2040920465_)))
                                (_lp-tl2041120470_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2040920465_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd2041020468_))
                                (let ((_e2041820473_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd2041020468_))))
                                  (let ((_hd2041720476_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2041820473_)))
                                        (_tl2041620478_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2041820473_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl2041620478_))
                                        (let ((_e2042120481_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl2041620478_))))
                                          (let ((_hd2042020484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2042120481_)))
                                                (_tl2041920486_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2042120481_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2041920486_))
                                                (let ((__tmp23046
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2042020484_
                                                               _expr2041220460_)))
                                                      (__tmp23045
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2041720476_
                                                               _bind2041320462_))))
                                                  (declare (not safe))
                                                  (_loop2040820455_
                                                   _lp-tl2041120470_
                                                   __tmp23046
                                                   __tmp23045))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2039420429_
                                                   _g2039520432_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2039420429_ _g2039520432_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2039420429_ _g2039520432_)))))
                        (let ((_expr2041420489_ (reverse _expr2041220460_))
                              (_bind2041520491_ (reverse _bind2041320462_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2040220447_))
                              (let ((_e2042420494_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2040220447_))))
                                (let ((_hd2042320497_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2042420494_)))
                                      (_tl2042220499_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2042420494_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2042220499_))
                                      ((lambda (_L20502_ _L20503_ _L20504_)
                                         (let ((_$e20535_
                                                (let ((__tmp23044
                                                       (lambda (_g2052320525_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _g2052320525_
                                                            _arg20392_))))
                                                      (__tmp23042
                                                       (let ((__tmp23043
                                                              (lambda (_g2052720530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2052820532_)
                        (let ()
                          (declare (not safe))
                          (cons _g2052720530_ _g2052820532_)))))
                 (declare (not safe))
                 (foldr1 __tmp23043 '() _L20503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp23044
                                                          __tmp23042))))
                                           (if _$e20535_
                                               _$e20535_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e
                                                  _L20502_
                                                  _arg20392_)))))
                                       _hd2042320497_
                                       _expr2041420489_
                                       _bind2041520491_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2039420429_ _g2039520432_)))))
                              (let ()
                                (declare (not safe))
                                (_g2039420429_ _g2039520432_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop2040820455_
                                                     _target2040520450_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2039420429_
                                                   _g2039520432_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2039420429_ _g2039520432_)))))
                              (let ()
                                (declare (not safe))
                                (_g2039420429_ _g2039520432_)))))
                      (let ()
                        (declare (not safe))
                        (_g2039420429_ _g2039520432_))))))
          (declare (not safe))
          (_g2039320538_ _stx20391_))))
    (define gxc#find-setq%
      (lambda (_stx20323_ _arg20324_)
        (let* ((_g2032620343_
                (lambda (_g2032720340_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2032720340_))))
               (_g2032520388_
                (lambda (_g2032720346_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2032720346_))
                      (let ((_e2033220348_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2032720346_))))
                        (let ((_hd2033120351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2033220348_)))
                              (_tl2033020353_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2033220348_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2033020353_))
                              (let ((_e2033520356_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2033020353_))))
                                (let ((_hd2033420359_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2033520356_)))
                                      (_tl2033320361_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2033520356_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2033320361_))
                                      (let ((_e2033820364_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2033320361_))))
                                        (let ((_hd2033720367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2033820364_)))
                                              (_tl2033620369_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2033820364_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2033620369_))
                                              ((lambda (_L20372_ _L20373_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L20372_
                                                    _arg20324_)))
                                               _hd2033720367_
                                               _hd2033420359_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2032620343_
                                                 _g2032720346_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2032620343_ _g2032720346_)))))
                              (let ()
                                (declare (not safe))
                                (_g2032620343_ _g2032720346_)))))
                      (let ()
                        (declare (not safe))
                        (_g2032620343_ _g2032720346_))))))
          (declare (not safe))
          (_g2032520388_ _stx20323_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx20267_ _ids20268_)
        (let* ((_g2027020283_
                (lambda (_g2027120280_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2027120280_))))
               (_g2026920320_
                (lambda (_g2027120286_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2027120286_))
                      (let ((_e2027520288_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2027120286_))))
                        (let ((_hd2027420291_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2027520288_)))
                              (_tl2027320293_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2027520288_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2027320293_))
                              (let ((_e2027820296_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2027320293_))))
                                (let ((_hd2027720299_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2027820296_)))
                                      (_tl2027620301_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2027820296_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2027620301_))
                                      ((lambda (_L20304_)
                                         (let ((__tmp23047
                                                (lambda (_g2031520317_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L20304_
                                                     _g2031520317_)))))
                                           (declare (not safe))
                                           (find __tmp23047 _ids20268_)))
                                       _hd2027720299_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2027020283_ _g2027120286_)))))
                              (let ()
                                (declare (not safe))
                                (_g2027020283_ _g2027120286_)))))
                      (let ()
                        (declare (not safe))
                        (_g2027020283_ _g2027120286_))))))
          (declare (not safe))
          (_g2026920320_ _stx20267_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx20191_ _ids20192_)
        (let* ((_g2019420211_
                (lambda (_g2019520208_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2019520208_))))
               (_g2019320264_
                (lambda (_g2019520214_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2019520214_))
                      (let ((_e2020020216_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2019520214_))))
                        (let ((_hd2019920219_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2020020216_)))
                              (_tl2019820221_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2020020216_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2019820221_))
                              (let ((_e2020320224_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2019820221_))))
                                (let ((_hd2020220227_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2020320224_)))
                                      (_tl2020120229_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2020320224_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2020120229_))
                                      (let ((_e2020620232_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2020120229_))))
                                        (let ((_hd2020520235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2020620232_)))
                                              (_tl2020420237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2020620232_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2020420237_))
                                              ((lambda (_L20240_ _L20241_)
                                                 (let ((_$e20261_
                                                        (let ((__tmp23048
                                                               (lambda (_g2025620258_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L20241_ _g2025620258_)))))
                  (declare (not safe))
                  (find __tmp23048 _ids20192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e20261_
                                                       _$e20261_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e
                                                          _L20240_
                                                          _ids20192_)))))
                                               _hd2020520235_
                                               _hd2020220227_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2019420211_
                                                 _g2019520214_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2019420211_ _g2019520214_)))))
                              (let ()
                                (declare (not safe))
                                (_g2019420211_ _g2019520214_)))))
                      (let ()
                        (declare (not safe))
                        (_g2019420211_ _g2019520214_))))))
          (declare (not safe))
          (_g2019320264_ _stx20191_))))))
