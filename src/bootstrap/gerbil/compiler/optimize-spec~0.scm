(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712784668)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp173039 (list gxc#::identity::t))
            (__tmp173038 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp173039
         '()
         __tmp173038
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args171836%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args171836%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp173040
             (lambda ()
               (force gxc#::identity-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#begin-syntax
                  gxc#xform-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#module
                  gxc#xform-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#define-values
                  gxc#generate-method-specializers-define-values%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-method-specializers::t)))))
        (declare (not safe))
        (__make-promise __tmp173040)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx171828%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self171831%_
                (let ((__obj173031
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj173031))
               (__tmp173041
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171831%_ _%stx171828%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp173041
           gxc#current-compile-method
           _%self171831%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp173043 (list gxc#::false::t))
            (__tmp173042 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp173043
         '()
         __tmp173042
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args171825%_
        (apply make-instance gxc#::extract-receiver::t _%$args171825%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp173044
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#begin
                  gxc#apply-last-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#begin-annotation
                  gxc#extract-receiver-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#let-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#letrec-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#letrec*-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#if
                  gxc#extract-receiver-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::extract-receiver::t)))))
        (declare (not safe))
        (__make-promise __tmp173044)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx171817%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self171820%_
                (let ((__obj173033
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj173033))
               (__tmp173045
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171820%_ _%stx171817%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp173045
           gxc#current-compile-method
           _%self171820%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp173047 (list gxc#::void::t))
            (__tmp173046 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp173047
         '(receiver methods slots)
         __tmp173046
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args171814%_
        (apply make-instance gxc#::collect-object-refs::t _%$args171814%_)))
    (define gxc#::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'slots)))
    (define gxc#::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'slots)))
    (define gxc#&::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#&::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#::collect-object-refs-bind-methods!
      (let ((__tmp173048
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#call
                  gxc#collect-object-refs-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-object-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp173048)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords171780%_
               _%receiver171775171781%_
               _%methods171776171783%_
               _%slots171777171785%_
               _%stx171787%_)
        (let* ((_%receiver171790%_
                (if (eq? _%receiver171775171781%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171775171781%_))
               (_%methods171792%_
                (if (eq? _%methods171776171783%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171776171783%_))
               (_%slots171794%_
                (if (eq? _%slots171777171785%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171777171785%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self171796%_
                  (let ((__obj173035
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-object-refs::t
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173035
                       _%receiver171790%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173035
                       _%methods171792%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173035
                       _%slots171794%_
                       '3
                       '#f
                       '#f))
                    __obj173035))
                 (__tmp173049
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171796%_ _%stx171787%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp173049
             gxc#current-compile-method
             _%self171796%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords171803%_ . _%args171804%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords171803%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171803%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171803%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171803%_
                  'slots:
                  absent-value))
               _%args171804%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args171778171810%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args171778171810%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp173051 (list gxc#::basic-xform-expression::t))
            (__tmp173050 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp173051
         '(receiver klass methods slots)
         __tmp173050
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args171771%_
        (apply make-instance gxc#::subst-object-refs::t _%$args171771%_)))
    (define gxc#::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'slots)))
    (define gxc#::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'slots)))
    (define gxc#&::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'klass)))
    (define gxc#&::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'slots)))
    (define gxc#&::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'klass)))
    (define gxc#&::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'slots)))
    (define gxc#::subst-object-refs-bind-methods!
      (let ((__tmp173052
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::subst-object-refs::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::subst-object-refs::t
                  '%#call
                  gxc#subst-object-refs-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::subst-object-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp173052)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords171733%_
               _%receiver171727171734%_
               _%klass171728171736%_
               _%methods171729171738%_
               _%slots171730171740%_
               _%stx171742%_)
        (let* ((_%receiver171745%_
                (if (eq? _%receiver171727171734%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171727171734%_))
               (_%klass171747%_
                (if (eq? _%klass171728171736%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass171728171736%_))
               (_%methods171749%_
                (if (eq? _%methods171729171738%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171729171738%_))
               (_%slots171751%_
                (if (eq? _%slots171730171740%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171730171740%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self171753%_
                  (let ((__obj173037
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::subst-object-refs::t
                            '#f
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173037
                       _%receiver171745%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173037
                       _%klass171747%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173037
                       _%methods171749%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173037
                       _%slots171751%_
                       '4
                       '#f
                       '#f))
                    __obj173037))
                 (__tmp173053
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171753%_ _%stx171742%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp173053
             gxc#current-compile-method
             _%self171753%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords171760%_ . _%args171761%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords171760%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171760%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171760%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171760%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171760%_
                  'slots:
                  absent-value))
               _%args171761%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args171731171767%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args171731171767%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self168842%_ _%stx168843%_)
        (letrec ((_%generate-method-bind168845%_
                  (lambda (_%$klass171719%_
                           _%$method-table171720%_
                           _%id171721%_
                           _%$id171722%_)
                    (let ((_%$tmp171724%_
                           (let ((__tmp173054
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp173054))))
                      (cons (cons _%$id171722%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp171724%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table171720%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id171721%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp171724%_ '()))
                    (cons (cons '%#ref (cons _%$tmp171724%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id171721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-slot-bind168846%_
                  (lambda (_%$klass171713%_ _%id171714%_ _%$id171715%_)
                    (let ((_%$tmp171717%_
                           (let ((__tmp173055
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp173055))))
                      (cons (cons _%$id171715%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp171717%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass171713%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id171714%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp171717%_ '()))
                        (cons (cons '%#ref (cons _%$tmp171717%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id171714%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl168847%_
                  (lambda (_%$klass171707%_
                           _%$method-table171708%_
                           _%methods-bind171709%_
                           _%slots-bind171710%_
                           _%specializer-impl171711%_)
                    (let ((__tmp173056
                           (cons '%#lambda
                                 (cons (cons _%$klass171707%_
                                             (cons _%$method-table171708%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind171710%_
                                                            _%methods-bind171709%_))
                                                         (cons _%specializer-impl171711%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp173056 _%stx168843%_))))
                 (_%generate-specializer-def168848%_
                  (lambda (_%id171703%_
                           _%specializer-id171704%_
                           _%specializer-impl171705%_)
                    (let ((__tmp173057
                           (cons '%#begin
                                 (cons _%stx168843%_
                                       (cons (let ((__tmp173058
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id171704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl171705%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp173058
                                                _%stx168843%_))
                                             (cons (let ((__tmp173059
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id171703%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id171704%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp173059
                                                      _%stx168843%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp173057 _%stx168843%_)))))
          (let* ((_%__stx171925171926%_ _%stx168843%_)
                 (_%g168851168871%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171925171926%_)))))
            (let ((_%__kont171927171928%_
                   (lambda (_%L168915%_ _%L168916%_)
                     (let ((_%method-calls168935%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs168936%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty168937%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?168939%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls168935%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs168936%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L168915%_))
                             (let* ((_%__stx171839171840%_ _%L168915%_)
                                    (_%g169327169345%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx171839171840%_)))))
                               (let ((_%__kont171841171842%_
                                      (lambda (_%L169381%_
                                               _%L169382%_
                                               _%L169383%_)
                                        (let ((_%receiver169403%_
                                               (let ((_%$e169400%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L169381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e169400%_
                                                     _%$e169400%_
                                                     _%L169383%_))))
                                          (for-each
                                           (lambda (_%g169404169406%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver169403%_
                                              _%method-calls168935%_
                                              _%slot-refs168936%_
                                              _%g169404169406%_))
                                           _%L169381%_)
                                          (if (_%no-specializer?168939%_)
                                              _%stx168843%_
                                              (let* ((_%specializer-id169415%_
                                                      (let* ((_%id169409%_
                                                              (let ((__tmp173060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L168916%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp173060 '"::specialize")))
                     (_%specializer-id169412%_
                      (let ((__tmp173061
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx168843%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id169409%_ __tmp173061))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id169412%_))
                _%specializer-id169412%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass169417%_
                                                      (let ((__tmp173062
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp173062)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table169419%_
                                                      (let ((__tmp173063
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp173063)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods169421%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls168935%_)))
                                                     (_%$methods169425%_
                                                      (map (lambda (_%id169423%_)
                                                             (let ((__tmp173064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169423%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173064)))
                   _%methods169421%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169434%_
                                                      (for-each
                                                       (lambda (_%g169426169429%_
                                                                _%g169427169431%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls168935%_
                                                            _%g169426169429%_
                                                            _%g169427169431%_)))
                                                       _%methods169421%_
                                                       _%$methods169425%_))
                                                     (_%methods-bind169444%_
                                                      (map (lambda (_%g169436169439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169437169441%_)
                     (_%generate-method-bind168845%_
                      _%$klass169417%_
                      _%$method-table169419%_
                      _%g169436169439%_
                      _%g169437169441%_))
                   _%methods169421%_
                   _%$methods169425%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots169446%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs168936%_)))
                                                     (_%$slots169450%_
                                                      (map (lambda (_%id169448%_)
                                                             (let ((__tmp173065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169448%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173065)))
                   _%slots169446%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169459%_
                                                      (for-each
                                                       (lambda (_%g169451169454%_
                                                                _%g169452169456%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs168936%_
                                                            _%g169451169454%_
                                                            _%g169452169456%_)))
                                                       _%slots169446%_
                                                       _%$slots169450%_))
                                                     (_%slots-bind169468%_
                                                      (map (lambda (_%g169460169463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169461169465%_)
                     (_%generate-slot-bind168846%_
                      _%$klass169417%_
                      _%g169460169463%_
                      _%g169461169465%_))
                   _%slots169446%_
                   _%$slots169450%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body169474%_
                                                      (map (lambda (_%g169469169471%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver169403%_
                                                              _%$klass169417%_
                                                              _%method-calls168935%_
                                                              _%slot-refs168936%_
                                                              _%g169469169471%_))
                                                           _%L169381%_))
                                                     (_%specializer-impl169476%_
                                                      (let ((__tmp173066
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L169383%_ _%L169382%_)
                                 _%specializer-body169474%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp173066 _%stx168843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169478%_
                                                      (_%generate-specializer-impl168847%_
                                                       _%$klass169417%_
                                                       _%$method-table169419%_
                                                       _%methods-bind169444%_
                                                       _%slots-bind169468%_
                                                       _%specializer-impl169476%_)))
                                                (let ((__tmp173068
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168916%_)))
                                                      (__tmp173067
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id169415%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp173068
                                                   '" => "
                                                   __tmp173067))
                                                (_%generate-specializer-def168848%_
                                                 _%L168916%_
                                                 _%specializer-id169415%_
                                                 _%specializer-impl169478%_))))))
                                     (_%__kont171843171844%_
                                      (lambda () _%stx168843%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx171839171840%_))
                                     (let ((_%e169332169357%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx171839171840%_))))
                                       (let ((_%tl169334169362%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e169332169357%_)))
                                             (_%hd169333169360%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e169332169357%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl169334169362%_))
                                             (let ((_%e169335169365%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl169334169362%_))))
                                               (let ((_%tl169337169370%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e169335169365%_)))
                                                     (_%hd169336169368%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e169335169365%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd169336169368%_))
                                                     (let ((_%e169338169373%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd169336169368%_))))
                                                       (let ((_%tl169340169378%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e169338169373%_)))
                     (_%hd169339169376%_
                      (let () (declare (not safe)) (##car _%e169338169373%_))))
                 (_%__kont171841171842%_
                  _%tl169337169370%_
                  _%tl169340169378%_
                  _%hd169339169376%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont171843171844%_))))
                                             (_%__kont171843171844%_))))
                                     (_%__kont171843171844%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L168915%_))
                                 (let* ((_%g169485169504%_
                                         (lambda (_%g169486169501%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g169486169501%_))))
                                        (_%g169484169802%_
                                         (lambda (_%g169486169507%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g169486169507%_))
                                               (let ((_%e169488169509%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g169486169507%_))))
                                                 (let ((_%hd169489169512%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169488169509%_)))
                                                       (_%tl169490169514%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169488169509%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl169490169514%_))
                                                       (let ((_g173069_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl169490169514%_ '0))))
                 (begin
                   (let ((_g173070_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g173069_)
                                (##vector-length _g173069_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g173070_ 2)))
                         (error "Context expects 2 values" _g173070_)))
                   (let ((_%target169491169517%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g173069_ 0)))
                         (_%tl169493169519%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g173069_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl169493169519%_))
                         (letrec ((_%loop169494169522%_
                                   (lambda (_%hd169492169525%_
                                            _%clause169498169527%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd169492169525%_))
                                         (let ((_%e169495169530%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd169492169525%_))))
                                           (let ((_%lp-hd169496169533%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e169495169530%_)))
                                                 (_%lp-tl169497169535%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e169495169530%_))))
                                             (_%loop169494169522%_
                                              _%lp-tl169497169535%_
                                              (cons _%lp-hd169496169533%_
                                                    _%clause169498169527%_))))
                                         (let ((_%clause169499169538%_
                                                (reverse _%clause169498169527%_)))
                                           ((lambda (_%L169541%_)
                                              (for-each
                                               (lambda (_%clause169555%_)
                                                 (let* ((_%__stx171865171866%_
                                                         _%clause169555%_)
                                                        (_%g169558169573%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx171865171866%_)))))
                                                   (let ((_%__kont171867171868%_
                                                          (lambda (_%L169601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L169602%_
                           _%L169603%_)
                    (let ((_%receiver169622%_
                           (let ((_%$e169619%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L169601%_))))
                             (if _%$e169619%_ _%$e169619%_ _%L169603%_))))
                      (for-each
                       (lambda (_%g169623169625%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver169622%_
                          _%method-calls168935%_
                          _%slot-refs168936%_
                          _%g169623169625%_))
                       _%L169601%_))))
                 (_%__kont171869171870%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx171865171866%_))
                                                         (let ((_%e169563169585%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx171865171866%_))))
                   (let ((_%tl169565169590%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169563169585%_)))
                         (_%hd169564169588%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169563169585%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd169564169588%_))
                         (let ((_%e169566169593%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd169564169588%_))))
                           (let ((_%tl169568169598%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e169566169593%_)))
                                 (_%hd169567169596%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e169566169593%_))))
                             (_%__kont171867171868%_
                              _%tl169565169590%_
                              _%tl169568169598%_
                              _%hd169567169596%_)))
                         (_%__kont171869171870%_))))
                 (_%__kont171869171870%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp173071
                                                      (lambda (_%g169630169633%_
                                                               _%g169631169635%_)
                                                        (cons _%g169630169633%_
                                                              _%g169631169635%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp173071
                                                  '()
                                                  _%L169541%_)))
                                              (if (_%no-specializer?168939%_)
                                                  _%stx168843%_
                                                  (let* ((_%specializer-id169644%_
                                                          (let* ((_%id169638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp173072
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L168916%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp173072 '"::specialize")))
                         (_%specializer-id169641%_
                          (let ((__tmp173073
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx168843%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id169638%_
                             __tmp173073))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id169641%_))
                    _%specializer-id169641%_))
                 (_%$klass169646%_
                  (let ((__tmp173074
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173074)))
                 (_%$method-table169648%_
                  (let ((__tmp173075
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173075)))
                 (_%methods169650%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls168935%_)))
                 (_%$methods169654%_
                  (map (lambda (_%id169652%_)
                         (let ((__tmp173076 (gensym _%id169652%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173076)))
                       _%methods169650%_))
                 (_%_169663%_
                  (for-each
                   (lambda (_%g169655169658%_ _%g169656169660%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls168935%_
                        _%g169655169658%_
                        _%g169656169660%_)))
                   _%methods169650%_
                   _%$methods169654%_))
                 (_%methods-bind169673%_
                  (map (lambda (_%g169665169668%_ _%g169666169670%_)
                         (_%generate-method-bind168845%_
                          _%$klass169646%_
                          _%$method-table169648%_
                          _%g169665169668%_
                          _%g169666169670%_))
                       _%methods169650%_
                       _%$methods169654%_))
                 (_%slots169675%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs168936%_)))
                 (_%$slots169679%_
                  (map (lambda (_%id169677%_)
                         (let ((__tmp173077 (gensym _%id169677%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173077)))
                       _%slots169675%_))
                 (_%_169688%_
                  (for-each
                   (lambda (_%g169680169683%_ _%g169681169685%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs168936%_
                        _%g169680169683%_
                        _%g169681169685%_)))
                   _%slots169675%_
                   _%$slots169679%_))
                 (_%slots-bind169697%_
                  (map (lambda (_%g169689169692%_ _%g169690169694%_)
                         (_%generate-slot-bind168846%_
                          _%$klass169646%_
                          _%g169689169692%_
                          _%g169690169694%_))
                       _%slots169675%_
                       _%$slots169679%_))
                 (_%specializer-clauses169795%_
                  (map (lambda (_%clause169699%_)
                         (let* ((_%__stx171885171886%_ _%clause169699%_)
                                (_%g169702169717%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx171885171886%_)))))
                           (let ((_%__kont171887171888%_
                                  (lambda (_%L169745%_ _%L169746%_ _%L169747%_)
                                    (let* ((_%receiver169776%_
                                            (let ((_%$e169773%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L169745%_))))
                                              (if _%$e169773%_
                                                  _%$e169773%_
                                                  _%L169747%_)))
                                           (_%body169782%_
                                            (map (lambda (_%g169777169779%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver169776%_
                                                    _%$klass169646%_
                                                    _%method-calls168935%_
                                                    _%slot-refs168936%_
                                                    _%g169777169779%_))
                                                 _%L169745%_)))
                                      (cons (cons _%L169747%_ _%L169746%_)
                                            _%body169782%_))))
                                 (_%__kont171889171890%_
                                  (lambda () _%clause169699%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx171885171886%_))
                                 (let ((_%e169707169729%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx171885171886%_))))
                                   (let ((_%tl169709169734%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e169707169729%_)))
                                         (_%hd169708169732%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e169707169729%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd169708169732%_))
                                         (let ((_%e169710169737%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd169708169732%_))))
                                           (let ((_%tl169712169742%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e169710169737%_)))
                                                 (_%hd169711169740%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e169710169737%_))))
                                             (_%__kont171887171888%_
                                              _%tl169709169734%_
                                              _%tl169712169742%_
                                              _%hd169711169740%_)))
                                         (_%__kont171889171890%_))))
                                 (_%__kont171889171890%_)))))
                       (let ((__tmp173078
                              (lambda (_%g169787169790%_ _%g169788169792%_)
                                (cons _%g169787169790%_ _%g169788169792%_))))
                         (declare (not safe))
                         (__foldr1 __tmp173078 '() _%L169541%_))))
                 (_%specializer-impl169797%_
                  (let ((__tmp173079
                         (cons '%#case-lambda _%specializer-clauses169795%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp173079 _%stx168843%_)))
                 (_%specializer-impl169799%_
                  (_%generate-specializer-impl168847%_
                   _%$klass169646%_
                   _%$method-table169648%_
                   _%methods-bind169673%_
                   _%slots-bind169697%_
                   _%specializer-impl169797%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp173081
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L168916%_)))
                                                          (__tmp173080
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id169644%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp173081
                                                       '" => "
                                                       __tmp173080))
                                                    (_%generate-specializer-def168848%_
                                                     _%L168916%_
                                                     _%specializer-id169644%_
                                                     _%specializer-impl169799%_))))
                                            _%clause169499169538%_))))))
                           (_%loop169494169522%_ _%target169491169517%_ '()))
                         (_%g169485169504%_ _%g169486169507%_)))))
               (_%g169485169504%_ _%g169486169507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169485169504%_
                                                _%g169486169507%_)))))
                                   (_%g169484169802%_ _%L168915%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L168915%_))
                                     (let* ((_%g169806169836%_
                                             (lambda (_%g169807169833%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g169807169833%_))))
                                            (_%g169805170467%_
                                             (lambda (_%g169807169839%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g169807169839%_))
                                                   (let ((_%e169811169841%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g169807169839%_))))
                                                     (let ((_%hd169812169844%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169811169841%_)))
                                                           (_%tl169813169846%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169811169841%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169813169846%_))
                                                           (let ((_%e169814169849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169813169846%_))))
                     (let ((_%hd169815169852%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169814169849%_)))
                           (_%tl169816169854%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169814169849%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169815169852%_))
                           (let ((_%e169817169857%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169815169852%_))))
                             (let ((_%hd169818169860%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169817169857%_)))
                                   (_%tl169819169862%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169817169857%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169818169860%_))
                                   (let ((_%e169820169865%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169818169860%_))))
                                     (let ((_%hd169821169868%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169820169865%_)))
                                           (_%tl169822169870%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169820169865%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169821169868%_))
                                           (let ((_%e169823169873%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169821169868%_))))
                                             (let ((_%hd169824169876%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169823169873%_)))
                                                   (_%tl169825169878%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169823169873%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl169825169878%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl169822169870%_))
                                                       (let ((_%e169826169881%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl169822169870%_))))
                 (let ((_%hd169827169884%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169826169881%_)))
                       (_%tl169828169886%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169826169881%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl169828169886%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169819169862%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl169816169854%_))
                               (let ((_%e169829169889%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl169816169854%_))))
                                 (let ((_%hd169830169892%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169829169889%_)))
                                       (_%tl169831169894%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169829169889%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl169831169894%_))
                                       ((lambda (_%L169897%_
                                                 _%L169898%_
                                                 _%L169899%_)
                                          (let* ((_%g169923169941%_
                                                  (lambda (_%g169924169938%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g169924169938%_))))
                                                 (_%g169922169997%_
                                                  (lambda (_%g169924169944%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g169924169944%_))
                                                        (let ((_%e169928169946%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g169924169944%_))))
                  (let ((_%hd169929169949%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169928169946%_)))
                        (_%tl169930169951%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169928169946%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl169930169951%_))
                        (let ((_%e169931169954%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169930169951%_))))
                          (let ((_%hd169932169957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169931169954%_)))
                                (_%tl169933169959%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169931169954%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd169932169957%_))
                                (let ((_%e169934169962%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd169932169957%_))))
                                  (let ((_%hd169935169965%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169934169962%_)))
                                        (_%tl169936169967%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169934169962%_))))
                                    ((lambda (_%L169970%_
                                              _%L169971%_
                                              _%L169972%_)
                                       (let ((_%receiver169991%_
                                              (let ((_%$e169988%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L169970%_))))
                                                (if _%$e169988%_
                                                    _%$e169988%_
                                                    _%L169972%_))))
                                         (for-each
                                          (lambda (_%g169992169994%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver169991%_
                                             _%method-calls168935%_
                                             _%slot-refs168936%_
                                             _%g169992169994%_))
                                          _%L169970%_)))
                                     _%tl169933169959%_
                                     _%tl169936169967%_
                                     _%hd169935169965%_)))
                                (_%g169923169941%_ _%g169924169944%_))))
                        (_%g169923169941%_ _%g169924169944%_))))
                (_%g169923169941%_ _%g169924169944%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g169922169997%_ _%L169898%_))
                                          (let* ((_%g170000170019%_
                                                  (lambda (_%g170001170016%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g170001170016%_))))
                                                 (_%g169999170143%_
                                                  (lambda (_%g170001170022%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g170001170022%_))
                                                        (let ((_%e170003170024%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g170001170022%_))))
                  (let ((_%hd170004170027%_
                         (let ()
                           (declare (not safe))
                           (##car _%e170003170024%_)))
                        (_%tl170005170029%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e170003170024%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl170005170029%_))
                        (let ((_g173082_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl170005170029%_
                                  '0))))
                          (begin
                            (let ((_g173083_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g173082_)
                                         (##vector-length _g173082_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g173083_ 2)))
                                  (error "Context expects 2 values"
                                         _g173083_)))
                            (let ((_%target170006170032%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g173082_ 0)))
                                  (_%tl170008170034%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g173082_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170008170034%_))
                                  (letrec ((_%loop170009170037%_
                                            (lambda (_%hd170007170040%_
                                                     _%clause170013170042%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd170007170040%_))
                                                  (let ((_%e170010170045%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd170007170040%_))))
                                                    (let ((_%lp-hd170011170048%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170010170045%_)))
                                                          (_%lp-tl170012170050%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170010170045%_))))
                                                      (_%loop170009170037%_
                                                       _%lp-tl170012170050%_
                                                       (cons _%lp-hd170011170048%_
                                                             _%clause170013170042%_))))
                                                  (let ((_%clause170014170053%_
                                                         (reverse _%clause170013170042%_)))
                                                    ((lambda (_%L170056%_)
                                                       (for-each
                                                        (lambda (_%clause170069%_)
                                                          (let* ((_%g170071170086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g170072170083%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170072170083%_))))
                         (_%g170070170133%_
                          (lambda (_%g170072170089%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170072170089%_))
                                (let ((_%e170076170091%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170072170089%_))))
                                  (let ((_%hd170077170094%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170076170091%_)))
                                        (_%tl170078170096%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170076170091%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd170077170094%_))
                                        (let ((_%e170079170099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd170077170094%_))))
                                          (let ((_%hd170080170102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170079170099%_)))
                                                (_%tl170081170104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170079170099%_))))
                                            ((lambda (_%L170107%_
                                                      _%L170108%_
                                                      _%L170109%_)
                                               (let ((_%receiver170127%_
                                                      (let ((_%$e170124%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L170107%_))))
                (if _%$e170124%_ _%$e170124%_ _%L170109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g170128170130%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver170127%_
                                                     _%method-calls168935%_
                                                     _%slot-refs168936%_
                                                     _%g170128170130%_))
                                                  _%L170107%_)))
                                             _%tl170078170096%_
                                             _%tl170081170104%_
                                             _%hd170080170102%_)))
                                        (_%g170071170086%_
                                         _%g170072170089%_))))
                                (_%g170071170086%_ _%g170072170089%_)))))
                    (_%g170070170133%_ _%clause170069%_)))
                (let ((__tmp173084
                       (lambda (_%g170135170138%_ _%g170136170140%_)
                         (cons _%g170135170138%_ _%g170136170140%_))))
                  (declare (not safe))
                  (__foldr1 __tmp173084 '() _%L170056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause170014170053%_))))))
                                    (_%loop170009170037%_
                                     _%target170006170032%_
                                     '()))
                                  (_%g170000170019%_ _%g170001170022%_)))))
                        (_%g170000170019%_ _%g170001170022%_))))
                (_%g170000170019%_ _%g170001170022%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g169999170143%_ _%L169897%_))
                                          (if (_%no-specializer?168939%_)
                                              _%stx168843%_
                                              (let* ((_%specializer-id170152%_
                                                      (let* ((_%id170146%_
                                                              (let ((__tmp173085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L168916%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp173085 '"::specialize")))
                     (_%specializer-id170149%_
                      (let ((__tmp173086
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx168843%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id170146%_ __tmp173086))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id170149%_))
                _%specializer-id170149%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass170154%_
                                                      (let ((__tmp173087
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp173087)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table170156%_
                                                      (let ((__tmp173088
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp173088)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods170158%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls168935%_)))
                                                     (_%$methods170162%_
                                                      (map (lambda (_%id170160%_)
                                                             (let ((__tmp173089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id170160%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173089)))
                   _%methods170158%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_170171%_
                                                      (for-each
                                                       (lambda (_%g170163170166%_
                                                                _%g170164170168%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls168935%_
                                                            _%g170163170166%_
                                                            _%g170164170168%_)))
                                                       _%methods170158%_
                                                       _%$methods170162%_))
                                                     (_%methods-bind170181%_
                                                      (map (lambda (_%g170173170176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170174170178%_)
                     (_%generate-method-bind168845%_
                      _%$klass170154%_
                      _%$method-table170156%_
                      _%g170173170176%_
                      _%g170174170178%_))
                   _%methods170158%_
                   _%$methods170162%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots170183%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs168936%_)))
                                                     (_%$slots170187%_
                                                      (map (lambda (_%id170185%_)
                                                             (let ((__tmp173090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id170185%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173090)))
                   _%slots170183%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_170196%_
                                                      (for-each
                                                       (lambda (_%g170188170191%_
                                                                _%g170189170193%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs168936%_
                                                            _%g170188170191%_
                                                            _%g170189170193%_)))
                                                       _%slots170183%_
                                                       _%$slots170187%_))
                                                     (_%slots-bind170205%_
                                                      (map (lambda (_%g170197170200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170198170202%_)
                     (_%generate-slot-bind168846%_
                      _%$klass170154%_
                      _%g170197170200%_
                      _%g170198170202%_))
                   _%slots170183%_
                   _%$slots170187%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr170297%_
                                                      (let* ((_%g170207170225%_
                                                              (lambda (_%g170208170222%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g170208170222%_))))
                     (_%g170206170294%_
                      (lambda (_%g170208170228%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g170208170228%_))
                            (let ((_%e170212170230%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170208170228%_))))
                              (let ((_%hd170213170233%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170212170230%_)))
                                    (_%tl170214170235%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170212170230%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl170214170235%_))
                                    (let ((_%e170215170238%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl170214170235%_))))
                                      (let ((_%hd170216170241%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170215170238%_)))
                                            (_%tl170217170243%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170215170238%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd170216170241%_))
                                            (let ((_%e170218170246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd170216170241%_))))
                                              (let ((_%hd170219170249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170218170246%_)))
                                                    (_%tl170220170251%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170218170246%_))))
                                                ((lambda (_%L170254%_
                                                          _%L170255%_
                                                          _%L170256%_)
                                                   (let* ((_%receiver170285%_
                                                           (let ((_%$e170282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L170254%_))))
                     (if _%$e170282%_ _%$e170282%_ _%L170256%_)))
                  (_%body170291%_
                   (map (lambda (_%g170286170288%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver170285%_
                           _%$klass170154%_
                           _%method-calls168935%_
                           _%slot-refs168936%_
                           _%g170286170288%_))
                        _%L170254%_))
                  (__tmp173091
                   (cons '%#lambda
                         (cons (cons _%L170256%_ _%L170255%_)
                               _%body170291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp173091
                                                      _%L169898%_)))
                                                 _%tl170217170243%_
                                                 _%tl170220170251%_
                                                 _%hd170219170249%_)))
                                            (_%g170207170225%_
                                             _%g170208170228%_))))
                                    (_%g170207170225%_ _%g170208170228%_))))
                            (_%g170207170225%_ _%g170208170228%_)))))
                (_%g170206170294%_ _%L169898%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr170460%_
                                                      (let* ((_%g170299170318%_
                                                              (lambda (_%g170300170315%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g170300170315%_))))
                     (_%g170298170457%_
                      (lambda (_%g170300170321%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g170300170321%_))
                            (let ((_%e170302170323%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170300170321%_))))
                              (let ((_%hd170303170326%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170302170323%_)))
                                    (_%tl170304170328%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170302170323%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl170304170328%_))
                                    (let ((_g173092_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl170304170328%_
                                              '0))))
                                      (begin
                                        (let ((_g173093_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g173092_)
                                                     (##vector-length
                                                      _g173092_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g173093_ 2)))
                                              (error "Context expects 2 values"
                                                     _g173093_)))
                                        (let ((_%target170305170331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g173092_ 0)))
                                              (_%tl170307170333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g173092_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170307170333%_))
                                              (letrec ((_%loop170308170336%_
                                                        (lambda (_%hd170306170339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause170312170341%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd170306170339%_))
                      (let ((_%e170309170344%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd170306170339%_))))
                        (let ((_%lp-hd170310170347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170309170344%_)))
                              (_%lp-tl170311170349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170309170344%_))))
                          (_%loop170308170336%_
                           _%lp-tl170311170349%_
                           (cons _%lp-hd170310170347%_
                                 _%clause170312170341%_))))
                      (let ((_%clause170313170352%_
                             (reverse _%clause170312170341%_)))
                        ((lambda (_%L170355%_)
                           (let* ((_%clauses170455%_
                                   (map (lambda (_%clause170369%_)
                                          (let* ((_%__stx171905171906%_
                                                  _%clause170369%_)
                                                 (_%g170372170387%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx171905171906%_)))))
                                            (let ((_%__kont171907171908%_
                                                   (lambda (_%L170415%_
                                                            _%L170416%_
                                                            _%L170417%_)
                                                     (let* ((_%receiver170436%_
                                                             (let ((_%$e170433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L170415%_))))
                       (if _%$e170433%_ _%$e170433%_ _%L170417%_)))
                    (_%body170442%_
                     (map (lambda (_%g170437170439%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver170436%_
                             _%$klass170154%_
                             _%method-calls168935%_
                             _%slot-refs168936%_
                             _%g170437170439%_))
                          _%L170415%_)))
               (cons (cons _%L170417%_ _%L170416%_) _%body170442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171909171910%_
                                                   (lambda ()
                                                     _%clause170369%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx171905171906%_))
                                                  (let ((_%e170377170399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx171905171906%_))))
                                                    (let ((_%tl170379170404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170377170399%_)))
                                                          (_%hd170378170402%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170377170399%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd170378170402%_))
                                                          (let ((_%e170380170407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd170378170402%_))))
                    (let ((_%tl170382170412%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170380170407%_)))
                          (_%hd170381170410%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170380170407%_))))
                      (_%__kont171907171908%_
                       _%tl170379170404%_
                       _%tl170382170412%_
                       _%hd170381170410%_)))
                  (_%__kont171909171910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171909171910%_)))))
                                        (let ((__tmp173094
                                               (lambda (_%g170447170450%_
                                                        _%g170448170452%_)
                                                 (cons _%g170447170450%_
                                                       _%g170448170452%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp173094
                                           '()
                                           _%L170355%_))))
                                  (__tmp173095
                                   (cons '%#case-lambda _%clauses170455%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp173095 _%L169897%_)))
                         _%clause170313170352%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop170308170336%_
                                                 _%target170305170331%_
                                                 '()))
                                              (_%g170299170318%_
                                               _%g170300170321%_)))))
                                    (_%g170299170318%_ _%g170300170321%_))))
                            (_%g170299170318%_ _%g170300170321%_)))))
                (_%g170298170457%_ _%L169897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl170462%_
                                                      (let ((__tmp173096
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L169899%_ '())
                                             (cons _%specializer-lambda-expr170297%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr170460%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp173096 _%stx168843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl170464%_
                                                      (_%generate-specializer-impl168847%_
                                                       _%$klass170154%_
                                                       _%$method-table170156%_
                                                       _%methods-bind170181%_
                                                       _%slots-bind170205%_
                                                       _%specializer-impl170462%_)))
                                                (let ((__tmp173098
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168916%_)))
                                                      (__tmp173097
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id170152%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp173098
                                                   '" => "
                                                   __tmp173097))
                                                (_%generate-specializer-def168848%_
                                                 _%L168916%_
                                                 _%specializer-id170152%_
                                                 _%specializer-impl170464%_))))
                                        _%hd169830169892%_
                                        _%hd169827169884%_
                                        _%hd169824169876%_)
                                       (_%g169806169836%_ _%g169807169839%_))))
                               (_%g169806169836%_ _%g169807169839%_))
                           (_%g169806169836%_ _%g169807169839%_))
                       (_%g169806169836%_ _%g169807169839%_))))
               (_%g169806169836%_ _%g169807169839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169806169836%_
                                                    _%g169807169839%_))))
                                           (_%g169806169836%_
                                            _%g169807169839%_))))
                                   (_%g169806169836%_ _%g169807169839%_))))
                           (_%g169806169836%_ _%g169807169839%_))))
                   (_%g169806169836%_ _%g169807169839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169806169836%_
                                                    _%g169807169839%_)))))
                                       (_%g169805170467%_ _%L168915%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L168915%_))
                                         (let* ((_%g170471170524%_
                                                 (lambda (_%g170472170521%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g170472170521%_))))
                                                (_%g170470171695%_
                                                 (lambda (_%g170472170527%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g170472170527%_))
                                                       (let ((_%e170478170529%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g170472170527%_))))
                 (let ((_%hd170479170532%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170478170529%_)))
                       (_%tl170480170534%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170478170529%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd170479170532%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd170479170532%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl170480170534%_))
                               (let ((_%e170481170537%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl170480170534%_))))
                                 (let ((_%hd170482170540%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e170481170537%_)))
                                       (_%tl170483170542%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e170481170537%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd170482170540%_))
                                       (let ((_%e170484170545%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd170482170540%_))))
                                         (let ((_%hd170485170548%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e170484170545%_)))
                                               (_%tl170486170550%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e170484170545%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd170485170548%_))
                                               (let ((_%e170487170553%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd170485170548%_))))
                                                 (let ((_%hd170488170556%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e170487170553%_)))
                                                       (_%tl170489170558%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e170487170553%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd170488170556%_))
                                                       (let ((_%e170490170561%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd170488170556%_))))
                 (let ((_%hd170491170564%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170490170561%_)))
                       (_%tl170492170566%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170490170561%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl170492170566%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl170489170558%_))
                           (let ((_%e170493170569%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl170489170558%_))))
                             (let ((_%hd170494170572%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170493170569%_)))
                                   (_%tl170495170574%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170493170569%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170494170572%_))
                                   (let ((_%e170496170577%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170494170572%_))))
                                     (let ((_%hd170497170580%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170496170577%_)))
                                           (_%tl170498170582%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170496170577%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd170497170580%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd170497170580%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl170498170582%_))
                                                   (let ((_%e170499170585%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl170498170582%_))))
                                                     (let ((_%hd170500170588%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170499170585%_)))
                                                           (_%tl170501170590%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170499170585%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd170500170588%_))
                                                           (let ((_%e170502170593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd170500170588%_))))
                     (let ((_%hd170503170596%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170502170593%_)))
                           (_%tl170504170598%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170502170593%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd170503170596%_))
                           (let ((_%e170505170601%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd170503170596%_))))
                             (let ((_%hd170506170604%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170505170601%_)))
                                   (_%tl170507170606%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170505170601%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170506170604%_))
                                   (let ((_%e170508170609%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170506170604%_))))
                                     (let ((_%hd170509170612%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170508170609%_)))
                                           (_%tl170510170614%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170508170609%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl170510170614%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl170507170606%_))
                                               (let ((_%e170511170617%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl170507170606%_))))
                                                 (let ((_%hd170512170620%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e170511170617%_)))
                                                       (_%tl170513170622%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e170511170617%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl170513170622%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl170504170598%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl170501170590%_))
                       (let ((_%e170514170625%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170501170590%_))))
                         (let ((_%hd170515170628%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170514170625%_)))
                               (_%tl170516170630%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170514170625%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl170516170630%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170495170574%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl170486170550%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl170483170542%_))
                                           (let ((_%e170517170633%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl170483170542%_))))
                                             (let ((_%hd170518170636%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e170517170633%_)))
                                                   (_%tl170519170638%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e170517170633%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl170519170638%_))
                                                   ((lambda (_%L170641%_
                                                             _%L170642%_
                                                             _%L170643%_
                                                             _%L170644%_
                                                             _%L170645%_)
                                                      (let* ((_%g170685170747%_
                                                              (lambda (_%g170686170744%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g170686170744%_))))
                     (_%g170684171692%_
                      (lambda (_%g170686170750%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g170686170750%_))
                            (let ((_%e170692170752%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170686170750%_))))
                              (let ((_%hd170693170755%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170692170752%_)))
                                    (_%tl170694170757%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170692170752%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd170693170755%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd170693170755%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170694170757%_))
                                            (let ((_%e170695170760%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170694170757%_))))
                                              (let ((_%hd170696170763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170695170760%_)))
                                                    (_%tl170697170765%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170695170760%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl170697170765%_))
                                                    (let ((_%e170698170768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl170697170765%_))))
                                                      (let ((_%hd170699170771%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e170698170768%_)))
                    (_%tl170700170773%_
                     (let () (declare (not safe)) (##cdr _%e170698170768%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd170699170771%_))
                    (let ((_%e170701170776%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd170699170771%_))))
                      (let ((_%hd170702170779%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170701170776%_)))
                            (_%tl170703170781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170701170776%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd170702170779%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd170702170779%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl170703170781%_))
                                    (let ((_%e170704170784%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl170703170781%_))))
                                      (let ((_%hd170705170787%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170704170784%_)))
                                            (_%tl170706170789%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170704170784%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd170705170787%_))
                                            (let ((_%e170707170792%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd170705170787%_))))
                                              (let ((_%hd170708170795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170707170792%_)))
                                                    (_%tl170709170797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170707170792%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd170708170795%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd170708170795%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl170709170797%_))
                                                            (let ((_%e170710170800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl170709170797%_))))
                      (let ((_%hd170711170803%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170710170800%_)))
                            (_%tl170712170805%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170710170800%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170712170805%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170706170789%_))
                                (let ((_%e170713170808%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170706170789%_))))
                                  (let ((_%hd170714170811%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170713170808%_)))
                                        (_%tl170715170813%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170713170808%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd170714170811%_))
                                        (let ((_%e170716170816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd170714170811%_))))
                                          (let ((_%hd170717170819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170716170816%_)))
                                                (_%tl170718170821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170716170816%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd170717170819%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd170717170819%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl170718170821%_))
                                                        (let ((_%e170719170824%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl170718170821%_))))
                  (let ((_%hd170720170827%_
                         (let ()
                           (declare (not safe))
                           (##car _%e170719170824%_)))
                        (_%tl170721170829%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e170719170824%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl170721170829%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170715170813%_))
                            (let ((_%e170722170832%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170715170813%_))))
                              (let ((_%hd170723170835%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170722170832%_)))
                                    (_%tl170724170837%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170722170832%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd170723170835%_))
                                    (let ((_%e170725170840%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd170723170835%_))))
                                      (let ((_%hd170726170843%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170725170840%_)))
                                            (_%tl170727170845%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170725170840%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd170726170843%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd170726170843%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl170727170845%_))
                                                    (let ((_%e170728170848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl170727170845%_))))
                                                      (let ((_%hd170729170851%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e170728170848%_)))
                    (_%tl170730170853%_
                     (let () (declare (not safe)) (##cdr _%e170728170848%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl170730170853%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl170724170837%_))
                        (if (let ((__tmp173099
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl170724170837%_))))
                              (declare (not safe))
                              (##fx>= __tmp173099 '1))
                            (let ((_g173100_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl170724170837%_
                                      '1))))
                              (begin
                                (let ((_g173101_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g173100_)
                                             (##vector-length _g173100_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g173101_ 2)))
                                      (error "Context expects 2 values"
                                             _g173101_)))
                                (let ((_%target170731170856%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173100_ 0)))
                                      (_%tl170733170858%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173100_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170733170858%_))
                                      (let ((_%e170740170861%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170733170858%_))))
                                        (let ((_%hd170741170864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170740170861%_)))
                                              (_%tl170742170866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170740170861%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170742170866%_))
                                              (letrec ((_%loop170734170869%_
                                                        (lambda (_%hd170732170872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref170738170874%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd170732170872%_))
                      (let ((_%e170735170877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd170732170872%_))))
                        (let ((_%lp-hd170736170880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170735170877%_)))
                              (_%lp-tl170737170882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170735170877%_))))
                          (_%loop170734170869%_
                           _%lp-tl170737170882%_
                           (cons _%lp-hd170736170880%_
                                 _%kw-ref170738170874%_))))
                      (let ((_%kw-ref170739170885%_
                             (reverse _%kw-ref170738170874%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170700170773%_))
                            ((lambda (_%L170888%_
                                      _%L170889%_
                                      _%L170890%_
                                      _%L170891%_
                                      _%L170892%_)
                               (let* ((_%kw-count170943%_
                                       (length (let ((__tmp173102
                                                      (lambda (_%g170935170938%_
                                                               _%g170936170940%_)
                                                        (cons _%g170935170938%_
                                                              _%g170936170940%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp173102
                                                  '()
                                                  _%L170889%_))))
                                      (_%self-index170945%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count170943%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L170643%_))
                                     (let* ((_%g170949170963%_
                                             (lambda (_%g170950170960%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g170950170960%_))))
                                            (_%g170948171086%_
                                             (lambda (_%g170950170966%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g170950170966%_))
                                                   (let ((_%e170953170968%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g170950170966%_))))
                                                     (let ((_%hd170954170971%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170953170968%_)))
                                                           (_%tl170955170973%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170953170968%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl170955170973%_))
                                                           (let ((_%e170956170976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl170955170973%_))))
                     (let ((_%hd170957170979%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170956170976%_)))
                           (_%tl170958170981%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170956170976%_))))
                       ((lambda (_%L170984%_ _%L170985%_)
                          (let* ((_%self171002%_
                                  (list-ref _%L170985%_ _%self-index170945%_))
                                 (_%receiver171007%_
                                  (let ((_%$e171004%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L170984%_))))
                                    (if _%$e171004%_
                                        _%$e171004%_
                                        _%self171002%_))))
                            (for-each
                             (lambda (_%g171009171011%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver171007%_
                                _%method-calls168935%_
                                _%slot-refs168936%_
                                _%g171009171011%_))
                             _%L170984%_)
                            (if (_%no-specializer?168939%_)
                                _%stx168843%_
                                (let* ((_%specializer-id171020%_
                                        (let* ((_%id171014%_
                                                (let ((__tmp173103
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168916%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp173103
                                                   '"::specialize")))
                                               (_%specializer-id171017%_
                                                (let ((__tmp173104
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx168843%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id171014%_
                                                   __tmp173104))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id171017%_))
                                          _%specializer-id171017%_))
                                       (_%$klass171022%_
                                        (let ((__tmp173105
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp173105)))
                                       (_%$method-table171024%_
                                        (let ((__tmp173106
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp173106)))
                                       (_%methods171026%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%method-calls168935%_)))
                                       (_%$methods171030%_
                                        (map (lambda (_%id171028%_)
                                               (let ((__tmp173107
                                                      (gensym _%id171028%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp173107)))
                                             _%methods171026%_))
                                       (_%_171039%_
                                        (for-each
                                         (lambda (_%g171031171034%_
                                                  _%g171032171036%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%method-calls168935%_
                                              _%g171031171034%_
                                              _%g171032171036%_)))
                                         _%methods171026%_
                                         _%$methods171030%_))
                                       (_%methods-bind171049%_
                                        (map (lambda (_%g171041171044%_
                                                      _%g171042171046%_)
                                               (_%generate-method-bind168845%_
                                                _%$klass171022%_
                                                _%$method-table171024%_
                                                _%g171041171044%_
                                                _%g171042171046%_))
                                             _%methods171026%_
                                             _%$methods171030%_))
                                       (_%slots171051%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%slot-refs168936%_)))
                                       (_%$slots171055%_
                                        (map (lambda (_%id171053%_)
                                               (let ((__tmp173108
                                                      (gensym _%id171053%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp173108)))
                                             _%slots171051%_))
                                       (_%_171064%_
                                        (for-each
                                         (lambda (_%g171056171059%_
                                                  _%g171057171061%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%slot-refs168936%_
                                              _%g171056171059%_
                                              _%g171057171061%_)))
                                         _%slots171051%_
                                         _%$slots171055%_))
                                       (_%slots-bind171073%_
                                        (map (lambda (_%g171065171068%_
                                                      _%g171066171070%_)
                                               (_%generate-slot-bind168846%_
                                                _%$klass171022%_
                                                _%g171065171068%_
                                                _%g171066171070%_))
                                             _%slots171051%_
                                             _%$slots171055%_))
                                       (_%specializer-impl171081%_
                                        (let* ((_%specializer-body171079%_
                                                (map (lambda (_%g171074171076%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver171007%_
                                                        _%$klass171022%_
                                                        _%method-calls168935%_
                                                        _%slot-refs168936%_
                                                        _%g171074171076%_))
                                                     _%L170984%_))
                                               (__tmp173109
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L170645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L170644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp173110
                                   (cons '%#lambda
                                         (cons _%L170985%_
                                               _%specializer-body171079%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp173110 _%L170643%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L170642%_ '())))
                                      '()))
                          '())
                    (cons _%L170641%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp173109
                                           _%stx168843%_)))
                                       (_%specializer-impl171083%_
                                        (_%generate-specializer-impl168847%_
                                         _%$klass171022%_
                                         _%$method-table171024%_
                                         _%methods-bind171049%_
                                         _%slots-bind171073%_
                                         _%specializer-impl171081%_)))
                                  (let ((__tmp173112
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L168916%_)))
                                        (__tmp173111
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id171020%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp173112
                                     '" => "
                                     __tmp173111))
                                  (_%generate-specializer-def168848%_
                                   _%L168916%_
                                   _%specializer-id171020%_
                                   _%specializer-impl171083%_)))))
                        _%tl170958170981%_
                        _%hd170957170979%_)))
                   (_%g170949170963%_ _%g170950170966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g170949170963%_
                                                    _%g170950170966%_)))))
                                       (_%g170948171086%_ _%L170643%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L170643%_))
                                         (let* ((_%g171090171120%_
                                                 (lambda (_%g171091171117%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g171091171117%_))))
                                                (_%g171089171688%_
                                                 (lambda (_%g171091171123%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g171091171123%_))
                                                       (let ((_%e171095171125%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g171091171123%_))))
                 (let ((_%hd171096171128%_
                        (let ()
                          (declare (not safe))
                          (##car _%e171095171125%_)))
                       (_%tl171097171130%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e171095171125%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl171097171130%_))
                       (let ((_%e171098171133%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl171097171130%_))))
                         (let ((_%hd171099171136%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e171098171133%_)))
                               (_%tl171100171138%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e171098171133%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd171099171136%_))
                               (let ((_%e171101171141%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd171099171136%_))))
                                 (let ((_%hd171102171144%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e171101171141%_)))
                                       (_%tl171103171146%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e171101171141%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd171102171144%_))
                                       (let ((_%e171104171149%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd171102171144%_))))
                                         (let ((_%hd171105171152%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e171104171149%_)))
                                               (_%tl171106171154%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e171104171149%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd171105171152%_))
                                               (let ((_%e171107171157%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd171105171152%_))))
                                                 (let ((_%hd171108171160%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e171107171157%_)))
                                                       (_%tl171109171162%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e171107171157%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl171109171162%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl171106171154%_))
                                                           (let ((_%e171110171165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl171106171154%_))))
                     (let ((_%hd171111171168%_
                            (let ()
                              (declare (not safe))
                              (##car _%e171110171165%_)))
                           (_%tl171112171170%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e171110171165%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl171112171170%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl171103171146%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl171100171138%_))
                                   (let ((_%e171113171173%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl171100171138%_))))
                                     (let ((_%hd171114171176%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e171113171173%_)))
                                           (_%tl171115171178%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e171113171173%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl171115171178%_))
                                           ((lambda (_%L171181%_
                                                     _%L171182%_
                                                     _%L171183%_)
                                              (let* ((_%g171207171221%_
                                                      (lambda (_%g171208171218%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g171208171218%_))))
                                                     (_%g171206171268%_
                                                      (lambda (_%g171208171224%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g171208171224%_))
                                                            (let ((_%e171211171226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g171208171224%_))))
                      (let ((_%hd171212171229%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171211171226%_)))
                            (_%tl171213171231%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171211171226%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171213171231%_))
                            (let ((_%e171214171234%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171213171231%_))))
                              (let ((_%hd171215171237%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171214171234%_)))
                                    (_%tl171216171239%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171214171234%_))))
                                ((lambda (_%L171242%_ _%L171243%_)
                                   (let* ((_%self171256%_
                                           (list-ref
                                            _%L171243%_
                                            _%self-index170945%_))
                                          (_%receiver171261%_
                                           (let ((_%$e171258%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L171242%_))))
                                             (if _%$e171258%_
                                                 _%$e171258%_
                                                 _%self171256%_))))
                                     (for-each
                                      (lambda (_%g171263171265%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver171261%_
                                         _%method-calls168935%_
                                         _%slot-refs168936%_
                                         _%g171263171265%_))
                                      _%L171242%_)))
                                 _%tl171216171239%_
                                 _%hd171215171237%_)))
                            (_%g171207171221%_ _%g171208171224%_))))
                    (_%g171207171221%_ _%g171208171224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g171206171268%_
                                                 _%L171182%_))
                                              (let* ((_%g171271171290%_
                                                      (lambda (_%g171272171287%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g171272171287%_))))
                                                     (_%g171270171401%_
                                                      (lambda (_%g171272171293%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g171272171293%_))
                                                            (let ((_%e171274171295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g171272171293%_))))
                      (let ((_%hd171275171298%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171274171295%_)))
                            (_%tl171276171300%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171274171295%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl171276171300%_))
                            (let ((_g173113_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl171276171300%_
                                      '0))))
                              (begin
                                (let ((_g173114_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g173113_)
                                             (##vector-length _g173113_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g173114_ 2)))
                                      (error "Context expects 2 values"
                                             _g173114_)))
                                (let ((_%target171277171303%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173113_ 0)))
                                      (_%tl171279171305%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173113_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl171279171305%_))
                                      (letrec ((_%loop171280171308%_
                                                (lambda (_%hd171278171311%_
                                                         _%clause171284171313%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd171278171311%_))
                                                      (let ((_%e171281171316%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd171278171311%_))))
                (let ((_%lp-hd171282171319%_
                       (let () (declare (not safe)) (##car _%e171281171316%_)))
                      (_%lp-tl171283171321%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e171281171316%_))))
                  (_%loop171280171308%_
                   _%lp-tl171283171321%_
                   (cons _%lp-hd171282171319%_ _%clause171284171313%_))))
              (let ((_%clause171285171324%_ (reverse _%clause171284171313%_)))
                ((lambda (_%L171327%_)
                   (for-each
                    (lambda (_%clause171340%_)
                      (let* ((_%g171342171353%_
                              (lambda (_%g171343171350%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171343171350%_))))
                             (_%g171341171391%_
                              (lambda (_%g171343171356%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171343171356%_))
                                    (let ((_%e171346171358%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171343171356%_))))
                                      (let ((_%hd171347171361%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171346171358%_)))
                                            (_%tl171348171363%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171346171358%_))))
                                        ((lambda (_%L171366%_ _%L171367%_)
                                           (let* ((_%self171379%_
                                                   (list-ref
                                                    _%L171367%_
                                                    _%self-index170945%_))
                                                  (_%receiver171384%_
                                                   (let ((_%$e171381%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L171366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e171381%_
                                                         _%$e171381%_
                                                         _%self171379%_))))
                                             (for-each
                                              (lambda (_%g171386171388%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver171384%_
                                                 _%method-calls168935%_
                                                 _%slot-refs168936%_
                                                 _%g171386171388%_))
                                              _%L171366%_)))
                                         _%tl171348171363%_
                                         _%hd171347171361%_)))
                                    (_%g171342171353%_ _%g171343171356%_)))))
                        (_%g171341171391%_ _%clause171340%_)))
                    (let ((__tmp173115
                           (lambda (_%g171393171396%_ _%g171394171398%_)
                             (cons _%g171393171396%_ _%g171394171398%_))))
                      (declare (not safe))
                      (__foldr1 __tmp173115 '() _%L171327%_))))
                 _%clause171285171324%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop171280171308%_
                                         _%target171277171303%_
                                         '()))
                                      (_%g171271171290%_ _%g171272171293%_)))))
                            (_%g171271171290%_ _%g171272171293%_))))
                    (_%g171271171290%_ _%g171272171293%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g171270171401%_
                                                 _%L171181%_))
                                              (if (_%no-specializer?168939%_)
                                                  _%stx168843%_
                                                  (let* ((_%specializer-id171410%_
                                                          (let* ((_%id171404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp173116
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L168916%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp173116 '"::specialize")))
                         (_%specializer-id171407%_
                          (let ((__tmp173117
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx168843%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id171404%_
                             __tmp173117))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id171407%_))
                    _%specializer-id171407%_))
                 (_%$klass171412%_
                  (let ((__tmp173118
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173118)))
                 (_%$method-table171414%_
                  (let ((__tmp173119
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173119)))
                 (_%methods171416%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls168935%_)))
                 (_%$methods171420%_
                  (map (lambda (_%id171418%_)
                         (let ((__tmp173120 (gensym _%id171418%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173120)))
                       _%methods171416%_))
                 (_%_171429%_
                  (for-each
                   (lambda (_%g171421171424%_ _%g171422171426%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls168935%_
                        _%g171421171424%_
                        _%g171422171426%_)))
                   _%methods171416%_
                   _%$methods171420%_))
                 (_%methods-bind171439%_
                  (map (lambda (_%g171431171434%_ _%g171432171436%_)
                         (_%generate-method-bind168845%_
                          _%$klass171412%_
                          _%$method-table171414%_
                          _%g171431171434%_
                          _%g171432171436%_))
                       _%methods171416%_
                       _%$methods171420%_))
                 (_%slots171441%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs168936%_)))
                 (_%$slots171445%_
                  (map (lambda (_%id171443%_)
                         (let ((__tmp173121 (gensym _%id171443%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173121)))
                       _%slots171441%_))
                 (_%_171454%_
                  (for-each
                   (lambda (_%g171446171449%_ _%g171447171451%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs168936%_
                        _%g171446171449%_
                        _%g171447171451%_)))
                   _%slots171441%_
                   _%$slots171445%_))
                 (_%slots-bind171463%_
                  (map (lambda (_%g171455171458%_ _%g171456171460%_)
                         (_%generate-slot-bind168846%_
                          _%$klass171412%_
                          _%g171455171458%_
                          _%g171456171460%_))
                       _%slots171441%_
                       _%$slots171445%_))
                 (_%specializer-lambda-expr171541%_
                  (let* ((_%g171465171479%_
                          (lambda (_%g171466171476%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g171466171476%_))))
                         (_%g171464171538%_
                          (lambda (_%g171466171482%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g171466171482%_))
                                (let ((_%e171469171484%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g171466171482%_))))
                                  (let ((_%hd171470171487%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171469171484%_)))
                                        (_%tl171471171489%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171469171484%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl171471171489%_))
                                        (let ((_%e171472171492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl171471171489%_))))
                                          (let ((_%hd171473171495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171472171492%_)))
                                                (_%tl171474171497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171472171492%_))))
                                            ((lambda (_%L171500%_ _%L171501%_)
                                               (let* ((_%self171524%_
                                                       (list-ref
                                                        _%L171501%_
                                                        _%self-index170945%_))
                                                      (_%receiver171529%_
                                                       (let ((_%$e171526%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L171500%_))))
                 (if _%$e171526%_ _%$e171526%_ _%self171524%_)))
              (_%body171535%_
               (map (lambda (_%g171530171532%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver171529%_
                       _%$klass171412%_
                       _%method-calls168935%_
                       _%slot-refs168936%_
                       _%g171530171532%_))
                    _%L171500%_))
              (__tmp173122 (cons '%#lambda (cons _%L171501%_ _%body171535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp173122
                                                  _%L171182%_)))
                                             _%tl171474171497%_
                                             _%hd171473171495%_)))
                                        (_%g171465171479%_
                                         _%g171466171482%_))))
                                (_%g171465171479%_ _%g171466171482%_)))))
                    (_%g171464171538%_ _%L171182%_)))
                 (_%specializer-case-lambda-expr171681%_
                  (let* ((_%g171543171562%_
                          (lambda (_%g171544171559%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g171544171559%_))))
                         (_%g171542171678%_
                          (lambda (_%g171544171565%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g171544171565%_))
                                (let ((_%e171546171567%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g171544171565%_))))
                                  (let ((_%hd171547171570%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171546171567%_)))
                                        (_%tl171548171572%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171546171567%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl171548171572%_))
                                        (let ((_g173123_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl171548171572%_
                                                  '0))))
                                          (begin
                                            (let ((_g173124_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g173123_)
                                                         (##vector-length
                                                          _g173123_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g173124_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g173124_)))
                                            (let ((_%target171549171575%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g173123_
                                                      0)))
                                                  (_%tl171551171577%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g173123_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl171551171577%_))
                                                  (letrec ((_%loop171552171580%_
                                                            (lambda (_%hd171550171583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause171556171585%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd171550171583%_))
                          (let ((_%e171553171588%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd171550171583%_))))
                            (let ((_%lp-hd171554171591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171553171588%_)))
                                  (_%lp-tl171555171593%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171553171588%_))))
                              (_%loop171552171580%_
                               _%lp-tl171555171593%_
                               (cons _%lp-hd171554171591%_
                                     _%clause171556171585%_))))
                          (let ((_%clause171557171596%_
                                 (reverse _%clause171556171585%_)))
                            ((lambda (_%L171599%_)
                               (let* ((_%clauses171676%_
                                       (map (lambda (_%clause171613%_)
                                              (let* ((_%g171615171626%_
                                                      (lambda (_%g171616171623%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g171616171623%_))))
                                                     (_%g171614171666%_
                                                      (lambda (_%g171616171629%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g171616171629%_))
                                                            (let ((_%e171619171631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g171616171629%_))))
                      (let ((_%hd171620171634%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171619171631%_)))
                            (_%tl171621171636%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171619171631%_))))
                        ((lambda (_%L171639%_ _%L171640%_)
                           (let* ((_%self171652%_
                                   (list-ref _%L171640%_ _%self-index170945%_))
                                  (_%receiver171657%_
                                   (let ((_%$e171654%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L171639%_))))
                                     (if _%$e171654%_
                                         _%$e171654%_
                                         _%self171652%_)))
                                  (_%body171663%_
                                   (map (lambda (_%g171658171660%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver171657%_
                                           _%$klass171412%_
                                           _%method-calls168935%_
                                           _%slot-refs168936%_
                                           _%g171658171660%_))
                                        _%L171639%_)))
                             (cons _%L171640%_ _%body171663%_)))
                         _%tl171621171636%_
                         _%hd171620171634%_)))
                    (_%g171615171626%_ _%g171616171629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g171614171666%_
                                                 _%clause171613%_)))
                                            (let ((__tmp173125
                                                   (lambda (_%g171668171671%_
                                                            _%g171669171673%_)
                                                     (cons _%g171668171671%_
                                                           _%g171669171673%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173125
                                               '()
                                               _%L171599%_))))
                                      (__tmp173126
                                       (cons '%#case-lambda
                                             _%clauses171676%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp173126
                                  _%L171181%_)))
                             _%clause171557171596%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop171552171580%_
                                                     _%target171549171575%_
                                                     '()))
                                                  (_%g171543171562%_
                                                   _%g171544171565%_)))))
                                        (_%g171543171562%_
                                         _%g171544171565%_))))
                                (_%g171543171562%_ _%g171544171565%_)))))
                    (_%g171542171678%_ _%L171181%_)))
                 (_%specializer-impl171683%_
                  (let ((__tmp173127
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L170645%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L170644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp173128
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L171183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr171541%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr171681%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp173128
                                                _%stx168843%_))
                                             '()))
                                 '())
                           (cons _%L170642%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L170641%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp173127 _%stx168843%_)))
                 (_%specializer-impl171685%_
                  (_%generate-specializer-impl168847%_
                   _%$klass171412%_
                   _%$method-table171414%_
                   _%methods-bind171439%_
                   _%slots-bind171463%_
                   _%specializer-impl171683%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp173130
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L168916%_)))
                                                          (__tmp173129
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id171410%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp173130
                                                       '" => "
                                                       __tmp173129))
                                                    (_%generate-specializer-def168848%_
                                                     _%L168916%_
                                                     _%specializer-id171410%_
                                                     _%specializer-impl171685%_))))
                                            _%hd171114171176%_
                                            _%hd171111171168%_
                                            _%hd171108171160%_)
                                           (_%g171090171120%_
                                            _%g171091171123%_))))
                                   (_%g171090171120%_ _%g171091171123%_))
                               (_%g171090171120%_ _%g171091171123%_))
                           (_%g171090171120%_ _%g171091171123%_))))
                   (_%g171090171120%_ _%g171091171123%_))
               (_%g171090171120%_ _%g171091171123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171090171120%_
                                                _%g171091171123%_))))
                                       (_%g171090171120%_ _%g171091171123%_))))
                               (_%g171090171120%_ _%g171091171123%_))))
                       (_%g171090171120%_ _%g171091171123%_))))
               (_%g171090171120%_ _%g171091171123%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g171089171688%_ _%L170643%_))
                                         _%stx168843%_))))
                             _%hd170741170864%_
                             _%kw-ref170739170885%_
                             _%hd170729170851%_
                             _%hd170720170827%_
                             _%hd170711170803%_)
                            (_%g170685170747%_ _%g170686170750%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop170734170869%_
                                                 _%target170731170856%_
                                                 '()))
                                              (_%g170685170747%_
                                               _%g170686170750%_))))
                                      (_%g170685170747%_ _%g170686170750%_)))))
                            (_%g170685170747%_ _%g170686170750%_))
                        (_%g170685170747%_ _%g170686170750%_))
                    (_%g170685170747%_ _%g170686170750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g170685170747%_
                                                     _%g170686170750%_))
                                                (_%g170685170747%_
                                                 _%g170686170750%_))
                                            (_%g170685170747%_
                                             _%g170686170750%_))))
                                    (_%g170685170747%_ _%g170686170750%_))))
                            (_%g170685170747%_ _%g170686170750%_))
                        (_%g170685170747%_ _%g170686170750%_))))
                (_%g170685170747%_ _%g170686170750%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g170685170747%_
                                                     _%g170686170750%_))
                                                (_%g170685170747%_
                                                 _%g170686170750%_))))
                                        (_%g170685170747%_
                                         _%g170686170750%_))))
                                (_%g170685170747%_ _%g170686170750%_))
                            (_%g170685170747%_ _%g170686170750%_))))
                    (_%g170685170747%_ _%g170686170750%_))
                (_%g170685170747%_ _%g170686170750%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g170685170747%_
                                                     _%g170686170750%_))))
                                            (_%g170685170747%_
                                             _%g170686170750%_))))
                                    (_%g170685170747%_ _%g170686170750%_))
                                (_%g170685170747%_ _%g170686170750%_))
                            (_%g170685170747%_ _%g170686170750%_))))
                    (_%g170685170747%_ _%g170686170750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g170685170747%_
                                                     _%g170686170750%_))))
                                            (_%g170685170747%_
                                             _%g170686170750%_))
                                        (_%g170685170747%_ _%g170686170750%_))
                                    (_%g170685170747%_ _%g170686170750%_))))
                            (_%g170685170747%_ _%g170686170750%_)))))
                (_%g170684171692%_ _%L170642%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd170518170636%_
                                                    _%hd170515170628%_
                                                    _%hd170512170620%_
                                                    _%hd170509170612%_
                                                    _%hd170491170564%_)
                                                   (_%g170471170524%_
                                                    _%g170472170527%_))))
                                           (_%g170471170524%_
                                            _%g170472170527%_))
                                       (_%g170471170524%_ _%g170472170527%_))
                                   (_%g170471170524%_ _%g170472170527%_))
                               (_%g170471170524%_ _%g170472170527%_))))
                       (_%g170471170524%_ _%g170472170527%_))
                   (_%g170471170524%_ _%g170472170527%_))
               (_%g170471170524%_ _%g170472170527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g170471170524%_
                                                _%g170472170527%_))
                                           (_%g170471170524%_
                                            _%g170472170527%_))))
                                   (_%g170471170524%_ _%g170472170527%_))))
                           (_%g170471170524%_ _%g170472170527%_))))
                   (_%g170471170524%_ _%g170472170527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g170471170524%_
                                                    _%g170472170527%_))
                                               (_%g170471170524%_
                                                _%g170472170527%_))
                                           (_%g170471170524%_
                                            _%g170472170527%_))))
                                   (_%g170471170524%_ _%g170472170527%_))))
                           (_%g170471170524%_ _%g170472170527%_))
                       (_%g170471170524%_ _%g170472170527%_))))
               (_%g170471170524%_ _%g170472170527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g170471170524%_
                                                _%g170472170527%_))))
                                       (_%g170471170524%_ _%g170472170527%_))))
                               (_%g170471170524%_ _%g170472170527%_))
                           (_%g170471170524%_ _%g170472170527%_))
                       (_%g170471170524%_ _%g170472170527%_))))
               (_%g170471170524%_ _%g170472170527%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g170470171695%_ _%L168915%_))
                                         _%stx168843%_))))))))
                  (_%__kont171929171930%_ (lambda () _%stx168843%_)))
              (let ((_%__match171958171959%_
                     (lambda (_%e168855168883%_
                              _%hd168856168886%_
                              _%tl168857168888%_
                              _%e168858168891%_
                              _%hd168859168894%_
                              _%tl168860168896%_
                              _%e168861168899%_
                              _%hd168862168902%_
                              _%tl168863168904%_
                              _%e168864168907%_
                              _%hd168865168910%_
                              _%tl168866168912%_)
                       (let ((_%L168915%_ _%hd168865168910%_)
                             (_%L168916%_ _%hd168862168902%_))
                         (if (let ((__tmp173131
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168916%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp173131))
                             (_%__kont171927171928%_ _%L168915%_ _%L168916%_)
                             (_%__kont171929171930%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171925171926%_))
                    (let ((_%e168855168883%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171925171926%_))))
                      (let ((_%tl168857168888%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168855168883%_)))
                            (_%hd168856168886%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168855168883%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168857168888%_))
                            (let ((_%e168858168891%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168857168888%_))))
                              (let ((_%tl168860168896%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168858168891%_)))
                                    (_%hd168859168894%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168858168891%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd168859168894%_))
                                    (let ((_%e168861168899%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd168859168894%_))))
                                      (let ((_%tl168863168904%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168861168899%_)))
                                            (_%hd168862168902%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168861168899%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168863168904%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168860168896%_))
                                                (let ((_%e168864168907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168860168896%_))))
                                                  (let ((_%tl168866168912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168864168907%_)))
                                                        (_%hd168865168910%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168864168907%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168866168912%_))
                                                        (_%__match171958171959%_
                                                         _%e168855168883%_
                                                         _%hd168856168886%_
                                                         _%tl168857168888%_
                                                         _%e168858168891%_
                                                         _%hd168859168894%_
                                                         _%tl168860168896%_
                                                         _%e168861168899%_
                                                         _%hd168862168902%_
                                                         _%tl168863168904%_
                                                         _%e168864168907%_
                                                         _%hd168865168910%_
                                                         _%tl168866168912%_)
                                                        (_%__kont171929171930%_))))
                                                (_%__kont171929171930%_))
                                            (_%__kont171929171930%_))))
                                    (_%__kont171929171930%_))))
                            (_%__kont171929171930%_))))
                    (_%__kont171929171930%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self168695%_ _%stx168696%_)
        (let* ((_%__stx171961171962%_ _%stx168696%_)
               (_%g168699168732%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171961171962%_)))))
          (let ((_%__kont171963171964%_ (lambda (_%L168822%_) _%L168822%_))
                (_%__kont171965171966%_
                 (lambda (_%L168761%_ _%L168762%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self168695%_ _%L168761%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx171961171962%_))
                (let ((_%e168702168782%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx171961171962%_))))
                  (let ((_%tl168704168787%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168702168782%_)))
                        (_%hd168703168785%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168702168782%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl168704168787%_))
                        (let ((_%e168705168790%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168704168787%_))))
                          (let ((_%tl168707168795%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168705168790%_)))
                                (_%hd168706168793%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168705168790%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd168706168793%_))
                                (let ((_%e168708168798%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd168706168793%_))))
                                  (let ((_%tl168710168803%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168708168798%_)))
                                        (_%hd168709168801%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168708168798%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd168709168801%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd168709168801%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168710168803%_))
                                                (let ((_%e168711168806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168710168803%_))))
                                                  (let ((_%tl168713168811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168711168806%_)))
                                                        (_%hd168712168809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168711168806%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168713168811%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl168707168795%_))
                                                            (let ((_%e168714168814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl168707168795%_))))
                      (let ((_%tl168716168819%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168714168814%_)))
                            (_%hd168715168817%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168714168814%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168716168819%_))
                            (_%__kont171963171964%_ _%hd168712168809%_)
                            (let ()
                              (declare (not safe))
                              (_%g168699168732%_)))))
                    (let () (declare (not safe)) (_%g168699168732%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl168707168795%_))
                    (let ((_%e168725168753%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl168707168795%_))))
                      (let ((_%tl168727168758%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168725168753%_)))
                            (_%hd168726168756%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168725168753%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168727168758%_))
                            (_%__kont171965171966%_
                             _%hd168726168756%_
                             _%hd168706168793%_)
                            (let ()
                              (declare (not safe))
                              (_%g168699168732%_)))))
                    (let () (declare (not safe)) (_%g168699168732%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl168707168795%_))
                                                    (let ((_%e168725168753%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl168707168795%_))))
                                                      (let ((_%tl168727168758%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168725168753%_)))
                    (_%hd168726168756%_
                     (let () (declare (not safe)) (##car _%e168725168753%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl168727168758%_))
                    (_%__kont171965171966%_
                     _%hd168726168756%_
                     _%hd168706168793%_)
                    (let () (declare (not safe)) (_%g168699168732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g168699168732%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168707168795%_))
                                                (let ((_%e168725168753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168707168795%_))))
                                                  (let ((_%tl168727168758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168725168753%_)))
                                                        (_%hd168726168756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168725168753%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168727168758%_))
                                                        (_%__kont171965171966%_
                                                         _%hd168726168756%_
                                                         _%hd168706168793%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g168699168732%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168699168732%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168707168795%_))
                                            (let ((_%e168725168753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168707168795%_))))
                                              (let ((_%tl168727168758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168725168753%_)))
                                                    (_%hd168726168756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168725168753%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl168727168758%_))
                                                    (_%__kont171965171966%_
                                                     _%hd168726168756%_
                                                     _%hd168706168793%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g168699168732%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g168699168732%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl168707168795%_))
                                    (let ((_%e168725168753%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl168707168795%_))))
                                      (let ((_%tl168727168758%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168725168753%_)))
                                            (_%hd168726168756%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168725168753%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168727168758%_))
                                            (_%__kont171965171966%_
                                             _%hd168726168756%_
                                             _%hd168706168793%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g168699168732%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168699168732%_))))))
                        (let () (declare (not safe)) (_%g168699168732%_)))))
                (let () (declare (not safe)) (_%g168699168732%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self168611%_ _%stx168612%_)
        (let* ((_%g168614168635%_
                (lambda (_%g168615168632%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g168615168632%_))))
               (_%g168613168692%_
                (lambda (_%g168615168638%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g168615168638%_))
                      (let ((_%e168619168640%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g168615168638%_))))
                        (let ((_%hd168620168643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168619168640%_)))
                              (_%tl168621168645%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168619168640%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168621168645%_))
                              (let ((_%e168622168648%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168621168645%_))))
                                (let ((_%hd168623168651%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168622168648%_)))
                                      (_%tl168624168653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168622168648%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168624168653%_))
                                      (let ((_%e168625168656%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168624168653%_))))
                                        (let ((_%hd168626168659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168625168656%_)))
                                              (_%tl168627168661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168625168656%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168627168661%_))
                                              (let ((_%e168628168664%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168627168661%_))))
                                                (let ((_%hd168629168667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168628168664%_)))
                                                      (_%tl168630168669%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168628168664%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl168630168669%_))
                                                      ((lambda (_%L168672%_
                                                                _%L168673%_
                                                                _%L168674%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self168611%_
                                                            _%L168673%_)))
                                                       _%hd168629168667%_
                                                       _%hd168626168659%_
                                                       _%hd168623168651%_)
                                                      (_%g168614168635%_
                                                       _%g168615168638%_))))
                                              (_%g168614168635%_
                                               _%g168615168638%_))))
                                      (_%g168614168635%_ _%g168615168638%_))))
                              (_%g168614168635%_ _%g168615168638%_))))
                      (_%g168614168635%_ _%g168615168638%_)))))
          (_%g168613168692%_ _%stx168612%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self167572%_ _%stx167573%_)
        (let* ((_%__stx172027172028%_ _%stx167573%_)
               (_%g167581167803%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172027172028%_)))))
          (let ((_%__kont172029172030%_
                 (lambda (_%L168560%_ _%L168561%_ _%L168562%_ _%L168563%_)
                   (let ((__tmp173133
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167572%_ 'methods)))
                         (__tmp173132
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168561%_))))
                     (declare (not safe))
                     (hash-put! __tmp173133 __tmp173132 '#t))
                   (for-each
                    (lambda (_%g168596168598%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167572%_ _%g168596168598%_)))
                    (let ((__tmp173134
                           (lambda (_%g168600168603%_ _%g168601168605%_)
                             (cons _%g168600168603%_ _%g168601168605%_))))
                      (declare (not safe))
                      (__foldr1 __tmp173134 '() _%L168560%_)))))
                (_%__kont172033172034%_
                 (lambda (_%L168395%_
                          _%L168396%_
                          _%L168397%_
                          _%L168398%_
                          _%L168399%_)
                   (let ((__tmp173136
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167572%_ 'methods)))
                         (__tmp173135
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168396%_))))
                     (declare (not safe))
                     (hash-put! __tmp173136 __tmp173135 '#t))
                   (for-each
                    (lambda (_%g168439168441%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167572%_ _%g168439168441%_)))
                    (let ((__tmp173137
                           (lambda (_%g168443168446%_ _%g168444168448%_)
                             (cons _%g168443168446%_ _%g168444168448%_))))
                      (declare (not safe))
                      (__foldr1 __tmp173137 '() _%L168395%_)))))
                (_%__kont172037172038%_
                 (lambda (_%L168228%_ _%L168229%_ _%L168230%_)
                   (let ((__tmp173139
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167572%_ 'slots)))
                         (__tmp173138
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168228%_))))
                     (declare (not safe))
                     (hash-put! __tmp173139 __tmp173138 '#t))))
                (_%__kont172039172040%_
                 (lambda (_%L168105%_ _%L168106%_ _%L168107%_ _%L168108%_)
                   (let ((__tmp173141
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167572%_ 'slots)))
                         (__tmp173140
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168106%_))))
                     (declare (not safe))
                     (hash-put! __tmp173141 __tmp173140 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self167572%_ _%L168105%_))))
                (_%__kont172041172042%_
                 (lambda (_%L167979%_ _%L167980%_)
                   (let* ((_%accessor168002%_
                           (let ((__tmp173142
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167980%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp173142)))
                          (_%klass168004%_
                           (let ((__tmp173143
                                  (##structure-ref
                                   _%accessor168002%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167573%_
                              __tmp173143)))
                          (_%slot168006%_
                           (##structure-ref
                            _%accessor168002%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%accessor168002%_
                                    '4
                                    gxc#!accessor::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass168004%_
                                     _%slot168006%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass168004%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp173145
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167572%_ 'slots)))
                               (__tmp173144
                                (##structure-ref
                                 _%accessor168002%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp173145 __tmp173144 '#t))))))
                (_%__kont172043172044%_
                 (lambda (_%L167879%_ _%L167880%_ _%L167881%_)
                   (let* ((_%mutator167908%_
                           (let ((__tmp173146
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167881%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp173146)))
                          (_%klass167910%_
                           (let ((__tmp173147
                                  (##structure-ref
                                   _%mutator167908%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167573%_
                              __tmp173147)))
                          (_%slot167912%_
                           (##structure-ref
                            _%mutator167908%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%mutator167908%_
                                    '4
                                    gxc#!mutator::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167910%_
                                     _%slot167912%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167910%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp173148
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167572%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp173148 _%slot167912%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self167572%_ _%L167879%_)))))
                (_%__kont172045172046%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self167572%_ _%stx167573%_)))))
            (let* ((_%__match172526172527%_
                    (lambda (_%e167775167815%_
                             _%hd167776167818%_
                             _%tl167777167820%_
                             _%e167778167823%_
                             _%hd167779167826%_
                             _%tl167780167828%_
                             _%e167781167831%_
                             _%hd167782167834%_
                             _%tl167783167836%_
                             _%e167784167839%_
                             _%hd167785167842%_
                             _%tl167786167844%_
                             _%e167787167847%_
                             _%hd167788167850%_
                             _%tl167789167852%_
                             _%e167790167855%_
                             _%hd167791167858%_
                             _%tl167792167860%_
                             _%e167793167863%_
                             _%hd167794167866%_
                             _%tl167795167868%_
                             _%e167796167871%_
                             _%hd167797167874%_
                             _%tl167798167876%_)
                      (let ((_%L167879%_ _%hd167797167874%_)
                            (_%L167880%_ _%hd167794167866%_)
                            (_%L167881%_ _%hd167785167842%_))
                        (if (and (let ((__tmp173149
                                        (let ((__tmp173150
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167881%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp173150))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp173149
                                    'gxc#!mutator::t))
                                 (let ((__tmp173151
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167572%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167880%_
                                    __tmp173151)))
                            (_%__kont172043172044%_
                             _%L167879%_
                             _%L167880%_
                             _%L167881%_)
                            (_%__kont172045172046%_)))))
                   (_%__match172524172525%_
                    (lambda (_%e167775167815%_
                             _%hd167776167818%_
                             _%tl167777167820%_
                             _%e167778167823%_
                             _%hd167779167826%_
                             _%tl167780167828%_
                             _%e167781167831%_
                             _%hd167782167834%_
                             _%tl167783167836%_
                             _%e167784167839%_
                             _%hd167785167842%_
                             _%tl167786167844%_
                             _%e167787167847%_
                             _%hd167788167850%_
                             _%tl167789167852%_
                             _%e167790167855%_
                             _%hd167791167858%_
                             _%tl167792167860%_
                             _%e167793167863%_
                             _%hd167794167866%_
                             _%tl167795167868%_
                             _%e167796167871%_
                             _%hd167797167874%_
                             _%tl167798167876%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167798167876%_))
                          (_%__match172526172527%_
                           _%e167775167815%_
                           _%hd167776167818%_
                           _%tl167777167820%_
                           _%e167778167823%_
                           _%hd167779167826%_
                           _%tl167780167828%_
                           _%e167781167831%_
                           _%hd167782167834%_
                           _%tl167783167836%_
                           _%e167784167839%_
                           _%hd167785167842%_
                           _%tl167786167844%_
                           _%e167787167847%_
                           _%hd167788167850%_
                           _%tl167789167852%_
                           _%e167790167855%_
                           _%hd167791167858%_
                           _%tl167792167860%_
                           _%e167793167863%_
                           _%hd167794167866%_
                           _%tl167795167868%_
                           _%e167796167871%_
                           _%hd167797167874%_
                           _%tl167798167876%_)
                          (_%__kont172045172046%_))))
                   (_%__match172518172519%_
                    (lambda (_%e167775167815%_
                             _%hd167776167818%_
                             _%tl167777167820%_
                             _%e167778167823%_
                             _%hd167779167826%_
                             _%tl167780167828%_
                             _%e167781167831%_
                             _%hd167782167834%_
                             _%tl167783167836%_
                             _%e167784167839%_
                             _%hd167785167842%_
                             _%tl167786167844%_
                             _%e167787167847%_
                             _%hd167788167850%_
                             _%tl167789167852%_
                             _%e167790167855%_
                             _%hd167791167858%_
                             _%tl167792167860%_
                             _%e167793167863%_
                             _%hd167794167866%_
                             _%tl167795167868%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167789167852%_))
                          (let ((_%e167796167871%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167789167852%_))))
                            (let ((_%tl167798167876%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167796167871%_)))
                                  (_%hd167797167874%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167796167871%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167798167876%_))
                                  (_%__match172526172527%_
                                   _%e167775167815%_
                                   _%hd167776167818%_
                                   _%tl167777167820%_
                                   _%e167778167823%_
                                   _%hd167779167826%_
                                   _%tl167780167828%_
                                   _%e167781167831%_
                                   _%hd167782167834%_
                                   _%tl167783167836%_
                                   _%e167784167839%_
                                   _%hd167785167842%_
                                   _%tl167786167844%_
                                   _%e167787167847%_
                                   _%hd167788167850%_
                                   _%tl167789167852%_
                                   _%e167790167855%_
                                   _%hd167791167858%_
                                   _%tl167792167860%_
                                   _%e167793167863%_
                                   _%hd167794167866%_
                                   _%tl167795167868%_
                                   _%e167796167871%_
                                   _%hd167797167874%_
                                   _%tl167798167876%_)
                                  (_%__kont172045172046%_))))
                          (_%__kont172045172046%_))))
                   (_%__match172464172465%_
                    (lambda (_%e167751167923%_
                             _%hd167752167926%_
                             _%tl167753167928%_
                             _%e167754167931%_
                             _%hd167755167934%_
                             _%tl167756167936%_
                             _%e167757167939%_
                             _%hd167758167942%_
                             _%tl167759167944%_
                             _%e167760167947%_
                             _%hd167761167950%_
                             _%tl167762167952%_
                             _%e167763167955%_
                             _%hd167764167958%_
                             _%tl167765167960%_
                             _%e167766167963%_
                             _%hd167767167966%_
                             _%tl167768167968%_
                             _%e167769167971%_
                             _%hd167770167974%_
                             _%tl167771167976%_)
                      (let ((_%L167979%_ _%hd167770167974%_)
                            (_%L167980%_ _%hd167761167950%_))
                        (if (and (let ((__tmp173152
                                        (let ((__tmp173153
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167980%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp173153))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp173152
                                    'gxc#!accessor::t))
                                 (let ((__tmp173154
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167572%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167979%_
                                    __tmp173154)))
                            (_%__kont172041172042%_ _%L167979%_ _%L167980%_)
                            (_%__kont172045172046%_)))))
                   (_%__match172462172463%_
                    (lambda (_%e167751167923%_
                             _%hd167752167926%_
                             _%tl167753167928%_
                             _%e167754167931%_
                             _%hd167755167934%_
                             _%tl167756167936%_
                             _%e167757167939%_
                             _%hd167758167942%_
                             _%tl167759167944%_
                             _%e167760167947%_
                             _%hd167761167950%_
                             _%tl167762167952%_
                             _%e167763167955%_
                             _%hd167764167958%_
                             _%tl167765167960%_
                             _%e167766167963%_
                             _%hd167767167966%_
                             _%tl167768167968%_
                             _%e167769167971%_
                             _%hd167770167974%_
                             _%tl167771167976%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167765167960%_))
                          (_%__match172464172465%_
                           _%e167751167923%_
                           _%hd167752167926%_
                           _%tl167753167928%_
                           _%e167754167931%_
                           _%hd167755167934%_
                           _%tl167756167936%_
                           _%e167757167939%_
                           _%hd167758167942%_
                           _%tl167759167944%_
                           _%e167760167947%_
                           _%hd167761167950%_
                           _%tl167762167952%_
                           _%e167763167955%_
                           _%hd167764167958%_
                           _%tl167765167960%_
                           _%e167766167963%_
                           _%hd167767167966%_
                           _%tl167768167968%_
                           _%e167769167971%_
                           _%hd167770167974%_
                           _%tl167771167976%_)
                          (_%__match172518172519%_
                           _%e167751167923%_
                           _%hd167752167926%_
                           _%tl167753167928%_
                           _%e167754167931%_
                           _%hd167755167934%_
                           _%tl167756167936%_
                           _%e167757167939%_
                           _%hd167758167942%_
                           _%tl167759167944%_
                           _%e167760167947%_
                           _%hd167761167950%_
                           _%tl167762167952%_
                           _%e167763167955%_
                           _%hd167764167958%_
                           _%tl167765167960%_
                           _%e167766167963%_
                           _%hd167767167966%_
                           _%tl167768167968%_
                           _%e167769167971%_
                           _%hd167770167974%_
                           _%tl167771167976%_))))
                   (_%__match172408172409%_
                    (lambda (_%e167716168017%_
                             _%hd167717168020%_
                             _%tl167718168022%_
                             _%e167719168025%_
                             _%hd167720168028%_
                             _%tl167721168030%_
                             _%e167722168033%_
                             _%hd167723168036%_
                             _%tl167724168038%_
                             _%e167725168041%_
                             _%hd167726168044%_
                             _%tl167727168046%_
                             _%e167728168049%_
                             _%hd167729168052%_
                             _%tl167730168054%_
                             _%e167731168057%_
                             _%hd167732168060%_
                             _%tl167733168062%_
                             _%e167734168065%_
                             _%hd167735168068%_
                             _%tl167736168070%_
                             _%e167737168073%_
                             _%hd167738168076%_
                             _%tl167739168078%_
                             _%e167740168081%_
                             _%hd167741168084%_
                             _%tl167742168086%_
                             _%e167743168089%_
                             _%hd167744168092%_
                             _%tl167745168094%_
                             _%e167746168097%_
                             _%hd167747168100%_
                             _%tl167748168102%_)
                      (let ((_%L168105%_ _%hd167747168100%_)
                            (_%L168106%_ _%hd167744168092%_)
                            (_%L168107%_ _%hd167735168068%_)
                            (_%L168108%_ _%hd167726168044%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168108%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168108%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp173155
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167572%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168107%_
                                    __tmp173155)))
                            (_%__kont172039172040%_
                             _%L168105%_
                             _%L168106%_
                             _%L168107%_
                             _%L168108%_)
                            (_%__kont172045172046%_)))))
                   (_%__match172400172401%_
                    (lambda (_%e167716168017%_
                             _%hd167717168020%_
                             _%tl167718168022%_
                             _%e167719168025%_
                             _%hd167720168028%_
                             _%tl167721168030%_
                             _%e167722168033%_
                             _%hd167723168036%_
                             _%tl167724168038%_
                             _%e167725168041%_
                             _%hd167726168044%_
                             _%tl167727168046%_
                             _%e167728168049%_
                             _%hd167729168052%_
                             _%tl167730168054%_
                             _%e167731168057%_
                             _%hd167732168060%_
                             _%tl167733168062%_
                             _%e167734168065%_
                             _%hd167735168068%_
                             _%tl167736168070%_
                             _%e167737168073%_
                             _%hd167738168076%_
                             _%tl167739168078%_
                             _%e167740168081%_
                             _%hd167741168084%_
                             _%tl167742168086%_
                             _%e167743168089%_
                             _%hd167744168092%_
                             _%tl167745168094%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167739168078%_))
                          (let ((_%e167746168097%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167739168078%_))))
                            (let ((_%tl167748168102%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167746168097%_)))
                                  (_%hd167747168100%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167746168097%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167748168102%_))
                                  (_%__match172408172409%_
                                   _%e167716168017%_
                                   _%hd167717168020%_
                                   _%tl167718168022%_
                                   _%e167719168025%_
                                   _%hd167720168028%_
                                   _%tl167721168030%_
                                   _%e167722168033%_
                                   _%hd167723168036%_
                                   _%tl167724168038%_
                                   _%e167725168041%_
                                   _%hd167726168044%_
                                   _%tl167727168046%_
                                   _%e167728168049%_
                                   _%hd167729168052%_
                                   _%tl167730168054%_
                                   _%e167731168057%_
                                   _%hd167732168060%_
                                   _%tl167733168062%_
                                   _%e167734168065%_
                                   _%hd167735168068%_
                                   _%tl167736168070%_
                                   _%e167737168073%_
                                   _%hd167738168076%_
                                   _%tl167739168078%_
                                   _%e167740168081%_
                                   _%hd167741168084%_
                                   _%tl167742168086%_
                                   _%e167743168089%_
                                   _%hd167744168092%_
                                   _%tl167745168094%_
                                   _%e167746168097%_
                                   _%hd167747168100%_
                                   _%tl167748168102%_)
                                  (_%__kont172045172046%_))))
                          (_%__match172524172525%_
                           _%e167716168017%_
                           _%hd167717168020%_
                           _%tl167718168022%_
                           _%e167719168025%_
                           _%hd167720168028%_
                           _%tl167721168030%_
                           _%e167722168033%_
                           _%hd167723168036%_
                           _%tl167724168038%_
                           _%e167725168041%_
                           _%hd167726168044%_
                           _%tl167727168046%_
                           _%e167728168049%_
                           _%hd167729168052%_
                           _%tl167730168054%_
                           _%e167731168057%_
                           _%hd167732168060%_
                           _%tl167733168062%_
                           _%e167734168065%_
                           _%hd167735168068%_
                           _%tl167736168070%_
                           _%e167737168073%_
                           _%hd167738168076%_
                           _%tl167739168078%_))))
                   (_%__match172322172323%_
                    (lambda (_%e167682168148%_
                             _%hd167683168151%_
                             _%tl167684168153%_
                             _%e167685168156%_
                             _%hd167686168159%_
                             _%tl167687168161%_
                             _%e167688168164%_
                             _%hd167689168167%_
                             _%tl167690168169%_
                             _%e167691168172%_
                             _%hd167692168175%_
                             _%tl167693168177%_
                             _%e167694168180%_
                             _%hd167695168183%_
                             _%tl167696168185%_
                             _%e167697168188%_
                             _%hd167698168191%_
                             _%tl167699168193%_
                             _%e167700168196%_
                             _%hd167701168199%_
                             _%tl167702168201%_
                             _%e167703168204%_
                             _%hd167704168207%_
                             _%tl167705168209%_
                             _%e167706168212%_
                             _%hd167707168215%_
                             _%tl167708168217%_
                             _%e167709168220%_
                             _%hd167710168223%_
                             _%tl167711168225%_)
                      (let ((_%L168228%_ _%hd167710168223%_)
                            (_%L168229%_ _%hd167701168199%_)
                            (_%L168230%_ _%hd167692168175%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168230%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168230%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp173156
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167572%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168229%_
                                    __tmp173156)))
                            (_%__kont172037172038%_
                             _%L168228%_
                             _%L168229%_
                             _%L168230%_)
                            (_%__match172526172527%_
                             _%e167682168148%_
                             _%hd167683168151%_
                             _%tl167684168153%_
                             _%e167685168156%_
                             _%hd167686168159%_
                             _%tl167687168161%_
                             _%e167688168164%_
                             _%hd167689168167%_
                             _%tl167690168169%_
                             _%e167691168172%_
                             _%hd167692168175%_
                             _%tl167693168177%_
                             _%e167694168180%_
                             _%hd167695168183%_
                             _%tl167696168185%_
                             _%e167697168188%_
                             _%hd167698168191%_
                             _%tl167699168193%_
                             _%e167700168196%_
                             _%hd167701168199%_
                             _%tl167702168201%_
                             _%e167703168204%_
                             _%hd167704168207%_
                             _%tl167705168209%_)))))
                   (_%__match172320172321%_
                    (lambda (_%e167682168148%_
                             _%hd167683168151%_
                             _%tl167684168153%_
                             _%e167685168156%_
                             _%hd167686168159%_
                             _%tl167687168161%_
                             _%e167688168164%_
                             _%hd167689168167%_
                             _%tl167690168169%_
                             _%e167691168172%_
                             _%hd167692168175%_
                             _%tl167693168177%_
                             _%e167694168180%_
                             _%hd167695168183%_
                             _%tl167696168185%_
                             _%e167697168188%_
                             _%hd167698168191%_
                             _%tl167699168193%_
                             _%e167700168196%_
                             _%hd167701168199%_
                             _%tl167702168201%_
                             _%e167703168204%_
                             _%hd167704168207%_
                             _%tl167705168209%_
                             _%e167706168212%_
                             _%hd167707168215%_
                             _%tl167708168217%_
                             _%e167709168220%_
                             _%hd167710168223%_
                             _%tl167711168225%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167705168209%_))
                          (_%__match172322172323%_
                           _%e167682168148%_
                           _%hd167683168151%_
                           _%tl167684168153%_
                           _%e167685168156%_
                           _%hd167686168159%_
                           _%tl167687168161%_
                           _%e167688168164%_
                           _%hd167689168167%_
                           _%tl167690168169%_
                           _%e167691168172%_
                           _%hd167692168175%_
                           _%tl167693168177%_
                           _%e167694168180%_
                           _%hd167695168183%_
                           _%tl167696168185%_
                           _%e167697168188%_
                           _%hd167698168191%_
                           _%tl167699168193%_
                           _%e167700168196%_
                           _%hd167701168199%_
                           _%tl167702168201%_
                           _%e167703168204%_
                           _%hd167704168207%_
                           _%tl167705168209%_
                           _%e167706168212%_
                           _%hd167707168215%_
                           _%tl167708168217%_
                           _%e167709168220%_
                           _%hd167710168223%_
                           _%tl167711168225%_)
                          (_%__match172400172401%_
                           _%e167682168148%_
                           _%hd167683168151%_
                           _%tl167684168153%_
                           _%e167685168156%_
                           _%hd167686168159%_
                           _%tl167687168161%_
                           _%e167688168164%_
                           _%hd167689168167%_
                           _%tl167690168169%_
                           _%e167691168172%_
                           _%hd167692168175%_
                           _%tl167693168177%_
                           _%e167694168180%_
                           _%hd167695168183%_
                           _%tl167696168185%_
                           _%e167697168188%_
                           _%hd167698168191%_
                           _%tl167699168193%_
                           _%e167700168196%_
                           _%hd167701168199%_
                           _%tl167702168201%_
                           _%e167703168204%_
                           _%hd167704168207%_
                           _%tl167705168209%_
                           _%e167706168212%_
                           _%hd167707168215%_
                           _%tl167708168217%_
                           _%e167709168220%_
                           _%hd167710168223%_
                           _%tl167711168225%_))))
                   (_%__match172310172311%_
                    (lambda (_%e167682168148%_
                             _%hd167683168151%_
                             _%tl167684168153%_
                             _%e167685168156%_
                             _%hd167686168159%_
                             _%tl167687168161%_
                             _%e167688168164%_
                             _%hd167689168167%_
                             _%tl167690168169%_
                             _%e167691168172%_
                             _%hd167692168175%_
                             _%tl167693168177%_
                             _%e167694168180%_
                             _%hd167695168183%_
                             _%tl167696168185%_
                             _%e167697168188%_
                             _%hd167698168191%_
                             _%tl167699168193%_
                             _%e167700168196%_
                             _%hd167701168199%_
                             _%tl167702168201%_
                             _%e167703168204%_
                             _%hd167704168207%_
                             _%tl167705168209%_
                             _%e167706168212%_
                             _%hd167707168215%_
                             _%tl167708168217%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd167707168215%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167708168217%_))
                              (let ((_%e167709168220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167708168217%_))))
                                (let ((_%tl167711168225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167709168220%_)))
                                      (_%hd167710168223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167709168220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167711168225%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl167705168209%_))
                                          (_%__match172322172323%_
                                           _%e167682168148%_
                                           _%hd167683168151%_
                                           _%tl167684168153%_
                                           _%e167685168156%_
                                           _%hd167686168159%_
                                           _%tl167687168161%_
                                           _%e167688168164%_
                                           _%hd167689168167%_
                                           _%tl167690168169%_
                                           _%e167691168172%_
                                           _%hd167692168175%_
                                           _%tl167693168177%_
                                           _%e167694168180%_
                                           _%hd167695168183%_
                                           _%tl167696168185%_
                                           _%e167697168188%_
                                           _%hd167698168191%_
                                           _%tl167699168193%_
                                           _%e167700168196%_
                                           _%hd167701168199%_
                                           _%tl167702168201%_
                                           _%e167703168204%_
                                           _%hd167704168207%_
                                           _%tl167705168209%_
                                           _%e167706168212%_
                                           _%hd167707168215%_
                                           _%tl167708168217%_
                                           _%e167709168220%_
                                           _%hd167710168223%_
                                           _%tl167711168225%_)
                                          (_%__match172400172401%_
                                           _%e167682168148%_
                                           _%hd167683168151%_
                                           _%tl167684168153%_
                                           _%e167685168156%_
                                           _%hd167686168159%_
                                           _%tl167687168161%_
                                           _%e167688168164%_
                                           _%hd167689168167%_
                                           _%tl167690168169%_
                                           _%e167691168172%_
                                           _%hd167692168175%_
                                           _%tl167693168177%_
                                           _%e167694168180%_
                                           _%hd167695168183%_
                                           _%tl167696168185%_
                                           _%e167697168188%_
                                           _%hd167698168191%_
                                           _%tl167699168193%_
                                           _%e167700168196%_
                                           _%hd167701168199%_
                                           _%tl167702168201%_
                                           _%e167703168204%_
                                           _%hd167704168207%_
                                           _%tl167705168209%_
                                           _%e167706168212%_
                                           _%hd167707168215%_
                                           _%tl167708168217%_
                                           _%e167709168220%_
                                           _%hd167710168223%_
                                           _%tl167711168225%_))
                                      (_%__match172524172525%_
                                       _%e167682168148%_
                                       _%hd167683168151%_
                                       _%tl167684168153%_
                                       _%e167685168156%_
                                       _%hd167686168159%_
                                       _%tl167687168161%_
                                       _%e167688168164%_
                                       _%hd167689168167%_
                                       _%tl167690168169%_
                                       _%e167691168172%_
                                       _%hd167692168175%_
                                       _%tl167693168177%_
                                       _%e167694168180%_
                                       _%hd167695168183%_
                                       _%tl167696168185%_
                                       _%e167697168188%_
                                       _%hd167698168191%_
                                       _%tl167699168193%_
                                       _%e167700168196%_
                                       _%hd167701168199%_
                                       _%tl167702168201%_
                                       _%e167703168204%_
                                       _%hd167704168207%_
                                       _%tl167705168209%_))))
                              (_%__match172524172525%_
                               _%e167682168148%_
                               _%hd167683168151%_
                               _%tl167684168153%_
                               _%e167685168156%_
                               _%hd167686168159%_
                               _%tl167687168161%_
                               _%e167688168164%_
                               _%hd167689168167%_
                               _%tl167690168169%_
                               _%e167691168172%_
                               _%hd167692168175%_
                               _%tl167693168177%_
                               _%e167694168180%_
                               _%hd167695168183%_
                               _%tl167696168185%_
                               _%e167697168188%_
                               _%hd167698168191%_
                               _%tl167699168193%_
                               _%e167700168196%_
                               _%hd167701168199%_
                               _%tl167702168201%_
                               _%e167703168204%_
                               _%hd167704168207%_
                               _%tl167705168209%_))
                          (_%__match172524172525%_
                           _%e167682168148%_
                           _%hd167683168151%_
                           _%tl167684168153%_
                           _%e167685168156%_
                           _%hd167686168159%_
                           _%tl167687168161%_
                           _%e167688168164%_
                           _%hd167689168167%_
                           _%tl167690168169%_
                           _%e167691168172%_
                           _%hd167692168175%_
                           _%tl167693168177%_
                           _%e167694168180%_
                           _%hd167695168183%_
                           _%tl167696168185%_
                           _%e167697168188%_
                           _%hd167698168191%_
                           _%tl167699168193%_
                           _%e167700168196%_
                           _%hd167701168199%_
                           _%tl167702168201%_
                           _%e167703168204%_
                           _%hd167704168207%_
                           _%tl167705168209%_))))
                   (_%__match172242172243%_
                    (lambda (_%e167631168267%_
                             _%hd167632168270%_
                             _%tl167633168272%_
                             _%e167634168275%_
                             _%hd167635168278%_
                             _%tl167636168280%_
                             _%e167637168283%_
                             _%hd167638168286%_
                             _%tl167639168288%_
                             _%e167640168291%_
                             _%hd167641168294%_
                             _%tl167642168296%_
                             _%e167643168299%_
                             _%hd167644168302%_
                             _%tl167645168304%_
                             _%e167646168307%_
                             _%hd167647168310%_
                             _%tl167648168312%_
                             _%e167649168315%_
                             _%hd167650168318%_
                             _%tl167651168320%_
                             _%e167652168323%_
                             _%hd167653168326%_
                             _%tl167654168328%_
                             _%e167655168331%_
                             _%hd167656168334%_
                             _%tl167657168336%_
                             _%e167658168339%_
                             _%hd167659168342%_
                             _%tl167660168344%_
                             _%e167661168347%_
                             _%hd167662168350%_
                             _%tl167663168352%_
                             _%e167664168355%_
                             _%hd167665168358%_
                             _%tl167666168360%_
                             _%e167667168363%_
                             _%hd167668168366%_
                             _%tl167669168368%_
                             _%__splice172035172036%_
                             _%target167670168371%_
                             _%tl167672168373%_)
                      (letrec ((_%loop167673168376%_
                                (lambda (_%hd167671168379%_
                                         _%args167677168381%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167671168379%_))
                                      (let ((_%e167674168384%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167671168379%_))))
                                        (let ((_%lp-tl167676168389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167674168384%_)))
                                              (_%lp-hd167675168387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167674168384%_))))
                                          (_%loop167673168376%_
                                           _%lp-tl167676168389%_
                                           (cons _%lp-hd167675168387%_
                                                 _%args167677168381%_))))
                                      (let ((_%args167678168392%_
                                             (reverse _%args167677168381%_)))
                                        (let ((_%L168395%_
                                               _%args167678168392%_)
                                              (_%L168396%_ _%hd167668168366%_)
                                              (_%L168397%_ _%hd167659168342%_)
                                              (_%L168398%_ _%hd167650168318%_)
                                              (_%L168399%_ _%hd167641168294%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168399%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168398%_
                                                      'call-method))
                                                   (let ((__tmp173157
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167572%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168397%_
                                                      __tmp173157)))
                                              (_%__kont172033172034%_
                                               _%L168395%_
                                               _%L168396%_
                                               _%L168397%_
                                               _%L168398%_
                                               _%L168399%_)
                                              (_%__kont172045172046%_))))))))
                        (_%loop167673168376%_ _%target167670168371%_ '()))))
                   (_%__match172200172201%_
                    (lambda (_%e167631168267%_
                             _%hd167632168270%_
                             _%tl167633168272%_
                             _%e167634168275%_
                             _%hd167635168278%_
                             _%tl167636168280%_
                             _%e167637168283%_
                             _%hd167638168286%_
                             _%tl167639168288%_
                             _%e167640168291%_
                             _%hd167641168294%_
                             _%tl167642168296%_
                             _%e167643168299%_
                             _%hd167644168302%_
                             _%tl167645168304%_
                             _%e167646168307%_
                             _%hd167647168310%_
                             _%tl167648168312%_
                             _%e167649168315%_
                             _%hd167650168318%_
                             _%tl167651168320%_
                             _%e167652168323%_
                             _%hd167653168326%_
                             _%tl167654168328%_
                             _%e167655168331%_
                             _%hd167656168334%_
                             _%tl167657168336%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd167656168334%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167657168336%_))
                              (let ((_%e167658168339%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167657168336%_))))
                                (let ((_%tl167660168344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167658168339%_)))
                                      (_%hd167659168342%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167658168339%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167660168344%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167654168328%_))
                                          (let ((_%e167661168347%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167654168328%_))))
                                            (let ((_%tl167663168352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167661168347%_)))
                                                  (_%hd167662168350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167661168347%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167662168350%_))
                                                  (let ((_%e167664168355%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167662168350%_))))
                                                    (let ((_%tl167666168360%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167664168355%_)))
                                                          (_%hd167665168358%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167664168355%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd167665168358%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd167665168358%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167666168360%_))
                          (let ((_%e167667168363%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167666168360%_))))
                            (let ((_%tl167669168368%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167667168363%_)))
                                  (_%hd167668168366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167667168363%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167669168368%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl167663168352%_))
                                      (let ((_%__splice172035172036%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl167663168352%_
                                                '0))))
                                        (let ((_%tl167672168373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice172035172036%_
                                                  '1)))
                                              (_%target167670168371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice172035172036%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl167672168373%_))
                                              (_%__match172242172243%_
                                               _%e167631168267%_
                                               _%hd167632168270%_
                                               _%tl167633168272%_
                                               _%e167634168275%_
                                               _%hd167635168278%_
                                               _%tl167636168280%_
                                               _%e167637168283%_
                                               _%hd167638168286%_
                                               _%tl167639168288%_
                                               _%e167640168291%_
                                               _%hd167641168294%_
                                               _%tl167642168296%_
                                               _%e167643168299%_
                                               _%hd167644168302%_
                                               _%tl167645168304%_
                                               _%e167646168307%_
                                               _%hd167647168310%_
                                               _%tl167648168312%_
                                               _%e167649168315%_
                                               _%hd167650168318%_
                                               _%tl167651168320%_
                                               _%e167652168323%_
                                               _%hd167653168326%_
                                               _%tl167654168328%_
                                               _%e167655168331%_
                                               _%hd167656168334%_
                                               _%tl167657168336%_
                                               _%e167658168339%_
                                               _%hd167659168342%_
                                               _%tl167660168344%_
                                               _%e167661168347%_
                                               _%hd167662168350%_
                                               _%tl167663168352%_
                                               _%e167664168355%_
                                               _%hd167665168358%_
                                               _%tl167666168360%_
                                               _%e167667168363%_
                                               _%hd167668168366%_
                                               _%tl167669168368%_
                                               _%__splice172035172036%_
                                               _%target167670168371%_
                                               _%tl167672168373%_)
                                              (_%__kont172045172046%_))))
                                      (_%__kont172045172046%_))
                                  (_%__kont172045172046%_))))
                          (_%__kont172045172046%_))
                      (_%__kont172045172046%_))
                  (_%__kont172045172046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172045172046%_))))
                                          (_%__match172524172525%_
                                           _%e167631168267%_
                                           _%hd167632168270%_
                                           _%tl167633168272%_
                                           _%e167634168275%_
                                           _%hd167635168278%_
                                           _%tl167636168280%_
                                           _%e167637168283%_
                                           _%hd167638168286%_
                                           _%tl167639168288%_
                                           _%e167640168291%_
                                           _%hd167641168294%_
                                           _%tl167642168296%_
                                           _%e167643168299%_
                                           _%hd167644168302%_
                                           _%tl167645168304%_
                                           _%e167646168307%_
                                           _%hd167647168310%_
                                           _%tl167648168312%_
                                           _%e167649168315%_
                                           _%hd167650168318%_
                                           _%tl167651168320%_
                                           _%e167652168323%_
                                           _%hd167653168326%_
                                           _%tl167654168328%_))
                                      (_%__match172524172525%_
                                       _%e167631168267%_
                                       _%hd167632168270%_
                                       _%tl167633168272%_
                                       _%e167634168275%_
                                       _%hd167635168278%_
                                       _%tl167636168280%_
                                       _%e167637168283%_
                                       _%hd167638168286%_
                                       _%tl167639168288%_
                                       _%e167640168291%_
                                       _%hd167641168294%_
                                       _%tl167642168296%_
                                       _%e167643168299%_
                                       _%hd167644168302%_
                                       _%tl167645168304%_
                                       _%e167646168307%_
                                       _%hd167647168310%_
                                       _%tl167648168312%_
                                       _%e167649168315%_
                                       _%hd167650168318%_
                                       _%tl167651168320%_
                                       _%e167652168323%_
                                       _%hd167653168326%_
                                       _%tl167654168328%_))))
                              (_%__match172524172525%_
                               _%e167631168267%_
                               _%hd167632168270%_
                               _%tl167633168272%_
                               _%e167634168275%_
                               _%hd167635168278%_
                               _%tl167636168280%_
                               _%e167637168283%_
                               _%hd167638168286%_
                               _%tl167639168288%_
                               _%e167640168291%_
                               _%hd167641168294%_
                               _%tl167642168296%_
                               _%e167643168299%_
                               _%hd167644168302%_
                               _%tl167645168304%_
                               _%e167646168307%_
                               _%hd167647168310%_
                               _%tl167648168312%_
                               _%e167649168315%_
                               _%hd167650168318%_
                               _%tl167651168320%_
                               _%e167652168323%_
                               _%hd167653168326%_
                               _%tl167654168328%_))
                          (_%__match172310172311%_
                           _%e167631168267%_
                           _%hd167632168270%_
                           _%tl167633168272%_
                           _%e167634168275%_
                           _%hd167635168278%_
                           _%tl167636168280%_
                           _%e167637168283%_
                           _%hd167638168286%_
                           _%tl167639168288%_
                           _%e167640168291%_
                           _%hd167641168294%_
                           _%tl167642168296%_
                           _%e167643168299%_
                           _%hd167644168302%_
                           _%tl167645168304%_
                           _%e167646168307%_
                           _%hd167647168310%_
                           _%tl167648168312%_
                           _%e167649168315%_
                           _%hd167650168318%_
                           _%tl167651168320%_
                           _%e167652168323%_
                           _%hd167653168326%_
                           _%tl167654168328%_
                           _%e167655168331%_
                           _%hd167656168334%_
                           _%tl167657168336%_))))
                   (_%__match172132172133%_
                    (lambda (_%e167587168456%_
                             _%hd167588168459%_
                             _%tl167589168461%_
                             _%e167590168464%_
                             _%hd167591168467%_
                             _%tl167592168469%_
                             _%e167593168472%_
                             _%hd167594168475%_
                             _%tl167595168477%_
                             _%e167596168480%_
                             _%hd167597168483%_
                             _%tl167598168485%_
                             _%e167599168488%_
                             _%hd167600168491%_
                             _%tl167601168493%_
                             _%e167602168496%_
                             _%hd167603168499%_
                             _%tl167604168501%_
                             _%e167605168504%_
                             _%hd167606168507%_
                             _%tl167607168509%_
                             _%e167608168512%_
                             _%hd167609168515%_
                             _%tl167610168517%_
                             _%e167611168520%_
                             _%hd167612168523%_
                             _%tl167613168525%_
                             _%e167614168528%_
                             _%hd167615168531%_
                             _%tl167616168533%_
                             _%__splice172031172032%_
                             _%target167617168536%_
                             _%tl167619168538%_)
                      (letrec ((_%loop167620168541%_
                                (lambda (_%hd167618168544%_
                                         _%args167624168546%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167618168544%_))
                                      (let ((_%e167621168549%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167618168544%_))))
                                        (let ((_%lp-tl167623168554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167621168549%_)))
                                              (_%lp-hd167622168552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167621168549%_))))
                                          (_%loop167620168541%_
                                           _%lp-tl167623168554%_
                                           (cons _%lp-hd167622168552%_
                                                 _%args167624168546%_))))
                                      (let ((_%args167625168557%_
                                             (reverse _%args167624168546%_)))
                                        (let ((_%L168560%_
                                               _%args167625168557%_)
                                              (_%L168561%_ _%hd167615168531%_)
                                              (_%L168562%_ _%hd167606168507%_)
                                              (_%L168563%_ _%hd167597168483%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168563%_
                                                      'call-method))
                                                   (let ((__tmp173158
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167572%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168562%_
                                                      __tmp173158)))
                                              (_%__kont172029172030%_
                                               _%L168560%_
                                               _%L168561%_
                                               _%L168562%_
                                               _%L168563%_)
                                              (_%__match172320172321%_
                                               _%e167587168456%_
                                               _%hd167588168459%_
                                               _%tl167589168461%_
                                               _%e167590168464%_
                                               _%hd167591168467%_
                                               _%tl167592168469%_
                                               _%e167593168472%_
                                               _%hd167594168475%_
                                               _%tl167595168477%_
                                               _%e167596168480%_
                                               _%hd167597168483%_
                                               _%tl167598168485%_
                                               _%e167599168488%_
                                               _%hd167600168491%_
                                               _%tl167601168493%_
                                               _%e167602168496%_
                                               _%hd167603168499%_
                                               _%tl167604168501%_
                                               _%e167605168504%_
                                               _%hd167606168507%_
                                               _%tl167607168509%_
                                               _%e167608168512%_
                                               _%hd167609168515%_
                                               _%tl167610168517%_
                                               _%e167611168520%_
                                               _%hd167612168523%_
                                               _%tl167613168525%_
                                               _%e167614168528%_
                                               _%hd167615168531%_
                                               _%tl167616168533%_))))))))
                        (_%loop167620168541%_ _%target167617168536%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172027172028%_))
                  (let ((_%e167587168456%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172027172028%_))))
                    (let ((_%tl167589168461%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167587168456%_)))
                          (_%hd167588168459%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167587168456%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167589168461%_))
                          (let ((_%e167590168464%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167589168461%_))))
                            (let ((_%tl167592168469%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167590168464%_)))
                                  (_%hd167591168467%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167590168464%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd167591168467%_))
                                  (let ((_%e167593168472%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd167591168467%_))))
                                    (let ((_%tl167595168477%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e167593168472%_)))
                                          (_%hd167594168475%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e167593168472%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd167594168475%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd167594168475%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl167595168477%_))
                                                  (let ((_%e167596168480%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl167595168477%_))))
                                                    (let ((_%tl167598168485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167596168480%_)))
                                                          (_%hd167597168483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167596168480%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl167598168485%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl167592168469%_))
                      (let ((_%e167599168488%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl167592168469%_))))
                        (let ((_%tl167601168493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167599168488%_)))
                              (_%hd167600168491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167599168488%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd167600168491%_))
                              (let ((_%e167602168496%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd167600168491%_))))
                                (let ((_%tl167604168501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167602168496%_)))
                                      (_%hd167603168499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167602168496%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd167603168499%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd167603168499%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl167604168501%_))
                                              (let ((_%e167605168504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl167604168501%_))))
                                                (let ((_%tl167607168509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167605168504%_)))
                                                      (_%hd167606168507%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167605168504%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl167607168509%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl167601168493%_))
                                                          (let ((_%e167608168512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl167601168493%_))))
                    (let ((_%tl167610168517%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167608168512%_)))
                          (_%hd167609168515%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167608168512%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd167609168515%_))
                          (let ((_%e167611168520%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd167609168515%_))))
                            (let ((_%tl167613168525%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167611168520%_)))
                                  (_%hd167612168523%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167611168520%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd167612168523%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd167612168523%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167613168525%_))
                                          (let ((_%e167614168528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167613168525%_))))
                                            (let ((_%tl167616168533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167614168528%_)))
                                                  (_%hd167615168531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167614168528%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl167616168533%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl167610168517%_))
                                                      (let ((_%__splice172031172032%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl167610168517%_ '0))))
                (let ((_%tl167619168538%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice172031172032%_ '1)))
                      (_%target167617168536%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice172031172032%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167619168538%_))
                      (_%__match172132172133%_
                       _%e167587168456%_
                       _%hd167588168459%_
                       _%tl167589168461%_
                       _%e167590168464%_
                       _%hd167591168467%_
                       _%tl167592168469%_
                       _%e167593168472%_
                       _%hd167594168475%_
                       _%tl167595168477%_
                       _%e167596168480%_
                       _%hd167597168483%_
                       _%tl167598168485%_
                       _%e167599168488%_
                       _%hd167600168491%_
                       _%tl167601168493%_
                       _%e167602168496%_
                       _%hd167603168499%_
                       _%tl167604168501%_
                       _%e167605168504%_
                       _%hd167606168507%_
                       _%tl167607168509%_
                       _%e167608168512%_
                       _%hd167609168515%_
                       _%tl167610168517%_
                       _%e167611168520%_
                       _%hd167612168523%_
                       _%tl167613168525%_
                       _%e167614168528%_
                       _%hd167615168531%_
                       _%tl167616168533%_
                       _%__splice172031172032%_
                       _%target167617168536%_
                       _%tl167619168538%_)
                      (_%__match172320172321%_
                       _%e167587168456%_
                       _%hd167588168459%_
                       _%tl167589168461%_
                       _%e167590168464%_
                       _%hd167591168467%_
                       _%tl167592168469%_
                       _%e167593168472%_
                       _%hd167594168475%_
                       _%tl167595168477%_
                       _%e167596168480%_
                       _%hd167597168483%_
                       _%tl167598168485%_
                       _%e167599168488%_
                       _%hd167600168491%_
                       _%tl167601168493%_
                       _%e167602168496%_
                       _%hd167603168499%_
                       _%tl167604168501%_
                       _%e167605168504%_
                       _%hd167606168507%_
                       _%tl167607168509%_
                       _%e167608168512%_
                       _%hd167609168515%_
                       _%tl167610168517%_
                       _%e167611168520%_
                       _%hd167612168523%_
                       _%tl167613168525%_
                       _%e167614168528%_
                       _%hd167615168531%_
                       _%tl167616168533%_))))
              (_%__match172320172321%_
               _%e167587168456%_
               _%hd167588168459%_
               _%tl167589168461%_
               _%e167590168464%_
               _%hd167591168467%_
               _%tl167592168469%_
               _%e167593168472%_
               _%hd167594168475%_
               _%tl167595168477%_
               _%e167596168480%_
               _%hd167597168483%_
               _%tl167598168485%_
               _%e167599168488%_
               _%hd167600168491%_
               _%tl167601168493%_
               _%e167602168496%_
               _%hd167603168499%_
               _%tl167604168501%_
               _%e167605168504%_
               _%hd167606168507%_
               _%tl167607168509%_
               _%e167608168512%_
               _%hd167609168515%_
               _%tl167610168517%_
               _%e167611168520%_
               _%hd167612168523%_
               _%tl167613168525%_
               _%e167614168528%_
               _%hd167615168531%_
               _%tl167616168533%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match172524172525%_
                                                   _%e167587168456%_
                                                   _%hd167588168459%_
                                                   _%tl167589168461%_
                                                   _%e167590168464%_
                                                   _%hd167591168467%_
                                                   _%tl167592168469%_
                                                   _%e167593168472%_
                                                   _%hd167594168475%_
                                                   _%tl167595168477%_
                                                   _%e167596168480%_
                                                   _%hd167597168483%_
                                                   _%tl167598168485%_
                                                   _%e167599168488%_
                                                   _%hd167600168491%_
                                                   _%tl167601168493%_
                                                   _%e167602168496%_
                                                   _%hd167603168499%_
                                                   _%tl167604168501%_
                                                   _%e167605168504%_
                                                   _%hd167606168507%_
                                                   _%tl167607168509%_
                                                   _%e167608168512%_
                                                   _%hd167609168515%_
                                                   _%tl167610168517%_))))
                                          (_%__match172524172525%_
                                           _%e167587168456%_
                                           _%hd167588168459%_
                                           _%tl167589168461%_
                                           _%e167590168464%_
                                           _%hd167591168467%_
                                           _%tl167592168469%_
                                           _%e167593168472%_
                                           _%hd167594168475%_
                                           _%tl167595168477%_
                                           _%e167596168480%_
                                           _%hd167597168483%_
                                           _%tl167598168485%_
                                           _%e167599168488%_
                                           _%hd167600168491%_
                                           _%tl167601168493%_
                                           _%e167602168496%_
                                           _%hd167603168499%_
                                           _%tl167604168501%_
                                           _%e167605168504%_
                                           _%hd167606168507%_
                                           _%tl167607168509%_
                                           _%e167608168512%_
                                           _%hd167609168515%_
                                           _%tl167610168517%_))
                                      (_%__match172200172201%_
                                       _%e167587168456%_
                                       _%hd167588168459%_
                                       _%tl167589168461%_
                                       _%e167590168464%_
                                       _%hd167591168467%_
                                       _%tl167592168469%_
                                       _%e167593168472%_
                                       _%hd167594168475%_
                                       _%tl167595168477%_
                                       _%e167596168480%_
                                       _%hd167597168483%_
                                       _%tl167598168485%_
                                       _%e167599168488%_
                                       _%hd167600168491%_
                                       _%tl167601168493%_
                                       _%e167602168496%_
                                       _%hd167603168499%_
                                       _%tl167604168501%_
                                       _%e167605168504%_
                                       _%hd167606168507%_
                                       _%tl167607168509%_
                                       _%e167608168512%_
                                       _%hd167609168515%_
                                       _%tl167610168517%_
                                       _%e167611168520%_
                                       _%hd167612168523%_
                                       _%tl167613168525%_))
                                  (_%__match172524172525%_
                                   _%e167587168456%_
                                   _%hd167588168459%_
                                   _%tl167589168461%_
                                   _%e167590168464%_
                                   _%hd167591168467%_
                                   _%tl167592168469%_
                                   _%e167593168472%_
                                   _%hd167594168475%_
                                   _%tl167595168477%_
                                   _%e167596168480%_
                                   _%hd167597168483%_
                                   _%tl167598168485%_
                                   _%e167599168488%_
                                   _%hd167600168491%_
                                   _%tl167601168493%_
                                   _%e167602168496%_
                                   _%hd167603168499%_
                                   _%tl167604168501%_
                                   _%e167605168504%_
                                   _%hd167606168507%_
                                   _%tl167607168509%_
                                   _%e167608168512%_
                                   _%hd167609168515%_
                                   _%tl167610168517%_))))
                          (_%__match172524172525%_
                           _%e167587168456%_
                           _%hd167588168459%_
                           _%tl167589168461%_
                           _%e167590168464%_
                           _%hd167591168467%_
                           _%tl167592168469%_
                           _%e167593168472%_
                           _%hd167594168475%_
                           _%tl167595168477%_
                           _%e167596168480%_
                           _%hd167597168483%_
                           _%tl167598168485%_
                           _%e167599168488%_
                           _%hd167600168491%_
                           _%tl167601168493%_
                           _%e167602168496%_
                           _%hd167603168499%_
                           _%tl167604168501%_
                           _%e167605168504%_
                           _%hd167606168507%_
                           _%tl167607168509%_
                           _%e167608168512%_
                           _%hd167609168515%_
                           _%tl167610168517%_))))
                  (_%__match172462172463%_
                   _%e167587168456%_
                   _%hd167588168459%_
                   _%tl167589168461%_
                   _%e167590168464%_
                   _%hd167591168467%_
                   _%tl167592168469%_
                   _%e167593168472%_
                   _%hd167594168475%_
                   _%tl167595168477%_
                   _%e167596168480%_
                   _%hd167597168483%_
                   _%tl167598168485%_
                   _%e167599168488%_
                   _%hd167600168491%_
                   _%tl167601168493%_
                   _%e167602168496%_
                   _%hd167603168499%_
                   _%tl167604168501%_
                   _%e167605168504%_
                   _%hd167606168507%_
                   _%tl167607168509%_))
              (_%__kont172045172046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont172045172046%_))
                                          (_%__kont172045172046%_))
                                      (_%__kont172045172046%_))))
                              (_%__kont172045172046%_))))
                      (_%__kont172045172046%_))
                  (_%__kont172045172046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172045172046%_))
                                              (_%__kont172045172046%_))
                                          (_%__kont172045172046%_))))
                                  (_%__kont172045172046%_))))
                          (_%__kont172045172046%_))))
                  (_%__kont172045172046%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self166511%_ _%stx166512%_)
        (letrec ((_%force-e166514%_
                  (lambda (_%target167570%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target167570%_ '()))
                                      '()))))))
          (let* ((_%__stx172529172530%_ _%stx166512%_)
                 (_%g166522166744%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172529172530%_)))))
            (let ((_%__kont172531172532%_
                   (lambda (_%L167516%_ _%L167517%_ _%L167518%_ _%L167519%_)
                     (let ((_%$method167564%_
                            (let ((__tmp173160
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166511%_ 'methods)))
                                  (__tmp173159
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167517%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp173160 __tmp173159)))
                           (_%args167565%_
                            (map (lambda (_%g167552167554%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166511%_
                                      _%g167552167554%_)))
                                 (let ((__tmp173161
                                        (lambda (_%g167556167559%_
                                                 _%g167557167561%_)
                                          (cons _%g167556167559%_
                                                _%g167557167561%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp173161 '() _%L167516%_)))))
                       (let ((__tmp173162
                              (cons '%#call
                                    (cons (_%force-e166514%_ _%$method167564%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166511%_
                                                               'receiver))
                                                            '()))
                                                _%args167565%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp173162 _%stx166512%_)))))
                  (_%__kont172535172536%_
                   (lambda (_%L167348%_
                            _%L167349%_
                            _%L167350%_
                            _%L167351%_
                            _%L167352%_)
                     (let ((_%$method167404%_
                            (let ((__tmp173164
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166511%_ 'methods)))
                                  (__tmp173163
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167349%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp173164 __tmp173163)))
                           (_%args167405%_
                            (map (lambda (_%g167392167394%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166511%_
                                      _%g167392167394%_)))
                                 (let ((__tmp173165
                                        (lambda (_%g167396167399%_
                                                 _%g167397167401%_)
                                          (cons _%g167396167399%_
                                                _%g167397167401%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp173165 '() _%L167348%_)))))
                       (let ((__tmp173166
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e166514%_
                                                 _%$method167404%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166511%_ 'receiver))
                          '()))
              _%args167405%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp173166 _%stx166512%_)))))
                  (_%__kont172539172540%_
                   (lambda (_%L167179%_ _%L167180%_ _%L167181%_)
                     (let* ((_%$field167213%_
                             (let ((__tmp173168
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self166511%_ 'slots)))
                                   (__tmp173167
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L167179%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp173168 __tmp173167)))
                            (__tmp173169
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self166511%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field167213%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self166511%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp173169 _%stx166512%_))))
                  (_%__kont172541172542%_
                   (lambda (_%L167053%_ _%L167054%_ _%L167055%_ _%L167056%_)
                     (let ((_%$field167091%_
                            (let ((__tmp173171
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166511%_ 'slots)))
                                  (__tmp173170
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167054%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp173171 __tmp173170)))
                           (_%expr167092%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self166511%_ _%L167053%_))))
                       (let ((__tmp173172
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self166511%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field167091%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166511%_ 'receiver))
                          '()))
              (cons _%expr167092%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp173172 _%stx166512%_)))))
                  (_%__kont172543172544%_
                   (lambda (_%L166925%_ _%L166926%_)
                     (let* ((_%accessor166948%_
                             (let ((__tmp173173
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166926%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp173173)))
                            (_%klass166950%_
                             (let ((__tmp173174
                                    (##structure-ref
                                     _%accessor166948%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166512%_
                                __tmp173174)))
                            (_%slot166952%_
                             (##structure-ref
                              _%accessor166948%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (not (##structure-ref
                                      _%accessor166948%_
                                      '4
                                      gxc#!accessor::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166950%_
                                       _%slot166952%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166950%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx166512%_
                           (let* ((_%$field166958%_
                                   (let ((__tmp173175
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166511%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp173175 _%slot166952%_)))
                                  (__tmp173176
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166511%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166511%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp173176
                              _%stx166512%_))))))
                  (_%__kont172545172546%_
                   (lambda (_%L166820%_ _%L166821%_ _%L166822%_)
                     (let* ((_%mutator166850%_
                             (let ((__tmp173177
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166822%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp173177)))
                            (_%klass166852%_
                             (let ((__tmp173178
                                    (##structure-ref
                                     _%mutator166850%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166512%_
                                __tmp173178)))
                            (_%slot166854%_
                             (##structure-ref
                              _%mutator166850%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr166856%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self166511%_ _%L166820%_))))
                       (if (and (not (##structure-ref
                                      _%mutator166850%_
                                      '4
                                      gxc#!mutator::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166852%_
                                       _%slot166854%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166852%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp173179
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L166822%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L166821%_
                                                                '()))
                                                    (cons _%expr166856%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp173179 _%stx166512%_))
                           (let* ((_%$field166862%_
                                   (let ((__tmp173180
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166511%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp173180 _%slot166854%_)))
                                  (__tmp173181
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166511%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166511%_ 'receiver))
                               '()))
                   (cons _%expr166856%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp173181
                              _%stx166512%_))))))
                  (_%__kont172547172548%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self166511%_ _%stx166512%_)))))
              (let* ((_%__match173028173029%_
                      (lambda (_%e166716166756%_
                               _%hd166717166759%_
                               _%tl166718166761%_
                               _%e166719166764%_
                               _%hd166720166767%_
                               _%tl166721166769%_
                               _%e166722166772%_
                               _%hd166723166775%_
                               _%tl166724166777%_
                               _%e166725166780%_
                               _%hd166726166783%_
                               _%tl166727166785%_
                               _%e166728166788%_
                               _%hd166729166791%_
                               _%tl166730166793%_
                               _%e166731166796%_
                               _%hd166732166799%_
                               _%tl166733166801%_
                               _%e166734166804%_
                               _%hd166735166807%_
                               _%tl166736166809%_
                               _%e166737166812%_
                               _%hd166738166815%_
                               _%tl166739166817%_)
                        (let ((_%L166820%_ _%hd166738166815%_)
                              (_%L166821%_ _%hd166735166807%_)
                              (_%L166822%_ _%hd166726166783%_))
                          (if (and (let ((__tmp173182
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166511%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166821%_
                                      __tmp173182))
                                   (let ((__tmp173183
                                          (let ((__tmp173184
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166822%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp173184))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp173183
                                      'gxc#!mutator::t)))
                              (_%__kont172545172546%_
                               _%L166820%_
                               _%L166821%_
                               _%L166822%_)
                              (_%__kont172547172548%_)))))
                     (_%__match173026173027%_
                      (lambda (_%e166716166756%_
                               _%hd166717166759%_
                               _%tl166718166761%_
                               _%e166719166764%_
                               _%hd166720166767%_
                               _%tl166721166769%_
                               _%e166722166772%_
                               _%hd166723166775%_
                               _%tl166724166777%_
                               _%e166725166780%_
                               _%hd166726166783%_
                               _%tl166727166785%_
                               _%e166728166788%_
                               _%hd166729166791%_
                               _%tl166730166793%_
                               _%e166731166796%_
                               _%hd166732166799%_
                               _%tl166733166801%_
                               _%e166734166804%_
                               _%hd166735166807%_
                               _%tl166736166809%_
                               _%e166737166812%_
                               _%hd166738166815%_
                               _%tl166739166817%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166739166817%_))
                            (_%__match173028173029%_
                             _%e166716166756%_
                             _%hd166717166759%_
                             _%tl166718166761%_
                             _%e166719166764%_
                             _%hd166720166767%_
                             _%tl166721166769%_
                             _%e166722166772%_
                             _%hd166723166775%_
                             _%tl166724166777%_
                             _%e166725166780%_
                             _%hd166726166783%_
                             _%tl166727166785%_
                             _%e166728166788%_
                             _%hd166729166791%_
                             _%tl166730166793%_
                             _%e166731166796%_
                             _%hd166732166799%_
                             _%tl166733166801%_
                             _%e166734166804%_
                             _%hd166735166807%_
                             _%tl166736166809%_
                             _%e166737166812%_
                             _%hd166738166815%_
                             _%tl166739166817%_)
                            (_%__kont172547172548%_))))
                     (_%__match173020173021%_
                      (lambda (_%e166716166756%_
                               _%hd166717166759%_
                               _%tl166718166761%_
                               _%e166719166764%_
                               _%hd166720166767%_
                               _%tl166721166769%_
                               _%e166722166772%_
                               _%hd166723166775%_
                               _%tl166724166777%_
                               _%e166725166780%_
                               _%hd166726166783%_
                               _%tl166727166785%_
                               _%e166728166788%_
                               _%hd166729166791%_
                               _%tl166730166793%_
                               _%e166731166796%_
                               _%hd166732166799%_
                               _%tl166733166801%_
                               _%e166734166804%_
                               _%hd166735166807%_
                               _%tl166736166809%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166730166793%_))
                            (let ((_%e166737166812%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166730166793%_))))
                              (let ((_%tl166739166817%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166737166812%_)))
                                    (_%hd166738166815%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166737166812%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166739166817%_))
                                    (_%__match173028173029%_
                                     _%e166716166756%_
                                     _%hd166717166759%_
                                     _%tl166718166761%_
                                     _%e166719166764%_
                                     _%hd166720166767%_
                                     _%tl166721166769%_
                                     _%e166722166772%_
                                     _%hd166723166775%_
                                     _%tl166724166777%_
                                     _%e166725166780%_
                                     _%hd166726166783%_
                                     _%tl166727166785%_
                                     _%e166728166788%_
                                     _%hd166729166791%_
                                     _%tl166730166793%_
                                     _%e166731166796%_
                                     _%hd166732166799%_
                                     _%tl166733166801%_
                                     _%e166734166804%_
                                     _%hd166735166807%_
                                     _%tl166736166809%_
                                     _%e166737166812%_
                                     _%hd166738166815%_
                                     _%tl166739166817%_)
                                    (_%__kont172547172548%_))))
                            (_%__kont172547172548%_))))
                     (_%__match172966172967%_
                      (lambda (_%e166692166869%_
                               _%hd166693166872%_
                               _%tl166694166874%_
                               _%e166695166877%_
                               _%hd166696166880%_
                               _%tl166697166882%_
                               _%e166698166885%_
                               _%hd166699166888%_
                               _%tl166700166890%_
                               _%e166701166893%_
                               _%hd166702166896%_
                               _%tl166703166898%_
                               _%e166704166901%_
                               _%hd166705166904%_
                               _%tl166706166906%_
                               _%e166707166909%_
                               _%hd166708166912%_
                               _%tl166709166914%_
                               _%e166710166917%_
                               _%hd166711166920%_
                               _%tl166712166922%_)
                        (let ((_%L166925%_ _%hd166711166920%_)
                              (_%L166926%_ _%hd166702166896%_))
                          (if (and (let ((__tmp173185
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166511%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166925%_
                                      __tmp173185))
                                   (let ((__tmp173186
                                          (let ((__tmp173187
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166926%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp173187))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp173186
                                      'gxc#!accessor::t)))
                              (_%__kont172543172544%_ _%L166925%_ _%L166926%_)
                              (_%__kont172547172548%_)))))
                     (_%__match172964172965%_
                      (lambda (_%e166692166869%_
                               _%hd166693166872%_
                               _%tl166694166874%_
                               _%e166695166877%_
                               _%hd166696166880%_
                               _%tl166697166882%_
                               _%e166698166885%_
                               _%hd166699166888%_
                               _%tl166700166890%_
                               _%e166701166893%_
                               _%hd166702166896%_
                               _%tl166703166898%_
                               _%e166704166901%_
                               _%hd166705166904%_
                               _%tl166706166906%_
                               _%e166707166909%_
                               _%hd166708166912%_
                               _%tl166709166914%_
                               _%e166710166917%_
                               _%hd166711166920%_
                               _%tl166712166922%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166706166906%_))
                            (_%__match172966172967%_
                             _%e166692166869%_
                             _%hd166693166872%_
                             _%tl166694166874%_
                             _%e166695166877%_
                             _%hd166696166880%_
                             _%tl166697166882%_
                             _%e166698166885%_
                             _%hd166699166888%_
                             _%tl166700166890%_
                             _%e166701166893%_
                             _%hd166702166896%_
                             _%tl166703166898%_
                             _%e166704166901%_
                             _%hd166705166904%_
                             _%tl166706166906%_
                             _%e166707166909%_
                             _%hd166708166912%_
                             _%tl166709166914%_
                             _%e166710166917%_
                             _%hd166711166920%_
                             _%tl166712166922%_)
                            (_%__match173020173021%_
                             _%e166692166869%_
                             _%hd166693166872%_
                             _%tl166694166874%_
                             _%e166695166877%_
                             _%hd166696166880%_
                             _%tl166697166882%_
                             _%e166698166885%_
                             _%hd166699166888%_
                             _%tl166700166890%_
                             _%e166701166893%_
                             _%hd166702166896%_
                             _%tl166703166898%_
                             _%e166704166901%_
                             _%hd166705166904%_
                             _%tl166706166906%_
                             _%e166707166909%_
                             _%hd166708166912%_
                             _%tl166709166914%_
                             _%e166710166917%_
                             _%hd166711166920%_
                             _%tl166712166922%_))))
                     (_%__match172910172911%_
                      (lambda (_%e166657166965%_
                               _%hd166658166968%_
                               _%tl166659166970%_
                               _%e166660166973%_
                               _%hd166661166976%_
                               _%tl166662166978%_
                               _%e166663166981%_
                               _%hd166664166984%_
                               _%tl166665166986%_
                               _%e166666166989%_
                               _%hd166667166992%_
                               _%tl166668166994%_
                               _%e166669166997%_
                               _%hd166670167000%_
                               _%tl166671167002%_
                               _%e166672167005%_
                               _%hd166673167008%_
                               _%tl166674167010%_
                               _%e166675167013%_
                               _%hd166676167016%_
                               _%tl166677167018%_
                               _%e166678167021%_
                               _%hd166679167024%_
                               _%tl166680167026%_
                               _%e166681167029%_
                               _%hd166682167032%_
                               _%tl166683167034%_
                               _%e166684167037%_
                               _%hd166685167040%_
                               _%tl166686167042%_
                               _%e166687167045%_
                               _%hd166688167048%_
                               _%tl166689167050%_)
                        (let ((_%L167053%_ _%hd166688167048%_)
                              (_%L167054%_ _%hd166685167040%_)
                              (_%L167055%_ _%hd166676167016%_)
                              (_%L167056%_ _%hd166667166992%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167056%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167056%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp173188
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166511%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167055%_
                                      __tmp173188)))
                              (_%__kont172541172542%_
                               _%L167053%_
                               _%L167054%_
                               _%L167055%_
                               _%L167056%_)
                              (_%__kont172547172548%_)))))
                     (_%__match172902172903%_
                      (lambda (_%e166657166965%_
                               _%hd166658166968%_
                               _%tl166659166970%_
                               _%e166660166973%_
                               _%hd166661166976%_
                               _%tl166662166978%_
                               _%e166663166981%_
                               _%hd166664166984%_
                               _%tl166665166986%_
                               _%e166666166989%_
                               _%hd166667166992%_
                               _%tl166668166994%_
                               _%e166669166997%_
                               _%hd166670167000%_
                               _%tl166671167002%_
                               _%e166672167005%_
                               _%hd166673167008%_
                               _%tl166674167010%_
                               _%e166675167013%_
                               _%hd166676167016%_
                               _%tl166677167018%_
                               _%e166678167021%_
                               _%hd166679167024%_
                               _%tl166680167026%_
                               _%e166681167029%_
                               _%hd166682167032%_
                               _%tl166683167034%_
                               _%e166684167037%_
                               _%hd166685167040%_
                               _%tl166686167042%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166680167026%_))
                            (let ((_%e166687167045%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166680167026%_))))
                              (let ((_%tl166689167050%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166687167045%_)))
                                    (_%hd166688167048%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166687167045%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166689167050%_))
                                    (_%__match172910172911%_
                                     _%e166657166965%_
                                     _%hd166658166968%_
                                     _%tl166659166970%_
                                     _%e166660166973%_
                                     _%hd166661166976%_
                                     _%tl166662166978%_
                                     _%e166663166981%_
                                     _%hd166664166984%_
                                     _%tl166665166986%_
                                     _%e166666166989%_
                                     _%hd166667166992%_
                                     _%tl166668166994%_
                                     _%e166669166997%_
                                     _%hd166670167000%_
                                     _%tl166671167002%_
                                     _%e166672167005%_
                                     _%hd166673167008%_
                                     _%tl166674167010%_
                                     _%e166675167013%_
                                     _%hd166676167016%_
                                     _%tl166677167018%_
                                     _%e166678167021%_
                                     _%hd166679167024%_
                                     _%tl166680167026%_
                                     _%e166681167029%_
                                     _%hd166682167032%_
                                     _%tl166683167034%_
                                     _%e166684167037%_
                                     _%hd166685167040%_
                                     _%tl166686167042%_
                                     _%e166687167045%_
                                     _%hd166688167048%_
                                     _%tl166689167050%_)
                                    (_%__kont172547172548%_))))
                            (_%__match173026173027%_
                             _%e166657166965%_
                             _%hd166658166968%_
                             _%tl166659166970%_
                             _%e166660166973%_
                             _%hd166661166976%_
                             _%tl166662166978%_
                             _%e166663166981%_
                             _%hd166664166984%_
                             _%tl166665166986%_
                             _%e166666166989%_
                             _%hd166667166992%_
                             _%tl166668166994%_
                             _%e166669166997%_
                             _%hd166670167000%_
                             _%tl166671167002%_
                             _%e166672167005%_
                             _%hd166673167008%_
                             _%tl166674167010%_
                             _%e166675167013%_
                             _%hd166676167016%_
                             _%tl166677167018%_
                             _%e166678167021%_
                             _%hd166679167024%_
                             _%tl166680167026%_))))
                     (_%__match172824172825%_
                      (lambda (_%e166623167099%_
                               _%hd166624167102%_
                               _%tl166625167104%_
                               _%e166626167107%_
                               _%hd166627167110%_
                               _%tl166628167112%_
                               _%e166629167115%_
                               _%hd166630167118%_
                               _%tl166631167120%_
                               _%e166632167123%_
                               _%hd166633167126%_
                               _%tl166634167128%_
                               _%e166635167131%_
                               _%hd166636167134%_
                               _%tl166637167136%_
                               _%e166638167139%_
                               _%hd166639167142%_
                               _%tl166640167144%_
                               _%e166641167147%_
                               _%hd166642167150%_
                               _%tl166643167152%_
                               _%e166644167155%_
                               _%hd166645167158%_
                               _%tl166646167160%_
                               _%e166647167163%_
                               _%hd166648167166%_
                               _%tl166649167168%_
                               _%e166650167171%_
                               _%hd166651167174%_
                               _%tl166652167176%_)
                        (let ((_%L167179%_ _%hd166651167174%_)
                              (_%L167180%_ _%hd166642167150%_)
                              (_%L167181%_ _%hd166633167126%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167181%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167181%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp173189
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166511%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167180%_
                                      __tmp173189)))
                              (_%__kont172539172540%_
                               _%L167179%_
                               _%L167180%_
                               _%L167181%_)
                              (_%__match173028173029%_
                               _%e166623167099%_
                               _%hd166624167102%_
                               _%tl166625167104%_
                               _%e166626167107%_
                               _%hd166627167110%_
                               _%tl166628167112%_
                               _%e166629167115%_
                               _%hd166630167118%_
                               _%tl166631167120%_
                               _%e166632167123%_
                               _%hd166633167126%_
                               _%tl166634167128%_
                               _%e166635167131%_
                               _%hd166636167134%_
                               _%tl166637167136%_
                               _%e166638167139%_
                               _%hd166639167142%_
                               _%tl166640167144%_
                               _%e166641167147%_
                               _%hd166642167150%_
                               _%tl166643167152%_
                               _%e166644167155%_
                               _%hd166645167158%_
                               _%tl166646167160%_)))))
                     (_%__match172822172823%_
                      (lambda (_%e166623167099%_
                               _%hd166624167102%_
                               _%tl166625167104%_
                               _%e166626167107%_
                               _%hd166627167110%_
                               _%tl166628167112%_
                               _%e166629167115%_
                               _%hd166630167118%_
                               _%tl166631167120%_
                               _%e166632167123%_
                               _%hd166633167126%_
                               _%tl166634167128%_
                               _%e166635167131%_
                               _%hd166636167134%_
                               _%tl166637167136%_
                               _%e166638167139%_
                               _%hd166639167142%_
                               _%tl166640167144%_
                               _%e166641167147%_
                               _%hd166642167150%_
                               _%tl166643167152%_
                               _%e166644167155%_
                               _%hd166645167158%_
                               _%tl166646167160%_
                               _%e166647167163%_
                               _%hd166648167166%_
                               _%tl166649167168%_
                               _%e166650167171%_
                               _%hd166651167174%_
                               _%tl166652167176%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166646167160%_))
                            (_%__match172824172825%_
                             _%e166623167099%_
                             _%hd166624167102%_
                             _%tl166625167104%_
                             _%e166626167107%_
                             _%hd166627167110%_
                             _%tl166628167112%_
                             _%e166629167115%_
                             _%hd166630167118%_
                             _%tl166631167120%_
                             _%e166632167123%_
                             _%hd166633167126%_
                             _%tl166634167128%_
                             _%e166635167131%_
                             _%hd166636167134%_
                             _%tl166637167136%_
                             _%e166638167139%_
                             _%hd166639167142%_
                             _%tl166640167144%_
                             _%e166641167147%_
                             _%hd166642167150%_
                             _%tl166643167152%_
                             _%e166644167155%_
                             _%hd166645167158%_
                             _%tl166646167160%_
                             _%e166647167163%_
                             _%hd166648167166%_
                             _%tl166649167168%_
                             _%e166650167171%_
                             _%hd166651167174%_
                             _%tl166652167176%_)
                            (_%__match172902172903%_
                             _%e166623167099%_
                             _%hd166624167102%_
                             _%tl166625167104%_
                             _%e166626167107%_
                             _%hd166627167110%_
                             _%tl166628167112%_
                             _%e166629167115%_
                             _%hd166630167118%_
                             _%tl166631167120%_
                             _%e166632167123%_
                             _%hd166633167126%_
                             _%tl166634167128%_
                             _%e166635167131%_
                             _%hd166636167134%_
                             _%tl166637167136%_
                             _%e166638167139%_
                             _%hd166639167142%_
                             _%tl166640167144%_
                             _%e166641167147%_
                             _%hd166642167150%_
                             _%tl166643167152%_
                             _%e166644167155%_
                             _%hd166645167158%_
                             _%tl166646167160%_
                             _%e166647167163%_
                             _%hd166648167166%_
                             _%tl166649167168%_
                             _%e166650167171%_
                             _%hd166651167174%_
                             _%tl166652167176%_))))
                     (_%__match172812172813%_
                      (lambda (_%e166623167099%_
                               _%hd166624167102%_
                               _%tl166625167104%_
                               _%e166626167107%_
                               _%hd166627167110%_
                               _%tl166628167112%_
                               _%e166629167115%_
                               _%hd166630167118%_
                               _%tl166631167120%_
                               _%e166632167123%_
                               _%hd166633167126%_
                               _%tl166634167128%_
                               _%e166635167131%_
                               _%hd166636167134%_
                               _%tl166637167136%_
                               _%e166638167139%_
                               _%hd166639167142%_
                               _%tl166640167144%_
                               _%e166641167147%_
                               _%hd166642167150%_
                               _%tl166643167152%_
                               _%e166644167155%_
                               _%hd166645167158%_
                               _%tl166646167160%_
                               _%e166647167163%_
                               _%hd166648167166%_
                               _%tl166649167168%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd166648167166%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166649167168%_))
                                (let ((_%e166650167171%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166649167168%_))))
                                  (let ((_%tl166652167176%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166650167171%_)))
                                        (_%hd166651167174%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166650167171%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166652167176%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl166646167160%_))
                                            (_%__match172824172825%_
                                             _%e166623167099%_
                                             _%hd166624167102%_
                                             _%tl166625167104%_
                                             _%e166626167107%_
                                             _%hd166627167110%_
                                             _%tl166628167112%_
                                             _%e166629167115%_
                                             _%hd166630167118%_
                                             _%tl166631167120%_
                                             _%e166632167123%_
                                             _%hd166633167126%_
                                             _%tl166634167128%_
                                             _%e166635167131%_
                                             _%hd166636167134%_
                                             _%tl166637167136%_
                                             _%e166638167139%_
                                             _%hd166639167142%_
                                             _%tl166640167144%_
                                             _%e166641167147%_
                                             _%hd166642167150%_
                                             _%tl166643167152%_
                                             _%e166644167155%_
                                             _%hd166645167158%_
                                             _%tl166646167160%_
                                             _%e166647167163%_
                                             _%hd166648167166%_
                                             _%tl166649167168%_
                                             _%e166650167171%_
                                             _%hd166651167174%_
                                             _%tl166652167176%_)
                                            (_%__match172902172903%_
                                             _%e166623167099%_
                                             _%hd166624167102%_
                                             _%tl166625167104%_
                                             _%e166626167107%_
                                             _%hd166627167110%_
                                             _%tl166628167112%_
                                             _%e166629167115%_
                                             _%hd166630167118%_
                                             _%tl166631167120%_
                                             _%e166632167123%_
                                             _%hd166633167126%_
                                             _%tl166634167128%_
                                             _%e166635167131%_
                                             _%hd166636167134%_
                                             _%tl166637167136%_
                                             _%e166638167139%_
                                             _%hd166639167142%_
                                             _%tl166640167144%_
                                             _%e166641167147%_
                                             _%hd166642167150%_
                                             _%tl166643167152%_
                                             _%e166644167155%_
                                             _%hd166645167158%_
                                             _%tl166646167160%_
                                             _%e166647167163%_
                                             _%hd166648167166%_
                                             _%tl166649167168%_
                                             _%e166650167171%_
                                             _%hd166651167174%_
                                             _%tl166652167176%_))
                                        (_%__match173026173027%_
                                         _%e166623167099%_
                                         _%hd166624167102%_
                                         _%tl166625167104%_
                                         _%e166626167107%_
                                         _%hd166627167110%_
                                         _%tl166628167112%_
                                         _%e166629167115%_
                                         _%hd166630167118%_
                                         _%tl166631167120%_
                                         _%e166632167123%_
                                         _%hd166633167126%_
                                         _%tl166634167128%_
                                         _%e166635167131%_
                                         _%hd166636167134%_
                                         _%tl166637167136%_
                                         _%e166638167139%_
                                         _%hd166639167142%_
                                         _%tl166640167144%_
                                         _%e166641167147%_
                                         _%hd166642167150%_
                                         _%tl166643167152%_
                                         _%e166644167155%_
                                         _%hd166645167158%_
                                         _%tl166646167160%_))))
                                (_%__match173026173027%_
                                 _%e166623167099%_
                                 _%hd166624167102%_
                                 _%tl166625167104%_
                                 _%e166626167107%_
                                 _%hd166627167110%_
                                 _%tl166628167112%_
                                 _%e166629167115%_
                                 _%hd166630167118%_
                                 _%tl166631167120%_
                                 _%e166632167123%_
                                 _%hd166633167126%_
                                 _%tl166634167128%_
                                 _%e166635167131%_
                                 _%hd166636167134%_
                                 _%tl166637167136%_
                                 _%e166638167139%_
                                 _%hd166639167142%_
                                 _%tl166640167144%_
                                 _%e166641167147%_
                                 _%hd166642167150%_
                                 _%tl166643167152%_
                                 _%e166644167155%_
                                 _%hd166645167158%_
                                 _%tl166646167160%_))
                            (_%__match173026173027%_
                             _%e166623167099%_
                             _%hd166624167102%_
                             _%tl166625167104%_
                             _%e166626167107%_
                             _%hd166627167110%_
                             _%tl166628167112%_
                             _%e166629167115%_
                             _%hd166630167118%_
                             _%tl166631167120%_
                             _%e166632167123%_
                             _%hd166633167126%_
                             _%tl166634167128%_
                             _%e166635167131%_
                             _%hd166636167134%_
                             _%tl166637167136%_
                             _%e166638167139%_
                             _%hd166639167142%_
                             _%tl166640167144%_
                             _%e166641167147%_
                             _%hd166642167150%_
                             _%tl166643167152%_
                             _%e166644167155%_
                             _%hd166645167158%_
                             _%tl166646167160%_))))
                     (_%__match172744172745%_
                      (lambda (_%e166572167220%_
                               _%hd166573167223%_
                               _%tl166574167225%_
                               _%e166575167228%_
                               _%hd166576167231%_
                               _%tl166577167233%_
                               _%e166578167236%_
                               _%hd166579167239%_
                               _%tl166580167241%_
                               _%e166581167244%_
                               _%hd166582167247%_
                               _%tl166583167249%_
                               _%e166584167252%_
                               _%hd166585167255%_
                               _%tl166586167257%_
                               _%e166587167260%_
                               _%hd166588167263%_
                               _%tl166589167265%_
                               _%e166590167268%_
                               _%hd166591167271%_
                               _%tl166592167273%_
                               _%e166593167276%_
                               _%hd166594167279%_
                               _%tl166595167281%_
                               _%e166596167284%_
                               _%hd166597167287%_
                               _%tl166598167289%_
                               _%e166599167292%_
                               _%hd166600167295%_
                               _%tl166601167297%_
                               _%e166602167300%_
                               _%hd166603167303%_
                               _%tl166604167305%_
                               _%e166605167308%_
                               _%hd166606167311%_
                               _%tl166607167313%_
                               _%e166608167316%_
                               _%hd166609167319%_
                               _%tl166610167321%_
                               _%__splice172537172538%_
                               _%target166611167324%_
                               _%tl166613167326%_)
                        (letrec ((_%loop166614167329%_
                                  (lambda (_%hd166612167332%_
                                           _%args166618167334%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166612167332%_))
                                        (let ((_%e166615167337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166612167332%_))))
                                          (let ((_%lp-tl166617167342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166615167337%_)))
                                                (_%lp-hd166616167340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166615167337%_))))
                                            (_%loop166614167329%_
                                             _%lp-tl166617167342%_
                                             (cons _%lp-hd166616167340%_
                                                   _%args166618167334%_))))
                                        (let ((_%args166619167345%_
                                               (reverse _%args166618167334%_)))
                                          (let ((_%L167348%_
                                                 _%args166619167345%_)
                                                (_%L167349%_
                                                 _%hd166609167319%_)
                                                (_%L167350%_
                                                 _%hd166600167295%_)
                                                (_%L167351%_
                                                 _%hd166591167271%_)
                                                (_%L167352%_
                                                 _%hd166582167247%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167352%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167351%_
                                                        'call-method))
                                                     (let ((__tmp173190
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166511%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167350%_
                                                        __tmp173190)))
                                                (_%__kont172535172536%_
                                                 _%L167348%_
                                                 _%L167349%_
                                                 _%L167350%_
                                                 _%L167351%_
                                                 _%L167352%_)
                                                (_%__kont172547172548%_))))))))
                          (_%loop166614167329%_ _%target166611167324%_ '()))))
                     (_%__match172702172703%_
                      (lambda (_%e166572167220%_
                               _%hd166573167223%_
                               _%tl166574167225%_
                               _%e166575167228%_
                               _%hd166576167231%_
                               _%tl166577167233%_
                               _%e166578167236%_
                               _%hd166579167239%_
                               _%tl166580167241%_
                               _%e166581167244%_
                               _%hd166582167247%_
                               _%tl166583167249%_
                               _%e166584167252%_
                               _%hd166585167255%_
                               _%tl166586167257%_
                               _%e166587167260%_
                               _%hd166588167263%_
                               _%tl166589167265%_
                               _%e166590167268%_
                               _%hd166591167271%_
                               _%tl166592167273%_
                               _%e166593167276%_
                               _%hd166594167279%_
                               _%tl166595167281%_
                               _%e166596167284%_
                               _%hd166597167287%_
                               _%tl166598167289%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd166597167287%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166598167289%_))
                                (let ((_%e166599167292%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166598167289%_))))
                                  (let ((_%tl166601167297%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166599167292%_)))
                                        (_%hd166600167295%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166599167292%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166601167297%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166595167281%_))
                                            (let ((_%e166602167300%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166595167281%_))))
                                              (let ((_%tl166604167305%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166602167300%_)))
                                                    (_%hd166603167303%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166602167300%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd166603167303%_))
                                                    (let ((_%e166605167308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd166603167303%_))))
                                                      (let ((_%tl166607167313%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166605167308%_)))
                    (_%hd166606167311%_
                     (let () (declare (not safe)) (##car _%e166605167308%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd166606167311%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd166606167311%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166607167313%_))
                            (let ((_%e166608167316%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166607167313%_))))
                              (let ((_%tl166610167321%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166608167316%_)))
                                    (_%hd166609167319%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166608167316%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166610167321%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166604167305%_))
                                        (let ((_%__splice172537172538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166604167305%_
                                                  '0))))
                                          (let ((_%tl166613167326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172537172538%_
                                                    '1)))
                                                (_%target166611167324%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172537172538%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166613167326%_))
                                                (_%__match172744172745%_
                                                 _%e166572167220%_
                                                 _%hd166573167223%_
                                                 _%tl166574167225%_
                                                 _%e166575167228%_
                                                 _%hd166576167231%_
                                                 _%tl166577167233%_
                                                 _%e166578167236%_
                                                 _%hd166579167239%_
                                                 _%tl166580167241%_
                                                 _%e166581167244%_
                                                 _%hd166582167247%_
                                                 _%tl166583167249%_
                                                 _%e166584167252%_
                                                 _%hd166585167255%_
                                                 _%tl166586167257%_
                                                 _%e166587167260%_
                                                 _%hd166588167263%_
                                                 _%tl166589167265%_
                                                 _%e166590167268%_
                                                 _%hd166591167271%_
                                                 _%tl166592167273%_
                                                 _%e166593167276%_
                                                 _%hd166594167279%_
                                                 _%tl166595167281%_
                                                 _%e166596167284%_
                                                 _%hd166597167287%_
                                                 _%tl166598167289%_
                                                 _%e166599167292%_
                                                 _%hd166600167295%_
                                                 _%tl166601167297%_
                                                 _%e166602167300%_
                                                 _%hd166603167303%_
                                                 _%tl166604167305%_
                                                 _%e166605167308%_
                                                 _%hd166606167311%_
                                                 _%tl166607167313%_
                                                 _%e166608167316%_
                                                 _%hd166609167319%_
                                                 _%tl166610167321%_
                                                 _%__splice172537172538%_
                                                 _%target166611167324%_
                                                 _%tl166613167326%_)
                                                (_%__kont172547172548%_))))
                                        (_%__kont172547172548%_))
                                    (_%__kont172547172548%_))))
                            (_%__kont172547172548%_))
                        (_%__kont172547172548%_))
                    (_%__kont172547172548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172547172548%_))))
                                            (_%__match173026173027%_
                                             _%e166572167220%_
                                             _%hd166573167223%_
                                             _%tl166574167225%_
                                             _%e166575167228%_
                                             _%hd166576167231%_
                                             _%tl166577167233%_
                                             _%e166578167236%_
                                             _%hd166579167239%_
                                             _%tl166580167241%_
                                             _%e166581167244%_
                                             _%hd166582167247%_
                                             _%tl166583167249%_
                                             _%e166584167252%_
                                             _%hd166585167255%_
                                             _%tl166586167257%_
                                             _%e166587167260%_
                                             _%hd166588167263%_
                                             _%tl166589167265%_
                                             _%e166590167268%_
                                             _%hd166591167271%_
                                             _%tl166592167273%_
                                             _%e166593167276%_
                                             _%hd166594167279%_
                                             _%tl166595167281%_))
                                        (_%__match173026173027%_
                                         _%e166572167220%_
                                         _%hd166573167223%_
                                         _%tl166574167225%_
                                         _%e166575167228%_
                                         _%hd166576167231%_
                                         _%tl166577167233%_
                                         _%e166578167236%_
                                         _%hd166579167239%_
                                         _%tl166580167241%_
                                         _%e166581167244%_
                                         _%hd166582167247%_
                                         _%tl166583167249%_
                                         _%e166584167252%_
                                         _%hd166585167255%_
                                         _%tl166586167257%_
                                         _%e166587167260%_
                                         _%hd166588167263%_
                                         _%tl166589167265%_
                                         _%e166590167268%_
                                         _%hd166591167271%_
                                         _%tl166592167273%_
                                         _%e166593167276%_
                                         _%hd166594167279%_
                                         _%tl166595167281%_))))
                                (_%__match173026173027%_
                                 _%e166572167220%_
                                 _%hd166573167223%_
                                 _%tl166574167225%_
                                 _%e166575167228%_
                                 _%hd166576167231%_
                                 _%tl166577167233%_
                                 _%e166578167236%_
                                 _%hd166579167239%_
                                 _%tl166580167241%_
                                 _%e166581167244%_
                                 _%hd166582167247%_
                                 _%tl166583167249%_
                                 _%e166584167252%_
                                 _%hd166585167255%_
                                 _%tl166586167257%_
                                 _%e166587167260%_
                                 _%hd166588167263%_
                                 _%tl166589167265%_
                                 _%e166590167268%_
                                 _%hd166591167271%_
                                 _%tl166592167273%_
                                 _%e166593167276%_
                                 _%hd166594167279%_
                                 _%tl166595167281%_))
                            (_%__match172812172813%_
                             _%e166572167220%_
                             _%hd166573167223%_
                             _%tl166574167225%_
                             _%e166575167228%_
                             _%hd166576167231%_
                             _%tl166577167233%_
                             _%e166578167236%_
                             _%hd166579167239%_
                             _%tl166580167241%_
                             _%e166581167244%_
                             _%hd166582167247%_
                             _%tl166583167249%_
                             _%e166584167252%_
                             _%hd166585167255%_
                             _%tl166586167257%_
                             _%e166587167260%_
                             _%hd166588167263%_
                             _%tl166589167265%_
                             _%e166590167268%_
                             _%hd166591167271%_
                             _%tl166592167273%_
                             _%e166593167276%_
                             _%hd166594167279%_
                             _%tl166595167281%_
                             _%e166596167284%_
                             _%hd166597167287%_
                             _%tl166598167289%_))))
                     (_%__match172634172635%_
                      (lambda (_%e166528167412%_
                               _%hd166529167415%_
                               _%tl166530167417%_
                               _%e166531167420%_
                               _%hd166532167423%_
                               _%tl166533167425%_
                               _%e166534167428%_
                               _%hd166535167431%_
                               _%tl166536167433%_
                               _%e166537167436%_
                               _%hd166538167439%_
                               _%tl166539167441%_
                               _%e166540167444%_
                               _%hd166541167447%_
                               _%tl166542167449%_
                               _%e166543167452%_
                               _%hd166544167455%_
                               _%tl166545167457%_
                               _%e166546167460%_
                               _%hd166547167463%_
                               _%tl166548167465%_
                               _%e166549167468%_
                               _%hd166550167471%_
                               _%tl166551167473%_
                               _%e166552167476%_
                               _%hd166553167479%_
                               _%tl166554167481%_
                               _%e166555167484%_
                               _%hd166556167487%_
                               _%tl166557167489%_
                               _%__splice172533172534%_
                               _%target166558167492%_
                               _%tl166560167494%_)
                        (letrec ((_%loop166561167497%_
                                  (lambda (_%hd166559167500%_
                                           _%args166565167502%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166559167500%_))
                                        (let ((_%e166562167505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166559167500%_))))
                                          (let ((_%lp-tl166564167510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166562167505%_)))
                                                (_%lp-hd166563167508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166562167505%_))))
                                            (_%loop166561167497%_
                                             _%lp-tl166564167510%_
                                             (cons _%lp-hd166563167508%_
                                                   _%args166565167502%_))))
                                        (let ((_%args166566167513%_
                                               (reverse _%args166565167502%_)))
                                          (let ((_%L167516%_
                                                 _%args166566167513%_)
                                                (_%L167517%_
                                                 _%hd166556167487%_)
                                                (_%L167518%_
                                                 _%hd166547167463%_)
                                                (_%L167519%_
                                                 _%hd166538167439%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167519%_
                                                        'call-method))
                                                     (let ((__tmp173191
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166511%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167518%_
                                                        __tmp173191)))
                                                (_%__kont172531172532%_
                                                 _%L167516%_
                                                 _%L167517%_
                                                 _%L167518%_
                                                 _%L167519%_)
                                                (_%__match172822172823%_
                                                 _%e166528167412%_
                                                 _%hd166529167415%_
                                                 _%tl166530167417%_
                                                 _%e166531167420%_
                                                 _%hd166532167423%_
                                                 _%tl166533167425%_
                                                 _%e166534167428%_
                                                 _%hd166535167431%_
                                                 _%tl166536167433%_
                                                 _%e166537167436%_
                                                 _%hd166538167439%_
                                                 _%tl166539167441%_
                                                 _%e166540167444%_
                                                 _%hd166541167447%_
                                                 _%tl166542167449%_
                                                 _%e166543167452%_
                                                 _%hd166544167455%_
                                                 _%tl166545167457%_
                                                 _%e166546167460%_
                                                 _%hd166547167463%_
                                                 _%tl166548167465%_
                                                 _%e166549167468%_
                                                 _%hd166550167471%_
                                                 _%tl166551167473%_
                                                 _%e166552167476%_
                                                 _%hd166553167479%_
                                                 _%tl166554167481%_
                                                 _%e166555167484%_
                                                 _%hd166556167487%_
                                                 _%tl166557167489%_))))))))
                          (_%loop166561167497%_ _%target166558167492%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172529172530%_))
                    (let ((_%e166528167412%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172529172530%_))))
                      (let ((_%tl166530167417%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166528167412%_)))
                            (_%hd166529167415%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166528167412%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166530167417%_))
                            (let ((_%e166531167420%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166530167417%_))))
                              (let ((_%tl166533167425%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166531167420%_)))
                                    (_%hd166532167423%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166531167420%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd166532167423%_))
                                    (let ((_%e166534167428%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd166532167423%_))))
                                      (let ((_%tl166536167433%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e166534167428%_)))
                                            (_%hd166535167431%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e166534167428%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd166535167431%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd166535167431%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166536167433%_))
                                                    (let ((_%e166537167436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166536167433%_))))
                                                      (let ((_%tl166539167441%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166537167436%_)))
                    (_%hd166538167439%_
                     (let () (declare (not safe)) (##car _%e166537167436%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166539167441%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl166533167425%_))
                        (let ((_%e166540167444%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl166533167425%_))))
                          (let ((_%tl166542167449%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166540167444%_)))
                                (_%hd166541167447%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166540167444%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd166541167447%_))
                                (let ((_%e166543167452%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd166541167447%_))))
                                  (let ((_%tl166545167457%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166543167452%_)))
                                        (_%hd166544167455%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166543167452%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166544167455%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166544167455%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166545167457%_))
                                                (let ((_%e166546167460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166545167457%_))))
                                                  (let ((_%tl166548167465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166546167460%_)))
                                                        (_%hd166547167463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166546167460%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166548167465%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl166542167449%_))
                                                            (let ((_%e166549167468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl166542167449%_))))
                      (let ((_%tl166551167473%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166549167468%_)))
                            (_%hd166550167471%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166549167468%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd166550167471%_))
                            (let ((_%e166552167476%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd166550167471%_))))
                              (let ((_%tl166554167481%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166552167476%_)))
                                    (_%hd166553167479%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166552167476%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd166553167479%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd166553167479%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166554167481%_))
                                            (let ((_%e166555167484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166554167481%_))))
                                              (let ((_%tl166557167489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166555167484%_)))
                                                    (_%hd166556167487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166555167484%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl166557167489%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl166551167473%_))
                                                        (let ((_%__splice172533172534%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl166551167473%_ '0))))
                  (let ((_%tl166560167494%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172533172534%_ '1)))
                        (_%target166558167492%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172533172534%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl166560167494%_))
                        (_%__match172634172635%_
                         _%e166528167412%_
                         _%hd166529167415%_
                         _%tl166530167417%_
                         _%e166531167420%_
                         _%hd166532167423%_
                         _%tl166533167425%_
                         _%e166534167428%_
                         _%hd166535167431%_
                         _%tl166536167433%_
                         _%e166537167436%_
                         _%hd166538167439%_
                         _%tl166539167441%_
                         _%e166540167444%_
                         _%hd166541167447%_
                         _%tl166542167449%_
                         _%e166543167452%_
                         _%hd166544167455%_
                         _%tl166545167457%_
                         _%e166546167460%_
                         _%hd166547167463%_
                         _%tl166548167465%_
                         _%e166549167468%_
                         _%hd166550167471%_
                         _%tl166551167473%_
                         _%e166552167476%_
                         _%hd166553167479%_
                         _%tl166554167481%_
                         _%e166555167484%_
                         _%hd166556167487%_
                         _%tl166557167489%_
                         _%__splice172533172534%_
                         _%target166558167492%_
                         _%tl166560167494%_)
                        (_%__match172822172823%_
                         _%e166528167412%_
                         _%hd166529167415%_
                         _%tl166530167417%_
                         _%e166531167420%_
                         _%hd166532167423%_
                         _%tl166533167425%_
                         _%e166534167428%_
                         _%hd166535167431%_
                         _%tl166536167433%_
                         _%e166537167436%_
                         _%hd166538167439%_
                         _%tl166539167441%_
                         _%e166540167444%_
                         _%hd166541167447%_
                         _%tl166542167449%_
                         _%e166543167452%_
                         _%hd166544167455%_
                         _%tl166545167457%_
                         _%e166546167460%_
                         _%hd166547167463%_
                         _%tl166548167465%_
                         _%e166549167468%_
                         _%hd166550167471%_
                         _%tl166551167473%_
                         _%e166552167476%_
                         _%hd166553167479%_
                         _%tl166554167481%_
                         _%e166555167484%_
                         _%hd166556167487%_
                         _%tl166557167489%_))))
                (_%__match172822172823%_
                 _%e166528167412%_
                 _%hd166529167415%_
                 _%tl166530167417%_
                 _%e166531167420%_
                 _%hd166532167423%_
                 _%tl166533167425%_
                 _%e166534167428%_
                 _%hd166535167431%_
                 _%tl166536167433%_
                 _%e166537167436%_
                 _%hd166538167439%_
                 _%tl166539167441%_
                 _%e166540167444%_
                 _%hd166541167447%_
                 _%tl166542167449%_
                 _%e166543167452%_
                 _%hd166544167455%_
                 _%tl166545167457%_
                 _%e166546167460%_
                 _%hd166547167463%_
                 _%tl166548167465%_
                 _%e166549167468%_
                 _%hd166550167471%_
                 _%tl166551167473%_
                 _%e166552167476%_
                 _%hd166553167479%_
                 _%tl166554167481%_
                 _%e166555167484%_
                 _%hd166556167487%_
                 _%tl166557167489%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match173026173027%_
                                                     _%e166528167412%_
                                                     _%hd166529167415%_
                                                     _%tl166530167417%_
                                                     _%e166531167420%_
                                                     _%hd166532167423%_
                                                     _%tl166533167425%_
                                                     _%e166534167428%_
                                                     _%hd166535167431%_
                                                     _%tl166536167433%_
                                                     _%e166537167436%_
                                                     _%hd166538167439%_
                                                     _%tl166539167441%_
                                                     _%e166540167444%_
                                                     _%hd166541167447%_
                                                     _%tl166542167449%_
                                                     _%e166543167452%_
                                                     _%hd166544167455%_
                                                     _%tl166545167457%_
                                                     _%e166546167460%_
                                                     _%hd166547167463%_
                                                     _%tl166548167465%_
                                                     _%e166549167468%_
                                                     _%hd166550167471%_
                                                     _%tl166551167473%_))))
                                            (_%__match173026173027%_
                                             _%e166528167412%_
                                             _%hd166529167415%_
                                             _%tl166530167417%_
                                             _%e166531167420%_
                                             _%hd166532167423%_
                                             _%tl166533167425%_
                                             _%e166534167428%_
                                             _%hd166535167431%_
                                             _%tl166536167433%_
                                             _%e166537167436%_
                                             _%hd166538167439%_
                                             _%tl166539167441%_
                                             _%e166540167444%_
                                             _%hd166541167447%_
                                             _%tl166542167449%_
                                             _%e166543167452%_
                                             _%hd166544167455%_
                                             _%tl166545167457%_
                                             _%e166546167460%_
                                             _%hd166547167463%_
                                             _%tl166548167465%_
                                             _%e166549167468%_
                                             _%hd166550167471%_
                                             _%tl166551167473%_))
                                        (_%__match172702172703%_
                                         _%e166528167412%_
                                         _%hd166529167415%_
                                         _%tl166530167417%_
                                         _%e166531167420%_
                                         _%hd166532167423%_
                                         _%tl166533167425%_
                                         _%e166534167428%_
                                         _%hd166535167431%_
                                         _%tl166536167433%_
                                         _%e166537167436%_
                                         _%hd166538167439%_
                                         _%tl166539167441%_
                                         _%e166540167444%_
                                         _%hd166541167447%_
                                         _%tl166542167449%_
                                         _%e166543167452%_
                                         _%hd166544167455%_
                                         _%tl166545167457%_
                                         _%e166546167460%_
                                         _%hd166547167463%_
                                         _%tl166548167465%_
                                         _%e166549167468%_
                                         _%hd166550167471%_
                                         _%tl166551167473%_
                                         _%e166552167476%_
                                         _%hd166553167479%_
                                         _%tl166554167481%_))
                                    (_%__match173026173027%_
                                     _%e166528167412%_
                                     _%hd166529167415%_
                                     _%tl166530167417%_
                                     _%e166531167420%_
                                     _%hd166532167423%_
                                     _%tl166533167425%_
                                     _%e166534167428%_
                                     _%hd166535167431%_
                                     _%tl166536167433%_
                                     _%e166537167436%_
                                     _%hd166538167439%_
                                     _%tl166539167441%_
                                     _%e166540167444%_
                                     _%hd166541167447%_
                                     _%tl166542167449%_
                                     _%e166543167452%_
                                     _%hd166544167455%_
                                     _%tl166545167457%_
                                     _%e166546167460%_
                                     _%hd166547167463%_
                                     _%tl166548167465%_
                                     _%e166549167468%_
                                     _%hd166550167471%_
                                     _%tl166551167473%_))))
                            (_%__match173026173027%_
                             _%e166528167412%_
                             _%hd166529167415%_
                             _%tl166530167417%_
                             _%e166531167420%_
                             _%hd166532167423%_
                             _%tl166533167425%_
                             _%e166534167428%_
                             _%hd166535167431%_
                             _%tl166536167433%_
                             _%e166537167436%_
                             _%hd166538167439%_
                             _%tl166539167441%_
                             _%e166540167444%_
                             _%hd166541167447%_
                             _%tl166542167449%_
                             _%e166543167452%_
                             _%hd166544167455%_
                             _%tl166545167457%_
                             _%e166546167460%_
                             _%hd166547167463%_
                             _%tl166548167465%_
                             _%e166549167468%_
                             _%hd166550167471%_
                             _%tl166551167473%_))))
                    (_%__match172964172965%_
                     _%e166528167412%_
                     _%hd166529167415%_
                     _%tl166530167417%_
                     _%e166531167420%_
                     _%hd166532167423%_
                     _%tl166533167425%_
                     _%e166534167428%_
                     _%hd166535167431%_
                     _%tl166536167433%_
                     _%e166537167436%_
                     _%hd166538167439%_
                     _%tl166539167441%_
                     _%e166540167444%_
                     _%hd166541167447%_
                     _%tl166542167449%_
                     _%e166543167452%_
                     _%hd166544167455%_
                     _%tl166545167457%_
                     _%e166546167460%_
                     _%hd166547167463%_
                     _%tl166548167465%_))
                (_%__kont172547172548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172547172548%_))
                                            (_%__kont172547172548%_))
                                        (_%__kont172547172548%_))))
                                (_%__kont172547172548%_))))
                        (_%__kont172547172548%_))
                    (_%__kont172547172548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172547172548%_))
                                                (_%__kont172547172548%_))
                                            (_%__kont172547172548%_))))
                                    (_%__kont172547172548%_))))
                            (_%__kont172547172548%_))))
                    (_%__kont172547172548%_))))))))))
