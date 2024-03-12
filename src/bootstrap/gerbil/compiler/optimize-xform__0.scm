(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710238839)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp118024 (list gxc#::void::t))
            (__tmp118022
             (let ((__tmp118023
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118023 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp118024
         '()
         __tmp118022
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args117763_
        (apply make-instance gxc#::collect-mutators::t _$args117763_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp118025
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call-unchecked
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#set!
                  gxc#collect-mutators-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-mutators::t)))))
        (declare (not safe))
        (make-promise __tmp118025)))
    (define gxc#apply-collect-mutators
      (lambda (_stx117755_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self117758_
                (let ((__obj118010
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj118010))
               (__tmp118026
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self117758_ _stx117755_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118026
           gxc#current-compile-method
           _self117758_))))
    (define gxc#::collect-methods::t
      (let ((__tmp118029 (list gxc#::void::t))
            (__tmp118027
             (let ((__tmp118028
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118028 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp118029
         '()
         __tmp118027
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args117752_
        (apply make-instance gxc#::collect-methods::t _$args117752_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp118030
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call-unchecked
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-methods::t)))))
        (declare (not safe))
        (make-promise __tmp118030)))
    (define gxc#apply-collect-methods
      (lambda (_stx117744_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self117747_
                (let ((__obj118012
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj118012))
               (__tmp118031
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self117747_ _stx117744_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118031
           gxc#current-compile-method
           _self117747_))))
    (define gxc#::expression-subst::t
      (let ((__tmp118034 (list gxc#::basic-xform-expression::t))
            (__tmp118032
             (let ((__tmp118033
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118033 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp118034
         '(id new-id)
         __tmp118032
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args117741_
        (apply make-instance gxc#::expression-subst::t _$args117741_)))
    (define gxc#::expression-subst-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#&::expression-subst-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#&::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-bind-methods!
      (let ((__tmp118035
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#ref
                  gxc#expression-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#set!
                  gxc#expression-subst-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::expression-subst::t)))))
        (declare (not safe))
        (make-promise __tmp118035)))
    (define gxc#apply-expression-subst__%
      (lambda (_g118036_ _id117707117711_ _new-id117708117713_ _stx117715_)
        (let* ((_id117718_
                (if (let ()
                      (declare (not safe))
                      (eq? _id117707117711_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id117707117711_))
               (_new-id117720_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id117708117713_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id117708117713_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self117722_
                  (let ((__obj118014
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118014
                       _id117718_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118014
                       _new-id117720_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj118014))
                 (__tmp118037
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117722_ _stx117715_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118037
             gxc#current-compile-method
             _self117722_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys117706117729_ . _args117731_)
        (apply gxc#apply-expression-subst__%
               _keys117706117729_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117706117729_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117706117729_ 'new-id: absent-value))
               _args117731_)))
    (define gxc#apply-expression-subst
      (lambda _args117709117737_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args117709117737_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp118040 (list gxc#::basic-xform-expression::t))
            (__tmp118038
             (let ((__tmp118039
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118039 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp118040
         '(subst)
         __tmp118038
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args117702_
        (apply make-instance gxc#::expression-subst*::t _$args117702_)))
    (define gxc#::expression-subst*-subst
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#&::expression-subst*-subst
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#&::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-bind-methods!
      (let ((__tmp118041
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#ref
                  gxc#expression-subst*-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#set!
                  gxc#expression-subst*-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::expression-subst*::t)))))
        (declare (not safe))
        (make-promise __tmp118041)))
    (define gxc#apply-expression-subst*__%
      (lambda (_g118042_ _subst117673117676_ _stx117678_)
        (let ((_subst117681_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst117673117676_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst117673117676_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self117683_
                  (let ((__obj118016
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118016
                       _subst117681_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj118016))
                 (__tmp118043
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117683_ _stx117678_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118043
             gxc#current-compile-method
             _self117683_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys117672117690_ . _args117692_)
        (apply gxc#apply-expression-subst*__%
               _keys117672117690_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117672117690_ 'subst: absent-value))
               _args117692_)))
    (define gxc#apply-expression-subst*
      (lambda _args117674117698_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args117674117698_)))
    (define gxc#::find-expression::t
      (let ((__tmp118044 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp118044
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args117668_
        (apply make-instance gxc#::find-expression::t _$args117668_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp118045
             (lambda ()
               (force gxc#::false-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#let-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec*-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call-unchecked
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#if
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-set!
                  gxc#find-body%)))))
        (declare (not safe))
        (make-promise __tmp118045)))
    (define gxc#::find-var-refs::t
      (let ((__tmp118048 (list gxc#::find-expression::t))
            (__tmp118046
             (let ((__tmp118047
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118047 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp118048
         '(ids)
         __tmp118046
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args117664_
        (apply make-instance gxc#::find-var-refs::t _$args117664_)))
    (define gxc#::find-var-refs-ids
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-bind-methods!
      (let ((__tmp118049
             (lambda ()
               (force gxc#::find-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#ref
                  gxc#find-var-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#set!
                  gxc#find-var-refs-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::find-var-refs::t)))))
        (declare (not safe))
        (make-promise __tmp118049)))
    (define gxc#apply-find-var-refs__%
      (lambda (_g118050_ _ids117635117638_ _stx117640_)
        (let ((_ids117643_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids117635117638_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids117635117638_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self117645_
                  (let ((__obj118019
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118019
                       _ids117643_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj118019))
                 (__tmp118051
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117645_ _stx117640_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118051
             gxc#current-compile-method
             _self117645_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys117634117652_ . _args117654_)
        (apply gxc#apply-find-var-refs__%
               _keys117634117652_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117634117652_ 'ids: absent-value))
               _args117654_)))
    (define gxc#apply-find-var-refs
      (lambda _args117636117660_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args117636117660_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp118054 (list gxc#::collect-expression-refs::t))
            (__tmp118052
             (let ((__tmp118053
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118053 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp118054
         '()
         __tmp118052
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args117630_
        (apply make-instance gxc#::collect-runtime-refs::t _$args117630_)))
    (define gxc#::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::collect-runtime-refs::t 'table)))
    (define gxc#::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::collect-runtime-refs::t 'table)))
    (define gxc#&::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#&::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#::collect-runtime-refs-bind-methods!
      (let ((__tmp118055
             (lambda ()
               (force gxc#::collect-expression-refs-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#ref
                  gxc#collect-runtime-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#set!
                  gxc#collect-runtime-refs-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-runtime-refs::t)))))
        (declare (not safe))
        (make-promise __tmp118055)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_g118056_ _table117601117604_ _stx117606_)
        (let ((_table117609_
               (if (let ()
                     (declare (not safe))
                     (eq? _table117601117604_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table117601117604_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self117611_
                  (let ((__obj118021
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118021
                       _table117609_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj118021))
                 (__tmp118057
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self117611_ _stx117606_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118057
             gxc#current-compile-method
             _self117611_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys117600117618_ . _args117620_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys117600117618_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys117600117618_ 'table: absent-value))
               _args117620_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args117602117626_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args117602117626_)))
    (define gxc#collect-mutators-setq%
      (lambda (_self117529_ _stx117530_)
        (let* ((_g117532117549_
                (lambda (_g117533117546_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117533117546_))))
               (_g117531117596_
                (lambda (_g117533117552_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117533117552_))
                      (let ((_e117538117554_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117533117552_))))
                        (let ((_hd117537117557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117538117554_)))
                              (_tl117536117559_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117538117554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117536117559_))
                              (let ((_e117541117562_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117536117559_))))
                                (let ((_hd117540117565_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117541117562_)))
                                      (_tl117539117567_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117541117562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117539117567_))
                                      (let ((_e117544117570_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117539117567_))))
                                        (let ((_hd117543117573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117544117570_)))
                                              (_tl117542117575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117544117570_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117542117575_))
                                              ((lambda (_L117578_ _L117579_)
                                                 (let ((_sym117594_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L117579_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym117594_))
                                                   (let ((__tmp118058
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118058
                                                      _sym117594_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self117529_
                                                      _L117578_))))
                                               _hd117543117573_
                                               _hd117540117565_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117532117549_
                                                 _g117533117552_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117532117549_ _g117533117552_)))))
                              (let ()
                                (declare (not safe))
                                (_g117532117549_ _g117533117552_)))))
                      (let ()
                        (declare (not safe))
                        (_g117532117549_ _g117533117552_))))))
          (declare (not safe))
          (_g117531117596_ _stx117530_))))
    (define gxc#collect-methods-call%
      (lambda (_self117082_ _stx117083_)
        (let* ((___stx117766117767_ _stx117083_)
               (_g117087117189_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx117766117767_)))))
          (let ((___kont117768117769_
                 (lambda (_L117479_ _L117480_ _L117481_ _L117482_ _L117483_)
                   (let ((__tmp118059
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L117480_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118059))))
                (___kont117770117771_
                 (lambda (_L117305_ _L117306_ _L117307_ _L117308_)
                   (let ((__tmp118060
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L117305_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118060))))
                (___kont117772117773_ (lambda () '#!void)))
            (let ((___match117901117902_
                   (lambda (_e117096117351_
                            _hd117095117354_
                            _tl117094117356_
                            _e117099117359_
                            _hd117098117362_
                            _tl117097117364_
                            _e117102117367_
                            _hd117101117370_
                            _tl117100117372_
                            _e117105117375_
                            _hd117104117378_
                            _tl117103117380_
                            _e117108117383_
                            _hd117107117386_
                            _tl117106117388_
                            _e117111117391_
                            _hd117110117394_
                            _tl117109117396_
                            _e117114117399_
                            _hd117113117402_
                            _tl117112117404_
                            _e117117117407_
                            _hd117116117410_
                            _tl117115117412_
                            _e117120117415_
                            _hd117119117418_
                            _tl117118117420_
                            _e117123117423_
                            _hd117122117426_
                            _tl117121117428_
                            _e117126117431_
                            _hd117125117434_
                            _tl117124117436_
                            _e117129117439_
                            _hd117128117442_
                            _tl117127117444_
                            _e117132117447_
                            _hd117131117450_
                            _tl117130117452_
                            _e117135117455_
                            _hd117134117458_
                            _tl117133117460_
                            _e117138117463_
                            _hd117137117466_
                            _tl117136117468_
                            _e117141117471_
                            _hd117140117474_
                            _tl117139117476_)
                     (let ((_L117479_ _hd117140117474_)
                           (_L117480_ _hd117131117450_)
                           (_L117481_ _hd117122117426_)
                           (_L117482_ _hd117113117402_)
                           (_L117483_ _hd117104117378_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L117483_
                              'bind-method!))
                           (___kont117768117769_
                            _L117479_
                            _L117480_
                            _L117481_
                            _L117482_
                            _L117483_)
                           (___kont117772117773_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx117766117767_))
                  (let ((_e117096117351_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx117766117767_))))
                    (let ((_tl117094117356_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117096117351_)))
                          (_hd117095117354_
                           (let ()
                             (declare (not safe))
                             (##car _e117096117351_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117094117356_))
                          (let ((_e117099117359_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117094117356_))))
                            (let ((_tl117097117364_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117099117359_)))
                                  (_hd117098117362_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117099117359_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117098117362_))
                                  (let ((_e117102117367_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117098117362_))))
                                    (let ((_tl117100117372_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117102117367_)))
                                          (_hd117101117370_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117102117367_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd117101117370_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd117101117370_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117100117372_))
                                                  (let ((_e117105117375_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117100117372_))))
                                                    (let ((_tl117103117380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117105117375_)))
                                                          (_hd117104117378_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117105117375_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117103117380_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117097117364_))
                      (let ((_e117108117383_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117097117364_))))
                        (let ((_tl117106117388_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117108117383_)))
                              (_hd117107117386_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117108117383_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd117107117386_))
                              (let ((_e117111117391_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd117107117386_))))
                                (let ((_tl117109117396_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117111117391_)))
                                      (_hd117110117394_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117111117391_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd117110117394_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd117110117394_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl117109117396_))
                                              (let ((_e117114117399_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl117109117396_))))
                                                (let ((_tl117112117404_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e117114117399_)))
                                                      (_hd117113117402_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e117114117399_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl117112117404_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl117106117388_))
                                                          (let ((_e117117117407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl117106117388_))))
                    (let ((_tl117115117412_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117117117407_)))
                          (_hd117116117410_
                           (let ()
                             (declare (not safe))
                             (##car _e117117117407_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd117116117410_))
                          (let ((_e117120117415_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd117116117410_))))
                            (let ((_tl117118117420_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117120117415_)))
                                  (_hd117119117418_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117120117415_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd117119117418_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd117119117418_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl117118117420_))
                                          (let ((_e117123117423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl117118117420_))))
                                            (let ((_tl117121117428_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117123117423_)))
                                                  (_hd117122117426_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117123117423_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl117121117428_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl117115117412_))
                                                      (let ((_e117126117431_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl117115117412_))))
                (let ((_tl117124117436_
                       (let () (declare (not safe)) (##cdr _e117126117431_)))
                      (_hd117125117434_
                       (let () (declare (not safe)) (##car _e117126117431_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd117125117434_))
                      (let ((_e117129117439_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd117125117434_))))
                        (let ((_tl117127117444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117129117439_)))
                              (_hd117128117442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117129117439_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd117128117442_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd117128117442_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117127117444_))
                                      (let ((_e117132117447_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117127117444_))))
                                        (let ((_tl117130117452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117132117447_)))
                                              (_hd117131117450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117132117447_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117130117452_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117124117436_))
                                                  (let ((_e117135117455_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117124117436_))))
                                                    (let ((_tl117133117460_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117135117455_)))
                                                          (_hd117134117458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117135117455_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd117134117458_))
                                                          (let ((_e117138117463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd117134117458_))))
                    (let ((_tl117136117468_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117138117463_)))
                          (_hd117137117466_
                           (let ()
                             (declare (not safe))
                             (##car _e117138117463_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd117137117466_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd117137117466_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl117136117468_))
                                  (let ((_e117141117471_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl117136117468_))))
                                    (let ((_tl117139117476_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117141117471_)))
                                          (_hd117140117474_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117141117471_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl117139117476_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117133117460_))
                                              (___match117901117902_
                                               _e117096117351_
                                               _hd117095117354_
                                               _tl117094117356_
                                               _e117099117359_
                                               _hd117098117362_
                                               _tl117097117364_
                                               _e117102117367_
                                               _hd117101117370_
                                               _tl117100117372_
                                               _e117105117375_
                                               _hd117104117378_
                                               _tl117103117380_
                                               _e117108117383_
                                               _hd117107117386_
                                               _tl117106117388_
                                               _e117111117391_
                                               _hd117110117394_
                                               _tl117109117396_
                                               _e117114117399_
                                               _hd117113117402_
                                               _tl117112117404_
                                               _e117117117407_
                                               _hd117116117410_
                                               _tl117115117412_
                                               _e117120117415_
                                               _hd117119117418_
                                               _tl117118117420_
                                               _e117123117423_
                                               _hd117122117426_
                                               _tl117121117428_
                                               _e117126117431_
                                               _hd117125117434_
                                               _tl117124117436_
                                               _e117129117439_
                                               _hd117128117442_
                                               _tl117127117444_
                                               _e117132117447_
                                               _hd117131117450_
                                               _tl117130117452_
                                               _e117135117455_
                                               _hd117134117458_
                                               _tl117133117460_
                                               _e117138117463_
                                               _hd117137117466_
                                               _tl117136117468_
                                               _e117141117471_
                                               _hd117140117474_
                                               _tl117139117476_)
                                              (___kont117772117773_))
                                          (___kont117772117773_))))
                                  (___kont117772117773_))
                              (___kont117772117773_))
                          (___kont117772117773_))))
                  (___kont117772117773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl117124117436_))
                                                      (if (let ((__tmp118061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118061 'bind-method!))
                  (let ((_L117305_ _hd117131117450_)
                        (_L117306_ _hd117122117426_)
                        (_L117307_ _hd117113117402_)
                        (_L117308_ _hd117104117378_))
                    (___kont117770117771_
                     _L117305_
                     _L117306_
                     _L117307_
                     _L117308_))
                  (___kont117772117773_))
              (___kont117772117773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117772117773_))))
                                      (___kont117772117773_))
                                  (___kont117772117773_))
                              (___kont117772117773_))))
                      (___kont117772117773_))))
              (___kont117772117773_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117772117773_))))
                                          (___kont117772117773_))
                                      (___kont117772117773_))
                                  (___kont117772117773_))))
                          (___kont117772117773_))))
                  (___kont117772117773_))
              (___kont117772117773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117772117773_))
                                          (___kont117772117773_))
                                      (___kont117772117773_))))
                              (___kont117772117773_))))
                      (___kont117772117773_))
                  (___kont117772117773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117772117773_))
                                              (___kont117772117773_))
                                          (___kont117772117773_))))
                                  (___kont117772117773_))))
                          (___kont117772117773_))))
                  (___kont117772117773_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self117030_ _stx117031_)
        (let* ((_g117033117046_
                (lambda (_g117034117043_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117034117043_))))
               (_g117032117079_
                (lambda (_g117034117049_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117034117049_))
                      (let ((_e117038117051_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117034117049_))))
                        (let ((_hd117037117054_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117038117051_)))
                              (_tl117036117056_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117038117051_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117036117056_))
                              (let ((_e117041117059_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117036117056_))))
                                (let ((_hd117040117062_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117041117059_)))
                                      (_tl117039117064_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117041117059_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117039117064_))
                                      ((lambda (_L117067_)
                                         (if (let ((__tmp118065
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self117030_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L117067_
                                                __tmp118065))
                                             (let ((__tmp118062
                                                    (let ((__tmp118063
                                                           (let ((__tmp118064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self117030_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp118064 '()))))
              (declare (not safe))
              (cons '%#ref __tmp118063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118062
                                                _stx117031_))
                                             _stx117031_))
                                       _hd117040117062_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117033117046_ _g117034117049_)))))
                              (let ()
                                (declare (not safe))
                                (_g117033117046_ _g117034117049_)))))
                      (let ()
                        (declare (not safe))
                        (_g117033117046_ _g117034117049_))))))
          (declare (not safe))
          (_g117032117079_ _stx117031_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self116971_ _stx116972_)
        (let* ((_g116974116987_
                (lambda (_g116975116984_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116975116984_))))
               (_g116973117027_
                (lambda (_g116975116990_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116975116990_))
                      (let ((_e116979116992_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116975116990_))))
                        (let ((_hd116978116995_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116979116992_)))
                              (_tl116977116997_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116979116992_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116977116997_))
                              (let ((_e116982117000_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116977116997_))))
                                (let ((_hd116981117003_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116982117000_)))
                                      (_tl116980117005_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116982117000_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116980117005_))
                                      ((lambda (_L117008_)
                                         (let ((_$e117022_
                                                (let ((__tmp118067
                                                       (lambda (_sub117020_)
                                                         (let ((__tmp118068
                                                                (car _sub117020_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L117008_
                                                            __tmp118068))))
                                                      (__tmp118066
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self116971_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp118067
                                                        __tmp118066))))
                                           (if _$e117022_
                                               ((lambda (_sub117025_)
                                                  (let ((__tmp118069
                                                         (let ((__tmp118070
                                                                (let ((__tmp118071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub117025_)))
                          (declare (not safe))
                          (cons __tmp118071 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118069
                                                     _stx116972_)))
                                                _$e117022_)
                                               _stx116972_)))
                                       _hd116981117003_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116974116987_ _g116975116990_)))))
                              (let ()
                                (declare (not safe))
                                (_g116974116987_ _g116975116990_)))))
                      (let ()
                        (declare (not safe))
                        (_g116974116987_ _g116975116990_))))))
          (declare (not safe))
          (_g116973117027_ _stx116972_))))
    (define gxc#expression-subst-setq%
      (lambda (_self116900_ _stx116901_)
        (let* ((_g116903116920_
                (lambda (_g116904116917_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116904116917_))))
               (_g116902116968_
                (lambda (_g116904116923_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116904116923_))
                      (let ((_e116909116925_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116904116923_))))
                        (let ((_hd116908116928_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116909116925_)))
                              (_tl116907116930_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116909116925_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116907116930_))
                              (let ((_e116912116933_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116907116930_))))
                                (let ((_hd116911116936_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116912116933_)))
                                      (_tl116910116938_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116912116933_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116910116938_))
                                      (let ((_e116915116941_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116910116938_))))
                                        (let ((_hd116914116944_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116915116941_)))
                                              (_tl116913116946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116915116941_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116913116946_))
                                              ((lambda (_L116949_ _L116950_)
                                                 (let ((_new-expr116965_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self116900_
                                                           _L116949_)))
                                                       (_new-xid116966_
                                                        (if (let ((__tmp118072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self116900_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L116950_ __tmp118072))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self116900_ 'new-id))
                    _L116950_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118073
                                                          (let ((__tmp118074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118075
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116965_ '()))))
                           (declare (not safe))
                           (cons _new-xid116966_ __tmp118075))))
                    (declare (not safe))
                    (cons '%#set! __tmp118074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118073
                                                      _stx116901_))))
                                               _hd116914116944_
                                               _hd116911116936_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116903116920_
                                                 _g116904116923_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116903116920_ _g116904116923_)))))
                              (let ()
                                (declare (not safe))
                                (_g116903116920_ _g116904116923_)))))
                      (let ()
                        (declare (not safe))
                        (_g116903116920_ _g116904116923_))))))
          (declare (not safe))
          (_g116902116968_ _stx116901_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self116824_ _stx116825_)
        (let* ((_g116827116844_
                (lambda (_g116828116841_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116828116841_))))
               (_g116826116897_
                (lambda (_g116828116847_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116828116847_))
                      (let ((_e116833116849_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116828116847_))))
                        (let ((_hd116832116852_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116833116849_)))
                              (_tl116831116854_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116833116849_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116831116854_))
                              (let ((_e116836116857_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116831116854_))))
                                (let ((_hd116835116860_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116836116857_)))
                                      (_tl116834116862_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116836116857_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116834116862_))
                                      (let ((_e116839116865_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116834116862_))))
                                        (let ((_hd116838116868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116839116865_)))
                                              (_tl116837116870_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116839116865_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116837116870_))
                                              ((lambda (_L116873_ _L116874_)
                                                 (let ((_new-expr116894_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self116824_
                                                           _L116873_)))
                                                       (_new-xid116895_
                                                        (let ((_$e116891_
                                                               (let ((__tmp118077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub116889_)
                                (let ((__tmp118078 (car _sub116889_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L116874_
                                   __tmp118078))))
                             (__tmp118076
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self116824_ 'subst))))
                         (declare (not safe))
                         (find __tmp118077 __tmp118076))))
                  (if _$e116891_ (cdr _$e116891_) _L116874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118079
                                                          (let ((__tmp118080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118081
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116894_ '()))))
                           (declare (not safe))
                           (cons _new-xid116895_ __tmp118081))))
                    (declare (not safe))
                    (cons '%#set! __tmp118080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118079
                                                      _stx116825_))))
                                               _hd116838116868_
                                               _hd116835116860_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116827116844_
                                                 _g116828116847_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116827116844_ _g116828116847_)))))
                              (let ()
                                (declare (not safe))
                                (_g116827116844_ _g116828116847_)))))
                      (let ()
                        (declare (not safe))
                        (_g116827116844_ _g116828116847_))))))
          (declare (not safe))
          (_g116826116897_ _stx116825_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self116770_ _stx116771_)
        (let* ((_g116773116786_
                (lambda (_g116774116783_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116774116783_))))
               (_g116772116821_
                (lambda (_g116774116789_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116774116789_))
                      (let ((_e116778116791_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116774116789_))))
                        (let ((_hd116777116794_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116778116791_)))
                              (_tl116776116796_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116778116791_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116776116796_))
                              (let ((_e116781116799_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116776116796_))))
                                (let ((_hd116780116802_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116781116799_)))
                                      (_tl116779116804_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116781116799_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116779116804_))
                                      ((lambda (_L116807_)
                                         (let* ((_eid116819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L116807_)))
                                                (__tmp118082
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self116770_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp118082
                                            _eid116819_
                                            1+
                                            '0)))
                                       _hd116780116802_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116773116786_ _g116774116789_)))))
                              (let ()
                                (declare (not safe))
                                (_g116773116786_ _g116774116789_)))))
                      (let ()
                        (declare (not safe))
                        (_g116773116786_ _g116774116789_))))))
          (declare (not safe))
          (_g116772116821_ _stx116771_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self116700_ _stx116701_)
        (let* ((_g116703116720_
                (lambda (_g116704116717_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116704116717_))))
               (_g116702116767_
                (lambda (_g116704116723_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116704116723_))
                      (let ((_e116709116725_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116704116723_))))
                        (let ((_hd116708116728_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116709116725_)))
                              (_tl116707116730_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116709116725_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116707116730_))
                              (let ((_e116712116733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116707116730_))))
                                (let ((_hd116711116736_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116712116733_)))
                                      (_tl116710116738_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116712116733_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116710116738_))
                                      (let ((_e116715116741_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116710116738_))))
                                        (let ((_hd116714116744_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116715116741_)))
                                              (_tl116713116746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116715116741_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116713116746_))
                                              ((lambda (_L116749_ _L116750_)
                                                 (let ((_eid116765_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116750_))))
                                                   (let ((__tmp118083
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self116700_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp118083
                                                      _eid116765_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self116700_
                                                      _L116749_))))
                                               _hd116714116744_
                                               _hd116711116736_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116703116720_
                                                 _g116704116723_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116703116720_ _g116704116723_)))))
                              (let ()
                                (declare (not safe))
                                (_g116703116720_ _g116704116723_)))))
                      (let ()
                        (declare (not safe))
                        (_g116703116720_ _g116704116723_))))))
          (declare (not safe))
          (_g116702116767_ _stx116701_))))
    (define gxc#find-body%
      (lambda (_self116613_ _stx116614_)
        (let* ((_g116616116635_
                (lambda (_g116617116632_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116617116632_))))
               (_g116615116697_
                (lambda (_g116617116638_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116617116638_))
                      (let ((_e116621116640_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116617116638_))))
                        (let ((_hd116620116643_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116621116640_)))
                              (_tl116619116645_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116621116640_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl116619116645_))
                              (let ((_g118084_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl116619116645_
                                        '0))))
                                (begin
                                  (let ((_g118085_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118084_)
                                               (##vector-length _g118084_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118085_ 2)))
                                        (error "Context expects 2 values"
                                               _g118085_)))
                                  (let ((_target116622116648_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118084_ 0)))
                                        (_tl116624116650_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118084_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116624116650_))
                                        (letrec ((_loop116625116653_
                                                  (lambda (_hd116623116656_
                                                           _expr116629116658_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd116623116656_))
                                                        (let ((_e116626116661_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd116623116656_))))
                  (let ((_lp-hd116627116664_
                         (let () (declare (not safe)) (##car _e116626116661_)))
                        (_lp-tl116628116666_
                         (let ()
                           (declare (not safe))
                           (##cdr _e116626116661_))))
                    (let ((__tmp118089
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd116627116664_ _expr116629116658_))))
                      (declare (not safe))
                      (_loop116625116653_ _lp-tl116628116666_ __tmp118089))))
                (let ((_expr116630116669_ (reverse _expr116629116658_)))
                  ((lambda (_L116672_)
                     (let ((__tmp118088
                            (lambda (_g116685116687_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self116613_
                                 _g116685116687_))))
                           (__tmp118086
                            (let ((__tmp118087
                                   (lambda (_g116689116692_ _g116690116694_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g116689116692_
                                             _g116690116694_)))))
                              (declare (not safe))
                              (foldr1 __tmp118087 '() _L116672_))))
                       (declare (not safe))
                       (ormap1 __tmp118088 __tmp118086)))
                   _expr116630116669_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop116625116653_
                                             _target116622116648_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g116616116635_
                                           _g116617116638_))))))
                              (let ()
                                (declare (not safe))
                                (_g116616116635_ _g116617116638_)))))
                      (let ()
                        (declare (not safe))
                        (_g116616116635_ _g116617116638_))))))
          (declare (not safe))
          (_g116615116697_ _stx116614_))))
    (define gxc#find-let-values%
      (lambda (_self116463_ _stx116464_)
        (let* ((_g116466116501_
                (lambda (_g116467116498_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116467116498_))))
               (_g116465116610_
                (lambda (_g116467116504_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116467116504_))
                      (let ((_e116473116506_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116467116504_))))
                        (let ((_hd116472116509_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116473116506_)))
                              (_tl116471116511_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116473116506_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116471116511_))
                              (let ((_e116476116514_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116471116511_))))
                                (let ((_hd116475116517_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116476116514_)))
                                      (_tl116474116519_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116476116514_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd116475116517_))
                                      (let ((_g118090_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd116475116517_
                                                '0))))
                                        (begin
                                          (let ((_g118091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118090_)
                                                       (##vector-length
                                                        _g118090_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118091_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118091_)))
                                          (let ((_target116477116522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118090_ 0)))
                                                (_tl116479116524_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118090_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116479116524_))
                                                (letrec ((_loop116480116527_
                                                          (lambda (_hd116478116530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr116484116532_
                           _bind116485116534_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd116478116530_))
                        (let ((_e116481116537_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd116478116530_))))
                          (let ((_lp-hd116482116540_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116481116537_)))
                                (_lp-tl116483116542_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116481116537_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd116482116540_))
                                (let ((_e116490116545_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd116482116540_))))
                                  (let ((_hd116489116548_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e116490116545_)))
                                        (_tl116488116550_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e116490116545_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl116488116550_))
                                        (let ((_e116493116553_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl116488116550_))))
                                          (let ((_hd116492116556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e116493116553_)))
                                                (_tl116491116558_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e116493116553_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116491116558_))
                                                (let ((__tmp118096
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116492116556_
                                                               _expr116484116532_)))
                                                      (__tmp118095
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116489116548_
                                                               _bind116485116534_))))
                                                  (declare (not safe))
                                                  (_loop116480116527_
                                                   _lp-tl116483116542_
                                                   __tmp118096
                                                   __tmp118095))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116466116501_
                                                   _g116467116504_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g116466116501_ _g116467116504_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116466116501_ _g116467116504_)))))
                        (let ((_expr116486116561_ (reverse _expr116484116532_))
                              (_bind116487116563_
                               (reverse _bind116485116534_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116474116519_))
                              (let ((_e116496116566_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116474116519_))))
                                (let ((_hd116495116569_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116496116566_)))
                                      (_tl116494116571_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116496116566_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116494116571_))
                                      ((lambda (_L116574_ _L116575_ _L116576_)
                                         (let ((_$e116607_
                                                (let ((__tmp118094
                                                       (lambda (_g116595116597_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self116463_
                                                            _g116595116597_))))
                                                      (__tmp118092
                                                       (let ((__tmp118093
                                                              (lambda (_g116599116602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g116600116604_)
                        (let ()
                          (declare (not safe))
                          (cons _g116599116602_ _g116600116604_)))))
                 (declare (not safe))
                 (foldr1 __tmp118093 '() _L116575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118094
                                                          __tmp118092))))
                                           (if _$e116607_
                                               _$e116607_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self116463_
                                                  _L116574_)))))
                                       _hd116495116569_
                                       _expr116486116561_
                                       _bind116487116563_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116466116501_ _g116467116504_)))))
                              (let ()
                                (declare (not safe))
                                (_g116466116501_ _g116467116504_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop116480116527_
                                                     _target116477116522_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116466116501_
                                                   _g116467116504_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116466116501_ _g116467116504_)))))
                              (let ()
                                (declare (not safe))
                                (_g116466116501_ _g116467116504_)))))
                      (let ()
                        (declare (not safe))
                        (_g116466116501_ _g116467116504_))))))
          (declare (not safe))
          (_g116465116610_ _stx116464_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self116407_ _stx116408_)
        (let* ((_g116410116423_
                (lambda (_g116411116420_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116411116420_))))
               (_g116409116460_
                (lambda (_g116411116426_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116411116426_))
                      (let ((_e116415116428_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116411116426_))))
                        (let ((_hd116414116431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116415116428_)))
                              (_tl116413116433_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116415116428_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116413116433_))
                              (let ((_e116418116436_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116413116433_))))
                                (let ((_hd116417116439_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116418116436_)))
                                      (_tl116416116441_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116418116436_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116416116441_))
                                      ((lambda (_L116444_)
                                         (let ((__tmp118098
                                                (lambda (_g116455116457_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L116444_
                                                     _g116455116457_))))
                                               (__tmp118097
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self116407_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp118098 __tmp118097)))
                                       _hd116417116439_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116410116423_ _g116411116426_)))))
                              (let ()
                                (declare (not safe))
                                (_g116410116423_ _g116411116426_)))))
                      (let ()
                        (declare (not safe))
                        (_g116410116423_ _g116411116426_))))))
          (declare (not safe))
          (_g116409116460_ _stx116408_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self116332_ _stx116333_)
        (let* ((_g116335116352_
                (lambda (_g116336116349_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116336116349_))))
               (_g116334116404_
                (lambda (_g116336116355_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116336116355_))
                      (let ((_e116341116357_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116336116355_))))
                        (let ((_hd116340116360_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116341116357_)))
                              (_tl116339116362_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116341116357_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116339116362_))
                              (let ((_e116344116365_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116339116362_))))
                                (let ((_hd116343116368_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116344116365_)))
                                      (_tl116342116370_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116344116365_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116342116370_))
                                      (let ((_e116347116373_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116342116370_))))
                                        (let ((_hd116346116376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116347116373_)))
                                              (_tl116345116378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116347116373_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116345116378_))
                                              ((lambda (_L116381_ _L116382_)
                                                 (let ((_$e116401_
                                                        (let ((__tmp118100
                                                               (lambda (_g116396116398_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L116382_ _g116396116398_))))
                      (__tmp118099
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self116332_ 'ids))))
                  (declare (not safe))
                  (find __tmp118100 __tmp118099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e116401_
                                                       _$e116401_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self116332_
                                                          _L116381_)))))
                                               _hd116346116376_
                                               _hd116343116368_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116335116352_
                                                 _g116336116355_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116335116352_ _g116336116355_)))))
                              (let ()
                                (declare (not safe))
                                (_g116335116352_ _g116336116355_)))))
                      (let ()
                        (declare (not safe))
                        (_g116335116352_ _g116336116355_))))))
          (declare (not safe))
          (_g116334116404_ _stx116333_))))))
