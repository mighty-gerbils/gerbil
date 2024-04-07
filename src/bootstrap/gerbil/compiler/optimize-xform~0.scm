(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712526091)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151042 (list gxc#::void::t))
            (__tmp151041 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151042
         '()
         __tmp151041
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150782%_
        (apply make-instance gxc#::collect-mutators::t _%$args150782%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151043
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
                 (__seal-class! gxc#::collect-mutators::t)))))
        (declare (not safe))
        (__make-promise __tmp151043)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150774%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150777%_
                (let ((__obj151029
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151029))
               (__tmp151044
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150777%_ _%stx150774%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151044
           gxc#current-compile-method
           _%self150777%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp151046 (list gxc#::void::t))
            (__tmp151045 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp151046
         '()
         __tmp151045
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150771%_
        (apply make-instance gxc#::collect-methods::t _%$args150771%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp151047
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
                 (__seal-class! gxc#::collect-methods::t)))))
        (declare (not safe))
        (__make-promise __tmp151047)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150763%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150766%_
                (let ((__obj151031
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj151031))
               (__tmp151048
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150766%_ _%stx150763%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151048
           gxc#current-compile-method
           _%self150766%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151050 (list gxc#::basic-xform-expression::t))
            (__tmp151049 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151050
         '(id new-id)
         __tmp151049
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150760%_
        (apply make-instance gxc#::expression-subst::t _%$args150760%_)))
    (define gxc#::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#&::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#&::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#::expression-subst-bind-methods!
      (let ((__tmp151051
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
                 (__seal-class! gxc#::expression-subst::t)))))
        (declare (not safe))
        (__make-promise __tmp151051)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords150730%_
               _%id150726150731%_
               _%new-id150727150733%_
               _%stx150735%_)
        (let* ((_%id150738%_
                (if (eq? _%id150726150731%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150726150731%_))
               (_%new-id150740%_
                (if (eq? _%new-id150727150733%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150727150733%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150742%_
                  (let ((__obj151033
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151033
                       _%id150738%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151033
                       _%new-id150740%_
                       '2
                       '#f
                       '#f))
                    __obj151033))
                 (__tmp151052
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150742%_ _%stx150735%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151052
             gxc#current-compile-method
             _%self150742%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150749%_ . _%args150750%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150749%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150749%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150749%_
                  'new-id:
                  absent-value))
               _%args150750%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150728150756%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150728150756%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151054 (list gxc#::basic-xform-expression::t))
            (__tmp151053 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151054
         '(subst)
         __tmp151053
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150722%_
        (apply make-instance gxc#::expression-subst*::t _%$args150722%_)))
    (define gxc#::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#&::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#&::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#::expression-subst*-bind-methods!
      (let ((__tmp151055
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
                 (__seal-class! gxc#::expression-subst*::t)))))
        (declare (not safe))
        (__make-promise __tmp151055)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords150696%_ _%subst150693150697%_ _%stx150699%_)
        (let ((_%subst150702%_
               (if (eq? _%subst150693150697%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150693150697%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150704%_
                  (let ((__obj151035
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151035
                       _%subst150702%_
                       '1
                       '#f
                       '#f))
                    __obj151035))
                 (__tmp151056
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150704%_ _%stx150699%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151056
             gxc#current-compile-method
             _%self150704%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150711%_ . _%args150712%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150711%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150711%_
                  'subst:
                  absent-value))
               _%args150712%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150694150718%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150694150718%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151057 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151057
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150689%_
        (apply make-instance gxc#::find-expression::t _%$args150689%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151058
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
        (__make-promise __tmp151058)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151060 (list gxc#::find-expression::t))
            (__tmp151059 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151060
         '(ids)
         __tmp151059
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150685%_
        (apply make-instance gxc#::find-var-refs::t _%$args150685%_)))
    (define gxc#::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-bind-methods!
      (let ((__tmp151061
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
                 (__seal-class! gxc#::find-var-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp151061)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords150659%_ _%ids150656150660%_ _%stx150662%_)
        (let ((_%ids150665%_
               (if (eq? _%ids150656150660%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150656150660%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150667%_
                  (let ((__obj151038
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151038
                       _%ids150665%_
                       '1
                       '#f
                       '#f))
                    __obj151038))
                 (__tmp151062
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150667%_ _%stx150662%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151062
             gxc#current-compile-method
             _%self150667%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150674%_ . _%args150675%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150674%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150674%_ 'ids: absent-value))
               _%args150675%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150657150681%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150657150681%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151064 (list gxc#::collect-expression-refs::t))
            (__tmp151063 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151064
         '()
         __tmp151063
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150652%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150652%_)))
    (define gxc#::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-runtime-refs::t 'table)))
    (define gxc#::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-runtime-refs::t 'table)))
    (define gxc#&::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#&::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#::collect-runtime-refs-bind-methods!
      (let ((__tmp151065
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
                 (__seal-class! gxc#::collect-runtime-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp151065)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords150626%_ _%table150623150627%_ _%stx150629%_)
        (let ((_%table150632%_
               (if (eq? _%table150623150627%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150623150627%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150634%_
                  (let ((__obj151040
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151040
                       _%table150632%_
                       '1
                       '#f
                       '#f))
                    __obj151040))
                 (__tmp151066
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150634%_ _%stx150629%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151066
             gxc#current-compile-method
             _%self150634%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150641%_ . _%args150642%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150641%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150641%_
                  'table:
                  absent-value))
               _%args150642%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150624150648%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150624150648%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self150552%_ _%stx150553%_)
        (let* ((_%g150555150572%_
                (lambda (_%g150556150569%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150556150569%_))))
               (_%g150554150619%_
                (lambda (_%g150556150575%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150556150575%_))
                      (let ((_%e150561150577%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150556150575%_))))
                        (let ((_%hd150560150580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150561150577%_)))
                              (_%tl150559150582%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150561150577%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150559150582%_))
                              (let ((_%e150564150585%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150559150582%_))))
                                (let ((_%hd150563150588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150564150585%_)))
                                      (_%tl150562150590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150564150585%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150562150590%_))
                                      (let ((_%e150567150593%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150562150590%_))))
                                        (let ((_%hd150566150596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150567150593%_)))
                                              (_%tl150565150598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150567150593%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150565150598%_))
                                              ((lambda (_%L150601%_
                                                        _%L150602%_)
                                                 (let ((_%sym150617%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150602%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150617%_))
                                                   (let ((__tmp151067
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151067
                                                      _%sym150617%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150552%_
                                                      _%L150601%_))))
                                               _%hd150566150596%_
                                               _%hd150563150588%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150555150572%_
                                                 _%g150556150575%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150555150572%_
                                         _%g150556150575%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150555150572%_ _%g150556150575%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150555150572%_ _%g150556150575%_))))))
          (declare (not safe))
          (_%g150554150619%_ _%stx150553%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self150105%_ _%stx150106%_)
        (let* ((_%__stx150785150786%_ _%stx150106%_)
               (_%g150110150212%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150785150786%_)))))
          (let ((_%__kont150787150788%_
                 (lambda (_%L150502%_
                          _%L150503%_
                          _%L150504%_
                          _%L150505%_
                          _%L150506%_)
                   (let ((__tmp151068
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150503%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151068))))
                (_%__kont150789150790%_
                 (lambda (_%L150328%_ _%L150329%_ _%L150330%_ _%L150331%_)
                   (let ((__tmp151069
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150328%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151069))))
                (_%__kont150791150792%_ (lambda () '#!void)))
            (let ((_%__match150920150921%_
                   (lambda (_%e150119150374%_
                            _%hd150118150377%_
                            _%tl150117150379%_
                            _%e150122150382%_
                            _%hd150121150385%_
                            _%tl150120150387%_
                            _%e150125150390%_
                            _%hd150124150393%_
                            _%tl150123150395%_
                            _%e150128150398%_
                            _%hd150127150401%_
                            _%tl150126150403%_
                            _%e150131150406%_
                            _%hd150130150409%_
                            _%tl150129150411%_
                            _%e150134150414%_
                            _%hd150133150417%_
                            _%tl150132150419%_
                            _%e150137150422%_
                            _%hd150136150425%_
                            _%tl150135150427%_
                            _%e150140150430%_
                            _%hd150139150433%_
                            _%tl150138150435%_
                            _%e150143150438%_
                            _%hd150142150441%_
                            _%tl150141150443%_
                            _%e150146150446%_
                            _%hd150145150449%_
                            _%tl150144150451%_
                            _%e150149150454%_
                            _%hd150148150457%_
                            _%tl150147150459%_
                            _%e150152150462%_
                            _%hd150151150465%_
                            _%tl150150150467%_
                            _%e150155150470%_
                            _%hd150154150473%_
                            _%tl150153150475%_
                            _%e150158150478%_
                            _%hd150157150481%_
                            _%tl150156150483%_
                            _%e150161150486%_
                            _%hd150160150489%_
                            _%tl150159150491%_
                            _%e150164150494%_
                            _%hd150163150497%_
                            _%tl150162150499%_)
                     (let ((_%L150502%_ _%hd150163150497%_)
                           (_%L150503%_ _%hd150154150473%_)
                           (_%L150504%_ _%hd150145150449%_)
                           (_%L150505%_ _%hd150136150425%_)
                           (_%L150506%_ _%hd150127150401%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L150506%_
                              'bind-method!))
                           (_%__kont150787150788%_
                            _%L150502%_
                            _%L150503%_
                            _%L150504%_
                            _%L150505%_
                            _%L150506%_)
                           (_%__kont150791150792%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150785150786%_))
                  (let ((_%e150119150374%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150785150786%_))))
                    (let ((_%tl150117150379%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150119150374%_)))
                          (_%hd150118150377%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150119150374%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150117150379%_))
                          (let ((_%e150122150382%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150117150379%_))))
                            (let ((_%tl150120150387%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150122150382%_)))
                                  (_%hd150121150385%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150122150382%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150121150385%_))
                                  (let ((_%e150125150390%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150121150385%_))))
                                    (let ((_%tl150123150395%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150125150390%_)))
                                          (_%hd150124150393%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150125150390%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150124150393%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150124150393%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150123150395%_))
                                                  (let ((_%e150128150398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150123150395%_))))
                                                    (let ((_%tl150126150403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150128150398%_)))
                                                          (_%hd150127150401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150128150398%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150126150403%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl150120150387%_))
                      (let ((_%e150131150406%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl150120150387%_))))
                        (let ((_%tl150129150411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150131150406%_)))
                              (_%hd150130150409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150131150406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd150130150409%_))
                              (let ((_%e150134150414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd150130150409%_))))
                                (let ((_%tl150132150419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150134150414%_)))
                                      (_%hd150133150417%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150134150414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd150133150417%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd150133150417%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150132150419%_))
                                              (let ((_%e150137150422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150132150419%_))))
                                                (let ((_%tl150135150427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150137150422%_)))
                                                      (_%hd150136150425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150137150422%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150135150427%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl150129150411%_))
                                                          (let ((_%e150140150430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl150129150411%_))))
                    (let ((_%tl150138150435%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150140150430%_)))
                          (_%hd150139150433%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150140150430%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd150139150433%_))
                          (let ((_%e150143150438%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd150139150433%_))))
                            (let ((_%tl150141150443%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150143150438%_)))
                                  (_%hd150142150441%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150143150438%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd150142150441%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd150142150441%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl150141150443%_))
                                          (let ((_%e150146150446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl150141150443%_))))
                                            (let ((_%tl150144150451%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e150146150446%_)))
                                                  (_%hd150145150449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e150146150446%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl150144150451%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl150138150435%_))
                                                      (let ((_%e150149150454%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl150138150435%_))))
                (let ((_%tl150147150459%_
                       (let () (declare (not safe)) (##cdr _%e150149150454%_)))
                      (_%hd150148150457%_
                       (let ()
                         (declare (not safe))
                         (##car _%e150149150454%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd150148150457%_))
                      (let ((_%e150152150462%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd150148150457%_))))
                        (let ((_%tl150150150467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150152150462%_)))
                              (_%hd150151150465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150152150462%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd150151150465%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd150151150465%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150150150467%_))
                                      (let ((_%e150155150470%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150150150467%_))))
                                        (let ((_%tl150153150475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150155150470%_)))
                                              (_%hd150154150473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150155150470%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150153150475%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150147150459%_))
                                                  (let ((_%e150158150478%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150147150459%_))))
                                                    (let ((_%tl150156150483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150158150478%_)))
                                                          (_%hd150157150481%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150158150478%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd150157150481%_))
                                                          (let ((_%e150161150486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd150157150481%_))))
                    (let ((_%tl150159150491%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150161150486%_)))
                          (_%hd150160150489%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150161150486%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd150160150489%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd150160150489%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl150159150491%_))
                                  (let ((_%e150164150494%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl150159150491%_))))
                                    (let ((_%tl150162150499%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150164150494%_)))
                                          (_%hd150163150497%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150164150494%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl150162150499%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150156150483%_))
                                              (_%__match150920150921%_
                                               _%e150119150374%_
                                               _%hd150118150377%_
                                               _%tl150117150379%_
                                               _%e150122150382%_
                                               _%hd150121150385%_
                                               _%tl150120150387%_
                                               _%e150125150390%_
                                               _%hd150124150393%_
                                               _%tl150123150395%_
                                               _%e150128150398%_
                                               _%hd150127150401%_
                                               _%tl150126150403%_
                                               _%e150131150406%_
                                               _%hd150130150409%_
                                               _%tl150129150411%_
                                               _%e150134150414%_
                                               _%hd150133150417%_
                                               _%tl150132150419%_
                                               _%e150137150422%_
                                               _%hd150136150425%_
                                               _%tl150135150427%_
                                               _%e150140150430%_
                                               _%hd150139150433%_
                                               _%tl150138150435%_
                                               _%e150143150438%_
                                               _%hd150142150441%_
                                               _%tl150141150443%_
                                               _%e150146150446%_
                                               _%hd150145150449%_
                                               _%tl150144150451%_
                                               _%e150149150454%_
                                               _%hd150148150457%_
                                               _%tl150147150459%_
                                               _%e150152150462%_
                                               _%hd150151150465%_
                                               _%tl150150150467%_
                                               _%e150155150470%_
                                               _%hd150154150473%_
                                               _%tl150153150475%_
                                               _%e150158150478%_
                                               _%hd150157150481%_
                                               _%tl150156150483%_
                                               _%e150161150486%_
                                               _%hd150160150489%_
                                               _%tl150159150491%_
                                               _%e150164150494%_
                                               _%hd150163150497%_
                                               _%tl150162150499%_)
                                              (_%__kont150791150792%_))
                                          (_%__kont150791150792%_))))
                                  (_%__kont150791150792%_))
                              (_%__kont150791150792%_))
                          (_%__kont150791150792%_))))
                  (_%__kont150791150792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150147150459%_))
                                                      (if (let ((__tmp151070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp151070 'bind-method!))
                  (let ((_%L150328%_ _%hd150154150473%_)
                        (_%L150329%_ _%hd150145150449%_)
                        (_%L150330%_ _%hd150136150425%_)
                        (_%L150331%_ _%hd150127150401%_))
                    (_%__kont150789150790%_
                     _%L150328%_
                     _%L150329%_
                     _%L150330%_
                     _%L150331%_))
                  (_%__kont150791150792%_))
              (_%__kont150791150792%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150791150792%_))))
                                      (_%__kont150791150792%_))
                                  (_%__kont150791150792%_))
                              (_%__kont150791150792%_))))
                      (_%__kont150791150792%_))))
              (_%__kont150791150792%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150791150792%_))))
                                          (_%__kont150791150792%_))
                                      (_%__kont150791150792%_))
                                  (_%__kont150791150792%_))))
                          (_%__kont150791150792%_))))
                  (_%__kont150791150792%_))
              (_%__kont150791150792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150791150792%_))
                                          (_%__kont150791150792%_))
                                      (_%__kont150791150792%_))))
                              (_%__kont150791150792%_))))
                      (_%__kont150791150792%_))
                  (_%__kont150791150792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150791150792%_))
                                              (_%__kont150791150792%_))
                                          (_%__kont150791150792%_))))
                                  (_%__kont150791150792%_))))
                          (_%__kont150791150792%_))))
                  (_%__kont150791150792%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self150053%_ _%stx150054%_)
        (let* ((_%g150056150069%_
                (lambda (_%g150057150066%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150057150066%_))))
               (_%g150055150102%_
                (lambda (_%g150057150072%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150057150072%_))
                      (let ((_%e150061150074%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150057150072%_))))
                        (let ((_%hd150060150077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150061150074%_)))
                              (_%tl150059150079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150061150074%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150059150079%_))
                              (let ((_%e150064150082%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150059150079%_))))
                                (let ((_%hd150063150085%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150064150082%_)))
                                      (_%tl150062150087%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150064150082%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150062150087%_))
                                      ((lambda (_%L150090%_)
                                         (if (let ((__tmp151071
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self150053%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150090%_
                                                __tmp151071))
                                             (let ((__tmp151072
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self150053%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151072
                                                _%stx150054%_))
                                             _%stx150054%_))
                                       _%hd150063150085%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g150056150069%_
                                         _%g150057150072%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150056150069%_ _%g150057150072%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150056150069%_ _%g150057150072%_))))))
          (declare (not safe))
          (_%g150055150102%_ _%stx150054%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149993%_ _%stx149994%_)
        (let* ((_%g149996150009%_
                (lambda (_%g149997150006%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149997150006%_))))
               (_%g149995150050%_
                (lambda (_%g149997150012%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149997150012%_))
                      (let ((_%e150001150014%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149997150012%_))))
                        (let ((_%hd150000150017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150001150014%_)))
                              (_%tl149999150019%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150001150014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149999150019%_))
                              (let ((_%e150004150022%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149999150019%_))))
                                (let ((_%hd150003150025%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150004150022%_)))
                                      (_%tl150002150027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150004150022%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150002150027%_))
                                      ((lambda (_%L150030%_)
                                         (let ((_%$e150044%_
                                                (let ((__tmp151074
                                                       (lambda (_%sub150042%_)
                                                         (let ((__tmp151075
                                                                (car _%sub150042%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L150030%_
                                                            __tmp151075))))
                                                      (__tmp151073
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149993%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151074
                                                          __tmp151073))))
                                           (if _%$e150044%_
                                               ((lambda (_%sub150047%_)
                                                  (let ((__tmp151076
                                                         (cons '%#ref
                                                               (cons (cdr _%sub150047%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151076
                                                     _%stx149994%_)))
                                                _%$e150044%_)
                                               (let () _%stx149994%_))))
                                       _%hd150003150025%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149996150009%_
                                         _%g149997150012%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149996150009%_ _%g149997150012%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149996150009%_ _%g149997150012%_))))))
          (declare (not safe))
          (_%g149995150050%_ _%stx149994%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149922%_ _%stx149923%_)
        (let* ((_%g149925149942%_
                (lambda (_%g149926149939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149926149939%_))))
               (_%g149924149990%_
                (lambda (_%g149926149945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149926149945%_))
                      (let ((_%e149931149947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149926149945%_))))
                        (let ((_%hd149930149950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149931149947%_)))
                              (_%tl149929149952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149931149947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149929149952%_))
                              (let ((_%e149934149955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149929149952%_))))
                                (let ((_%hd149933149958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149934149955%_)))
                                      (_%tl149932149960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149934149955%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149932149960%_))
                                      (let ((_%e149937149963%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149932149960%_))))
                                        (let ((_%hd149936149966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149937149963%_)))
                                              (_%tl149935149968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149937149963%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149935149968%_))
                                              ((lambda (_%L149971%_
                                                        _%L149972%_)
                                                 (let ((_%new-expr149987%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149922%_
                                                           _%L149971%_)))
                                                       (_%new-xid149988%_
                                                        (if (let ((__tmp151077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149922%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149972%_ __tmp151077))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149922%_ 'new-id))
                    _%L149972%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151078
                                                          (cons '%#set!
                                                                (cons _%new-xid149988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149987%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151078
                                                      _%stx149923%_))))
                                               _%hd149936149966%_
                                               _%hd149933149958%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149925149942%_
                                                 _%g149926149945%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149925149942%_
                                         _%g149926149945%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149925149942%_ _%g149926149945%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149925149942%_ _%g149926149945%_))))))
          (declare (not safe))
          (_%g149924149990%_ _%stx149923%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149845%_ _%stx149846%_)
        (let* ((_%g149848149865%_
                (lambda (_%g149849149862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149849149862%_))))
               (_%g149847149919%_
                (lambda (_%g149849149868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149849149868%_))
                      (let ((_%e149854149870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149849149868%_))))
                        (let ((_%hd149853149873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149854149870%_)))
                              (_%tl149852149875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149854149870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149852149875%_))
                              (let ((_%e149857149878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149852149875%_))))
                                (let ((_%hd149856149881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149857149878%_)))
                                      (_%tl149855149883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149857149878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149855149883%_))
                                      (let ((_%e149860149886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149855149883%_))))
                                        (let ((_%hd149859149889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149860149886%_)))
                                              (_%tl149858149891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149860149886%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149858149891%_))
                                              ((lambda (_%L149894%_
                                                        _%L149895%_)
                                                 (let ((_%new-expr149916%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149845%_
                                                           _%L149894%_)))
                                                       (_%new-xid149917%_
                                                        (let ((_%$e149912%_
                                                               (let ((__tmp151080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149910%_)
                                (let ((__tmp151081 (car _%sub149910%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149895%_
                                   __tmp151081))))
                             (__tmp151079
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149845%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151080 __tmp151079))))
                  (if _%$e149912%_ (cdr _%$e149912%_) (let () _%L149895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151082
                                                          (cons '%#set!
                                                                (cons _%new-xid149917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149916%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151082
                                                      _%stx149846%_))))
                                               _%hd149859149889%_
                                               _%hd149856149881%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149848149865%_
                                                 _%g149849149868%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149848149865%_
                                         _%g149849149868%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149848149865%_ _%g149849149868%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149848149865%_ _%g149849149868%_))))))
          (declare (not safe))
          (_%g149847149919%_ _%stx149846%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149791%_ _%stx149792%_)
        (let* ((_%g149794149807%_
                (lambda (_%g149795149804%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149795149804%_))))
               (_%g149793149842%_
                (lambda (_%g149795149810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149795149810%_))
                      (let ((_%e149799149812%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149795149810%_))))
                        (let ((_%hd149798149815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149799149812%_)))
                              (_%tl149797149817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149799149812%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149797149817%_))
                              (let ((_%e149802149820%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149797149817%_))))
                                (let ((_%hd149801149823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149802149820%_)))
                                      (_%tl149800149825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149802149820%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149800149825%_))
                                      ((lambda (_%L149828%_)
                                         (let* ((_%eid149840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149828%_)))
                                                (__tmp151083
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149791%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151083
                                            _%eid149840%_
                                            1+
                                            '0)))
                                       _%hd149801149823%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149794149807%_
                                         _%g149795149810%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149794149807%_ _%g149795149810%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149794149807%_ _%g149795149810%_))))))
          (declare (not safe))
          (_%g149793149842%_ _%stx149792%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149721%_ _%stx149722%_)
        (let* ((_%g149724149741%_
                (lambda (_%g149725149738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149725149738%_))))
               (_%g149723149788%_
                (lambda (_%g149725149744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149725149744%_))
                      (let ((_%e149730149746%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149725149744%_))))
                        (let ((_%hd149729149749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149730149746%_)))
                              (_%tl149728149751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149730149746%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149728149751%_))
                              (let ((_%e149733149754%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149728149751%_))))
                                (let ((_%hd149732149757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149733149754%_)))
                                      (_%tl149731149759%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149733149754%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149731149759%_))
                                      (let ((_%e149736149762%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149731149759%_))))
                                        (let ((_%hd149735149765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149736149762%_)))
                                              (_%tl149734149767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149736149762%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149734149767%_))
                                              ((lambda (_%L149770%_
                                                        _%L149771%_)
                                                 (let ((_%eid149786%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149771%_))))
                                                   (let ((__tmp151084
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149721%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151084
                                                      _%eid149786%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149721%_
                                                      _%L149770%_))))
                                               _%hd149735149765%_
                                               _%hd149732149757%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149724149741%_
                                                 _%g149725149744%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149724149741%_
                                         _%g149725149744%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149724149741%_ _%g149725149744%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149724149741%_ _%g149725149744%_))))))
          (declare (not safe))
          (_%g149723149788%_ _%stx149722%_))))
    (define gxc#find-body%
      (lambda (_%self149634%_ _%stx149635%_)
        (let* ((_%g149637149656%_
                (lambda (_%g149638149653%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149638149653%_))))
               (_%g149636149718%_
                (lambda (_%g149638149659%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149638149659%_))
                      (let ((_%e149642149661%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149638149659%_))))
                        (let ((_%hd149641149664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149642149661%_)))
                              (_%tl149640149666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149642149661%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149640149666%_))
                              (let ((_g151085_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149640149666%_
                                        '0))))
                                (begin
                                  (let ((_g151086_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151085_)
                                               (##vector-length _g151085_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151086_ 2)))
                                        (error "Context expects 2 values"
                                               _g151086_)))
                                  (let ((_%target149643149669%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151085_ 0)))
                                        (_%tl149645149671%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151085_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149645149671%_))
                                        (letrec ((_%loop149646149674%_
                                                  (lambda (_%hd149644149677%_
                                                           _%expr149650149679%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149644149677%_))
                                                        (let ((_%e149647149682%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149644149677%_))))
                  (let ((_%lp-hd149648149685%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149647149682%_)))
                        (_%lp-tl149649149687%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149647149682%_))))
                    (let ((__tmp151087
                           (cons _%lp-hd149648149685%_ _%expr149650149679%_)))
                      (declare (not safe))
                      (_%loop149646149674%_
                       _%lp-tl149649149687%_
                       __tmp151087))))
                (let ((_%expr149651149690%_ (reverse _%expr149650149679%_)))
                  ((lambda (_%L149693%_)
                     (let ((__tmp151090
                            (lambda (_%g149706149708%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149634%_
                                 _%g149706149708%_))))
                           (__tmp151088
                            (let ((__tmp151089
                                   (lambda (_%g149710149713%_
                                            _%g149711149715%_)
                                     (cons _%g149710149713%_
                                           _%g149711149715%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151089 '() _%L149693%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151090 __tmp151088)))
                   _%expr149651149690%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop149646149674%_
                                             _%target149643149669%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149637149656%_
                                           _%g149638149659%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149637149656%_ _%g149638149659%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149637149656%_ _%g149638149659%_))))))
          (declare (not safe))
          (_%g149636149718%_ _%stx149635%_))))
    (define gxc#find-let-values%
      (lambda (_%self149484%_ _%stx149485%_)
        (let* ((_%g149487149522%_
                (lambda (_%g149488149519%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149488149519%_))))
               (_%g149486149631%_
                (lambda (_%g149488149525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149488149525%_))
                      (let ((_%e149494149527%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149488149525%_))))
                        (let ((_%hd149493149530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149494149527%_)))
                              (_%tl149492149532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149494149527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149492149532%_))
                              (let ((_%e149497149535%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149492149532%_))))
                                (let ((_%hd149496149538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149497149535%_)))
                                      (_%tl149495149540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149497149535%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149496149538%_))
                                      (let ((_g151091_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd149496149538%_
                                                '0))))
                                        (begin
                                          (let ((_g151092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151091_)
                                                       (##vector-length
                                                        _g151091_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151092_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151092_)))
                                          (let ((_%target149498149543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151091_ 0)))
                                                (_%tl149500149545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151091_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149500149545%_))
                                                (letrec ((_%loop149501149548%_
                                                          (lambda (_%hd149499149551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149505149553%_
                           _%bind149506149555%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149499149551%_))
                        (let ((_%e149502149558%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149499149551%_))))
                          (let ((_%lp-hd149503149561%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149502149558%_)))
                                (_%lp-tl149504149563%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149502149558%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149503149561%_))
                                (let ((_%e149511149566%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149503149561%_))))
                                  (let ((_%hd149510149569%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149511149566%_)))
                                        (_%tl149509149571%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149511149566%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149509149571%_))
                                        (let ((_%e149514149574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149509149571%_))))
                                          (let ((_%hd149513149577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149514149574%_)))
                                                (_%tl149512149579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149514149574%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149512149579%_))
                                                (let ((__tmp151094
                                                       (cons _%hd149513149577%_
                                                             _%expr149505149553%_))
                                                      (__tmp151093
                                                       (cons _%hd149510149569%_
                                                             _%bind149506149555%_)))
                                                  (declare (not safe))
                                                  (_%loop149501149548%_
                                                   _%lp-tl149504149563%_
                                                   __tmp151094
                                                   __tmp151093))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149487149522%_
                                                   _%g149488149525%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149487149522%_
                                           _%g149488149525%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g149487149522%_ _%g149488149525%_)))))
                        (let ((_%expr149507149582%_
                               (reverse _%expr149505149553%_))
                              (_%bind149508149584%_
                               (reverse _%bind149506149555%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149495149540%_))
                              (let ((_%e149517149587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149495149540%_))))
                                (let ((_%hd149516149590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149517149587%_)))
                                      (_%tl149515149592%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149517149587%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149515149592%_))
                                      ((lambda (_%L149595%_
                                                _%L149596%_
                                                _%L149597%_)
                                         (let ((_%$e149628%_
                                                (let ((__tmp151097
                                                       (lambda (_%g149616149618%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self149484%_
                                                            _%g149616149618%_))))
                                                      (__tmp151095
                                                       (let ((__tmp151096
                                                              (lambda (_%g149620149623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149621149625%_)
                        (cons _%g149620149623%_ _%g149621149625%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151096 '() _%L149596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151097
                                                   __tmp151095))))
                                           (if _%$e149628%_
                                               _%$e149628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self149484%_
                                                  _%L149595%_)))))
                                       _%hd149516149590%_
                                       _%expr149507149582%_
                                       _%bind149508149584%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149487149522%_
                                         _%g149488149525%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149487149522%_ _%g149488149525%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop149501149548%_
                                                     _%target149498149543%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149487149522%_
                                                   _%g149488149525%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149487149522%_
                                         _%g149488149525%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149487149522%_ _%g149488149525%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149487149522%_ _%g149488149525%_))))))
          (declare (not safe))
          (_%g149486149631%_ _%stx149485%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self149428%_ _%stx149429%_)
        (let* ((_%g149431149444%_
                (lambda (_%g149432149441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149432149441%_))))
               (_%g149430149481%_
                (lambda (_%g149432149447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149432149447%_))
                      (let ((_%e149436149449%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149432149447%_))))
                        (let ((_%hd149435149452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149436149449%_)))
                              (_%tl149434149454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149436149449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149434149454%_))
                              (let ((_%e149439149457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149434149454%_))))
                                (let ((_%hd149438149460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149439149457%_)))
                                      (_%tl149437149462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149439149457%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149437149462%_))
                                      ((lambda (_%L149465%_)
                                         (let ((__tmp151099
                                                (lambda (_%g149476149478%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L149465%_
                                                     _%g149476149478%_))))
                                               (__tmp151098
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self149428%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151099 __tmp151098)))
                                       _%hd149438149460%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149431149444%_
                                         _%g149432149447%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149431149444%_ _%g149432149447%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149431149444%_ _%g149432149447%_))))))
          (declare (not safe))
          (_%g149430149481%_ _%stx149429%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self149353%_ _%stx149354%_)
        (let* ((_%g149356149373%_
                (lambda (_%g149357149370%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149357149370%_))))
               (_%g149355149425%_
                (lambda (_%g149357149376%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149357149376%_))
                      (let ((_%e149362149378%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149357149376%_))))
                        (let ((_%hd149361149381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149362149378%_)))
                              (_%tl149360149383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149362149378%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149360149383%_))
                              (let ((_%e149365149386%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149360149383%_))))
                                (let ((_%hd149364149389%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149365149386%_)))
                                      (_%tl149363149391%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149365149386%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149363149391%_))
                                      (let ((_%e149368149394%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149363149391%_))))
                                        (let ((_%hd149367149397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149368149394%_)))
                                              (_%tl149366149399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149368149394%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149366149399%_))
                                              ((lambda (_%L149402%_
                                                        _%L149403%_)
                                                 (let ((_%$e149422%_
                                                        (let ((__tmp151101
                                                               (lambda (_%g149417149419%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L149403%_
                            _%g149417149419%_))))
                      (__tmp151100
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self149353%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151101 __tmp151100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e149422%_
                                                       _%$e149422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149353%_
                                                          _%L149402%_)))))
                                               _%hd149367149397%_
                                               _%hd149364149389%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149356149373%_
                                                 _%g149357149376%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149356149373%_
                                         _%g149357149376%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149356149373%_ _%g149357149376%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149356149373%_ _%g149357149376%_))))))
          (declare (not safe))
          (_%g149355149425%_ _%stx149354%_))))))
