(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1695392692)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl22694_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22694_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22694_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22694_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22694_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl22694_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl22690_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22690_ '%#declare gxc#xform-identity))
           _tbl22690_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl22686_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22940 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl22686_ __tmp22940))
           (let ((__tmp22941 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl22686_ __tmp22941))
           _tbl22686_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl22682_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22682_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22682_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22682_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22682_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22682_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl22682_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl22678_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22942 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl22678_ __tmp22942))
           (let ((__tmp22943 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl22678_ __tmp22943))
           (let ()
             (declare (not safe))
             (table-set! _tbl22678_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22678_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22678_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22678_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22678_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl22678_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl22674_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22944 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl22674_ __tmp22944))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22674_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22674_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22674_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22674_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22674_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22674_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22674_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22674_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl22674_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22674_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22674_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22674_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl22674_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx22667_ . _args22669_)
        (let ((__tmp22946
               (lambda () (apply gxc#compile-e _stx22667_ _args22669_)))
              (__tmp22945 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp22946
           gxc#current-compile-methods
           __tmp22945))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl22664_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22947 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl22664_ __tmp22947))
           (let ()
             (declare (not safe))
             (table-set! _tbl22664_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22664_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22664_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22664_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22664_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl22664_))))
    (define gxc#apply-collect-methods
      (lambda (_stx22657_ . _args22659_)
        (let ((__tmp22949
               (lambda () (apply gxc#compile-e _stx22657_ _args22659_)))
              (__tmp22948 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp22949
           gxc#current-compile-methods
           __tmp22948))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl22654_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22950 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl22654_ __tmp22950))
           (let ()
             (declare (not safe))
             (table-set! _tbl22654_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22654_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22654_ '%#set! gxc#expression-subst-setq%))
           _tbl22654_))))
    (define gxc#apply-expression-subst
      (lambda (_stx22647_ . _args22649_)
        (let ((__tmp22952
               (lambda () (apply gxc#compile-e _stx22647_ _args22649_)))
              (__tmp22951 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp22952
           gxc#current-compile-methods
           __tmp22951))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl22644_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22953 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl22644_ __tmp22953))
           (let ()
             (declare (not safe))
             (table-set! _tbl22644_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22644_ '%#set! gxc#expression-subst*-setq%))
           _tbl22644_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx22637_ . _args22639_)
        (let ((__tmp22955
               (lambda () (apply gxc#compile-e _stx22637_ _args22639_)))
              (__tmp22954 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp22955
           gxc#current-compile-methods
           __tmp22954))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl22634_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22956 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl22634_ __tmp22956))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl22634_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22634_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl22634_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl22630_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22957 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl22630_ __tmp22957))
           (let ()
             (declare (not safe))
             (table-set! _tbl22630_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22630_ '%#set! gxc#find-var-refs-setq%))
           _tbl22630_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx22623_ . _args22625_)
        (let ((__tmp22959
               (lambda () (apply gxc#compile-e _stx22623_ _args22625_)))
              (__tmp22958 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp22959
           gxc#current-compile-methods
           __tmp22958))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl22620_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp22960 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl22620_ __tmp22960))
           (let ()
             (declare (not safe))
             (table-set! _tbl22620_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl22620_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl22620_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx22613_ . _args22615_)
        (let ((__tmp22962
               (lambda () (apply gxc#compile-e _stx22613_ _args22615_)))
              (__tmp22961 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp22962
           gxc#current-compile-methods
           __tmp22961))))
    (define gxc#xform-identity (lambda (_stx22610_ . _args22611_) _stx22610_))
    (define gxc#xform-wrap-source
      (lambda (_stx22607_ _src-stx22608_)
        (let ((__tmp22963
               (let () (declare (not safe)) (gx#stx-source _src-stx22608_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx22607_ __tmp22963))))
    (define gxc#xform-apply-compile-e
      (lambda (_args22601_)
        (lambda (_g2260222604_)
          (apply gxc#compile-e _g2260222604_ _args22601_))))
    (define gxc#xform-begin%
      (lambda (_stx22560_ . _args22561_)
        (let* ((_g2256322573_
                (lambda (_g2256422570_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2256422570_))))
               (_g2256222598_
                (lambda (_g2256422576_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2256422576_))
                      (let ((_e2256822578_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2256422576_))))
                        (let ((_hd2256722581_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2256822578_)))
                              (_tl2256622583_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2256822578_))))
                          ((lambda (_L22586_)
                             (let* ((_forms22596_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args22561_))
                                          _L22586_))
                                    (__tmp22964
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms22596_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp22964 _stx22560_)))
                           _tl2256622583_)))
                      (let ()
                        (declare (not safe))
                        (_g2256322573_ _g2256422576_))))))
          (declare (not safe))
          (_g2256222598_ _stx22560_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx22518_ . _args22519_)
        (let* ((_g2252122531_
                (lambda (_g2252222528_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2252222528_))))
               (_g2252022557_
                (lambda (_g2252222534_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2252222534_))
                      (let ((_e2252622536_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2252222534_))))
                        (let ((_hd2252522539_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2252622536_)))
                              (_tl2252422541_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2252622536_))))
                          ((lambda (_L22544_)
                             (let ((__tmp22967
                                    (lambda ()
                                      (let* ((_forms22555_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args22519_))
                                                   _L22544_))
                                             (__tmp22968
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms22555_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp22968
                                         _stx22518_))))
                                   (__tmp22965
                                    (let ((__tmp22966
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp22966 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp22967
                                gx#current-expander-phi
                                __tmp22965)))
                           _tl2252422541_)))
                      (let ()
                        (declare (not safe))
                        (_g2252122531_ _g2252222534_))))))
          (declare (not safe))
          (_g2252022557_ _stx22518_))))
    (define gxc#xform-module%
      (lambda (_stx22455_ . _args22456_)
        (let* ((_g2245822472_
                (lambda (_g2245922469_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2245922469_))))
               (_g2245722515_
                (lambda (_g2245922475_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2245922475_))
                      (let ((_e2246422477_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2245922475_))))
                        (let ((_hd2246322480_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2246422477_)))
                              (_tl2246222482_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2246422477_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2246222482_))
                              (let ((_e2246722485_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2246222482_))))
                                (let ((_hd2246622488_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2246722485_)))
                                      (_tl2246522490_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2246722485_))))
                                  ((lambda (_L22493_ _L22494_)
                                     (let* ((_ctx22507_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L22494_)))
                                            (_code22509_
                                             (##structure-ref
                                              _ctx22507_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code22512_
                                             (let ((__tmp22969
                                                    (lambda ()
                                                      (apply gxc#compile-e
                                                             _code22509_
                                                             _args22456_))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp22969
                                                gx#current-expander-context
                                                _ctx22507_))))
                                       (##structure-set!
                                        _ctx22507_
                                        _code22512_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp22970
                                              (let ((__tmp22971
                                                     (let ((__tmp22972
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code22512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L22494_ __tmp22972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp22971))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp22970
                                          _stx22455_))))
                                   _tl2246522490_
                                   _hd2246622488_)))
                              (let ()
                                (declare (not safe))
                                (_g2245822472_ _g2245922475_)))))
                      (let ()
                        (declare (not safe))
                        (_g2245822472_ _g2245922475_))))))
          (declare (not safe))
          (_g2245722515_ _stx22455_))))
    (define gxc#xform-define-values%
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
                                                        (__tmp22973
                                                         (let ((__tmp22974
                                                                (let ((__tmp22975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr22450_ '()))))
                          (declare (not safe))
                          (cons _L22435_ __tmp22975))))
                   (declare (not safe))
                   (cons '%#define-values __tmp22974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp22973
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
    (define gxc#xform-define-syntax%
      (lambda (_stx22314_ . _args22315_)
        (let* ((_g2231722334_
                (lambda (_g2231822331_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2231822331_))))
               (_g2231622382_
                (lambda (_g2231822337_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2231822337_))
                      (let ((_e2232322339_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2231822337_))))
                        (let ((_hd2232222342_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2232322339_)))
                              (_tl2232122344_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2232322339_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2232122344_))
                              (let ((_e2232622347_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2232122344_))))
                                (let ((_hd2232522350_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2232622347_)))
                                      (_tl2232422352_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2232622347_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2232422352_))
                                      (let ((_e2232922355_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2232422352_))))
                                        (let ((_hd2232822358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2232922355_)))
                                              (_tl2232722360_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2232922355_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2232722360_))
                                              ((lambda (_L22363_ _L22364_)
                                                 (let ((__tmp22978
                                                        (lambda ()
                                                          (let* ((_expr22380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (apply gxc#compile-e _L22363_ _args22315_))
                         (__tmp22979
                          (let ((__tmp22980
                                 (let ((__tmp22981
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr22380_ '()))))
                                   (declare (not safe))
                                   (cons _L22364_ __tmp22981))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp22980))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp22979 _stx22314_))))
               (__tmp22976
                (let ((__tmp22977 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp22977 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp22978
                                                    gx#current-expander-phi
                                                    __tmp22976)))
                                               _hd2232822358_
                                               _hd2232522350_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2231722334_
                                                 _g2231822337_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2231722334_ _g2231822337_)))))
                              (let ()
                                (declare (not safe))
                                (_g2231722334_ _g2231822337_)))))
                      (let ()
                        (declare (not safe))
                        (_g2231722334_ _g2231822337_))))))
          (declare (not safe))
          (_g2231622382_ _stx22314_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx22244_ . _args22245_)
        (let* ((_g2224722264_
                (lambda (_g2224822261_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2224822261_))))
               (_g2224622311_
                (lambda (_g2224822267_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2224822267_))
                      (let ((_e2225322269_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2224822267_))))
                        (let ((_hd2225222272_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2225322269_)))
                              (_tl2225122274_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2225322269_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2225122274_))
                              (let ((_e2225622277_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2225122274_))))
                                (let ((_hd2225522280_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2225622277_)))
                                      (_tl2225422282_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2225622277_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2225422282_))
                                      (let ((_e2225922285_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2225422282_))))
                                        (let ((_hd2225822288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2225922285_)))
                                              (_tl2225722290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2225922285_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2225722290_))
                                              ((lambda (_L22293_ _L22294_)
                                                 (let* ((_expr22309_
                                                         (apply gxc#compile-e
                                                                _L22293_
                                                                _args22245_))
                                                        (__tmp22982
                                                         (let ((__tmp22983
                                                                (let ((__tmp22984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr22309_ '()))))
                          (declare (not safe))
                          (cons _L22294_ __tmp22984))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp22983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp22982
                                                    _stx22244_)))
                                               _hd2225822288_
                                               _hd2225522280_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2224722264_
                                                 _g2224822267_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2224722264_ _g2224822267_)))))
                              (let ()
                                (declare (not safe))
                                (_g2224722264_ _g2224822267_)))))
                      (let ()
                        (declare (not safe))
                        (_g2224722264_ _g2224822267_))))))
          (declare (not safe))
          (_g2224622311_ _stx22244_))))
    (define gxc#xform-lambda%
      (lambda (_stx22187_ . _args22188_)
        (let* ((_g2219022204_
                (lambda (_g2219122201_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2219122201_))))
               (_g2218922241_
                (lambda (_g2219122207_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2219122207_))
                      (let ((_e2219622209_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2219122207_))))
                        (let ((_hd2219522212_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2219622209_)))
                              (_tl2219422214_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2219622209_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2219422214_))
                              (let ((_e2219922217_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2219422214_))))
                                (let ((_hd2219822220_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2219922217_)))
                                      (_tl2219722222_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2219922217_))))
                                  ((lambda (_L22225_ _L22226_)
                                     (let* ((_body22239_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args22188_))
                                                  _L22225_))
                                            (__tmp22985
                                             (let ((__tmp22986
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L22226_
                                                            _body22239_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp22986))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp22985
                                        _stx22187_)))
                                   _tl2219722222_
                                   _hd2219822220_)))
                              (let ()
                                (declare (not safe))
                                (_g2219022204_ _g2219122207_)))))
                      (let ()
                        (declare (not safe))
                        (_g2219022204_ _g2219122207_))))))
          (declare (not safe))
          (_g2218922241_ _stx22187_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx22100_ . _args22101_)
        (letrec ((_clause-e22103_
                  (lambda (_clause22144_)
                    (let* ((_g2214622157_
                            (lambda (_g2214722154_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2214722154_))))
                           (_g2214522184_
                            (lambda (_g2214722160_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g2214722160_))
                                  (let ((_e2215222162_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g2214722160_))))
                                    (let ((_hd2215122165_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2215222162_)))
                                          (_tl2215022167_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2215222162_))))
                                      ((lambda (_L22170_ _L22171_)
                                         (let ((_body22182_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args22101_))
                                                     _L22170_)))
                                           (declare (not safe))
                                           (cons _L22171_ _body22182_)))
                                       _tl2215022167_
                                       _hd2215122165_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g2214622157_ _g2214722160_))))))
                      (declare (not safe))
                      (_g2214522184_ _clause22144_)))))
          (let* ((_g2210522115_
                  (lambda (_g2210622112_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g2210622112_))))
                 (_g2210422141_
                  (lambda (_g2210622118_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g2210622118_))
                        (let ((_e2211022120_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g2210622118_))))
                          (let ((_hd2210922123_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2211022120_)))
                                (_tl2210822125_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2211022120_))))
                            ((lambda (_L22128_)
                               (let* ((_clauses22139_
                                       (map _clause-e22103_ _L22128_))
                                      (__tmp22987
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses22139_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp22987
                                  _stx22100_)))
                             _tl2210822125_)))
                        (let ()
                          (declare (not safe))
                          (_g2210522115_ _g2210622118_))))))
            (declare (not safe))
            (_g2210422141_ _stx22100_)))))
    (define gxc#xform-let-values%
      (lambda (_stx21894_ . _args21895_)
        (let* ((_g2189721930_
                (lambda (_g2189821927_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2189821927_))))
               (_g2189622097_
                (lambda (_g2189821933_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2189821933_))
                      (let ((_e2190521935_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2189821933_))))
                        (let ((_hd2190421938_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2190521935_)))
                              (_tl2190321940_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2190521935_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2190321940_))
                              (let ((_e2190821943_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2190321940_))))
                                (let ((_hd2190721946_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2190821943_)))
                                      (_tl2190621948_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2190821943_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd2190721946_))
                                      (let ((_g22988_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd2190721946_
                                                '0))))
                                        (begin
                                          (let ((_g22989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g22988_)
                                                       (##vector-length
                                                        _g22988_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g22989_ 2)))
                                                (error "Context expects 2 values"
                                                       _g22989_)))
                                          (let ((_target2190921951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g22988_ 0)))
                                                (_tl2191121953_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g22988_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2191121953_))
                                                (letrec ((_loop2191221956_
                                                          (lambda (_hd2191021959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2191621961_
                           _hd2191721963_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd2191021959_))
                        (let ((_e2191321966_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd2191021959_))))
                          (let ((_lp-hd2191421969_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2191321966_)))
                                (_lp-tl2191521971_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2191321966_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd2191421969_))
                                (let ((_e2192221974_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd2191421969_))))
                                  (let ((_hd2192121977_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2192221974_)))
                                        (_tl2192021979_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2192221974_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl2192021979_))
                                        (let ((_e2192521982_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl2192021979_))))
                                          (let ((_hd2192421985_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2192521982_)))
                                                (_tl2192321987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2192521982_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2192321987_))
                                                (let ((__tmp23002
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2192421985_
                                                               _expr2191621961_)))
                                                      (__tmp23001
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2192121977_
                                                               _hd2191721963_))))
                                                  (declare (not safe))
                                                  (_loop2191221956_
                                                   _lp-tl2191521971_
                                                   __tmp23002
                                                   __tmp23001))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2189721930_
                                                   _g2189821933_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2189721930_ _g2189821933_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2189721930_ _g2189821933_)))))
                        (let ((_expr2191821990_ (reverse _expr2191621961_))
                              (_hd2191921992_ (reverse _hd2191721963_)))
                          ((lambda (_L21995_ _L21996_ _L21997_ _L21998_)
                             (let* ((_g2201722033_
                                     (lambda (_g2201822030_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2201822030_))))
                                    (_g2201622087_
                                     (lambda (_g2201822036_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null? _g2201822036_))
                                           (let ((_g22990_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g2201822036_
                                                     '0))))
                                             (begin
                                               (let ((_g22991_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g22990_)
                                                            (##vector-length
                                                             _g22990_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g22991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g22991_)))
                                               (let ((_target2202022038_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g22990_
                                                         0)))
                                                     (_tl2202222040_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g22990_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl2202222040_))
                                                     (letrec ((_loop2202322043_
                                                               (lambda (_hd2202122046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2202722048_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd2202122046_))
                             (let ((_e2202422051_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd2202122046_))))
                               (let ((_lp-hd2202522054_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2202422051_)))
                                     (_lp-tl2202622056_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2202422051_))))
                                 (let ((__tmp22998
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd2202522054_
                                                _expr2202722048_))))
                                   (declare (not safe))
                                   (_loop2202322043_
                                    _lp-tl2202622056_
                                    __tmp22998))))
                             (let ((_expr2202822059_
                                    (reverse _expr2202722048_)))
                               ((lambda (_L22062_)
                                  (let ()
                                    (let* ((_body22075_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args21895_))
                                                 _L21995_))
                                           (__tmp22992
                                            (let ((__tmp22993
                                                   (let ((__tmp22994
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L22062_
                                                               _L21997_))
                                                            (let ((__tmp22995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2207622080_ _g2207722082_ _g2207822084_)
                             (let ((__tmp22996
                                    (let ((__tmp22997
                                           (let ()
                                             (declare (not safe))
                                             (cons _g2207622080_ '()))))
                                      (declare (not safe))
                                      (cons _g2207722082_ __tmp22997))))
                               (declare (not safe))
                               (cons __tmp22996 _g2207822084_)))))
                      (declare (not safe))
                      (foldr2 __tmp22995 '() _L22062_ _L21997_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp22994
                                                           _body22075_))))
                                              (declare (not safe))
                                              (cons _L21998_ __tmp22993))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp22992
                                       _stx21894_))))
                                _expr2202822059_))))))
               (let ()
                 (declare (not safe))
                 (_loop2202322043_ _target2202022038_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2201722033_
                                                        _g2201822036_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2201722033_ _g2201822036_)))))
                                    (__tmp22999
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args21895_))
                                          (let ((__tmp23000
                                                 (lambda (_g2208922092_
                                                          _g2209022094_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2208922092_
                                                           _g2209022094_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp23000
                                                    '()
                                                    _L21996_)))))
                               (declare (not safe))
                               (_g2201622087_ __tmp22999)))
                           _tl2190621948_
                           _expr2191821990_
                           _hd2191921992_
                           _hd2190421938_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop2191221956_
                                                     _target2190921951_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2189721930_
                                                   _g2189821933_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2189721930_ _g2189821933_)))))
                              (let ()
                                (declare (not safe))
                                (_g2189721930_ _g2189821933_)))))
                      (let ()
                        (declare (not safe))
                        (_g2189721930_ _g2189821933_))))))
          (declare (not safe))
          (_g2189622097_ _stx21894_))))
    (define gxc#xform-operands
      (lambda (_stx21850_ . _args21851_)
        (let* ((_g2185321864_
                (lambda (_g2185421861_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2185421861_))))
               (_g2185221891_
                (lambda (_g2185421867_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2185421867_))
                      (let ((_e2185921869_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2185421867_))))
                        (let ((_hd2185821872_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2185921869_)))
                              (_tl2185721874_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2185921869_))))
                          ((lambda (_L21877_ _L21878_)
                             (let* ((_rands21889_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args21851_))
                                          _L21877_))
                                    (__tmp23003
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21878_ _rands21889_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp23003 _stx21850_)))
                           _tl2185721874_
                           _hd2185821872_)))
                      (let ()
                        (declare (not safe))
                        (_g2185321864_ _g2185421867_))))))
          (declare (not safe))
          (_g2185221891_ _stx21850_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx21780_ . _args21781_)
        (let* ((_g2178321800_
                (lambda (_g2178421797_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2178421797_))))
               (_g2178221847_
                (lambda (_g2178421803_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2178421803_))
                      (let ((_e2178921805_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2178421803_))))
                        (let ((_hd2178821808_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2178921805_)))
                              (_tl2178721810_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2178921805_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2178721810_))
                              (let ((_e2179221813_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2178721810_))))
                                (let ((_hd2179121816_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2179221813_)))
                                      (_tl2179021818_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2179221813_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2179021818_))
                                      (let ((_e2179521821_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2179021818_))))
                                        (let ((_hd2179421824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2179521821_)))
                                              (_tl2179321826_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2179521821_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2179321826_))
                                              ((lambda (_L21829_ _L21830_)
                                                 (let* ((_expr21845_
                                                         (apply gxc#compile-e
                                                                _L21829_
                                                                _args21781_))
                                                        (__tmp23004
                                                         (let ((__tmp23005
                                                                (let ((__tmp23006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr21845_ '()))))
                          (declare (not safe))
                          (cons _L21830_ __tmp23006))))
                   (declare (not safe))
                   (cons '%#set! __tmp23005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp23004
                                                    _stx21780_)))
                                               _hd2179421824_
                                               _hd2179121816_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2178321800_
                                                 _g2178421803_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2178321800_ _g2178421803_)))))
                              (let ()
                                (declare (not safe))
                                (_g2178321800_ _g2178421803_)))))
                      (let ()
                        (declare (not safe))
                        (_g2178321800_ _g2178421803_))))))
          (declare (not safe))
          (_g2178221847_ _stx21780_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx21711_)
        (let* ((_g2171321730_
                (lambda (_g2171421727_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2171421727_))))
               (_g2171221777_
                (lambda (_g2171421733_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2171421733_))
                      (let ((_e2171921735_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2171421733_))))
                        (let ((_hd2171821738_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2171921735_)))
                              (_tl2171721740_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2171921735_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2171721740_))
                              (let ((_e2172221743_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2171721740_))))
                                (let ((_hd2172121746_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2172221743_)))
                                      (_tl2172021748_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2172221743_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2172021748_))
                                      (let ((_e2172521751_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2172021748_))))
                                        (let ((_hd2172421754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2172521751_)))
                                              (_tl2172321756_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2172521751_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2172321756_))
                                              ((lambda (_L21759_ _L21760_)
                                                 (let ((_sym21775_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L21760_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym21775_))
                                                   (let ((__tmp23007
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp23007
                                                      _sym21775_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L21759_))))
                                               _hd2172421754_
                                               _hd2172121746_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2171321730_
                                                 _g2171421733_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2171321730_ _g2171421733_)))))
                              (let ()
                                (declare (not safe))
                                (_g2171321730_ _g2171421733_)))))
                      (let ()
                        (declare (not safe))
                        (_g2171321730_ _g2171421733_))))))
          (declare (not safe))
          (_g2171221777_ _stx21711_))))
    (define gxc#collect-methods-call%
      (lambda (_stx21265_)
        (let* ((___stx2269722698_ _stx21265_)
               (_g2126921371_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx2269722698_)))))
          (let ((___kont2269922700_
                 (lambda (_L21661_ _L21662_ _L21663_ _L21664_ _L21665_)
                   (let ((__tmp23008
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L21662_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp23008))))
                (___kont2270122702_
                 (lambda (_L21487_ _L21488_ _L21489_ _L21490_)
                   (let ((__tmp23009
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L21487_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp23009))))
                (___kont2270322704_ (lambda () '#!void)))
            (let ((___match2283222833_
                   (lambda (_e2127821533_
                            _hd2127721536_
                            _tl2127621538_
                            _e2128121541_
                            _hd2128021544_
                            _tl2127921546_
                            _e2128421549_
                            _hd2128321552_
                            _tl2128221554_
                            _e2128721557_
                            _hd2128621560_
                            _tl2128521562_
                            _e2129021565_
                            _hd2128921568_
                            _tl2128821570_
                            _e2129321573_
                            _hd2129221576_
                            _tl2129121578_
                            _e2129621581_
                            _hd2129521584_
                            _tl2129421586_
                            _e2129921589_
                            _hd2129821592_
                            _tl2129721594_
                            _e2130221597_
                            _hd2130121600_
                            _tl2130021602_
                            _e2130521605_
                            _hd2130421608_
                            _tl2130321610_
                            _e2130821613_
                            _hd2130721616_
                            _tl2130621618_
                            _e2131121621_
                            _hd2131021624_
                            _tl2130921626_
                            _e2131421629_
                            _hd2131321632_
                            _tl2131221634_
                            _e2131721637_
                            _hd2131621640_
                            _tl2131521642_
                            _e2132021645_
                            _hd2131921648_
                            _tl2131821650_
                            _e2132321653_
                            _hd2132221656_
                            _tl2132121658_)
                     (let ((_L21661_ _hd2132221656_)
                           (_L21662_ _hd2131321632_)
                           (_L21663_ _hd2130421608_)
                           (_L21664_ _hd2129521584_)
                           (_L21665_ _hd2128621560_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L21665_ 'bind-method!))
                           (___kont2269922700_
                            _L21661_
                            _L21662_
                            _L21663_
                            _L21664_
                            _L21665_)
                           (___kont2270322704_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx2269722698_))
                  (let ((_e2127821533_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx2269722698_))))
                    (let ((_tl2127621538_
                           (let () (declare (not safe)) (##cdr _e2127821533_)))
                          (_hd2127721536_
                           (let ()
                             (declare (not safe))
                             (##car _e2127821533_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl2127621538_))
                          (let ((_e2128121541_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl2127621538_))))
                            (let ((_tl2127921546_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2128121541_)))
                                  (_hd2128021544_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2128121541_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd2128021544_))
                                  (let ((_e2128421549_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd2128021544_))))
                                    (let ((_tl2128221554_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2128421549_)))
                                          (_hd2128321552_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2128421549_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd2128321552_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd2128321552_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl2128221554_))
                                                  (let ((_e2128721557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl2128221554_))))
                                                    (let ((_tl2128521562_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2128721557_)))
                                                          (_hd2128621560_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2128721557_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl2128521562_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl2127921546_))
                      (let ((_e2129021565_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl2127921546_))))
                        (let ((_tl2128821570_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2129021565_)))
                              (_hd2128921568_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2129021565_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd2128921568_))
                              (let ((_e2129321573_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd2128921568_))))
                                (let ((_tl2129121578_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2129321573_)))
                                      (_hd2129221576_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2129321573_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd2129221576_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd2129221576_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl2129121578_))
                                              (let ((_e2129621581_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl2129121578_))))
                                                (let ((_tl2129421586_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2129621581_)))
                                                      (_hd2129521584_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2129621581_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl2129421586_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl2128821570_))
                                                          (let ((_e2129921589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl2128821570_))))
                    (let ((_tl2129721594_
                           (let () (declare (not safe)) (##cdr _e2129921589_)))
                          (_hd2129821592_
                           (let ()
                             (declare (not safe))
                             (##car _e2129921589_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd2129821592_))
                          (let ((_e2130221597_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd2129821592_))))
                            (let ((_tl2130021602_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2130221597_)))
                                  (_hd2130121600_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2130221597_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd2130121600_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd2130121600_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl2130021602_))
                                          (let ((_e2130521605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl2130021602_))))
                                            (let ((_tl2130321610_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2130521605_)))
                                                  (_hd2130421608_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2130521605_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl2130321610_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl2129721594_))
                                                      (let ((_e2130821613_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl2129721594_))))
                (let ((_tl2130621618_
                       (let () (declare (not safe)) (##cdr _e2130821613_)))
                      (_hd2130721616_
                       (let () (declare (not safe)) (##car _e2130821613_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd2130721616_))
                      (let ((_e2131121621_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd2130721616_))))
                        (let ((_tl2130921626_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2131121621_)))
                              (_hd2131021624_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2131121621_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd2131021624_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd2131021624_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2130921626_))
                                      (let ((_e2131421629_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2130921626_))))
                                        (let ((_tl2131221634_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2131421629_)))
                                              (_hd2131321632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2131421629_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2131221634_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl2130621618_))
                                                  (let ((_e2131721637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl2130621618_))))
                                                    (let ((_tl2131521642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2131721637_)))
                                                          (_hd2131621640_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2131721637_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd2131621640_))
                                                          (let ((_e2132021645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd2131621640_))))
                    (let ((_tl2131821650_
                           (let () (declare (not safe)) (##cdr _e2132021645_)))
                          (_hd2131921648_
                           (let ()
                             (declare (not safe))
                             (##car _e2132021645_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd2131921648_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd2131921648_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl2131821650_))
                                  (let ((_e2132321653_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl2131821650_))))
                                    (let ((_tl2132121658_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2132321653_)))
                                          (_hd2132221656_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2132321653_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl2132121658_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2131521642_))
                                              (___match2283222833_
                                               _e2127821533_
                                               _hd2127721536_
                                               _tl2127621538_
                                               _e2128121541_
                                               _hd2128021544_
                                               _tl2127921546_
                                               _e2128421549_
                                               _hd2128321552_
                                               _tl2128221554_
                                               _e2128721557_
                                               _hd2128621560_
                                               _tl2128521562_
                                               _e2129021565_
                                               _hd2128921568_
                                               _tl2128821570_
                                               _e2129321573_
                                               _hd2129221576_
                                               _tl2129121578_
                                               _e2129621581_
                                               _hd2129521584_
                                               _tl2129421586_
                                               _e2129921589_
                                               _hd2129821592_
                                               _tl2129721594_
                                               _e2130221597_
                                               _hd2130121600_
                                               _tl2130021602_
                                               _e2130521605_
                                               _hd2130421608_
                                               _tl2130321610_
                                               _e2130821613_
                                               _hd2130721616_
                                               _tl2130621618_
                                               _e2131121621_
                                               _hd2131021624_
                                               _tl2130921626_
                                               _e2131421629_
                                               _hd2131321632_
                                               _tl2131221634_
                                               _e2131721637_
                                               _hd2131621640_
                                               _tl2131521642_
                                               _e2132021645_
                                               _hd2131921648_
                                               _tl2131821650_
                                               _e2132321653_
                                               _hd2132221656_
                                               _tl2132121658_)
                                              (___kont2270322704_))
                                          (___kont2270322704_))))
                                  (___kont2270322704_))
                              (___kont2270322704_))
                          (___kont2270322704_))))
                  (___kont2270322704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl2130621618_))
                                                      (if (let ((__tmp23010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp23010 'bind-method!))
                  (let ((_L21487_ _hd2131321632_)
                        (_L21488_ _hd2130421608_)
                        (_L21489_ _hd2129521584_)
                        (_L21490_ _hd2128621560_))
                    (___kont2270122702_ _L21487_ _L21488_ _L21489_ _L21490_))
                  (___kont2270322704_))
              (___kont2270322704_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2270322704_))))
                                      (___kont2270322704_))
                                  (___kont2270322704_))
                              (___kont2270322704_))))
                      (___kont2270322704_))))
              (___kont2270322704_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2270322704_))))
                                          (___kont2270322704_))
                                      (___kont2270322704_))
                                  (___kont2270322704_))))
                          (___kont2270322704_))))
                  (___kont2270322704_))
              (___kont2270322704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2270322704_))
                                          (___kont2270322704_))
                                      (___kont2270322704_))))
                              (___kont2270322704_))))
                      (___kont2270322704_))
                  (___kont2270322704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2270322704_))
                                              (___kont2270322704_))
                                          (___kont2270322704_))))
                                  (___kont2270322704_))))
                          (___kont2270322704_))))
                  (___kont2270322704_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx21212_ _id21213_ _new-id21214_)
        (let* ((_g2121621229_
                (lambda (_g2121721226_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2121721226_))))
               (_g2121521262_
                (lambda (_g2121721232_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2121721232_))
                      (let ((_e2122121234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2121721232_))))
                        (let ((_hd2122021237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2122121234_)))
                              (_tl2121921239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2122121234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2121921239_))
                              (let ((_e2122421242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2121921239_))))
                                (let ((_hd2122321245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2122421242_)))
                                      (_tl2122221247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2122421242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2122221247_))
                                      ((lambda (_L21250_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L21250_
                                                _id21213_))
                                             (let ((__tmp23011
                                                    (let ((__tmp23012
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id21214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp23012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp23011
                                                _stx21212_))
                                             _stx21212_))
                                       _hd2122321245_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2121621229_ _g2121721232_)))))
                              (let ()
                                (declare (not safe))
                                (_g2121621229_ _g2121721232_)))))
                      (let ()
                        (declare (not safe))
                        (_g2121621229_ _g2121721232_))))))
          (declare (not safe))
          (_g2121521262_ _stx21212_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx21153_ _subst21154_)
        (let* ((_g2115621169_
                (lambda (_g2115721166_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2115721166_))))
               (_g2115521209_
                (lambda (_g2115721172_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2115721172_))
                      (let ((_e2116121174_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2115721172_))))
                        (let ((_hd2116021177_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2116121174_)))
                              (_tl2115921179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2116121174_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2115921179_))
                              (let ((_e2116421182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2115921179_))))
                                (let ((_hd2116321185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2116421182_)))
                                      (_tl2116221187_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2116421182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2116221187_))
                                      ((lambda (_L21190_)
                                         (let ((_$e21204_
                                                (let ((__tmp23013
                                                       (lambda (_sub21202_)
                                                         (let ((__tmp23014
                                                                (car _sub21202_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L21190_
                                                            __tmp23014)))))
                                                  (declare (not safe))
                                                  (find __tmp23013
                                                        _subst21154_))))
                                           (if _$e21204_
                                               ((lambda (_sub21207_)
                                                  (let ((__tmp23015
                                                         (let ((__tmp23016
                                                                (let ((__tmp23017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub21207_)))
                          (declare (not safe))
                          (cons __tmp23017 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp23016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp23015
                                                     _stx21153_)))
                                                _$e21204_)
                                               _stx21153_)))
                                       _hd2116321185_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2115621169_ _g2115721172_)))))
                              (let ()
                                (declare (not safe))
                                (_g2115621169_ _g2115721172_)))))
                      (let ()
                        (declare (not safe))
                        (_g2115621169_ _g2115721172_))))))
          (declare (not safe))
          (_g2115521209_ _stx21153_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx21081_ _id21082_ _new-id21083_)
        (let* ((_g2108521102_
                (lambda (_g2108621099_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2108621099_))))
               (_g2108421150_
                (lambda (_g2108621105_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2108621105_))
                      (let ((_e2109121107_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2108621105_))))
                        (let ((_hd2109021110_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2109121107_)))
                              (_tl2108921112_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2109121107_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2108921112_))
                              (let ((_e2109421115_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2108921112_))))
                                (let ((_hd2109321118_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2109421115_)))
                                      (_tl2109221120_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2109421115_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2109221120_))
                                      (let ((_e2109721123_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2109221120_))))
                                        (let ((_hd2109621126_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2109721123_)))
                                              (_tl2109521128_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2109721123_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2109521128_))
                                              ((lambda (_L21131_ _L21132_)
                                                 (let ((_new-expr21147_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           _L21131_
                                                           _id21082_
                                                           _new-id21083_)))
                                                       (_new-xid21148_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L21132_
                                                               _id21082_))
                                                            _new-id21083_
                                                            _L21132_)))
                                                   (let ((__tmp23018
                                                          (let ((__tmp23019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp23020
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr21147_ '()))))
                           (declare (not safe))
                           (cons _new-xid21148_ __tmp23020))))
                    (declare (not safe))
                    (cons '%#set! __tmp23019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp23018
                                                      _stx21081_))))
                                               _hd2109621126_
                                               _hd2109321118_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2108521102_
                                                 _g2108621105_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2108521102_ _g2108621105_)))))
                              (let ()
                                (declare (not safe))
                                (_g2108521102_ _g2108621105_)))))
                      (let ()
                        (declare (not safe))
                        (_g2108521102_ _g2108621105_))))))
          (declare (not safe))
          (_g2108421150_ _stx21081_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx21005_ _subst21006_)
        (let* ((_g2100821025_
                (lambda (_g2100921022_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2100921022_))))
               (_g2100721078_
                (lambda (_g2100921028_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2100921028_))
                      (let ((_e2101421030_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2100921028_))))
                        (let ((_hd2101321033_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2101421030_)))
                              (_tl2101221035_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2101421030_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2101221035_))
                              (let ((_e2101721038_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2101221035_))))
                                (let ((_hd2101621041_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2101721038_)))
                                      (_tl2101521043_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2101721038_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2101521043_))
                                      (let ((_e2102021046_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2101521043_))))
                                        (let ((_hd2101921049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2102021046_)))
                                              (_tl2101821051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2102021046_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2101821051_))
                                              ((lambda (_L21054_ _L21055_)
                                                 (let ((_new-expr21075_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           _L21054_
                                                           _subst21006_)))
                                                       (_new-xid21076_
                                                        (let ((_$e21072_
                                                               (let ((__tmp23021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub21070_)
                                (let ((__tmp23022 (car _sub21070_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L21055_
                                   __tmp23022)))))
                         (declare (not safe))
                         (find __tmp23021 _subst21006_))))
                  (if _$e21072_ (cdr _$e21072_) _L21055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp23023
                                                          (let ((__tmp23024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp23025
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr21075_ '()))))
                           (declare (not safe))
                           (cons _new-xid21076_ __tmp23025))))
                    (declare (not safe))
                    (cons '%#set! __tmp23024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp23023
                                                      _stx21005_))))
                                               _hd2101921049_
                                               _hd2101621041_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2100821025_
                                                 _g2100921028_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2100821025_ _g2100921028_)))))
                              (let ()
                                (declare (not safe))
                                (_g2100821025_ _g2100921028_)))))
                      (let ()
                        (declare (not safe))
                        (_g2100821025_ _g2100921028_))))))
          (declare (not safe))
          (_g2100721078_ _stx21005_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx20951_ _ht20952_)
        (let* ((_g2095420967_
                (lambda (_g2095520964_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2095520964_))))
               (_g2095321002_
                (lambda (_g2095520970_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2095520970_))
                      (let ((_e2095920972_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2095520970_))))
                        (let ((_hd2095820975_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2095920972_)))
                              (_tl2095720977_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2095920972_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2095720977_))
                              (let ((_e2096220980_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2095720977_))))
                                (let ((_hd2096120983_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2096220980_)))
                                      (_tl2096020985_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2096220980_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2096020985_))
                                      ((lambda (_L20988_)
                                         (let ((_eid21000_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L20988_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht20952_
                                            _eid21000_
                                            1+
                                            '0)))
                                       _hd2096120983_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2095420967_ _g2095520970_)))))
                              (let ()
                                (declare (not safe))
                                (_g2095420967_ _g2095520970_)))))
                      (let ()
                        (declare (not safe))
                        (_g2095420967_ _g2095520970_))))))
          (declare (not safe))
          (_g2095321002_ _stx20951_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx20881_ _ht20882_)
        (let* ((_g2088420901_
                (lambda (_g2088520898_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2088520898_))))
               (_g2088320948_
                (lambda (_g2088520904_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2088520904_))
                      (let ((_e2089020906_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2088520904_))))
                        (let ((_hd2088920909_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2089020906_)))
                              (_tl2088820911_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2089020906_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2088820911_))
                              (let ((_e2089320914_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2088820911_))))
                                (let ((_hd2089220917_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2089320914_)))
                                      (_tl2089120919_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2089320914_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2089120919_))
                                      (let ((_e2089620922_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2089120919_))))
                                        (let ((_hd2089520925_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2089620922_)))
                                              (_tl2089420927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2089620922_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2089420927_))
                                              ((lambda (_L20930_ _L20931_)
                                                 (let ((_eid20946_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L20931_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht20882_
                                                      _eid20946_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L20930_
                                                      _ht20882_))))
                                               _hd2089520925_
                                               _hd2089220917_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2088420901_
                                                 _g2088520904_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2088420901_ _g2088520904_)))))
                              (let ()
                                (declare (not safe))
                                (_g2088420901_ _g2088520904_)))))
                      (let ()
                        (declare (not safe))
                        (_g2088420901_ _g2088520904_))))))
          (declare (not safe))
          (_g2088320948_ _stx20881_))))
    (define gxc#find-body%
      (lambda (_stx20794_ _arg20795_)
        (let* ((_g2079720816_
                (lambda (_g2079820813_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2079820813_))))
               (_g2079620878_
                (lambda (_g2079820819_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2079820819_))
                      (let ((_e2080220821_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2079820819_))))
                        (let ((_hd2080120824_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2080220821_)))
                              (_tl2080020826_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2080220821_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl2080020826_))
                              (let ((_g23026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl2080020826_
                                        '0))))
                                (begin
                                  (let ((_g23027_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g23026_)
                                               (##vector-length _g23026_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g23027_ 2)))
                                        (error "Context expects 2 values"
                                               _g23027_)))
                                  (let ((_target2080320829_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23026_ 0)))
                                        (_tl2080520831_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23026_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2080520831_))
                                        (letrec ((_loop2080620834_
                                                  (lambda (_hd2080420837_
                                                           _expr2081020839_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd2080420837_))
                                                        (let ((_e2080720842_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd2080420837_))))
                  (let ((_lp-hd2080820845_
                         (let () (declare (not safe)) (##car _e2080720842_)))
                        (_lp-tl2080920847_
                         (let () (declare (not safe)) (##cdr _e2080720842_))))
                    (let ((__tmp23031
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd2080820845_ _expr2081020839_))))
                      (declare (not safe))
                      (_loop2080620834_ _lp-tl2080920847_ __tmp23031))))
                (let ((_expr2081120850_ (reverse _expr2081020839_)))
                  ((lambda (_L20853_)
                     (let ((__tmp23030
                            (lambda (_g2086620868_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _g2086620868_ _arg20795_))))
                           (__tmp23028
                            (let ((__tmp23029
                                   (lambda (_g2087020873_ _g2087120875_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2087020873_ _g2087120875_)))))
                              (declare (not safe))
                              (foldr1 __tmp23029 '() _L20853_))))
                       (declare (not safe))
                       (ormap1 __tmp23030 __tmp23028)))
                   _expr2081120850_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2080620834_
                                             _target2080320829_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2079720816_ _g2079820819_))))))
                              (let ()
                                (declare (not safe))
                                (_g2079720816_ _g2079820819_)))))
                      (let ()
                        (declare (not safe))
                        (_g2079720816_ _g2079820819_))))))
          (declare (not safe))
          (_g2079620878_ _stx20794_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx20726_ _arg20727_)
        (let* ((_g2072920746_
                (lambda (_g2073020743_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2073020743_))))
               (_g2072820791_
                (lambda (_g2073020749_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2073020749_))
                      (let ((_e2073520751_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2073020749_))))
                        (let ((_hd2073420754_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2073520751_)))
                              (_tl2073320756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2073520751_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2073320756_))
                              (let ((_e2073820759_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2073320756_))))
                                (let ((_hd2073720762_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2073820759_)))
                                      (_tl2073620764_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2073820759_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2073620764_))
                                      (let ((_e2074120767_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2073620764_))))
                                        (let ((_hd2074020770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2074120767_)))
                                              (_tl2073920772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2074120767_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2073920772_))
                                              ((lambda (_L20775_ _L20776_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L20775_
                                                    _arg20727_)))
                                               _hd2074020770_
                                               _hd2073720762_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2072920746_
                                                 _g2073020749_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2072920746_ _g2073020749_)))))
                              (let ()
                                (declare (not safe))
                                (_g2072920746_ _g2073020749_)))))
                      (let ()
                        (declare (not safe))
                        (_g2072920746_ _g2073020749_))))))
          (declare (not safe))
          (_g2072820791_ _stx20726_))))
    (define gxc#find-lambda%
      (lambda (_stx20658_ _arg20659_)
        (let* ((_g2066120678_
                (lambda (_g2066220675_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2066220675_))))
               (_g2066020723_
                (lambda (_g2066220681_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2066220681_))
                      (let ((_e2066720683_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2066220681_))))
                        (let ((_hd2066620686_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2066720683_)))
                              (_tl2066520688_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2066720683_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2066520688_))
                              (let ((_e2067020691_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2066520688_))))
                                (let ((_hd2066920694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2067020691_)))
                                      (_tl2066820696_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2067020691_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2066820696_))
                                      (let ((_e2067320699_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2066820696_))))
                                        (let ((_hd2067220702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2067320699_)))
                                              (_tl2067120704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2067320699_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2067120704_))
                                              ((lambda (_L20707_ _L20708_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L20707_
                                                    _arg20659_)))
                                               _hd2067220702_
                                               _hd2066920694_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2066120678_
                                                 _g2066220681_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2066120678_ _g2066220681_)))))
                              (let ()
                                (declare (not safe))
                                (_g2066120678_ _g2066220681_)))))
                      (let ()
                        (declare (not safe))
                        (_g2066120678_ _g2066220681_))))))
          (declare (not safe))
          (_g2066020723_ _stx20658_))))
    (define gxc#find-case-lambda%
      (lambda (_stx20540_ _arg20541_)
        (let* ((_g2054320571_
                (lambda (_g2054420568_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2054420568_))))
               (_g2054220655_
                (lambda (_g2054420574_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2054420574_))
                      (let ((_e2054920576_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2054420574_))))
                        (let ((_hd2054820579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2054920576_)))
                              (_tl2054720581_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2054920576_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl2054720581_))
                              (let ((_g23032_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl2054720581_
                                        '0))))
                                (begin
                                  (let ((_g23033_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g23032_)
                                               (##vector-length _g23032_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g23033_ 2)))
                                        (error "Context expects 2 values"
                                               _g23033_)))
                                  (let ((_target2055020584_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23032_ 0)))
                                        (_tl2055220586_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g23032_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2055220586_))
                                        (letrec ((_loop2055320589_
                                                  (lambda (_hd2055120592_
                                                           _body2055720594_
                                                           _hd2055820596_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd2055120592_))
                                                        (let ((_e2055420599_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd2055120592_))))
                  (let ((_lp-hd2055520602_
                         (let () (declare (not safe)) (##car _e2055420599_)))
                        (_lp-tl2055620604_
                         (let () (declare (not safe)) (##cdr _e2055420599_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd2055520602_))
                        (let ((_e2056320607_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd2055520602_))))
                          (let ((_hd2056220610_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2056320607_)))
                                (_tl2056120612_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2056320607_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl2056120612_))
                                (let ((_e2056620615_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl2056120612_))))
                                  (let ((_hd2056520618_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2056620615_)))
                                        (_tl2056420620_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2056620615_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2056420620_))
                                        (let ((__tmp23038
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd2056520618_
                                                       _body2055720594_)))
                                              (__tmp23037
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd2056220610_
                                                       _hd2055820596_))))
                                          (declare (not safe))
                                          (_loop2055320589_
                                           _lp-tl2055620604_
                                           __tmp23038
                                           __tmp23037))
                                        (let ()
                                          (declare (not safe))
                                          (_g2054320571_ _g2054420574_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2054320571_ _g2054420574_)))))
                        (let ()
                          (declare (not safe))
                          (_g2054320571_ _g2054420574_)))))
                (let ((_body2055920623_ (reverse _body2055720594_))
                      (_hd2056020625_ (reverse _hd2055820596_)))
                  ((lambda (_L20628_ _L20629_)
                     (let ((__tmp23036
                            (lambda (_g2064320645_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _g2064320645_ _arg20541_))))
                           (__tmp23034
                            (let ((__tmp23035
                                   (lambda (_g2064720650_ _g2064820652_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2064720650_ _g2064820652_)))))
                              (declare (not safe))
                              (foldr1 __tmp23035 '() _L20628_))))
                       (declare (not safe))
                       (ormap1 __tmp23036 __tmp23034)))
                   _body2055920623_
                   _hd2056020625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2055320589_
                                             _target2055020584_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2054320571_ _g2054420574_))))))
                              (let ()
                                (declare (not safe))
                                (_g2054320571_ _g2054420574_)))))
                      (let ()
                        (declare (not safe))
                        (_g2054320571_ _g2054420574_))))))
          (declare (not safe))
          (_g2054220655_ _stx20540_))))
    (define gxc#find-let-values%
      (lambda (_stx20390_ _arg20391_)
        (let* ((_g2039320428_
                (lambda (_g2039420425_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2039420425_))))
               (_g2039220537_
                (lambda (_g2039420431_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2039420431_))
                      (let ((_e2040020433_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2039420431_))))
                        (let ((_hd2039920436_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2040020433_)))
                              (_tl2039820438_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2040020433_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2039820438_))
                              (let ((_e2040320441_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2039820438_))))
                                (let ((_hd2040220444_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2040320441_)))
                                      (_tl2040120446_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2040320441_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd2040220444_))
                                      (let ((_g23039_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd2040220444_
                                                '0))))
                                        (begin
                                          (let ((_g23040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23039_)
                                                       (##vector-length
                                                        _g23039_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23040_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23040_)))
                                          (let ((_target2040420449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23039_ 0)))
                                                (_tl2040620451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23039_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2040620451_))
                                                (letrec ((_loop2040720454_
                                                          (lambda (_hd2040520457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2041120459_
                           _bind2041220461_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd2040520457_))
                        (let ((_e2040820464_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd2040520457_))))
                          (let ((_lp-hd2040920467_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2040820464_)))
                                (_lp-tl2041020469_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2040820464_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd2040920467_))
                                (let ((_e2041720472_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd2040920467_))))
                                  (let ((_hd2041620475_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2041720472_)))
                                        (_tl2041520477_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2041720472_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl2041520477_))
                                        (let ((_e2042020480_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl2041520477_))))
                                          (let ((_hd2041920483_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2042020480_)))
                                                (_tl2041820485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2042020480_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2041820485_))
                                                (let ((__tmp23045
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2041920483_
                                                               _expr2041120459_)))
                                                      (__tmp23044
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2041620475_
                                                               _bind2041220461_))))
                                                  (declare (not safe))
                                                  (_loop2040720454_
                                                   _lp-tl2041020469_
                                                   __tmp23045
                                                   __tmp23044))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2039320428_
                                                   _g2039420431_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2039320428_ _g2039420431_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2039320428_ _g2039420431_)))))
                        (let ((_expr2041320488_ (reverse _expr2041120459_))
                              (_bind2041420490_ (reverse _bind2041220461_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2040120446_))
                              (let ((_e2042320493_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2040120446_))))
                                (let ((_hd2042220496_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2042320493_)))
                                      (_tl2042120498_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2042320493_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2042120498_))
                                      ((lambda (_L20501_ _L20502_ _L20503_)
                                         (let ((_$e20534_
                                                (let ((__tmp23043
                                                       (lambda (_g2052220524_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _g2052220524_
                                                            _arg20391_))))
                                                      (__tmp23041
                                                       (let ((__tmp23042
                                                              (lambda (_g2052620529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2052720531_)
                        (let ()
                          (declare (not safe))
                          (cons _g2052620529_ _g2052720531_)))))
                 (declare (not safe))
                 (foldr1 __tmp23042 '() _L20502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp23043
                                                          __tmp23041))))
                                           (if _$e20534_
                                               _$e20534_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e
                                                  _L20501_
                                                  _arg20391_)))))
                                       _hd2042220496_
                                       _expr2041320488_
                                       _bind2041420490_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2039320428_ _g2039420431_)))))
                              (let ()
                                (declare (not safe))
                                (_g2039320428_ _g2039420431_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop2040720454_
                                                     _target2040420449_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2039320428_
                                                   _g2039420431_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2039320428_ _g2039420431_)))))
                              (let ()
                                (declare (not safe))
                                (_g2039320428_ _g2039420431_)))))
                      (let ()
                        (declare (not safe))
                        (_g2039320428_ _g2039420431_))))))
          (declare (not safe))
          (_g2039220537_ _stx20390_))))
    (define gxc#find-setq%
      (lambda (_stx20322_ _arg20323_)
        (let* ((_g2032520342_
                (lambda (_g2032620339_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2032620339_))))
               (_g2032420387_
                (lambda (_g2032620345_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2032620345_))
                      (let ((_e2033120347_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2032620345_))))
                        (let ((_hd2033020350_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2033120347_)))
                              (_tl2032920352_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2033120347_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2032920352_))
                              (let ((_e2033420355_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2032920352_))))
                                (let ((_hd2033320358_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2033420355_)))
                                      (_tl2033220360_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2033420355_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2033220360_))
                                      (let ((_e2033720363_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2033220360_))))
                                        (let ((_hd2033620366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2033720363_)))
                                              (_tl2033520368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2033720363_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2033520368_))
                                              ((lambda (_L20371_ _L20372_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L20371_
                                                    _arg20323_)))
                                               _hd2033620366_
                                               _hd2033320358_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2032520342_
                                                 _g2032620345_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2032520342_ _g2032620345_)))))
                              (let ()
                                (declare (not safe))
                                (_g2032520342_ _g2032620345_)))))
                      (let ()
                        (declare (not safe))
                        (_g2032520342_ _g2032620345_))))))
          (declare (not safe))
          (_g2032420387_ _stx20322_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx20266_ _ids20267_)
        (let* ((_g2026920282_
                (lambda (_g2027020279_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2027020279_))))
               (_g2026820319_
                (lambda (_g2027020285_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2027020285_))
                      (let ((_e2027420287_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2027020285_))))
                        (let ((_hd2027320290_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2027420287_)))
                              (_tl2027220292_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2027420287_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2027220292_))
                              (let ((_e2027720295_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2027220292_))))
                                (let ((_hd2027620298_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2027720295_)))
                                      (_tl2027520300_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2027720295_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2027520300_))
                                      ((lambda (_L20303_)
                                         (let ((__tmp23046
                                                (lambda (_g2031420316_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L20303_
                                                     _g2031420316_)))))
                                           (declare (not safe))
                                           (find __tmp23046 _ids20267_)))
                                       _hd2027620298_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2026920282_ _g2027020285_)))))
                              (let ()
                                (declare (not safe))
                                (_g2026920282_ _g2027020285_)))))
                      (let ()
                        (declare (not safe))
                        (_g2026920282_ _g2027020285_))))))
          (declare (not safe))
          (_g2026820319_ _stx20266_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx20190_ _ids20191_)
        (let* ((_g2019320210_
                (lambda (_g2019420207_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2019420207_))))
               (_g2019220263_
                (lambda (_g2019420213_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2019420213_))
                      (let ((_e2019920215_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2019420213_))))
                        (let ((_hd2019820218_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2019920215_)))
                              (_tl2019720220_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2019920215_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2019720220_))
                              (let ((_e2020220223_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2019720220_))))
                                (let ((_hd2020120226_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2020220223_)))
                                      (_tl2020020228_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2020220223_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2020020228_))
                                      (let ((_e2020520231_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2020020228_))))
                                        (let ((_hd2020420234_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2020520231_)))
                                              (_tl2020320236_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2020520231_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2020320236_))
                                              ((lambda (_L20239_ _L20240_)
                                                 (let ((_$e20260_
                                                        (let ((__tmp23047
                                                               (lambda (_g2025520257_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L20240_ _g2025520257_)))))
                  (declare (not safe))
                  (find __tmp23047 _ids20191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e20260_
                                                       _$e20260_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e
                                                          _L20239_
                                                          _ids20191_)))))
                                               _hd2020420234_
                                               _hd2020120226_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2019320210_
                                                 _g2019420213_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2019320210_ _g2019420213_)))))
                              (let ()
                                (declare (not safe))
                                (_g2019320210_ _g2019420213_)))))
                      (let ()
                        (declare (not safe))
                        (_g2019320210_ _g2019420213_))))))
          (declare (not safe))
          (_g2019220263_ _stx20190_))))))
