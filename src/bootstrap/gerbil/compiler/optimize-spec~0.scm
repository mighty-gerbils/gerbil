(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1768864953)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp189973 (list gxc#::identity::t))
            (__tmp189972 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp189973
         '()
         __tmp189972
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args188770%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args188770%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp189974
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
        (__make-atomic-promise __tmp189974)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx188762%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self188765%_
                (let ((__obj189965
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj189965))
               (__tmp189975
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self188765%_ _%stx188762%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp189975
           gxc#current-compile-method
           _%self188765%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp189977 (list gxc#::false::t))
            (__tmp189976 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp189977
         '()
         __tmp189976
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args188759%_
        (apply make-instance gxc#::extract-receiver::t _%$args188759%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp189978
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
        (__make-atomic-promise __tmp189978)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx188751%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self188754%_
                (let ((__obj189967
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj189967))
               (__tmp189979
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self188754%_ _%stx188751%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp189979
           gxc#current-compile-method
           _%self188754%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp189981 (list gxc#::void::t))
            (__tmp189980 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp189981
         '(receiver methods slots)
         __tmp189980
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args188748%_
        (apply make-instance gxc#::collect-object-refs::t _%$args188748%_)))
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
      (let ((__tmp189982
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
        (__make-atomic-promise __tmp189982)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords188714%_
               _%receiver188709188715%_
               _%methods188710188717%_
               _%slots188711188719%_
               _%stx188721%_)
        (let* ((_%receiver188724%_
                (if (eq? _%receiver188709188715%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver188709188715%_))
               (_%methods188726%_
                (if (eq? _%methods188710188717%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods188710188717%_))
               (_%slots188728%_
                (if (eq? _%slots188711188719%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots188711188719%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self188730%_
                  (let ((__obj189969
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
                       __obj189969
                       _%receiver188724%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189969
                       _%methods188726%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189969
                       _%slots188728%_
                       '3
                       '#f
                       '#f))
                    __obj189969))
                 (__tmp189983
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self188730%_ _%stx188721%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp189983
             gxc#current-compile-method
             _%self188730%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords188737%_ . _%args188738%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords188737%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188737%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188737%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188737%_
                  'slots:
                  absent-value))
               _%args188738%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args188712188744%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args188712188744%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp189985 (list gxc#::basic-xform-expression::t))
            (__tmp189984 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp189985
         '(receiver klass methods slots)
         __tmp189984
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args188705%_
        (apply make-instance gxc#::subst-object-refs::t _%$args188705%_)))
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
      (let ((__tmp189986
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
        (__make-atomic-promise __tmp189986)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords188667%_
               _%receiver188661188668%_
               _%klass188662188670%_
               _%methods188663188672%_
               _%slots188664188674%_
               _%stx188676%_)
        (let* ((_%receiver188679%_
                (if (eq? _%receiver188661188668%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver188661188668%_))
               (_%klass188681%_
                (if (eq? _%klass188662188670%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass188662188670%_))
               (_%methods188683%_
                (if (eq? _%methods188663188672%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods188663188672%_))
               (_%slots188685%_
                (if (eq? _%slots188664188674%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots188664188674%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self188687%_
                  (let ((__obj189971
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
                       __obj189971
                       _%receiver188679%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189971
                       _%klass188681%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189971
                       _%methods188683%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189971
                       _%slots188685%_
                       '4
                       '#f
                       '#f))
                    __obj189971))
                 (__tmp189987
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self188687%_ _%stx188676%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp189987
             gxc#current-compile-method
             _%self188687%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords188694%_ . _%args188695%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords188694%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188694%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188694%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188694%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188694%_
                  'slots:
                  absent-value))
               _%args188695%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args188665188701%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args188665188701%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self185776%_ _%stx185777%_)
        (letrec ((_%generate-method-bind185779%_
                  (lambda (_%$klass188653%_
                           _%$method-table188654%_
                           _%id188655%_
                           _%$id188656%_)
                    (let ((_%$tmp188658%_
                           (let ((__tmp189988
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp189988))))
                      (cons (cons _%$id188656%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp188658%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table188654%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id188655%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp188658%_ '()))
                    (cons (cons '%#ref (cons _%$tmp188658%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id188655%_
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
                 (_%generate-slot-bind185780%_
                  (lambda (_%$klass188647%_ _%id188648%_ _%$id188649%_)
                    (let ((_%$tmp188651%_
                           (let ((__tmp189989
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp189989))))
                      (cons (cons _%$id188649%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp188651%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass188647%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id188648%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp188651%_ '()))
                        (cons (cons '%#ref (cons _%$tmp188651%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id188648%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl185781%_
                  (lambda (_%$klass188641%_
                           _%$method-table188642%_
                           _%methods-bind188643%_
                           _%slots-bind188644%_
                           _%specializer-impl188645%_)
                    (let ((__tmp189990
                           (cons '%#lambda
                                 (cons (cons _%$klass188641%_
                                             (cons _%$method-table188642%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind188644%_
                                                            _%methods-bind188643%_))
                                                         (cons _%specializer-impl188645%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp189990 _%stx185777%_))))
                 (_%generate-specializer-def185782%_
                  (lambda (_%id188637%_
                           _%specializer-id188638%_
                           _%specializer-impl188639%_)
                    (let ((__tmp189991
                           (cons '%#begin
                                 (cons _%stx185777%_
                                       (cons (let ((__tmp189992
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id188638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl188639%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp189992
                                                _%stx185777%_))
                                             (cons (let ((__tmp189993
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id188637%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id188638%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp189993
                                                      _%stx185777%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp189991 _%stx185777%_)))))
          (let* ((_%__stx188859188860%_ _%stx185777%_)
                 (_%g185785185805%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx188859188860%_)))))
            (let ((_%__kont188861188862%_
                   (lambda (_%L185849%_ _%L185850%_)
                     (let ((_%method-calls185869%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs185870%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty185871%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?185873%_
                                 (lambda ()
                                   (if (let ((__tmp189994
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls185869%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp189994))
                                       (let ((__tmp189995
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs185870%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp189995))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L185849%_))
                             (let* ((_%__stx188773188774%_ _%L185849%_)
                                    (_%g186261186279%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx188773188774%_)))))
                               (let ((_%__kont188775188776%_
                                      (lambda (_%L186315%_
                                               _%L186316%_
                                               _%L186317%_)
                                        (let ((_%receiver186337%_
                                               (let ((_%$e186334%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L186315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e186334%_
                                                     _%$e186334%_
                                                     _%L186317%_))))
                                          (for-each
                                           (lambda (_%g186338186340%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver186337%_
                                              _%method-calls185869%_
                                              _%slot-refs185870%_
                                              _%g186338186340%_))
                                           _%L186315%_)
                                          (if (_%no-specializer?185873%_)
                                              _%stx185777%_
                                              (let* ((_%specializer-id186349%_
                                                      (let* ((_%id186343%_
                                                              (let ((__tmp189996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L185850%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp189996 '"::specialize")))
                     (_%specializer-id186346%_
                      (let ((__tmp189997
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx185777%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id186343%_ __tmp189997))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id186346%_))
                _%specializer-id186346%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass186351%_
                                                      (let ((__tmp189998
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp189998)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table186353%_
                                                      (let ((__tmp189999
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp189999)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods186355%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls185869%_)))
                                                     (_%$methods186359%_
                                                      (let ((__tmp190000
                                                             (lambda (_%id186357%_)
                                                               (let ((__tmp190001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id186357%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190001)))))
                (declare (not safe))
                (##map __tmp190000 _%methods186355%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_186368%_
                                                      (let ((__tmp190002
                                                             (lambda (_%g186360186363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186361186365%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls185869%_
                          _%g186360186363%_
                          _%g186361186365%_)))))
                (declare (not safe))
                (##for-each __tmp190002 _%methods186355%_ _%$methods186359%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind186378%_
                                                      (let ((__tmp190003
                                                             (lambda (_%g186370186373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186371186375%_)
                       (_%generate-method-bind185779%_
                        _%$klass186351%_
                        _%$method-table186353%_
                        _%g186370186373%_
                        _%g186371186375%_))))
                (declare (not safe))
                (##map __tmp190003 _%methods186355%_ _%$methods186359%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots186380%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs185870%_)))
                                                     (_%$slots186384%_
                                                      (let ((__tmp190004
                                                             (lambda (_%id186382%_)
                                                               (let ((__tmp190005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id186382%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190005)))))
                (declare (not safe))
                (##map __tmp190004 _%slots186380%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_186393%_
                                                      (let ((__tmp190006
                                                             (lambda (_%g186385186388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186386186390%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs185870%_
                          _%g186385186388%_
                          _%g186386186390%_)))))
                (declare (not safe))
                (##for-each __tmp190006 _%slots186380%_ _%$slots186384%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind186402%_
                                                      (let ((__tmp190007
                                                             (lambda (_%g186394186397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186395186399%_)
                       (_%generate-slot-bind185780%_
                        _%$klass186351%_
                        _%g186394186397%_
                        _%g186395186399%_))))
                (declare (not safe))
                (##map __tmp190007 _%slots186380%_ _%$slots186384%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body186408%_
                                                      (map (lambda (_%g186403186405%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver186337%_
                                                              _%$klass186351%_
                                                              _%method-calls185869%_
                                                              _%slot-refs185870%_
                                                              _%g186403186405%_))
                                                           _%L186315%_))
                                                     (_%specializer-impl186410%_
                                                      (let ((__tmp190008
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L186317%_ _%L186316%_)
                                 _%specializer-body186408%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190008 _%stx185777%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl186412%_
                                                      (_%generate-specializer-impl185781%_
                                                       _%$klass186351%_
                                                       _%$method-table186353%_
                                                       _%methods-bind186378%_
                                                       _%slots-bind186402%_
                                                       _%specializer-impl186410%_)))
                                                (let ((__tmp190010
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L185850%_)))
                                                      (__tmp190009
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id186349%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp190010
                                                   '" => "
                                                   __tmp190009))
                                                (_%generate-specializer-def185782%_
                                                 _%L185850%_
                                                 _%specializer-id186349%_
                                                 _%specializer-impl186412%_))))))
                                     (_%__kont188777188778%_
                                      (lambda () _%stx185777%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx188773188774%_))
                                     (let ((_%e186266186291%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx188773188774%_))))
                                       (let ((_%tl186268186296%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186266186291%_)))
                                             (_%hd186267186294%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186266186291%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl186268186296%_))
                                             (let ((_%e186269186299%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl186268186296%_))))
                                               (let ((_%tl186271186304%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e186269186299%_)))
                                                     (_%hd186270186302%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e186269186299%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd186270186302%_))
                                                     (let ((_%e186272186307%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd186270186302%_))))
                                                       (let ((_%tl186274186312%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e186272186307%_)))
                     (_%hd186273186310%_
                      (let () (declare (not safe)) (##car _%e186272186307%_))))
                 (_%__kont188775188776%_
                  _%tl186271186304%_
                  _%tl186274186312%_
                  _%hd186273186310%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont188777188778%_))))
                                             (_%__kont188777188778%_))))
                                     (_%__kont188777188778%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L185849%_))
                                 (let* ((_%g186419186438%_
                                         (lambda (_%g186420186435%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g186420186435%_))))
                                        (_%g186418186736%_
                                         (lambda (_%g186420186441%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g186420186441%_))
                                               (let ((_%e186422186443%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g186420186441%_))))
                                                 (let ((_%hd186423186446%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e186422186443%_)))
                                                       (_%tl186424186448%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e186422186443%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl186424186448%_))
                                                       (let ((_g190011_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl186424186448%_ '0))))
                 (begin
                   (let ((_g190012_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g190011_)
                                (##values-length _g190011_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g190012_ 2)))
                         (error "Context expects 2 values" _g190012_)))
                   (let ((_%target186425186451%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g190011_ 0)))
                         (_%tl186427186453%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g190011_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl186427186453%_))
                         (letrec ((_%loop186428186456%_
                                   (lambda (_%hd186426186459%_
                                            _%clause186432186461%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd186426186459%_))
                                         (let ((_%e186429186464%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd186426186459%_))))
                                           (let ((_%lp-hd186430186467%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e186429186464%_)))
                                                 (_%lp-tl186431186469%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e186429186464%_))))
                                             (_%loop186428186456%_
                                              _%lp-tl186431186469%_
                                              (cons _%lp-hd186430186467%_
                                                    _%clause186432186461%_))))
                                         (let ((_%clause186433186472%_
                                                (reverse _%clause186432186461%_)))
                                           ((lambda (_%L186475%_)
                                              (for-each
                                               (lambda (_%clause186489%_)
                                                 (let* ((_%__stx188799188800%_
                                                         _%clause186489%_)
                                                        (_%g186492186507%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx188799188800%_)))))
                                                   (let ((_%__kont188801188802%_
                                                          (lambda (_%L186535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L186536%_
                           _%L186537%_)
                    (let ((_%receiver186556%_
                           (let ((_%$e186553%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L186535%_))))
                             (if _%$e186553%_ _%$e186553%_ _%L186537%_))))
                      (for-each
                       (lambda (_%g186557186559%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver186556%_
                          _%method-calls185869%_
                          _%slot-refs185870%_
                          _%g186557186559%_))
                       _%L186535%_))))
                 (_%__kont188803188804%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx188799188800%_))
                                                         (let ((_%e186497186519%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx188799188800%_))))
                   (let ((_%tl186499186524%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e186497186519%_)))
                         (_%hd186498186522%_
                          (let ()
                            (declare (not safe))
                            (##car _%e186497186519%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd186498186522%_))
                         (let ((_%e186500186527%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd186498186522%_))))
                           (let ((_%tl186502186532%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e186500186527%_)))
                                 (_%hd186501186530%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e186500186527%_))))
                             (_%__kont188801188802%_
                              _%tl186499186524%_
                              _%tl186502186532%_
                              _%hd186501186530%_)))
                         (_%__kont188803188804%_))))
                 (_%__kont188803188804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp190013
                                                      (lambda (_%g186564186567%_
                                                               _%g186565186569%_)
                                                        (cons _%g186564186567%_
                                                              _%g186565186569%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp190013
                                                  '()
                                                  _%L186475%_)))
                                              (if (_%no-specializer?185873%_)
                                                  _%stx185777%_
                                                  (let* ((_%specializer-id186578%_
                                                          (let* ((_%id186572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190014
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L185850%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp190014 '"::specialize")))
                         (_%specializer-id186575%_
                          (let ((__tmp190015
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx185777%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id186572%_
                             __tmp190015))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id186575%_))
                    _%specializer-id186575%_))
                 (_%$klass186580%_
                  (let ((__tmp190016
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190016)))
                 (_%$method-table186582%_
                  (let ((__tmp190017
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190017)))
                 (_%methods186584%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls185869%_)))
                 (_%$methods186588%_
                  (let ((__tmp190018
                         (lambda (_%id186586%_)
                           (let ((__tmp190019 (gensym _%id186586%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190019)))))
                    (declare (not safe))
                    (##map __tmp190018 _%methods186584%_)))
                 (_%_186597%_
                  (let ((__tmp190020
                         (lambda (_%g186589186592%_ _%g186590186594%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls185869%_
                              _%g186589186592%_
                              _%g186590186594%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp190020
                     _%methods186584%_
                     _%$methods186588%_)))
                 (_%methods-bind186607%_
                  (let ((__tmp190021
                         (lambda (_%g186599186602%_ _%g186600186604%_)
                           (_%generate-method-bind185779%_
                            _%$klass186580%_
                            _%$method-table186582%_
                            _%g186599186602%_
                            _%g186600186604%_))))
                    (declare (not safe))
                    (##map __tmp190021 _%methods186584%_ _%$methods186588%_)))
                 (_%slots186609%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs185870%_)))
                 (_%$slots186613%_
                  (let ((__tmp190022
                         (lambda (_%id186611%_)
                           (let ((__tmp190023 (gensym _%id186611%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190023)))))
                    (declare (not safe))
                    (##map __tmp190022 _%slots186609%_)))
                 (_%_186622%_
                  (let ((__tmp190024
                         (lambda (_%g186614186617%_ _%g186615186619%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs185870%_
                              _%g186614186617%_
                              _%g186615186619%_)))))
                    (declare (not safe))
                    (##for-each __tmp190024 _%slots186609%_ _%$slots186613%_)))
                 (_%slots-bind186631%_
                  (let ((__tmp190025
                         (lambda (_%g186623186626%_ _%g186624186628%_)
                           (_%generate-slot-bind185780%_
                            _%$klass186580%_
                            _%g186623186626%_
                            _%g186624186628%_))))
                    (declare (not safe))
                    (##map __tmp190025 _%slots186609%_ _%$slots186613%_)))
                 (_%specializer-clauses186729%_
                  (map (lambda (_%clause186633%_)
                         (let* ((_%__stx188819188820%_ _%clause186633%_)
                                (_%g186636186651%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx188819188820%_)))))
                           (let ((_%__kont188821188822%_
                                  (lambda (_%L186679%_ _%L186680%_ _%L186681%_)
                                    (let* ((_%receiver186710%_
                                            (let ((_%$e186707%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L186679%_))))
                                              (if _%$e186707%_
                                                  _%$e186707%_
                                                  _%L186681%_)))
                                           (_%body186716%_
                                            (map (lambda (_%g186711186713%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver186710%_
                                                    _%$klass186580%_
                                                    _%method-calls185869%_
                                                    _%slot-refs185870%_
                                                    _%g186711186713%_))
                                                 _%L186679%_)))
                                      (cons (cons _%L186681%_ _%L186680%_)
                                            _%body186716%_))))
                                 (_%__kont188823188824%_
                                  (lambda () _%clause186633%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx188819188820%_))
                                 (let ((_%e186641186663%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx188819188820%_))))
                                   (let ((_%tl186643186668%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e186641186663%_)))
                                         (_%hd186642186666%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e186641186663%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd186642186666%_))
                                         (let ((_%e186644186671%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd186642186666%_))))
                                           (let ((_%tl186646186676%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e186644186671%_)))
                                                 (_%hd186645186674%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e186644186671%_))))
                                             (_%__kont188821188822%_
                                              _%tl186643186668%_
                                              _%tl186646186676%_
                                              _%hd186645186674%_)))
                                         (_%__kont188823188824%_))))
                                 (_%__kont188823188824%_)))))
                       (let ((__tmp190026
                              (lambda (_%g186721186724%_ _%g186722186726%_)
                                (cons _%g186721186724%_ _%g186722186726%_))))
                         (declare (not safe))
                         (__foldr1 __tmp190026 '() _%L186475%_))))
                 (_%specializer-impl186731%_
                  (let ((__tmp190027
                         (cons '%#case-lambda _%specializer-clauses186729%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp190027 _%stx185777%_)))
                 (_%specializer-impl186733%_
                  (_%generate-specializer-impl185781%_
                   _%$klass186580%_
                   _%$method-table186582%_
                   _%methods-bind186607%_
                   _%slots-bind186631%_
                   _%specializer-impl186731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp190029
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L185850%_)))
                                                          (__tmp190028
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id186578%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp190029
                                                       '" => "
                                                       __tmp190028))
                                                    (_%generate-specializer-def185782%_
                                                     _%L185850%_
                                                     _%specializer-id186578%_
                                                     _%specializer-impl186733%_))))
                                            _%clause186433186472%_))))))
                           (_%loop186428186456%_ _%target186425186451%_ '()))
                         (_%g186419186438%_ _%g186420186441%_)))))
               (_%g186419186438%_ _%g186420186441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g186419186438%_
                                                _%g186420186441%_)))))
                                   (_%g186418186736%_ _%L185849%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L185849%_))
                                     (let* ((_%g186740186770%_
                                             (lambda (_%g186741186767%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g186741186767%_))))
                                            (_%g186739187401%_
                                             (lambda (_%g186741186773%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g186741186773%_))
                                                   (let ((_%e186745186775%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g186741186773%_))))
                                                     (let ((_%hd186746186778%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e186745186775%_)))
                                                           (_%tl186747186780%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e186745186775%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl186747186780%_))
                                                           (let ((_%e186748186783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl186747186780%_))))
                     (let ((_%hd186749186786%_
                            (let ()
                              (declare (not safe))
                              (##car _%e186748186783%_)))
                           (_%tl186750186788%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e186748186783%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd186749186786%_))
                           (let ((_%e186751186791%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd186749186786%_))))
                             (let ((_%hd186752186794%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e186751186791%_)))
                                   (_%tl186753186796%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e186751186791%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd186752186794%_))
                                   (let ((_%e186754186799%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd186752186794%_))))
                                     (let ((_%hd186755186802%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e186754186799%_)))
                                           (_%tl186756186804%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e186754186799%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd186755186802%_))
                                           (let ((_%e186757186807%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd186755186802%_))))
                                             (let ((_%hd186758186810%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186757186807%_)))
                                                   (_%tl186759186812%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186757186807%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186759186812%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl186756186804%_))
                                                       (let ((_%e186760186815%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl186756186804%_))))
                 (let ((_%hd186761186818%_
                        (let ()
                          (declare (not safe))
                          (##car _%e186760186815%_)))
                       (_%tl186762186820%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e186760186815%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl186762186820%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl186753186796%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl186750186788%_))
                               (let ((_%e186763186823%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl186750186788%_))))
                                 (let ((_%hd186764186826%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e186763186823%_)))
                                       (_%tl186765186828%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e186763186823%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl186765186828%_))
                                       ((lambda (_%L186831%_
                                                 _%L186832%_
                                                 _%L186833%_)
                                          (let* ((_%g186857186875%_
                                                  (lambda (_%g186858186872%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g186858186872%_))))
                                                 (_%g186856186931%_
                                                  (lambda (_%g186858186878%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g186858186878%_))
                                                        (let ((_%e186862186880%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g186858186878%_))))
                  (let ((_%hd186863186883%_
                         (let ()
                           (declare (not safe))
                           (##car _%e186862186880%_)))
                        (_%tl186864186885%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e186862186880%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl186864186885%_))
                        (let ((_%e186865186888%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl186864186885%_))))
                          (let ((_%hd186866186891%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186865186888%_)))
                                (_%tl186867186893%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186865186888%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd186866186891%_))
                                (let ((_%e186868186896%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd186866186891%_))))
                                  (let ((_%hd186869186899%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e186868186896%_)))
                                        (_%tl186870186901%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e186868186896%_))))
                                    ((lambda (_%L186904%_
                                              _%L186905%_
                                              _%L186906%_)
                                       (let ((_%receiver186925%_
                                              (let ((_%$e186922%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L186904%_))))
                                                (if _%$e186922%_
                                                    _%$e186922%_
                                                    _%L186906%_))))
                                         (for-each
                                          (lambda (_%g186926186928%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver186925%_
                                             _%method-calls185869%_
                                             _%slot-refs185870%_
                                             _%g186926186928%_))
                                          _%L186904%_)))
                                     _%tl186867186893%_
                                     _%tl186870186901%_
                                     _%hd186869186899%_)))
                                (_%g186857186875%_ _%g186858186878%_))))
                        (_%g186857186875%_ _%g186858186878%_))))
                (_%g186857186875%_ _%g186858186878%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g186856186931%_ _%L186832%_))
                                          (let* ((_%g186934186953%_
                                                  (lambda (_%g186935186950%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g186935186950%_))))
                                                 (_%g186933187077%_
                                                  (lambda (_%g186935186956%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g186935186956%_))
                                                        (let ((_%e186937186958%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g186935186956%_))))
                  (let ((_%hd186938186961%_
                         (let ()
                           (declare (not safe))
                           (##car _%e186937186958%_)))
                        (_%tl186939186963%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e186937186958%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl186939186963%_))
                        (let ((_g190030_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl186939186963%_
                                  '0))))
                          (begin
                            (let ((_g190031_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g190030_)
                                         (##values-length _g190030_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g190031_ 2)))
                                  (error "Context expects 2 values"
                                         _g190031_)))
                            (let ((_%target186940186966%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190030_ 0)))
                                  (_%tl186942186968%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190030_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl186942186968%_))
                                  (letrec ((_%loop186943186971%_
                                            (lambda (_%hd186941186974%_
                                                     _%clause186947186976%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd186941186974%_))
                                                  (let ((_%e186944186979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd186941186974%_))))
                                                    (let ((_%lp-hd186945186982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e186944186979%_)))
                                                          (_%lp-tl186946186984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e186944186979%_))))
                                                      (_%loop186943186971%_
                                                       _%lp-tl186946186984%_
                                                       (cons _%lp-hd186945186982%_
                                                             _%clause186947186976%_))))
                                                  (let ((_%clause186948186987%_
                                                         (reverse _%clause186947186976%_)))
                                                    ((lambda (_%L186990%_)
                                                       (for-each
                                                        (lambda (_%clause187003%_)
                                                          (let* ((_%g187005187020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g187006187017%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g187006187017%_))))
                         (_%g187004187067%_
                          (lambda (_%g187006187023%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g187006187023%_))
                                (let ((_%e187010187025%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g187006187023%_))))
                                  (let ((_%hd187011187028%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187010187025%_)))
                                        (_%tl187012187030%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187010187025%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd187011187028%_))
                                        (let ((_%e187013187033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd187011187028%_))))
                                          (let ((_%hd187014187036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e187013187033%_)))
                                                (_%tl187015187038%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e187013187033%_))))
                                            ((lambda (_%L187041%_
                                                      _%L187042%_
                                                      _%L187043%_)
                                               (let ((_%receiver187061%_
                                                      (let ((_%$e187058%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L187041%_))))
                (if _%$e187058%_ _%$e187058%_ _%L187043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g187062187064%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver187061%_
                                                     _%method-calls185869%_
                                                     _%slot-refs185870%_
                                                     _%g187062187064%_))
                                                  _%L187041%_)))
                                             _%tl187012187030%_
                                             _%tl187015187038%_
                                             _%hd187014187036%_)))
                                        (_%g187005187020%_
                                         _%g187006187023%_))))
                                (_%g187005187020%_ _%g187006187023%_)))))
                    (_%g187004187067%_ _%clause187003%_)))
                (let ((__tmp190032
                       (lambda (_%g187069187072%_ _%g187070187074%_)
                         (cons _%g187069187072%_ _%g187070187074%_))))
                  (declare (not safe))
                  (__foldr1 __tmp190032 '() _%L186990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause186948186987%_))))))
                                    (_%loop186943186971%_
                                     _%target186940186966%_
                                     '()))
                                  (_%g186934186953%_ _%g186935186956%_)))))
                        (_%g186934186953%_ _%g186935186956%_))))
                (_%g186934186953%_ _%g186935186956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g186933187077%_ _%L186831%_))
                                          (if (_%no-specializer?185873%_)
                                              _%stx185777%_
                                              (let* ((_%specializer-id187086%_
                                                      (let* ((_%id187080%_
                                                              (let ((__tmp190033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L185850%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp190033 '"::specialize")))
                     (_%specializer-id187083%_
                      (let ((__tmp190034
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx185777%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id187080%_ __tmp190034))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id187083%_))
                _%specializer-id187083%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass187088%_
                                                      (let ((__tmp190035
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp190035)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table187090%_
                                                      (let ((__tmp190036
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp190036)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods187092%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls185869%_)))
                                                     (_%$methods187096%_
                                                      (let ((__tmp190037
                                                             (lambda (_%id187094%_)
                                                               (let ((__tmp190038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id187094%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190038)))))
                (declare (not safe))
                (##map __tmp190037 _%methods187092%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_187105%_
                                                      (let ((__tmp190039
                                                             (lambda (_%g187097187100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187098187102%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls185869%_
                          _%g187097187100%_
                          _%g187098187102%_)))))
                (declare (not safe))
                (##for-each __tmp190039 _%methods187092%_ _%$methods187096%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind187115%_
                                                      (let ((__tmp190040
                                                             (lambda (_%g187107187110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187108187112%_)
                       (_%generate-method-bind185779%_
                        _%$klass187088%_
                        _%$method-table187090%_
                        _%g187107187110%_
                        _%g187108187112%_))))
                (declare (not safe))
                (##map __tmp190040 _%methods187092%_ _%$methods187096%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots187117%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs185870%_)))
                                                     (_%$slots187121%_
                                                      (let ((__tmp190041
                                                             (lambda (_%id187119%_)
                                                               (let ((__tmp190042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id187119%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190042)))))
                (declare (not safe))
                (##map __tmp190041 _%slots187117%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_187130%_
                                                      (let ((__tmp190043
                                                             (lambda (_%g187122187125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187123187127%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs185870%_
                          _%g187122187125%_
                          _%g187123187127%_)))))
                (declare (not safe))
                (##for-each __tmp190043 _%slots187117%_ _%$slots187121%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind187139%_
                                                      (let ((__tmp190044
                                                             (lambda (_%g187131187134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187132187136%_)
                       (_%generate-slot-bind185780%_
                        _%$klass187088%_
                        _%g187131187134%_
                        _%g187132187136%_))))
                (declare (not safe))
                (##map __tmp190044 _%slots187117%_ _%$slots187121%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr187231%_
                                                      (let* ((_%g187141187159%_
                                                              (lambda (_%g187142187156%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187142187156%_))))
                     (_%g187140187228%_
                      (lambda (_%g187142187162%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187142187162%_))
                            (let ((_%e187146187164%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187142187162%_))))
                              (let ((_%hd187147187167%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187146187164%_)))
                                    (_%tl187148187169%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187146187164%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187148187169%_))
                                    (let ((_%e187149187172%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187148187169%_))))
                                      (let ((_%hd187150187175%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187149187172%_)))
                                            (_%tl187151187177%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187149187172%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd187150187175%_))
                                            (let ((_%e187152187180%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd187150187175%_))))
                                              (let ((_%hd187153187183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187152187180%_)))
                                                    (_%tl187154187185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187152187180%_))))
                                                ((lambda (_%L187188%_
                                                          _%L187189%_
                                                          _%L187190%_)
                                                   (let* ((_%receiver187219%_
                                                           (let ((_%$e187216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L187188%_))))
                     (if _%$e187216%_ _%$e187216%_ _%L187190%_)))
                  (_%body187225%_
                   (map (lambda (_%g187220187222%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver187219%_
                           _%$klass187088%_
                           _%method-calls185869%_
                           _%slot-refs185870%_
                           _%g187220187222%_))
                        _%L187188%_))
                  (__tmp190045
                   (cons '%#lambda
                         (cons (cons _%L187190%_ _%L187189%_)
                               _%body187225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190045
                                                      _%L186832%_)))
                                                 _%tl187151187177%_
                                                 _%tl187154187185%_
                                                 _%hd187153187183%_)))
                                            (_%g187141187159%_
                                             _%g187142187162%_))))
                                    (_%g187141187159%_ _%g187142187162%_))))
                            (_%g187141187159%_ _%g187142187162%_)))))
                (_%g187140187228%_ _%L186832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr187394%_
                                                      (let* ((_%g187233187252%_
                                                              (lambda (_%g187234187249%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187234187249%_))))
                     (_%g187232187391%_
                      (lambda (_%g187234187255%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187234187255%_))
                            (let ((_%e187236187257%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187234187255%_))))
                              (let ((_%hd187237187260%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187236187257%_)))
                                    (_%tl187238187262%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187236187257%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl187238187262%_))
                                    (let ((_g190046_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl187238187262%_
                                              '0))))
                                      (begin
                                        (let ((_g190047_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g190046_)
                                                     (##values-length
                                                      _g190046_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g190047_ 2)))
                                              (error "Context expects 2 values"
                                                     _g190047_)))
                                        (let ((_%target187239187265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g190046_ 0)))
                                              (_%tl187241187267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g190046_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187241187267%_))
                                              (letrec ((_%loop187242187270%_
                                                        (lambda (_%hd187240187273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause187246187275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd187240187273%_))
                      (let ((_%e187243187278%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd187240187273%_))))
                        (let ((_%lp-hd187244187281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187243187278%_)))
                              (_%lp-tl187245187283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187243187278%_))))
                          (_%loop187242187270%_
                           _%lp-tl187245187283%_
                           (cons _%lp-hd187244187281%_
                                 _%clause187246187275%_))))
                      (let ((_%clause187247187286%_
                             (reverse _%clause187246187275%_)))
                        ((lambda (_%L187289%_)
                           (let* ((_%clauses187389%_
                                   (map (lambda (_%clause187303%_)
                                          (let* ((_%__stx188839188840%_
                                                  _%clause187303%_)
                                                 (_%g187306187321%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx188839188840%_)))))
                                            (let ((_%__kont188841188842%_
                                                   (lambda (_%L187349%_
                                                            _%L187350%_
                                                            _%L187351%_)
                                                     (let* ((_%receiver187370%_
                                                             (let ((_%$e187367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L187349%_))))
                       (if _%$e187367%_ _%$e187367%_ _%L187351%_)))
                    (_%body187376%_
                     (map (lambda (_%g187371187373%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver187370%_
                             _%$klass187088%_
                             _%method-calls185869%_
                             _%slot-refs185870%_
                             _%g187371187373%_))
                          _%L187349%_)))
               (cons (cons _%L187351%_ _%L187350%_) _%body187376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188843188844%_
                                                   (lambda ()
                                                     _%clause187303%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx188839188840%_))
                                                  (let ((_%e187311187333%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx188839188840%_))))
                                                    (let ((_%tl187313187338%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187311187333%_)))
                                                          (_%hd187312187336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187311187333%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd187312187336%_))
                                                          (let ((_%e187314187341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd187312187336%_))))
                    (let ((_%tl187316187346%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187314187341%_)))
                          (_%hd187315187344%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187314187341%_))))
                      (_%__kont188841188842%_
                       _%tl187313187338%_
                       _%tl187316187346%_
                       _%hd187315187344%_)))
                  (_%__kont188843188844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188843188844%_)))))
                                        (let ((__tmp190048
                                               (lambda (_%g187381187384%_
                                                        _%g187382187386%_)
                                                 (cons _%g187381187384%_
                                                       _%g187382187386%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp190048
                                           '()
                                           _%L187289%_))))
                                  (__tmp190049
                                   (cons '%#case-lambda _%clauses187389%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190049 _%L186831%_)))
                         _%clause187247187286%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop187242187270%_
                                                 _%target187239187265%_
                                                 '()))
                                              (_%g187233187252%_
                                               _%g187234187255%_)))))
                                    (_%g187233187252%_ _%g187234187255%_))))
                            (_%g187233187252%_ _%g187234187255%_)))))
                (_%g187232187391%_ _%L186831%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl187396%_
                                                      (let ((__tmp190050
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L186833%_ '())
                                             (cons _%specializer-lambda-expr187231%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr187394%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190050 _%stx185777%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl187398%_
                                                      (_%generate-specializer-impl185781%_
                                                       _%$klass187088%_
                                                       _%$method-table187090%_
                                                       _%methods-bind187115%_
                                                       _%slots-bind187139%_
                                                       _%specializer-impl187396%_)))
                                                (let ((__tmp190052
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L185850%_)))
                                                      (__tmp190051
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id187086%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp190052
                                                   '" => "
                                                   __tmp190051))
                                                (_%generate-specializer-def185782%_
                                                 _%L185850%_
                                                 _%specializer-id187086%_
                                                 _%specializer-impl187398%_))))
                                        _%hd186764186826%_
                                        _%hd186761186818%_
                                        _%hd186758186810%_)
                                       (_%g186740186770%_ _%g186741186773%_))))
                               (_%g186740186770%_ _%g186741186773%_))
                           (_%g186740186770%_ _%g186741186773%_))
                       (_%g186740186770%_ _%g186741186773%_))))
               (_%g186740186770%_ _%g186741186773%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g186740186770%_
                                                    _%g186741186773%_))))
                                           (_%g186740186770%_
                                            _%g186741186773%_))))
                                   (_%g186740186770%_ _%g186741186773%_))))
                           (_%g186740186770%_ _%g186741186773%_))))
                   (_%g186740186770%_ _%g186741186773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g186740186770%_
                                                    _%g186741186773%_)))))
                                       (_%g186739187401%_ _%L185849%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L185849%_))
                                         (let* ((_%g187405187458%_
                                                 (lambda (_%g187406187455%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g187406187455%_))))
                                                (_%g187404188629%_
                                                 (lambda (_%g187406187461%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g187406187461%_))
                                                       (let ((_%e187412187463%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g187406187461%_))))
                 (let ((_%hd187413187466%_
                        (let ()
                          (declare (not safe))
                          (##car _%e187412187463%_)))
                       (_%tl187414187468%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e187412187463%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd187413187466%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd187413187466%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl187414187468%_))
                               (let ((_%e187415187471%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl187414187468%_))))
                                 (let ((_%hd187416187474%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e187415187471%_)))
                                       (_%tl187417187476%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e187415187471%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd187416187474%_))
                                       (let ((_%e187418187479%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd187416187474%_))))
                                         (let ((_%hd187419187482%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e187418187479%_)))
                                               (_%tl187420187484%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e187418187479%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd187419187482%_))
                                               (let ((_%e187421187487%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd187419187482%_))))
                                                 (let ((_%hd187422187490%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e187421187487%_)))
                                                       (_%tl187423187492%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e187421187487%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd187422187490%_))
                                                       (let ((_%e187424187495%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd187422187490%_))))
                 (let ((_%hd187425187498%_
                        (let ()
                          (declare (not safe))
                          (##car _%e187424187495%_)))
                       (_%tl187426187500%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e187424187495%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl187426187500%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl187423187492%_))
                           (let ((_%e187427187503%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl187423187492%_))))
                             (let ((_%hd187428187506%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e187427187503%_)))
                                   (_%tl187429187508%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e187427187503%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd187428187506%_))
                                   (let ((_%e187430187511%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd187428187506%_))))
                                     (let ((_%hd187431187514%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e187430187511%_)))
                                           (_%tl187432187516%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e187430187511%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd187431187514%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd187431187514%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl187432187516%_))
                                                   (let ((_%e187433187519%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl187432187516%_))))
                                                     (let ((_%hd187434187522%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e187433187519%_)))
                                                           (_%tl187435187524%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e187433187519%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd187434187522%_))
                                                           (let ((_%e187436187527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd187434187522%_))))
                     (let ((_%hd187437187530%_
                            (let ()
                              (declare (not safe))
                              (##car _%e187436187527%_)))
                           (_%tl187438187532%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e187436187527%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd187437187530%_))
                           (let ((_%e187439187535%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd187437187530%_))))
                             (let ((_%hd187440187538%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e187439187535%_)))
                                   (_%tl187441187540%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e187439187535%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd187440187538%_))
                                   (let ((_%e187442187543%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd187440187538%_))))
                                     (let ((_%hd187443187546%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e187442187543%_)))
                                           (_%tl187444187548%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e187442187543%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl187444187548%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl187441187540%_))
                                               (let ((_%e187445187551%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl187441187540%_))))
                                                 (let ((_%hd187446187554%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e187445187551%_)))
                                                       (_%tl187447187556%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e187445187551%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl187447187556%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl187438187532%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl187435187524%_))
                       (let ((_%e187448187559%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl187435187524%_))))
                         (let ((_%hd187449187562%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e187448187559%_)))
                               (_%tl187450187564%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e187448187559%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl187450187564%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl187429187508%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl187420187484%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187417187476%_))
                                           (let ((_%e187451187567%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187417187476%_))))
                                             (let ((_%hd187452187570%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187451187567%_)))
                                                   (_%tl187453187572%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187451187567%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187453187572%_))
                                                   ((lambda (_%L187575%_
                                                             _%L187576%_
                                                             _%L187577%_
                                                             _%L187578%_
                                                             _%L187579%_)
                                                      (let* ((_%g187619187681%_
                                                              (lambda (_%g187620187678%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187620187678%_))))
                     (_%g187618188626%_
                      (lambda (_%g187620187684%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187620187684%_))
                            (let ((_%e187626187686%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187620187684%_))))
                              (let ((_%hd187627187689%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187626187686%_)))
                                    (_%tl187628187691%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187626187686%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187627187689%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd187627187689%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187628187691%_))
                                            (let ((_%e187629187694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187628187691%_))))
                                              (let ((_%hd187630187697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187629187694%_)))
                                                    (_%tl187631187699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187629187694%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl187631187699%_))
                                                    (let ((_%e187632187702%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl187631187699%_))))
                                                      (let ((_%hd187633187705%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e187632187702%_)))
                    (_%tl187634187707%_
                     (let () (declare (not safe)) (##cdr _%e187632187702%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd187633187705%_))
                    (let ((_%e187635187710%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd187633187705%_))))
                      (let ((_%hd187636187713%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187635187710%_)))
                            (_%tl187637187715%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187635187710%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd187636187713%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd187636187713%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187637187715%_))
                                    (let ((_%e187638187718%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187637187715%_))))
                                      (let ((_%hd187639187721%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187638187718%_)))
                                            (_%tl187640187723%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187638187718%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd187639187721%_))
                                            (let ((_%e187641187726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd187639187721%_))))
                                              (let ((_%hd187642187729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187641187726%_)))
                                                    (_%tl187643187731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187641187726%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd187642187729%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd187642187729%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187643187731%_))
                                                            (let ((_%e187644187734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187643187731%_))))
                      (let ((_%hd187645187737%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187644187734%_)))
                            (_%tl187646187739%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187644187734%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl187646187739%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl187640187723%_))
                                (let ((_%e187647187742%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl187640187723%_))))
                                  (let ((_%hd187648187745%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187647187742%_)))
                                        (_%tl187649187747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187647187742%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd187648187745%_))
                                        (let ((_%e187650187750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd187648187745%_))))
                                          (let ((_%hd187651187753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e187650187750%_)))
                                                (_%tl187652187755%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e187650187750%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd187651187753%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd187651187753%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl187652187755%_))
                                                        (let ((_%e187653187758%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl187652187755%_))))
                  (let ((_%hd187654187761%_
                         (let ()
                           (declare (not safe))
                           (##car _%e187653187758%_)))
                        (_%tl187655187763%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e187653187758%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl187655187763%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl187649187747%_))
                            (let ((_%e187656187766%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl187649187747%_))))
                              (let ((_%hd187657187769%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187656187766%_)))
                                    (_%tl187658187771%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187656187766%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd187657187769%_))
                                    (let ((_%e187659187774%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd187657187769%_))))
                                      (let ((_%hd187660187777%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187659187774%_)))
                                            (_%tl187661187779%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187659187774%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd187660187777%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd187660187777%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl187661187779%_))
                                                    (let ((_%e187662187782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl187661187779%_))))
                                                      (let ((_%hd187663187785%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e187662187782%_)))
                    (_%tl187664187787%_
                     (let () (declare (not safe)) (##cdr _%e187662187782%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl187664187787%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl187658187771%_))
                        (if (let ((__tmp190053
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl187658187771%_))))
                              (declare (not safe))
                              (##fx>= __tmp190053 '1))
                            (let ((_g190054_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl187658187771%_
                                      '1))))
                              (begin
                                (let ((_g190055_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g190054_)
                                             (##values-length _g190054_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g190055_ 2)))
                                      (error "Context expects 2 values"
                                             _g190055_)))
                                (let ((_%target187665187790%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190054_ 0)))
                                      (_%tl187667187792%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190054_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187667187792%_))
                                      (let ((_%e187674187795%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187667187792%_))))
                                        (let ((_%hd187675187798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187674187795%_)))
                                              (_%tl187676187800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187674187795%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187676187800%_))
                                              (letrec ((_%loop187668187803%_
                                                        (lambda (_%hd187666187806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref187672187808%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd187666187806%_))
                      (let ((_%e187669187811%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd187666187806%_))))
                        (let ((_%lp-hd187670187814%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187669187811%_)))
                              (_%lp-tl187671187816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187669187811%_))))
                          (_%loop187668187803%_
                           _%lp-tl187671187816%_
                           (cons _%lp-hd187670187814%_
                                 _%kw-ref187672187808%_))))
                      (let ((_%kw-ref187673187819%_
                             (reverse _%kw-ref187672187808%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl187634187707%_))
                            ((lambda (_%L187822%_
                                      _%L187823%_
                                      _%L187824%_
                                      _%L187825%_
                                      _%L187826%_)
                               (let* ((_%kw-count187877%_
                                       (length (let ((__tmp190056
                                                      (lambda (_%g187869187872%_
                                                               _%g187870187874%_)
                                                        (cons _%g187869187872%_
                                                              _%g187870187874%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp190056
                                                  '()
                                                  _%L187823%_))))
                                      (_%self-index187879%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count187877%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L187577%_))
                                     (let* ((_%g187883187897%_
                                             (lambda (_%g187884187894%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g187884187894%_))))
                                            (_%g187882188020%_
                                             (lambda (_%g187884187900%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g187884187900%_))
                                                   (let ((_%e187887187902%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g187884187900%_))))
                                                     (let ((_%hd187888187905%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e187887187902%_)))
                                                           (_%tl187889187907%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e187887187902%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl187889187907%_))
                                                           (let ((_%e187890187910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl187889187907%_))))
                     (let ((_%hd187891187913%_
                            (let ()
                              (declare (not safe))
                              (##car _%e187890187910%_)))
                           (_%tl187892187915%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e187890187910%_))))
                       ((lambda (_%L187918%_ _%L187919%_)
                          (let* ((_%self187936%_
                                  (list-ref _%L187919%_ _%self-index187879%_))
                                 (_%receiver187941%_
                                  (let ((_%$e187938%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L187918%_))))
                                    (if _%$e187938%_
                                        _%$e187938%_
                                        _%self187936%_))))
                            (for-each
                             (lambda (_%g187943187945%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver187941%_
                                _%method-calls185869%_
                                _%slot-refs185870%_
                                _%g187943187945%_))
                             _%L187918%_)
                            (if (_%no-specializer?185873%_)
                                _%stx185777%_
                                (let* ((_%specializer-id187954%_
                                        (let* ((_%id187948%_
                                                (let ((__tmp190057
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L185850%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp190057
                                                   '"::specialize")))
                                               (_%specializer-id187951%_
                                                (let ((__tmp190058
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx185777%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id187948%_
                                                   __tmp190058))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id187951%_))
                                          _%specializer-id187951%_))
                                       (_%$klass187956%_
                                        (let ((__tmp190059
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp190059)))
                                       (_%$method-table187958%_
                                        (let ((__tmp190060
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp190060)))
                                       (_%methods187960%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls185869%_)))
                                       (_%$methods187964%_
                                        (let ((__tmp190061
                                               (lambda (_%id187962%_)
                                                 (let ((__tmp190062
                                                        (gensym _%id187962%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp190062)))))
                                          (declare (not safe))
                                          (##map __tmp190061
                                                 _%methods187960%_)))
                                       (_%_187973%_
                                        (let ((__tmp190063
                                               (lambda (_%g187965187968%_
                                                        _%g187966187970%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls185869%_
                                                    _%g187965187968%_
                                                    _%g187966187970%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp190063
                                           _%methods187960%_
                                           _%$methods187964%_)))
                                       (_%methods-bind187983%_
                                        (let ((__tmp190064
                                               (lambda (_%g187975187978%_
                                                        _%g187976187980%_)
                                                 (_%generate-method-bind185779%_
                                                  _%$klass187956%_
                                                  _%$method-table187958%_
                                                  _%g187975187978%_
                                                  _%g187976187980%_))))
                                          (declare (not safe))
                                          (##map __tmp190064
                                                 _%methods187960%_
                                                 _%$methods187964%_)))
                                       (_%slots187985%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs185870%_)))
                                       (_%$slots187989%_
                                        (let ((__tmp190065
                                               (lambda (_%id187987%_)
                                                 (let ((__tmp190066
                                                        (gensym _%id187987%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp190066)))))
                                          (declare (not safe))
                                          (##map __tmp190065 _%slots187985%_)))
                                       (_%_187998%_
                                        (let ((__tmp190067
                                               (lambda (_%g187990187993%_
                                                        _%g187991187995%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs185870%_
                                                    _%g187990187993%_
                                                    _%g187991187995%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp190067
                                           _%slots187985%_
                                           _%$slots187989%_)))
                                       (_%slots-bind188007%_
                                        (let ((__tmp190068
                                               (lambda (_%g187999188002%_
                                                        _%g188000188004%_)
                                                 (_%generate-slot-bind185780%_
                                                  _%$klass187956%_
                                                  _%g187999188002%_
                                                  _%g188000188004%_))))
                                          (declare (not safe))
                                          (##map __tmp190068
                                                 _%slots187985%_
                                                 _%$slots187989%_)))
                                       (_%specializer-impl188015%_
                                        (let* ((_%specializer-body188013%_
                                                (map (lambda (_%g188008188010%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver187941%_
                                                        _%$klass187956%_
                                                        _%method-calls185869%_
                                                        _%slot-refs185870%_
                                                        _%g188008188010%_))
                                                     _%L187918%_))
                                               (__tmp190069
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L187579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L187578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp190070
                                   (cons '%#lambda
                                         (cons _%L187919%_
                                               _%specializer-body188013%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp190070 _%L187577%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L187576%_ '())))
                                      '()))
                          '())
                    (cons _%L187575%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp190069
                                           _%stx185777%_)))
                                       (_%specializer-impl188017%_
                                        (_%generate-specializer-impl185781%_
                                         _%$klass187956%_
                                         _%$method-table187958%_
                                         _%methods-bind187983%_
                                         _%slots-bind188007%_
                                         _%specializer-impl188015%_)))
                                  (let ((__tmp190072
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L185850%_)))
                                        (__tmp190071
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id187954%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp190072
                                     '" => "
                                     __tmp190071))
                                  (_%generate-specializer-def185782%_
                                   _%L185850%_
                                   _%specializer-id187954%_
                                   _%specializer-impl188017%_)))))
                        _%tl187892187915%_
                        _%hd187891187913%_)))
                   (_%g187883187897%_ _%g187884187900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g187883187897%_
                                                    _%g187884187900%_)))))
                                       (_%g187882188020%_ _%L187577%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L187577%_))
                                         (let* ((_%g188024188054%_
                                                 (lambda (_%g188025188051%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g188025188051%_))))
                                                (_%g188023188622%_
                                                 (lambda (_%g188025188057%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g188025188057%_))
                                                       (let ((_%e188029188059%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g188025188057%_))))
                 (let ((_%hd188030188062%_
                        (let ()
                          (declare (not safe))
                          (##car _%e188029188059%_)))
                       (_%tl188031188064%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e188029188059%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl188031188064%_))
                       (let ((_%e188032188067%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl188031188064%_))))
                         (let ((_%hd188033188070%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e188032188067%_)))
                               (_%tl188034188072%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e188032188067%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd188033188070%_))
                               (let ((_%e188035188075%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd188033188070%_))))
                                 (let ((_%hd188036188078%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e188035188075%_)))
                                       (_%tl188037188080%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e188035188075%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd188036188078%_))
                                       (let ((_%e188038188083%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd188036188078%_))))
                                         (let ((_%hd188039188086%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e188038188083%_)))
                                               (_%tl188040188088%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e188038188083%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd188039188086%_))
                                               (let ((_%e188041188091%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd188039188086%_))))
                                                 (let ((_%hd188042188094%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e188041188091%_)))
                                                       (_%tl188043188096%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e188041188091%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl188043188096%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl188040188088%_))
                                                           (let ((_%e188044188099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl188040188088%_))))
                     (let ((_%hd188045188102%_
                            (let ()
                              (declare (not safe))
                              (##car _%e188044188099%_)))
                           (_%tl188046188104%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e188044188099%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl188046188104%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl188037188080%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl188034188072%_))
                                   (let ((_%e188047188107%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl188034188072%_))))
                                     (let ((_%hd188048188110%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e188047188107%_)))
                                           (_%tl188049188112%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e188047188107%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl188049188112%_))
                                           ((lambda (_%L188115%_
                                                     _%L188116%_
                                                     _%L188117%_)
                                              (let* ((_%g188141188155%_
                                                      (lambda (_%g188142188152%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188142188152%_))))
                                                     (_%g188140188202%_
                                                      (lambda (_%g188142188158%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188142188158%_))
                                                            (let ((_%e188145188160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188142188158%_))))
                      (let ((_%hd188146188163%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188145188160%_)))
                            (_%tl188147188165%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188145188160%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl188147188165%_))
                            (let ((_%e188148188168%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl188147188165%_))))
                              (let ((_%hd188149188171%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188148188168%_)))
                                    (_%tl188150188173%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188148188168%_))))
                                ((lambda (_%L188176%_ _%L188177%_)
                                   (let* ((_%self188190%_
                                           (list-ref
                                            _%L188177%_
                                            _%self-index187879%_))
                                          (_%receiver188195%_
                                           (let ((_%$e188192%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L188176%_))))
                                             (if _%$e188192%_
                                                 _%$e188192%_
                                                 _%self188190%_))))
                                     (for-each
                                      (lambda (_%g188197188199%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver188195%_
                                         _%method-calls185869%_
                                         _%slot-refs185870%_
                                         _%g188197188199%_))
                                      _%L188176%_)))
                                 _%tl188150188173%_
                                 _%hd188149188171%_)))
                            (_%g188141188155%_ _%g188142188158%_))))
                    (_%g188141188155%_ _%g188142188158%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188140188202%_
                                                 _%L188116%_))
                                              (let* ((_%g188205188224%_
                                                      (lambda (_%g188206188221%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188206188221%_))))
                                                     (_%g188204188335%_
                                                      (lambda (_%g188206188227%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188206188227%_))
                                                            (let ((_%e188208188229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188206188227%_))))
                      (let ((_%hd188209188232%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188208188229%_)))
                            (_%tl188210188234%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188208188229%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl188210188234%_))
                            (let ((_g190073_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl188210188234%_
                                      '0))))
                              (begin
                                (let ((_g190074_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g190073_)
                                             (##values-length _g190073_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g190074_ 2)))
                                      (error "Context expects 2 values"
                                             _g190074_)))
                                (let ((_%target188211188237%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190073_ 0)))
                                      (_%tl188213188239%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190073_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188213188239%_))
                                      (letrec ((_%loop188214188242%_
                                                (lambda (_%hd188212188245%_
                                                         _%clause188218188247%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd188212188245%_))
                                                      (let ((_%e188215188250%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd188212188245%_))))
                (let ((_%lp-hd188216188253%_
                       (let () (declare (not safe)) (##car _%e188215188250%_)))
                      (_%lp-tl188217188255%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e188215188250%_))))
                  (_%loop188214188242%_
                   _%lp-tl188217188255%_
                   (cons _%lp-hd188216188253%_ _%clause188218188247%_))))
              (let ((_%clause188219188258%_ (reverse _%clause188218188247%_)))
                ((lambda (_%L188261%_)
                   (for-each
                    (lambda (_%clause188274%_)
                      (let* ((_%g188276188287%_
                              (lambda (_%g188277188284%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g188277188284%_))))
                             (_%g188275188325%_
                              (lambda (_%g188277188290%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g188277188290%_))
                                    (let ((_%e188280188292%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g188277188290%_))))
                                      (let ((_%hd188281188295%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188280188292%_)))
                                            (_%tl188282188297%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188280188292%_))))
                                        ((lambda (_%L188300%_ _%L188301%_)
                                           (let* ((_%self188313%_
                                                   (list-ref
                                                    _%L188301%_
                                                    _%self-index187879%_))
                                                  (_%receiver188318%_
                                                   (let ((_%$e188315%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L188300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e188315%_
                                                         _%$e188315%_
                                                         _%self188313%_))))
                                             (for-each
                                              (lambda (_%g188320188322%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver188318%_
                                                 _%method-calls185869%_
                                                 _%slot-refs185870%_
                                                 _%g188320188322%_))
                                              _%L188300%_)))
                                         _%tl188282188297%_
                                         _%hd188281188295%_)))
                                    (_%g188276188287%_ _%g188277188290%_)))))
                        (_%g188275188325%_ _%clause188274%_)))
                    (let ((__tmp190075
                           (lambda (_%g188327188330%_ _%g188328188332%_)
                             (cons _%g188327188330%_ _%g188328188332%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190075 '() _%L188261%_))))
                 _%clause188219188258%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop188214188242%_
                                         _%target188211188237%_
                                         '()))
                                      (_%g188205188224%_ _%g188206188227%_)))))
                            (_%g188205188224%_ _%g188206188227%_))))
                    (_%g188205188224%_ _%g188206188227%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188204188335%_
                                                 _%L188115%_))
                                              (if (_%no-specializer?185873%_)
                                                  _%stx185777%_
                                                  (let* ((_%specializer-id188344%_
                                                          (let* ((_%id188338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190076
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L185850%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp190076 '"::specialize")))
                         (_%specializer-id188341%_
                          (let ((__tmp190077
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx185777%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id188338%_
                             __tmp190077))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id188341%_))
                    _%specializer-id188341%_))
                 (_%$klass188346%_
                  (let ((__tmp190078
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190078)))
                 (_%$method-table188348%_
                  (let ((__tmp190079
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190079)))
                 (_%methods188350%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls185869%_)))
                 (_%$methods188354%_
                  (let ((__tmp190080
                         (lambda (_%id188352%_)
                           (let ((__tmp190081 (gensym _%id188352%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190081)))))
                    (declare (not safe))
                    (##map __tmp190080 _%methods188350%_)))
                 (_%_188363%_
                  (let ((__tmp190082
                         (lambda (_%g188355188358%_ _%g188356188360%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls185869%_
                              _%g188355188358%_
                              _%g188356188360%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp190082
                     _%methods188350%_
                     _%$methods188354%_)))
                 (_%methods-bind188373%_
                  (let ((__tmp190083
                         (lambda (_%g188365188368%_ _%g188366188370%_)
                           (_%generate-method-bind185779%_
                            _%$klass188346%_
                            _%$method-table188348%_
                            _%g188365188368%_
                            _%g188366188370%_))))
                    (declare (not safe))
                    (##map __tmp190083 _%methods188350%_ _%$methods188354%_)))
                 (_%slots188375%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs185870%_)))
                 (_%$slots188379%_
                  (let ((__tmp190084
                         (lambda (_%id188377%_)
                           (let ((__tmp190085 (gensym _%id188377%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190085)))))
                    (declare (not safe))
                    (##map __tmp190084 _%slots188375%_)))
                 (_%_188388%_
                  (let ((__tmp190086
                         (lambda (_%g188380188383%_ _%g188381188385%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs185870%_
                              _%g188380188383%_
                              _%g188381188385%_)))))
                    (declare (not safe))
                    (##for-each __tmp190086 _%slots188375%_ _%$slots188379%_)))
                 (_%slots-bind188397%_
                  (let ((__tmp190087
                         (lambda (_%g188389188392%_ _%g188390188394%_)
                           (_%generate-slot-bind185780%_
                            _%$klass188346%_
                            _%g188389188392%_
                            _%g188390188394%_))))
                    (declare (not safe))
                    (##map __tmp190087 _%slots188375%_ _%$slots188379%_)))
                 (_%specializer-lambda-expr188475%_
                  (let* ((_%g188399188413%_
                          (lambda (_%g188400188410%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g188400188410%_))))
                         (_%g188398188472%_
                          (lambda (_%g188400188416%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g188400188416%_))
                                (let ((_%e188403188418%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g188400188416%_))))
                                  (let ((_%hd188404188421%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188403188418%_)))
                                        (_%tl188405188423%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188403188418%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl188405188423%_))
                                        (let ((_%e188406188426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl188405188423%_))))
                                          (let ((_%hd188407188429%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e188406188426%_)))
                                                (_%tl188408188431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e188406188426%_))))
                                            ((lambda (_%L188434%_ _%L188435%_)
                                               (let* ((_%self188458%_
                                                       (list-ref
                                                        _%L188435%_
                                                        _%self-index187879%_))
                                                      (_%receiver188463%_
                                                       (let ((_%$e188460%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L188434%_))))
                 (if _%$e188460%_ _%$e188460%_ _%self188458%_)))
              (_%body188469%_
               (map (lambda (_%g188464188466%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver188463%_
                       _%$klass188346%_
                       _%method-calls185869%_
                       _%slot-refs185870%_
                       _%g188464188466%_))
                    _%L188434%_))
              (__tmp190088 (cons '%#lambda (cons _%L188435%_ _%body188469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190088
                                                  _%L188116%_)))
                                             _%tl188408188431%_
                                             _%hd188407188429%_)))
                                        (_%g188399188413%_
                                         _%g188400188416%_))))
                                (_%g188399188413%_ _%g188400188416%_)))))
                    (_%g188398188472%_ _%L188116%_)))
                 (_%specializer-case-lambda-expr188615%_
                  (let* ((_%g188477188496%_
                          (lambda (_%g188478188493%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g188478188493%_))))
                         (_%g188476188612%_
                          (lambda (_%g188478188499%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g188478188499%_))
                                (let ((_%e188480188501%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g188478188499%_))))
                                  (let ((_%hd188481188504%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188480188501%_)))
                                        (_%tl188482188506%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188480188501%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl188482188506%_))
                                        (let ((_g190089_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl188482188506%_
                                                  '0))))
                                          (begin
                                            (let ((_g190090_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g190089_)
                                                         (##values-length
                                                          _g190089_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g190090_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g190090_)))
                                            (let ((_%target188483188509%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g190089_
                                                      0)))
                                                  (_%tl188485188511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g190089_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl188485188511%_))
                                                  (letrec ((_%loop188486188514%_
                                                            (lambda (_%hd188484188517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause188490188519%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd188484188517%_))
                          (let ((_%e188487188522%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd188484188517%_))))
                            (let ((_%lp-hd188488188525%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188487188522%_)))
                                  (_%lp-tl188489188527%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188487188522%_))))
                              (_%loop188486188514%_
                               _%lp-tl188489188527%_
                               (cons _%lp-hd188488188525%_
                                     _%clause188490188519%_))))
                          (let ((_%clause188491188530%_
                                 (reverse _%clause188490188519%_)))
                            ((lambda (_%L188533%_)
                               (let* ((_%clauses188610%_
                                       (map (lambda (_%clause188547%_)
                                              (let* ((_%g188549188560%_
                                                      (lambda (_%g188550188557%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188550188557%_))))
                                                     (_%g188548188600%_
                                                      (lambda (_%g188550188563%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188550188563%_))
                                                            (let ((_%e188553188565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188550188563%_))))
                      (let ((_%hd188554188568%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188553188565%_)))
                            (_%tl188555188570%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188553188565%_))))
                        ((lambda (_%L188573%_ _%L188574%_)
                           (let* ((_%self188586%_
                                   (list-ref _%L188574%_ _%self-index187879%_))
                                  (_%receiver188591%_
                                   (let ((_%$e188588%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L188573%_))))
                                     (if _%$e188588%_
                                         _%$e188588%_
                                         _%self188586%_)))
                                  (_%body188597%_
                                   (map (lambda (_%g188592188594%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver188591%_
                                           _%$klass188346%_
                                           _%method-calls185869%_
                                           _%slot-refs185870%_
                                           _%g188592188594%_))
                                        _%L188573%_)))
                             (cons _%L188574%_ _%body188597%_)))
                         _%tl188555188570%_
                         _%hd188554188568%_)))
                    (_%g188549188560%_ _%g188550188563%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188548188600%_
                                                 _%clause188547%_)))
                                            (let ((__tmp190091
                                                   (lambda (_%g188602188605%_
                                                            _%g188603188607%_)
                                                     (cons _%g188602188605%_
                                                           _%g188603188607%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp190091
                                               '()
                                               _%L188533%_))))
                                      (__tmp190092
                                       (cons '%#case-lambda
                                             _%clauses188610%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp190092
                                  _%L188115%_)))
                             _%clause188491188530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop188486188514%_
                                                     _%target188483188509%_
                                                     '()))
                                                  (_%g188477188496%_
                                                   _%g188478188499%_)))))
                                        (_%g188477188496%_
                                         _%g188478188499%_))))
                                (_%g188477188496%_ _%g188478188499%_)))))
                    (_%g188476188612%_ _%L188115%_)))
                 (_%specializer-impl188617%_
                  (let ((__tmp190093
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L187579%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L187578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp190094
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L188117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr188475%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr188615%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190094
                                                _%stx185777%_))
                                             '()))
                                 '())
                           (cons _%L187576%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L187575%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp190093 _%stx185777%_)))
                 (_%specializer-impl188619%_
                  (_%generate-specializer-impl185781%_
                   _%$klass188346%_
                   _%$method-table188348%_
                   _%methods-bind188373%_
                   _%slots-bind188397%_
                   _%specializer-impl188617%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp190096
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L185850%_)))
                                                          (__tmp190095
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id188344%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp190096
                                                       '" => "
                                                       __tmp190095))
                                                    (_%generate-specializer-def185782%_
                                                     _%L185850%_
                                                     _%specializer-id188344%_
                                                     _%specializer-impl188619%_))))
                                            _%hd188048188110%_
                                            _%hd188045188102%_
                                            _%hd188042188094%_)
                                           (_%g188024188054%_
                                            _%g188025188057%_))))
                                   (_%g188024188054%_ _%g188025188057%_))
                               (_%g188024188054%_ _%g188025188057%_))
                           (_%g188024188054%_ _%g188025188057%_))))
                   (_%g188024188054%_ _%g188025188057%_))
               (_%g188024188054%_ _%g188025188057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g188024188054%_
                                                _%g188025188057%_))))
                                       (_%g188024188054%_ _%g188025188057%_))))
                               (_%g188024188054%_ _%g188025188057%_))))
                       (_%g188024188054%_ _%g188025188057%_))))
               (_%g188024188054%_ _%g188025188057%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g188023188622%_ _%L187577%_))
                                         _%stx185777%_))))
                             _%hd187675187798%_
                             _%kw-ref187673187819%_
                             _%hd187663187785%_
                             _%hd187654187761%_
                             _%hd187645187737%_)
                            (_%g187619187681%_ _%g187620187684%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop187668187803%_
                                                 _%target187665187790%_
                                                 '()))
                                              (_%g187619187681%_
                                               _%g187620187684%_))))
                                      (_%g187619187681%_ _%g187620187684%_)))))
                            (_%g187619187681%_ _%g187620187684%_))
                        (_%g187619187681%_ _%g187620187684%_))
                    (_%g187619187681%_ _%g187620187684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187619187681%_
                                                     _%g187620187684%_))
                                                (_%g187619187681%_
                                                 _%g187620187684%_))
                                            (_%g187619187681%_
                                             _%g187620187684%_))))
                                    (_%g187619187681%_ _%g187620187684%_))))
                            (_%g187619187681%_ _%g187620187684%_))
                        (_%g187619187681%_ _%g187620187684%_))))
                (_%g187619187681%_ _%g187620187684%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187619187681%_
                                                     _%g187620187684%_))
                                                (_%g187619187681%_
                                                 _%g187620187684%_))))
                                        (_%g187619187681%_
                                         _%g187620187684%_))))
                                (_%g187619187681%_ _%g187620187684%_))
                            (_%g187619187681%_ _%g187620187684%_))))
                    (_%g187619187681%_ _%g187620187684%_))
                (_%g187619187681%_ _%g187620187684%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187619187681%_
                                                     _%g187620187684%_))))
                                            (_%g187619187681%_
                                             _%g187620187684%_))))
                                    (_%g187619187681%_ _%g187620187684%_))
                                (_%g187619187681%_ _%g187620187684%_))
                            (_%g187619187681%_ _%g187620187684%_))))
                    (_%g187619187681%_ _%g187620187684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187619187681%_
                                                     _%g187620187684%_))))
                                            (_%g187619187681%_
                                             _%g187620187684%_))
                                        (_%g187619187681%_ _%g187620187684%_))
                                    (_%g187619187681%_ _%g187620187684%_))))
                            (_%g187619187681%_ _%g187620187684%_)))))
                (_%g187618188626%_ _%L187576%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd187452187570%_
                                                    _%hd187449187562%_
                                                    _%hd187446187554%_
                                                    _%hd187443187546%_
                                                    _%hd187425187498%_)
                                                   (_%g187405187458%_
                                                    _%g187406187461%_))))
                                           (_%g187405187458%_
                                            _%g187406187461%_))
                                       (_%g187405187458%_ _%g187406187461%_))
                                   (_%g187405187458%_ _%g187406187461%_))
                               (_%g187405187458%_ _%g187406187461%_))))
                       (_%g187405187458%_ _%g187406187461%_))
                   (_%g187405187458%_ _%g187406187461%_))
               (_%g187405187458%_ _%g187406187461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187405187458%_
                                                _%g187406187461%_))
                                           (_%g187405187458%_
                                            _%g187406187461%_))))
                                   (_%g187405187458%_ _%g187406187461%_))))
                           (_%g187405187458%_ _%g187406187461%_))))
                   (_%g187405187458%_ _%g187406187461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g187405187458%_
                                                    _%g187406187461%_))
                                               (_%g187405187458%_
                                                _%g187406187461%_))
                                           (_%g187405187458%_
                                            _%g187406187461%_))))
                                   (_%g187405187458%_ _%g187406187461%_))))
                           (_%g187405187458%_ _%g187406187461%_))
                       (_%g187405187458%_ _%g187406187461%_))))
               (_%g187405187458%_ _%g187406187461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187405187458%_
                                                _%g187406187461%_))))
                                       (_%g187405187458%_ _%g187406187461%_))))
                               (_%g187405187458%_ _%g187406187461%_))
                           (_%g187405187458%_ _%g187406187461%_))
                       (_%g187405187458%_ _%g187406187461%_))))
               (_%g187405187458%_ _%g187406187461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g187404188629%_ _%L185849%_))
                                         _%stx185777%_))))))))
                  (_%__kont188863188864%_ (lambda () _%stx185777%_)))
              (let ((_%__match188892188893%_
                     (lambda (_%e185789185817%_
                              _%hd185790185820%_
                              _%tl185791185822%_
                              _%e185792185825%_
                              _%hd185793185828%_
                              _%tl185794185830%_
                              _%e185795185833%_
                              _%hd185796185836%_
                              _%tl185797185838%_
                              _%e185798185841%_
                              _%hd185799185844%_
                              _%tl185800185846%_)
                       (let ((_%L185849%_ _%hd185799185844%_)
                             (_%L185850%_ _%hd185796185836%_))
                         (if (let ((__tmp190097
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L185850%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp190097))
                             (_%__kont188861188862%_ _%L185849%_ _%L185850%_)
                             (_%__kont188863188864%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx188859188860%_))
                    (let ((_%e185789185817%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx188859188860%_))))
                      (let ((_%tl185791185822%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185789185817%_)))
                            (_%hd185790185820%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185789185817%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl185791185822%_))
                            (let ((_%e185792185825%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl185791185822%_))))
                              (let ((_%tl185794185830%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e185792185825%_)))
                                    (_%hd185793185828%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e185792185825%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd185793185828%_))
                                    (let ((_%e185795185833%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd185793185828%_))))
                                      (let ((_%tl185797185838%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185795185833%_)))
                                            (_%hd185796185836%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185795185833%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl185797185838%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185794185830%_))
                                                (let ((_%e185798185841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185794185830%_))))
                                                  (let ((_%tl185800185846%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185798185841%_)))
                                                        (_%hd185799185844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185798185841%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185800185846%_))
                                                        (_%__match188892188893%_
                                                         _%e185789185817%_
                                                         _%hd185790185820%_
                                                         _%tl185791185822%_
                                                         _%e185792185825%_
                                                         _%hd185793185828%_
                                                         _%tl185794185830%_
                                                         _%e185795185833%_
                                                         _%hd185796185836%_
                                                         _%tl185797185838%_
                                                         _%e185798185841%_
                                                         _%hd185799185844%_
                                                         _%tl185800185846%_)
                                                        (_%__kont188863188864%_))))
                                                (_%__kont188863188864%_))
                                            (_%__kont188863188864%_))))
                                    (_%__kont188863188864%_))))
                            (_%__kont188863188864%_))))
                    (_%__kont188863188864%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self185629%_ _%stx185630%_)
        (let* ((_%__stx188895188896%_ _%stx185630%_)
               (_%g185633185666%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx188895188896%_)))))
          (let ((_%__kont188897188898%_ (lambda (_%L185756%_) _%L185756%_))
                (_%__kont188899188900%_
                 (lambda (_%L185695%_ _%L185696%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self185629%_ _%L185695%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx188895188896%_))
                (let ((_%e185636185716%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx188895188896%_))))
                  (let ((_%tl185638185721%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e185636185716%_)))
                        (_%hd185637185719%_
                         (let ()
                           (declare (not safe))
                           (##car _%e185636185716%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl185638185721%_))
                        (let ((_%e185639185724%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl185638185721%_))))
                          (let ((_%tl185641185729%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185639185724%_)))
                                (_%hd185640185727%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185639185724%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd185640185727%_))
                                (let ((_%e185642185732%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd185640185727%_))))
                                  (let ((_%tl185644185737%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185642185732%_)))
                                        (_%hd185643185735%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185642185732%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd185643185735%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd185643185735%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185644185737%_))
                                                (let ((_%e185645185740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185644185737%_))))
                                                  (let ((_%tl185647185745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185645185740%_)))
                                                        (_%hd185646185743%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185645185740%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185647185745%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl185641185729%_))
                                                            (let ((_%e185648185748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl185641185729%_))))
                      (let ((_%tl185650185753%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185648185748%_)))
                            (_%hd185649185751%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185648185748%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl185650185753%_))
                            (_%__kont188897188898%_ _%hd185646185743%_)
                            (let ()
                              (declare (not safe))
                              (_%g185633185666%_)))))
                    (let () (declare (not safe)) (_%g185633185666%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl185641185729%_))
                    (let ((_%e185659185687%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl185641185729%_))))
                      (let ((_%tl185661185692%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185659185687%_)))
                            (_%hd185660185690%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185659185687%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl185661185692%_))
                            (_%__kont188899188900%_
                             _%hd185660185690%_
                             _%hd185640185727%_)
                            (let ()
                              (declare (not safe))
                              (_%g185633185666%_)))))
                    (let () (declare (not safe)) (_%g185633185666%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl185641185729%_))
                                                    (let ((_%e185659185687%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl185641185729%_))))
                                                      (let ((_%tl185661185692%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e185659185687%_)))
                    (_%hd185660185690%_
                     (let () (declare (not safe)) (##car _%e185659185687%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl185661185692%_))
                    (_%__kont188899188900%_
                     _%hd185660185690%_
                     _%hd185640185727%_)
                    (let () (declare (not safe)) (_%g185633185666%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g185633185666%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185641185729%_))
                                                (let ((_%e185659185687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185641185729%_))))
                                                  (let ((_%tl185661185692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185659185687%_)))
                                                        (_%hd185660185690%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185659185687%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185661185692%_))
                                                        (_%__kont188899188900%_
                                                         _%hd185660185690%_
                                                         _%hd185640185727%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g185633185666%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g185633185666%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl185641185729%_))
                                            (let ((_%e185659185687%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl185641185729%_))))
                                              (let ((_%tl185661185692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e185659185687%_)))
                                                    (_%hd185660185690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e185659185687%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl185661185692%_))
                                                    (_%__kont188899188900%_
                                                     _%hd185660185690%_
                                                     _%hd185640185727%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g185633185666%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g185633185666%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl185641185729%_))
                                    (let ((_%e185659185687%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl185641185729%_))))
                                      (let ((_%tl185661185692%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185659185687%_)))
                                            (_%hd185660185690%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185659185687%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl185661185692%_))
                                            (_%__kont188899188900%_
                                             _%hd185660185690%_
                                             _%hd185640185727%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g185633185666%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g185633185666%_))))))
                        (let () (declare (not safe)) (_%g185633185666%_)))))
                (let () (declare (not safe)) (_%g185633185666%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self185545%_ _%stx185546%_)
        (let* ((_%g185548185569%_
                (lambda (_%g185549185566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g185549185566%_))))
               (_%g185547185626%_
                (lambda (_%g185549185572%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g185549185572%_))
                      (let ((_%e185553185574%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g185549185572%_))))
                        (let ((_%hd185554185577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185553185574%_)))
                              (_%tl185555185579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185553185574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl185555185579%_))
                              (let ((_%e185556185582%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl185555185579%_))))
                                (let ((_%hd185557185585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e185556185582%_)))
                                      (_%tl185558185587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e185556185582%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185558185587%_))
                                      (let ((_%e185559185590%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185558185587%_))))
                                        (let ((_%hd185560185593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185559185590%_)))
                                              (_%tl185561185595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185559185590%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185561185595%_))
                                              (let ((_%e185562185598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl185561185595%_))))
                                                (let ((_%hd185563185601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185562185598%_)))
                                                      (_%tl185564185603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185562185598%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl185564185603%_))
                                                      ((lambda (_%L185606%_
                                                                _%L185607%_
                                                                _%L185608%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self185545%_
                                                            _%L185607%_)))
                                                       _%hd185563185601%_
                                                       _%hd185560185593%_
                                                       _%hd185557185585%_)
                                                      (_%g185548185569%_
                                                       _%g185549185572%_))))
                                              (_%g185548185569%_
                                               _%g185549185572%_))))
                                      (_%g185548185569%_ _%g185549185572%_))))
                              (_%g185548185569%_ _%g185549185572%_))))
                      (_%g185548185569%_ _%g185549185572%_)))))
          (_%g185547185626%_ _%stx185546%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self184506%_ _%stx184507%_)
        (let* ((_%__stx188961188962%_ _%stx184507%_)
               (_%g184515184737%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx188961188962%_)))))
          (let ((_%__kont188963188964%_
                 (lambda (_%L185494%_ _%L185495%_ _%L185496%_ _%L185497%_)
                   (let ((__tmp190099
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184506%_ 'methods)))
                         (__tmp190098
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185495%_))))
                     (declare (not safe))
                     (hash-put! __tmp190099 __tmp190098 '#t))
                   (for-each
                    (lambda (_%g185530185532%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self184506%_ _%g185530185532%_)))
                    (let ((__tmp190100
                           (lambda (_%g185534185537%_ _%g185535185539%_)
                             (cons _%g185534185537%_ _%g185535185539%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190100 '() _%L185494%_)))))
                (_%__kont188967188968%_
                 (lambda (_%L185329%_
                          _%L185330%_
                          _%L185331%_
                          _%L185332%_
                          _%L185333%_)
                   (let ((__tmp190102
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184506%_ 'methods)))
                         (__tmp190101
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185330%_))))
                     (declare (not safe))
                     (hash-put! __tmp190102 __tmp190101 '#t))
                   (for-each
                    (lambda (_%g185373185375%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self184506%_ _%g185373185375%_)))
                    (let ((__tmp190103
                           (lambda (_%g185377185380%_ _%g185378185382%_)
                             (cons _%g185377185380%_ _%g185378185382%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190103 '() _%L185329%_)))))
                (_%__kont188971188972%_
                 (lambda (_%L185162%_ _%L185163%_ _%L185164%_)
                   (let ((__tmp190105
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184506%_ 'slots)))
                         (__tmp190104
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185162%_))))
                     (declare (not safe))
                     (hash-put! __tmp190105 __tmp190104 '#t))))
                (_%__kont188973188974%_
                 (lambda (_%L185039%_ _%L185040%_ _%L185041%_ _%L185042%_)
                   (let ((__tmp190107
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184506%_ 'slots)))
                         (__tmp190106
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185040%_))))
                     (declare (not safe))
                     (hash-put! __tmp190107 __tmp190106 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self184506%_ _%L185039%_))))
                (_%__kont188975188976%_
                 (lambda (_%L184913%_ _%L184914%_)
                   (let* ((_%accessor184936%_
                           (let ((__tmp190108
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L184914%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp190108)))
                          (_%klass184938%_
                           (let ((__tmp190109
                                  (##structure-ref
                                   _%accessor184936%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx184507%_
                              __tmp190109)))
                          (_%slot184940%_
                           (##structure-ref
                            _%accessor184936%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor184936%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass184938%_
                                    _%slot184940%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass184938%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp190111
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self184506%_ 'slots)))
                               (__tmp190110
                                (##structure-ref
                                 _%accessor184936%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp190111 __tmp190110 '#t))))))
                (_%__kont188977188978%_
                 (lambda (_%L184813%_ _%L184814%_ _%L184815%_)
                   (let* ((_%mutator184842%_
                           (let ((__tmp190112
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L184815%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp190112)))
                          (_%klass184844%_
                           (let ((__tmp190113
                                  (##structure-ref
                                   _%mutator184842%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx184507%_
                              __tmp190113)))
                          (_%slot184846%_
                           (##structure-ref
                            _%mutator184842%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator184842%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass184844%_
                                    _%slot184846%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass184844%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp190114
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self184506%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp190114 _%slot184846%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self184506%_ _%L184813%_)))))
                (_%__kont188979188980%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self184506%_ _%stx184507%_)))))
            (let* ((_%__match189460189461%_
                    (lambda (_%e184709184749%_
                             _%hd184710184752%_
                             _%tl184711184754%_
                             _%e184712184757%_
                             _%hd184713184760%_
                             _%tl184714184762%_
                             _%e184715184765%_
                             _%hd184716184768%_
                             _%tl184717184770%_
                             _%e184718184773%_
                             _%hd184719184776%_
                             _%tl184720184778%_
                             _%e184721184781%_
                             _%hd184722184784%_
                             _%tl184723184786%_
                             _%e184724184789%_
                             _%hd184725184792%_
                             _%tl184726184794%_
                             _%e184727184797%_
                             _%hd184728184800%_
                             _%tl184729184802%_
                             _%e184730184805%_
                             _%hd184731184808%_
                             _%tl184732184810%_)
                      (let ((_%L184813%_ _%hd184731184808%_)
                            (_%L184814%_ _%hd184728184800%_)
                            (_%L184815%_ _%hd184719184776%_))
                        (if (and (let ((__tmp190115
                                        (let ((__tmp190116
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L184815%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp190116))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp190115
                                    'gxc#!mutator::t))
                                 (let ((__tmp190117
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184506%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L184814%_
                                    __tmp190117)))
                            (_%__kont188977188978%_
                             _%L184813%_
                             _%L184814%_
                             _%L184815%_)
                            (_%__kont188979188980%_)))))
                   (_%__match189458189459%_
                    (lambda (_%e184709184749%_
                             _%hd184710184752%_
                             _%tl184711184754%_
                             _%e184712184757%_
                             _%hd184713184760%_
                             _%tl184714184762%_
                             _%e184715184765%_
                             _%hd184716184768%_
                             _%tl184717184770%_
                             _%e184718184773%_
                             _%hd184719184776%_
                             _%tl184720184778%_
                             _%e184721184781%_
                             _%hd184722184784%_
                             _%tl184723184786%_
                             _%e184724184789%_
                             _%hd184725184792%_
                             _%tl184726184794%_
                             _%e184727184797%_
                             _%hd184728184800%_
                             _%tl184729184802%_
                             _%e184730184805%_
                             _%hd184731184808%_
                             _%tl184732184810%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184732184810%_))
                          (_%__match189460189461%_
                           _%e184709184749%_
                           _%hd184710184752%_
                           _%tl184711184754%_
                           _%e184712184757%_
                           _%hd184713184760%_
                           _%tl184714184762%_
                           _%e184715184765%_
                           _%hd184716184768%_
                           _%tl184717184770%_
                           _%e184718184773%_
                           _%hd184719184776%_
                           _%tl184720184778%_
                           _%e184721184781%_
                           _%hd184722184784%_
                           _%tl184723184786%_
                           _%e184724184789%_
                           _%hd184725184792%_
                           _%tl184726184794%_
                           _%e184727184797%_
                           _%hd184728184800%_
                           _%tl184729184802%_
                           _%e184730184805%_
                           _%hd184731184808%_
                           _%tl184732184810%_)
                          (_%__kont188979188980%_))))
                   (_%__match189452189453%_
                    (lambda (_%e184709184749%_
                             _%hd184710184752%_
                             _%tl184711184754%_
                             _%e184712184757%_
                             _%hd184713184760%_
                             _%tl184714184762%_
                             _%e184715184765%_
                             _%hd184716184768%_
                             _%tl184717184770%_
                             _%e184718184773%_
                             _%hd184719184776%_
                             _%tl184720184778%_
                             _%e184721184781%_
                             _%hd184722184784%_
                             _%tl184723184786%_
                             _%e184724184789%_
                             _%hd184725184792%_
                             _%tl184726184794%_
                             _%e184727184797%_
                             _%hd184728184800%_
                             _%tl184729184802%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184723184786%_))
                          (let ((_%e184730184805%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184723184786%_))))
                            (let ((_%tl184732184810%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184730184805%_)))
                                  (_%hd184731184808%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184730184805%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184732184810%_))
                                  (_%__match189460189461%_
                                   _%e184709184749%_
                                   _%hd184710184752%_
                                   _%tl184711184754%_
                                   _%e184712184757%_
                                   _%hd184713184760%_
                                   _%tl184714184762%_
                                   _%e184715184765%_
                                   _%hd184716184768%_
                                   _%tl184717184770%_
                                   _%e184718184773%_
                                   _%hd184719184776%_
                                   _%tl184720184778%_
                                   _%e184721184781%_
                                   _%hd184722184784%_
                                   _%tl184723184786%_
                                   _%e184724184789%_
                                   _%hd184725184792%_
                                   _%tl184726184794%_
                                   _%e184727184797%_
                                   _%hd184728184800%_
                                   _%tl184729184802%_
                                   _%e184730184805%_
                                   _%hd184731184808%_
                                   _%tl184732184810%_)
                                  (_%__kont188979188980%_))))
                          (_%__kont188979188980%_))))
                   (_%__match189398189399%_
                    (lambda (_%e184685184857%_
                             _%hd184686184860%_
                             _%tl184687184862%_
                             _%e184688184865%_
                             _%hd184689184868%_
                             _%tl184690184870%_
                             _%e184691184873%_
                             _%hd184692184876%_
                             _%tl184693184878%_
                             _%e184694184881%_
                             _%hd184695184884%_
                             _%tl184696184886%_
                             _%e184697184889%_
                             _%hd184698184892%_
                             _%tl184699184894%_
                             _%e184700184897%_
                             _%hd184701184900%_
                             _%tl184702184902%_
                             _%e184703184905%_
                             _%hd184704184908%_
                             _%tl184705184910%_)
                      (let ((_%L184913%_ _%hd184704184908%_)
                            (_%L184914%_ _%hd184695184884%_))
                        (if (and (let ((__tmp190118
                                        (let ((__tmp190119
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L184914%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp190119))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp190118
                                    'gxc#!accessor::t))
                                 (let ((__tmp190120
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184506%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L184913%_
                                    __tmp190120)))
                            (_%__kont188975188976%_ _%L184913%_ _%L184914%_)
                            (_%__kont188979188980%_)))))
                   (_%__match189396189397%_
                    (lambda (_%e184685184857%_
                             _%hd184686184860%_
                             _%tl184687184862%_
                             _%e184688184865%_
                             _%hd184689184868%_
                             _%tl184690184870%_
                             _%e184691184873%_
                             _%hd184692184876%_
                             _%tl184693184878%_
                             _%e184694184881%_
                             _%hd184695184884%_
                             _%tl184696184886%_
                             _%e184697184889%_
                             _%hd184698184892%_
                             _%tl184699184894%_
                             _%e184700184897%_
                             _%hd184701184900%_
                             _%tl184702184902%_
                             _%e184703184905%_
                             _%hd184704184908%_
                             _%tl184705184910%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184699184894%_))
                          (_%__match189398189399%_
                           _%e184685184857%_
                           _%hd184686184860%_
                           _%tl184687184862%_
                           _%e184688184865%_
                           _%hd184689184868%_
                           _%tl184690184870%_
                           _%e184691184873%_
                           _%hd184692184876%_
                           _%tl184693184878%_
                           _%e184694184881%_
                           _%hd184695184884%_
                           _%tl184696184886%_
                           _%e184697184889%_
                           _%hd184698184892%_
                           _%tl184699184894%_
                           _%e184700184897%_
                           _%hd184701184900%_
                           _%tl184702184902%_
                           _%e184703184905%_
                           _%hd184704184908%_
                           _%tl184705184910%_)
                          (_%__match189452189453%_
                           _%e184685184857%_
                           _%hd184686184860%_
                           _%tl184687184862%_
                           _%e184688184865%_
                           _%hd184689184868%_
                           _%tl184690184870%_
                           _%e184691184873%_
                           _%hd184692184876%_
                           _%tl184693184878%_
                           _%e184694184881%_
                           _%hd184695184884%_
                           _%tl184696184886%_
                           _%e184697184889%_
                           _%hd184698184892%_
                           _%tl184699184894%_
                           _%e184700184897%_
                           _%hd184701184900%_
                           _%tl184702184902%_
                           _%e184703184905%_
                           _%hd184704184908%_
                           _%tl184705184910%_))))
                   (_%__match189342189343%_
                    (lambda (_%e184650184951%_
                             _%hd184651184954%_
                             _%tl184652184956%_
                             _%e184653184959%_
                             _%hd184654184962%_
                             _%tl184655184964%_
                             _%e184656184967%_
                             _%hd184657184970%_
                             _%tl184658184972%_
                             _%e184659184975%_
                             _%hd184660184978%_
                             _%tl184661184980%_
                             _%e184662184983%_
                             _%hd184663184986%_
                             _%tl184664184988%_
                             _%e184665184991%_
                             _%hd184666184994%_
                             _%tl184667184996%_
                             _%e184668184999%_
                             _%hd184669185002%_
                             _%tl184670185004%_
                             _%e184671185007%_
                             _%hd184672185010%_
                             _%tl184673185012%_
                             _%e184674185015%_
                             _%hd184675185018%_
                             _%tl184676185020%_
                             _%e184677185023%_
                             _%hd184678185026%_
                             _%tl184679185028%_
                             _%e184680185031%_
                             _%hd184681185034%_
                             _%tl184682185036%_)
                      (let ((_%L185039%_ _%hd184681185034%_)
                            (_%L185040%_ _%hd184678185026%_)
                            (_%L185041%_ _%hd184669185002%_)
                            (_%L185042%_ _%hd184660184978%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185042%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185042%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp190121
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184506%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L185041%_
                                    __tmp190121)))
                            (_%__kont188973188974%_
                             _%L185039%_
                             _%L185040%_
                             _%L185041%_
                             _%L185042%_)
                            (_%__kont188979188980%_)))))
                   (_%__match189334189335%_
                    (lambda (_%e184650184951%_
                             _%hd184651184954%_
                             _%tl184652184956%_
                             _%e184653184959%_
                             _%hd184654184962%_
                             _%tl184655184964%_
                             _%e184656184967%_
                             _%hd184657184970%_
                             _%tl184658184972%_
                             _%e184659184975%_
                             _%hd184660184978%_
                             _%tl184661184980%_
                             _%e184662184983%_
                             _%hd184663184986%_
                             _%tl184664184988%_
                             _%e184665184991%_
                             _%hd184666184994%_
                             _%tl184667184996%_
                             _%e184668184999%_
                             _%hd184669185002%_
                             _%tl184670185004%_
                             _%e184671185007%_
                             _%hd184672185010%_
                             _%tl184673185012%_
                             _%e184674185015%_
                             _%hd184675185018%_
                             _%tl184676185020%_
                             _%e184677185023%_
                             _%hd184678185026%_
                             _%tl184679185028%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184673185012%_))
                          (let ((_%e184680185031%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184673185012%_))))
                            (let ((_%tl184682185036%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184680185031%_)))
                                  (_%hd184681185034%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184680185031%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184682185036%_))
                                  (_%__match189342189343%_
                                   _%e184650184951%_
                                   _%hd184651184954%_
                                   _%tl184652184956%_
                                   _%e184653184959%_
                                   _%hd184654184962%_
                                   _%tl184655184964%_
                                   _%e184656184967%_
                                   _%hd184657184970%_
                                   _%tl184658184972%_
                                   _%e184659184975%_
                                   _%hd184660184978%_
                                   _%tl184661184980%_
                                   _%e184662184983%_
                                   _%hd184663184986%_
                                   _%tl184664184988%_
                                   _%e184665184991%_
                                   _%hd184666184994%_
                                   _%tl184667184996%_
                                   _%e184668184999%_
                                   _%hd184669185002%_
                                   _%tl184670185004%_
                                   _%e184671185007%_
                                   _%hd184672185010%_
                                   _%tl184673185012%_
                                   _%e184674185015%_
                                   _%hd184675185018%_
                                   _%tl184676185020%_
                                   _%e184677185023%_
                                   _%hd184678185026%_
                                   _%tl184679185028%_
                                   _%e184680185031%_
                                   _%hd184681185034%_
                                   _%tl184682185036%_)
                                  (_%__kont188979188980%_))))
                          (_%__match189458189459%_
                           _%e184650184951%_
                           _%hd184651184954%_
                           _%tl184652184956%_
                           _%e184653184959%_
                           _%hd184654184962%_
                           _%tl184655184964%_
                           _%e184656184967%_
                           _%hd184657184970%_
                           _%tl184658184972%_
                           _%e184659184975%_
                           _%hd184660184978%_
                           _%tl184661184980%_
                           _%e184662184983%_
                           _%hd184663184986%_
                           _%tl184664184988%_
                           _%e184665184991%_
                           _%hd184666184994%_
                           _%tl184667184996%_
                           _%e184668184999%_
                           _%hd184669185002%_
                           _%tl184670185004%_
                           _%e184671185007%_
                           _%hd184672185010%_
                           _%tl184673185012%_))))
                   (_%__match189256189257%_
                    (lambda (_%e184616185082%_
                             _%hd184617185085%_
                             _%tl184618185087%_
                             _%e184619185090%_
                             _%hd184620185093%_
                             _%tl184621185095%_
                             _%e184622185098%_
                             _%hd184623185101%_
                             _%tl184624185103%_
                             _%e184625185106%_
                             _%hd184626185109%_
                             _%tl184627185111%_
                             _%e184628185114%_
                             _%hd184629185117%_
                             _%tl184630185119%_
                             _%e184631185122%_
                             _%hd184632185125%_
                             _%tl184633185127%_
                             _%e184634185130%_
                             _%hd184635185133%_
                             _%tl184636185135%_
                             _%e184637185138%_
                             _%hd184638185141%_
                             _%tl184639185143%_
                             _%e184640185146%_
                             _%hd184641185149%_
                             _%tl184642185151%_
                             _%e184643185154%_
                             _%hd184644185157%_
                             _%tl184645185159%_)
                      (let ((_%L185162%_ _%hd184644185157%_)
                            (_%L185163%_ _%hd184635185133%_)
                            (_%L185164%_ _%hd184626185109%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185164%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185164%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp190122
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184506%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L185163%_
                                    __tmp190122)))
                            (_%__kont188971188972%_
                             _%L185162%_
                             _%L185163%_
                             _%L185164%_)
                            (_%__match189460189461%_
                             _%e184616185082%_
                             _%hd184617185085%_
                             _%tl184618185087%_
                             _%e184619185090%_
                             _%hd184620185093%_
                             _%tl184621185095%_
                             _%e184622185098%_
                             _%hd184623185101%_
                             _%tl184624185103%_
                             _%e184625185106%_
                             _%hd184626185109%_
                             _%tl184627185111%_
                             _%e184628185114%_
                             _%hd184629185117%_
                             _%tl184630185119%_
                             _%e184631185122%_
                             _%hd184632185125%_
                             _%tl184633185127%_
                             _%e184634185130%_
                             _%hd184635185133%_
                             _%tl184636185135%_
                             _%e184637185138%_
                             _%hd184638185141%_
                             _%tl184639185143%_)))))
                   (_%__match189254189255%_
                    (lambda (_%e184616185082%_
                             _%hd184617185085%_
                             _%tl184618185087%_
                             _%e184619185090%_
                             _%hd184620185093%_
                             _%tl184621185095%_
                             _%e184622185098%_
                             _%hd184623185101%_
                             _%tl184624185103%_
                             _%e184625185106%_
                             _%hd184626185109%_
                             _%tl184627185111%_
                             _%e184628185114%_
                             _%hd184629185117%_
                             _%tl184630185119%_
                             _%e184631185122%_
                             _%hd184632185125%_
                             _%tl184633185127%_
                             _%e184634185130%_
                             _%hd184635185133%_
                             _%tl184636185135%_
                             _%e184637185138%_
                             _%hd184638185141%_
                             _%tl184639185143%_
                             _%e184640185146%_
                             _%hd184641185149%_
                             _%tl184642185151%_
                             _%e184643185154%_
                             _%hd184644185157%_
                             _%tl184645185159%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184639185143%_))
                          (_%__match189256189257%_
                           _%e184616185082%_
                           _%hd184617185085%_
                           _%tl184618185087%_
                           _%e184619185090%_
                           _%hd184620185093%_
                           _%tl184621185095%_
                           _%e184622185098%_
                           _%hd184623185101%_
                           _%tl184624185103%_
                           _%e184625185106%_
                           _%hd184626185109%_
                           _%tl184627185111%_
                           _%e184628185114%_
                           _%hd184629185117%_
                           _%tl184630185119%_
                           _%e184631185122%_
                           _%hd184632185125%_
                           _%tl184633185127%_
                           _%e184634185130%_
                           _%hd184635185133%_
                           _%tl184636185135%_
                           _%e184637185138%_
                           _%hd184638185141%_
                           _%tl184639185143%_
                           _%e184640185146%_
                           _%hd184641185149%_
                           _%tl184642185151%_
                           _%e184643185154%_
                           _%hd184644185157%_
                           _%tl184645185159%_)
                          (_%__match189334189335%_
                           _%e184616185082%_
                           _%hd184617185085%_
                           _%tl184618185087%_
                           _%e184619185090%_
                           _%hd184620185093%_
                           _%tl184621185095%_
                           _%e184622185098%_
                           _%hd184623185101%_
                           _%tl184624185103%_
                           _%e184625185106%_
                           _%hd184626185109%_
                           _%tl184627185111%_
                           _%e184628185114%_
                           _%hd184629185117%_
                           _%tl184630185119%_
                           _%e184631185122%_
                           _%hd184632185125%_
                           _%tl184633185127%_
                           _%e184634185130%_
                           _%hd184635185133%_
                           _%tl184636185135%_
                           _%e184637185138%_
                           _%hd184638185141%_
                           _%tl184639185143%_
                           _%e184640185146%_
                           _%hd184641185149%_
                           _%tl184642185151%_
                           _%e184643185154%_
                           _%hd184644185157%_
                           _%tl184645185159%_))))
                   (_%__match189244189245%_
                    (lambda (_%e184616185082%_
                             _%hd184617185085%_
                             _%tl184618185087%_
                             _%e184619185090%_
                             _%hd184620185093%_
                             _%tl184621185095%_
                             _%e184622185098%_
                             _%hd184623185101%_
                             _%tl184624185103%_
                             _%e184625185106%_
                             _%hd184626185109%_
                             _%tl184627185111%_
                             _%e184628185114%_
                             _%hd184629185117%_
                             _%tl184630185119%_
                             _%e184631185122%_
                             _%hd184632185125%_
                             _%tl184633185127%_
                             _%e184634185130%_
                             _%hd184635185133%_
                             _%tl184636185135%_
                             _%e184637185138%_
                             _%hd184638185141%_
                             _%tl184639185143%_
                             _%e184640185146%_
                             _%hd184641185149%_
                             _%tl184642185151%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd184641185149%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184642185151%_))
                              (let ((_%e184643185154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184642185151%_))))
                                (let ((_%tl184645185159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184643185154%_)))
                                      (_%hd184644185157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184643185154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184645185159%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl184639185143%_))
                                          (_%__match189256189257%_
                                           _%e184616185082%_
                                           _%hd184617185085%_
                                           _%tl184618185087%_
                                           _%e184619185090%_
                                           _%hd184620185093%_
                                           _%tl184621185095%_
                                           _%e184622185098%_
                                           _%hd184623185101%_
                                           _%tl184624185103%_
                                           _%e184625185106%_
                                           _%hd184626185109%_
                                           _%tl184627185111%_
                                           _%e184628185114%_
                                           _%hd184629185117%_
                                           _%tl184630185119%_
                                           _%e184631185122%_
                                           _%hd184632185125%_
                                           _%tl184633185127%_
                                           _%e184634185130%_
                                           _%hd184635185133%_
                                           _%tl184636185135%_
                                           _%e184637185138%_
                                           _%hd184638185141%_
                                           _%tl184639185143%_
                                           _%e184640185146%_
                                           _%hd184641185149%_
                                           _%tl184642185151%_
                                           _%e184643185154%_
                                           _%hd184644185157%_
                                           _%tl184645185159%_)
                                          (_%__match189334189335%_
                                           _%e184616185082%_
                                           _%hd184617185085%_
                                           _%tl184618185087%_
                                           _%e184619185090%_
                                           _%hd184620185093%_
                                           _%tl184621185095%_
                                           _%e184622185098%_
                                           _%hd184623185101%_
                                           _%tl184624185103%_
                                           _%e184625185106%_
                                           _%hd184626185109%_
                                           _%tl184627185111%_
                                           _%e184628185114%_
                                           _%hd184629185117%_
                                           _%tl184630185119%_
                                           _%e184631185122%_
                                           _%hd184632185125%_
                                           _%tl184633185127%_
                                           _%e184634185130%_
                                           _%hd184635185133%_
                                           _%tl184636185135%_
                                           _%e184637185138%_
                                           _%hd184638185141%_
                                           _%tl184639185143%_
                                           _%e184640185146%_
                                           _%hd184641185149%_
                                           _%tl184642185151%_
                                           _%e184643185154%_
                                           _%hd184644185157%_
                                           _%tl184645185159%_))
                                      (_%__match189458189459%_
                                       _%e184616185082%_
                                       _%hd184617185085%_
                                       _%tl184618185087%_
                                       _%e184619185090%_
                                       _%hd184620185093%_
                                       _%tl184621185095%_
                                       _%e184622185098%_
                                       _%hd184623185101%_
                                       _%tl184624185103%_
                                       _%e184625185106%_
                                       _%hd184626185109%_
                                       _%tl184627185111%_
                                       _%e184628185114%_
                                       _%hd184629185117%_
                                       _%tl184630185119%_
                                       _%e184631185122%_
                                       _%hd184632185125%_
                                       _%tl184633185127%_
                                       _%e184634185130%_
                                       _%hd184635185133%_
                                       _%tl184636185135%_
                                       _%e184637185138%_
                                       _%hd184638185141%_
                                       _%tl184639185143%_))))
                              (_%__match189458189459%_
                               _%e184616185082%_
                               _%hd184617185085%_
                               _%tl184618185087%_
                               _%e184619185090%_
                               _%hd184620185093%_
                               _%tl184621185095%_
                               _%e184622185098%_
                               _%hd184623185101%_
                               _%tl184624185103%_
                               _%e184625185106%_
                               _%hd184626185109%_
                               _%tl184627185111%_
                               _%e184628185114%_
                               _%hd184629185117%_
                               _%tl184630185119%_
                               _%e184631185122%_
                               _%hd184632185125%_
                               _%tl184633185127%_
                               _%e184634185130%_
                               _%hd184635185133%_
                               _%tl184636185135%_
                               _%e184637185138%_
                               _%hd184638185141%_
                               _%tl184639185143%_))
                          (_%__match189458189459%_
                           _%e184616185082%_
                           _%hd184617185085%_
                           _%tl184618185087%_
                           _%e184619185090%_
                           _%hd184620185093%_
                           _%tl184621185095%_
                           _%e184622185098%_
                           _%hd184623185101%_
                           _%tl184624185103%_
                           _%e184625185106%_
                           _%hd184626185109%_
                           _%tl184627185111%_
                           _%e184628185114%_
                           _%hd184629185117%_
                           _%tl184630185119%_
                           _%e184631185122%_
                           _%hd184632185125%_
                           _%tl184633185127%_
                           _%e184634185130%_
                           _%hd184635185133%_
                           _%tl184636185135%_
                           _%e184637185138%_
                           _%hd184638185141%_
                           _%tl184639185143%_))))
                   (_%__match189176189177%_
                    (lambda (_%e184565185201%_
                             _%hd184566185204%_
                             _%tl184567185206%_
                             _%e184568185209%_
                             _%hd184569185212%_
                             _%tl184570185214%_
                             _%e184571185217%_
                             _%hd184572185220%_
                             _%tl184573185222%_
                             _%e184574185225%_
                             _%hd184575185228%_
                             _%tl184576185230%_
                             _%e184577185233%_
                             _%hd184578185236%_
                             _%tl184579185238%_
                             _%e184580185241%_
                             _%hd184581185244%_
                             _%tl184582185246%_
                             _%e184583185249%_
                             _%hd184584185252%_
                             _%tl184585185254%_
                             _%e184586185257%_
                             _%hd184587185260%_
                             _%tl184588185262%_
                             _%e184589185265%_
                             _%hd184590185268%_
                             _%tl184591185270%_
                             _%e184592185273%_
                             _%hd184593185276%_
                             _%tl184594185278%_
                             _%e184595185281%_
                             _%hd184596185284%_
                             _%tl184597185286%_
                             _%e184598185289%_
                             _%hd184599185292%_
                             _%tl184600185294%_
                             _%e184601185297%_
                             _%hd184602185300%_
                             _%tl184603185302%_
                             _%__splice188969188970%_
                             _%target184604185305%_
                             _%tl184606185307%_)
                      (letrec ((_%loop184607185310%_
                                (lambda (_%hd184605185313%_
                                         _%args184611185315%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd184605185313%_))
                                      (let ((_%e184608185318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd184605185313%_))))
                                        (let ((_%lp-tl184610185323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184608185318%_)))
                                              (_%lp-hd184609185321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184608185318%_))))
                                          (_%loop184607185310%_
                                           _%lp-tl184610185323%_
                                           (cons _%lp-hd184609185321%_
                                                 _%args184611185315%_))))
                                      (let ((_%args184612185326%_
                                             (reverse _%args184611185315%_)))
                                        (let ((_%L185329%_
                                               _%args184612185326%_)
                                              (_%L185330%_ _%hd184602185300%_)
                                              (_%L185331%_ _%hd184593185276%_)
                                              (_%L185332%_ _%hd184584185252%_)
                                              (_%L185333%_ _%hd184575185228%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L185333%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L185332%_
                                                      'call-method))
                                                   (let ((__tmp190123
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self184506%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L185331%_
                                                      __tmp190123)))
                                              (_%__kont188967188968%_
                                               _%L185329%_
                                               _%L185330%_
                                               _%L185331%_
                                               _%L185332%_
                                               _%L185333%_)
                                              (_%__kont188979188980%_))))))))
                        (_%loop184607185310%_ _%target184604185305%_ '()))))
                   (_%__match189134189135%_
                    (lambda (_%e184565185201%_
                             _%hd184566185204%_
                             _%tl184567185206%_
                             _%e184568185209%_
                             _%hd184569185212%_
                             _%tl184570185214%_
                             _%e184571185217%_
                             _%hd184572185220%_
                             _%tl184573185222%_
                             _%e184574185225%_
                             _%hd184575185228%_
                             _%tl184576185230%_
                             _%e184577185233%_
                             _%hd184578185236%_
                             _%tl184579185238%_
                             _%e184580185241%_
                             _%hd184581185244%_
                             _%tl184582185246%_
                             _%e184583185249%_
                             _%hd184584185252%_
                             _%tl184585185254%_
                             _%e184586185257%_
                             _%hd184587185260%_
                             _%tl184588185262%_
                             _%e184589185265%_
                             _%hd184590185268%_
                             _%tl184591185270%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd184590185268%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184591185270%_))
                              (let ((_%e184592185273%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184591185270%_))))
                                (let ((_%tl184594185278%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184592185273%_)))
                                      (_%hd184593185276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184592185273%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184594185278%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl184588185262%_))
                                          (let ((_%e184595185281%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl184588185262%_))))
                                            (let ((_%tl184597185286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e184595185281%_)))
                                                  (_%hd184596185284%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e184595185281%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd184596185284%_))
                                                  (let ((_%e184598185289%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd184596185284%_))))
                                                    (let ((_%tl184600185294%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184598185289%_)))
                                                          (_%hd184599185292%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184598185289%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd184599185292%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd184599185292%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184600185294%_))
                          (let ((_%e184601185297%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184600185294%_))))
                            (let ((_%tl184603185302%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184601185297%_)))
                                  (_%hd184602185300%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184601185297%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184603185302%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl184597185286%_))
                                      (let ((_%__splice188969188970%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl184597185286%_
                                                '0))))
                                        (let ((_%tl184606185307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice188969188970%_
                                                  '1)))
                                              (_%target184604185305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice188969188970%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl184606185307%_))
                                              (_%__match189176189177%_
                                               _%e184565185201%_
                                               _%hd184566185204%_
                                               _%tl184567185206%_
                                               _%e184568185209%_
                                               _%hd184569185212%_
                                               _%tl184570185214%_
                                               _%e184571185217%_
                                               _%hd184572185220%_
                                               _%tl184573185222%_
                                               _%e184574185225%_
                                               _%hd184575185228%_
                                               _%tl184576185230%_
                                               _%e184577185233%_
                                               _%hd184578185236%_
                                               _%tl184579185238%_
                                               _%e184580185241%_
                                               _%hd184581185244%_
                                               _%tl184582185246%_
                                               _%e184583185249%_
                                               _%hd184584185252%_
                                               _%tl184585185254%_
                                               _%e184586185257%_
                                               _%hd184587185260%_
                                               _%tl184588185262%_
                                               _%e184589185265%_
                                               _%hd184590185268%_
                                               _%tl184591185270%_
                                               _%e184592185273%_
                                               _%hd184593185276%_
                                               _%tl184594185278%_
                                               _%e184595185281%_
                                               _%hd184596185284%_
                                               _%tl184597185286%_
                                               _%e184598185289%_
                                               _%hd184599185292%_
                                               _%tl184600185294%_
                                               _%e184601185297%_
                                               _%hd184602185300%_
                                               _%tl184603185302%_
                                               _%__splice188969188970%_
                                               _%target184604185305%_
                                               _%tl184606185307%_)
                                              (_%__kont188979188980%_))))
                                      (_%__kont188979188980%_))
                                  (_%__kont188979188980%_))))
                          (_%__kont188979188980%_))
                      (_%__kont188979188980%_))
                  (_%__kont188979188980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188979188980%_))))
                                          (_%__match189458189459%_
                                           _%e184565185201%_
                                           _%hd184566185204%_
                                           _%tl184567185206%_
                                           _%e184568185209%_
                                           _%hd184569185212%_
                                           _%tl184570185214%_
                                           _%e184571185217%_
                                           _%hd184572185220%_
                                           _%tl184573185222%_
                                           _%e184574185225%_
                                           _%hd184575185228%_
                                           _%tl184576185230%_
                                           _%e184577185233%_
                                           _%hd184578185236%_
                                           _%tl184579185238%_
                                           _%e184580185241%_
                                           _%hd184581185244%_
                                           _%tl184582185246%_
                                           _%e184583185249%_
                                           _%hd184584185252%_
                                           _%tl184585185254%_
                                           _%e184586185257%_
                                           _%hd184587185260%_
                                           _%tl184588185262%_))
                                      (_%__match189458189459%_
                                       _%e184565185201%_
                                       _%hd184566185204%_
                                       _%tl184567185206%_
                                       _%e184568185209%_
                                       _%hd184569185212%_
                                       _%tl184570185214%_
                                       _%e184571185217%_
                                       _%hd184572185220%_
                                       _%tl184573185222%_
                                       _%e184574185225%_
                                       _%hd184575185228%_
                                       _%tl184576185230%_
                                       _%e184577185233%_
                                       _%hd184578185236%_
                                       _%tl184579185238%_
                                       _%e184580185241%_
                                       _%hd184581185244%_
                                       _%tl184582185246%_
                                       _%e184583185249%_
                                       _%hd184584185252%_
                                       _%tl184585185254%_
                                       _%e184586185257%_
                                       _%hd184587185260%_
                                       _%tl184588185262%_))))
                              (_%__match189458189459%_
                               _%e184565185201%_
                               _%hd184566185204%_
                               _%tl184567185206%_
                               _%e184568185209%_
                               _%hd184569185212%_
                               _%tl184570185214%_
                               _%e184571185217%_
                               _%hd184572185220%_
                               _%tl184573185222%_
                               _%e184574185225%_
                               _%hd184575185228%_
                               _%tl184576185230%_
                               _%e184577185233%_
                               _%hd184578185236%_
                               _%tl184579185238%_
                               _%e184580185241%_
                               _%hd184581185244%_
                               _%tl184582185246%_
                               _%e184583185249%_
                               _%hd184584185252%_
                               _%tl184585185254%_
                               _%e184586185257%_
                               _%hd184587185260%_
                               _%tl184588185262%_))
                          (_%__match189244189245%_
                           _%e184565185201%_
                           _%hd184566185204%_
                           _%tl184567185206%_
                           _%e184568185209%_
                           _%hd184569185212%_
                           _%tl184570185214%_
                           _%e184571185217%_
                           _%hd184572185220%_
                           _%tl184573185222%_
                           _%e184574185225%_
                           _%hd184575185228%_
                           _%tl184576185230%_
                           _%e184577185233%_
                           _%hd184578185236%_
                           _%tl184579185238%_
                           _%e184580185241%_
                           _%hd184581185244%_
                           _%tl184582185246%_
                           _%e184583185249%_
                           _%hd184584185252%_
                           _%tl184585185254%_
                           _%e184586185257%_
                           _%hd184587185260%_
                           _%tl184588185262%_
                           _%e184589185265%_
                           _%hd184590185268%_
                           _%tl184591185270%_))))
                   (_%__match189066189067%_
                    (lambda (_%e184521185390%_
                             _%hd184522185393%_
                             _%tl184523185395%_
                             _%e184524185398%_
                             _%hd184525185401%_
                             _%tl184526185403%_
                             _%e184527185406%_
                             _%hd184528185409%_
                             _%tl184529185411%_
                             _%e184530185414%_
                             _%hd184531185417%_
                             _%tl184532185419%_
                             _%e184533185422%_
                             _%hd184534185425%_
                             _%tl184535185427%_
                             _%e184536185430%_
                             _%hd184537185433%_
                             _%tl184538185435%_
                             _%e184539185438%_
                             _%hd184540185441%_
                             _%tl184541185443%_
                             _%e184542185446%_
                             _%hd184543185449%_
                             _%tl184544185451%_
                             _%e184545185454%_
                             _%hd184546185457%_
                             _%tl184547185459%_
                             _%e184548185462%_
                             _%hd184549185465%_
                             _%tl184550185467%_
                             _%__splice188965188966%_
                             _%target184551185470%_
                             _%tl184553185472%_)
                      (letrec ((_%loop184554185475%_
                                (lambda (_%hd184552185478%_
                                         _%args184558185480%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd184552185478%_))
                                      (let ((_%e184555185483%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd184552185478%_))))
                                        (let ((_%lp-tl184557185488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184555185483%_)))
                                              (_%lp-hd184556185486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184555185483%_))))
                                          (_%loop184554185475%_
                                           _%lp-tl184557185488%_
                                           (cons _%lp-hd184556185486%_
                                                 _%args184558185480%_))))
                                      (let ((_%args184559185491%_
                                             (reverse _%args184558185480%_)))
                                        (let ((_%L185494%_
                                               _%args184559185491%_)
                                              (_%L185495%_ _%hd184549185465%_)
                                              (_%L185496%_ _%hd184540185441%_)
                                              (_%L185497%_ _%hd184531185417%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L185497%_
                                                      'call-method))
                                                   (let ((__tmp190124
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self184506%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L185496%_
                                                      __tmp190124)))
                                              (_%__kont188963188964%_
                                               _%L185494%_
                                               _%L185495%_
                                               _%L185496%_
                                               _%L185497%_)
                                              (_%__match189254189255%_
                                               _%e184521185390%_
                                               _%hd184522185393%_
                                               _%tl184523185395%_
                                               _%e184524185398%_
                                               _%hd184525185401%_
                                               _%tl184526185403%_
                                               _%e184527185406%_
                                               _%hd184528185409%_
                                               _%tl184529185411%_
                                               _%e184530185414%_
                                               _%hd184531185417%_
                                               _%tl184532185419%_
                                               _%e184533185422%_
                                               _%hd184534185425%_
                                               _%tl184535185427%_
                                               _%e184536185430%_
                                               _%hd184537185433%_
                                               _%tl184538185435%_
                                               _%e184539185438%_
                                               _%hd184540185441%_
                                               _%tl184541185443%_
                                               _%e184542185446%_
                                               _%hd184543185449%_
                                               _%tl184544185451%_
                                               _%e184545185454%_
                                               _%hd184546185457%_
                                               _%tl184547185459%_
                                               _%e184548185462%_
                                               _%hd184549185465%_
                                               _%tl184550185467%_))))))))
                        (_%loop184554185475%_ _%target184551185470%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx188961188962%_))
                  (let ((_%e184521185390%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx188961188962%_))))
                    (let ((_%tl184523185395%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184521185390%_)))
                          (_%hd184522185393%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184521185390%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184523185395%_))
                          (let ((_%e184524185398%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184523185395%_))))
                            (let ((_%tl184526185403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184524185398%_)))
                                  (_%hd184525185401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184524185398%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd184525185401%_))
                                  (let ((_%e184527185406%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd184525185401%_))))
                                    (let ((_%tl184529185411%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e184527185406%_)))
                                          (_%hd184528185409%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e184527185406%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd184528185409%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd184528185409%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl184529185411%_))
                                                  (let ((_%e184530185414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl184529185411%_))))
                                                    (let ((_%tl184532185419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184530185414%_)))
                                                          (_%hd184531185417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184530185414%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl184532185419%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl184526185403%_))
                      (let ((_%e184533185422%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl184526185403%_))))
                        (let ((_%tl184535185427%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e184533185422%_)))
                              (_%hd184534185425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e184533185422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd184534185425%_))
                              (let ((_%e184536185430%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd184534185425%_))))
                                (let ((_%tl184538185435%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184536185430%_)))
                                      (_%hd184537185433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184536185430%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd184537185433%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd184537185433%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl184538185435%_))
                                              (let ((_%e184539185438%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl184538185435%_))))
                                                (let ((_%tl184541185443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e184539185438%_)))
                                                      (_%hd184540185441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e184539185438%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl184541185443%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl184535185427%_))
                                                          (let ((_%e184542185446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl184535185427%_))))
                    (let ((_%tl184544185451%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184542185446%_)))
                          (_%hd184543185449%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184542185446%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd184543185449%_))
                          (let ((_%e184545185454%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd184543185449%_))))
                            (let ((_%tl184547185459%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184545185454%_)))
                                  (_%hd184546185457%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184545185454%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd184546185457%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd184546185457%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl184547185459%_))
                                          (let ((_%e184548185462%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl184547185459%_))))
                                            (let ((_%tl184550185467%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e184548185462%_)))
                                                  (_%hd184549185465%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e184548185462%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl184550185467%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl184544185451%_))
                                                      (let ((_%__splice188965188966%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl184544185451%_
                        '0))))
                (let ((_%tl184553185472%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice188965188966%_ '1)))
                      (_%target184551185470%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice188965188966%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl184553185472%_))
                      (_%__match189066189067%_
                       _%e184521185390%_
                       _%hd184522185393%_
                       _%tl184523185395%_
                       _%e184524185398%_
                       _%hd184525185401%_
                       _%tl184526185403%_
                       _%e184527185406%_
                       _%hd184528185409%_
                       _%tl184529185411%_
                       _%e184530185414%_
                       _%hd184531185417%_
                       _%tl184532185419%_
                       _%e184533185422%_
                       _%hd184534185425%_
                       _%tl184535185427%_
                       _%e184536185430%_
                       _%hd184537185433%_
                       _%tl184538185435%_
                       _%e184539185438%_
                       _%hd184540185441%_
                       _%tl184541185443%_
                       _%e184542185446%_
                       _%hd184543185449%_
                       _%tl184544185451%_
                       _%e184545185454%_
                       _%hd184546185457%_
                       _%tl184547185459%_
                       _%e184548185462%_
                       _%hd184549185465%_
                       _%tl184550185467%_
                       _%__splice188965188966%_
                       _%target184551185470%_
                       _%tl184553185472%_)
                      (_%__match189254189255%_
                       _%e184521185390%_
                       _%hd184522185393%_
                       _%tl184523185395%_
                       _%e184524185398%_
                       _%hd184525185401%_
                       _%tl184526185403%_
                       _%e184527185406%_
                       _%hd184528185409%_
                       _%tl184529185411%_
                       _%e184530185414%_
                       _%hd184531185417%_
                       _%tl184532185419%_
                       _%e184533185422%_
                       _%hd184534185425%_
                       _%tl184535185427%_
                       _%e184536185430%_
                       _%hd184537185433%_
                       _%tl184538185435%_
                       _%e184539185438%_
                       _%hd184540185441%_
                       _%tl184541185443%_
                       _%e184542185446%_
                       _%hd184543185449%_
                       _%tl184544185451%_
                       _%e184545185454%_
                       _%hd184546185457%_
                       _%tl184547185459%_
                       _%e184548185462%_
                       _%hd184549185465%_
                       _%tl184550185467%_))))
              (_%__match189254189255%_
               _%e184521185390%_
               _%hd184522185393%_
               _%tl184523185395%_
               _%e184524185398%_
               _%hd184525185401%_
               _%tl184526185403%_
               _%e184527185406%_
               _%hd184528185409%_
               _%tl184529185411%_
               _%e184530185414%_
               _%hd184531185417%_
               _%tl184532185419%_
               _%e184533185422%_
               _%hd184534185425%_
               _%tl184535185427%_
               _%e184536185430%_
               _%hd184537185433%_
               _%tl184538185435%_
               _%e184539185438%_
               _%hd184540185441%_
               _%tl184541185443%_
               _%e184542185446%_
               _%hd184543185449%_
               _%tl184544185451%_
               _%e184545185454%_
               _%hd184546185457%_
               _%tl184547185459%_
               _%e184548185462%_
               _%hd184549185465%_
               _%tl184550185467%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match189458189459%_
                                                   _%e184521185390%_
                                                   _%hd184522185393%_
                                                   _%tl184523185395%_
                                                   _%e184524185398%_
                                                   _%hd184525185401%_
                                                   _%tl184526185403%_
                                                   _%e184527185406%_
                                                   _%hd184528185409%_
                                                   _%tl184529185411%_
                                                   _%e184530185414%_
                                                   _%hd184531185417%_
                                                   _%tl184532185419%_
                                                   _%e184533185422%_
                                                   _%hd184534185425%_
                                                   _%tl184535185427%_
                                                   _%e184536185430%_
                                                   _%hd184537185433%_
                                                   _%tl184538185435%_
                                                   _%e184539185438%_
                                                   _%hd184540185441%_
                                                   _%tl184541185443%_
                                                   _%e184542185446%_
                                                   _%hd184543185449%_
                                                   _%tl184544185451%_))))
                                          (_%__match189458189459%_
                                           _%e184521185390%_
                                           _%hd184522185393%_
                                           _%tl184523185395%_
                                           _%e184524185398%_
                                           _%hd184525185401%_
                                           _%tl184526185403%_
                                           _%e184527185406%_
                                           _%hd184528185409%_
                                           _%tl184529185411%_
                                           _%e184530185414%_
                                           _%hd184531185417%_
                                           _%tl184532185419%_
                                           _%e184533185422%_
                                           _%hd184534185425%_
                                           _%tl184535185427%_
                                           _%e184536185430%_
                                           _%hd184537185433%_
                                           _%tl184538185435%_
                                           _%e184539185438%_
                                           _%hd184540185441%_
                                           _%tl184541185443%_
                                           _%e184542185446%_
                                           _%hd184543185449%_
                                           _%tl184544185451%_))
                                      (_%__match189134189135%_
                                       _%e184521185390%_
                                       _%hd184522185393%_
                                       _%tl184523185395%_
                                       _%e184524185398%_
                                       _%hd184525185401%_
                                       _%tl184526185403%_
                                       _%e184527185406%_
                                       _%hd184528185409%_
                                       _%tl184529185411%_
                                       _%e184530185414%_
                                       _%hd184531185417%_
                                       _%tl184532185419%_
                                       _%e184533185422%_
                                       _%hd184534185425%_
                                       _%tl184535185427%_
                                       _%e184536185430%_
                                       _%hd184537185433%_
                                       _%tl184538185435%_
                                       _%e184539185438%_
                                       _%hd184540185441%_
                                       _%tl184541185443%_
                                       _%e184542185446%_
                                       _%hd184543185449%_
                                       _%tl184544185451%_
                                       _%e184545185454%_
                                       _%hd184546185457%_
                                       _%tl184547185459%_))
                                  (_%__match189458189459%_
                                   _%e184521185390%_
                                   _%hd184522185393%_
                                   _%tl184523185395%_
                                   _%e184524185398%_
                                   _%hd184525185401%_
                                   _%tl184526185403%_
                                   _%e184527185406%_
                                   _%hd184528185409%_
                                   _%tl184529185411%_
                                   _%e184530185414%_
                                   _%hd184531185417%_
                                   _%tl184532185419%_
                                   _%e184533185422%_
                                   _%hd184534185425%_
                                   _%tl184535185427%_
                                   _%e184536185430%_
                                   _%hd184537185433%_
                                   _%tl184538185435%_
                                   _%e184539185438%_
                                   _%hd184540185441%_
                                   _%tl184541185443%_
                                   _%e184542185446%_
                                   _%hd184543185449%_
                                   _%tl184544185451%_))))
                          (_%__match189458189459%_
                           _%e184521185390%_
                           _%hd184522185393%_
                           _%tl184523185395%_
                           _%e184524185398%_
                           _%hd184525185401%_
                           _%tl184526185403%_
                           _%e184527185406%_
                           _%hd184528185409%_
                           _%tl184529185411%_
                           _%e184530185414%_
                           _%hd184531185417%_
                           _%tl184532185419%_
                           _%e184533185422%_
                           _%hd184534185425%_
                           _%tl184535185427%_
                           _%e184536185430%_
                           _%hd184537185433%_
                           _%tl184538185435%_
                           _%e184539185438%_
                           _%hd184540185441%_
                           _%tl184541185443%_
                           _%e184542185446%_
                           _%hd184543185449%_
                           _%tl184544185451%_))))
                  (_%__match189396189397%_
                   _%e184521185390%_
                   _%hd184522185393%_
                   _%tl184523185395%_
                   _%e184524185398%_
                   _%hd184525185401%_
                   _%tl184526185403%_
                   _%e184527185406%_
                   _%hd184528185409%_
                   _%tl184529185411%_
                   _%e184530185414%_
                   _%hd184531185417%_
                   _%tl184532185419%_
                   _%e184533185422%_
                   _%hd184534185425%_
                   _%tl184535185427%_
                   _%e184536185430%_
                   _%hd184537185433%_
                   _%tl184538185435%_
                   _%e184539185438%_
                   _%hd184540185441%_
                   _%tl184541185443%_))
              (_%__kont188979188980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont188979188980%_))
                                          (_%__kont188979188980%_))
                                      (_%__kont188979188980%_))))
                              (_%__kont188979188980%_))))
                      (_%__kont188979188980%_))
                  (_%__kont188979188980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188979188980%_))
                                              (_%__kont188979188980%_))
                                          (_%__kont188979188980%_))))
                                  (_%__kont188979188980%_))))
                          (_%__kont188979188980%_))))
                  (_%__kont188979188980%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self183445%_ _%stx183446%_)
        (letrec ((_%force-e183448%_
                  (lambda (_%target184504%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target184504%_ '()))
                                      '()))))))
          (let* ((_%__stx189463189464%_ _%stx183446%_)
                 (_%g183456183678%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189463189464%_)))))
            (let ((_%__kont189465189466%_
                   (lambda (_%L184450%_ _%L184451%_ _%L184452%_ _%L184453%_)
                     (let ((_%$method184498%_
                            (let ((__tmp190126
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183445%_ 'methods)))
                                  (__tmp190125
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L184451%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190126 __tmp190125)))
                           (_%args184499%_
                            (map (lambda (_%g184486184488%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self183445%_
                                      _%g184486184488%_)))
                                 (let ((__tmp190127
                                        (lambda (_%g184490184493%_
                                                 _%g184491184495%_)
                                          (cons _%g184490184493%_
                                                _%g184491184495%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp190127 '() _%L184450%_)))))
                       (let ((__tmp190128
                              (cons '%#call
                                    (cons (_%force-e183448%_ _%$method184498%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183445%_
                                                               'receiver))
                                                            '()))
                                                _%args184499%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190128 _%stx183446%_)))))
                  (_%__kont189469189470%_
                   (lambda (_%L184282%_
                            _%L184283%_
                            _%L184284%_
                            _%L184285%_
                            _%L184286%_)
                     (let ((_%$method184338%_
                            (let ((__tmp190130
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183445%_ 'methods)))
                                  (__tmp190129
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L184283%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190130 __tmp190129)))
                           (_%args184339%_
                            (map (lambda (_%g184326184328%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self183445%_
                                      _%g184326184328%_)))
                                 (let ((__tmp190131
                                        (lambda (_%g184330184333%_
                                                 _%g184331184335%_)
                                          (cons _%g184330184333%_
                                                _%g184331184335%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp190131 '() _%L184282%_)))))
                       (let ((__tmp190132
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e183448%_
                                                 _%$method184338%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self183445%_ 'receiver))
                          '()))
              _%args184339%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190132 _%stx183446%_)))))
                  (_%__kont189473189474%_
                   (lambda (_%L184113%_ _%L184114%_ _%L184115%_)
                     (let* ((_%$field184147%_
                             (let ((__tmp190134
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self183445%_ 'slots)))
                                   (__tmp190133
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L184113%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp190134 __tmp190133)))
                            (__tmp190135
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self183445%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field184147%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self183445%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp190135 _%stx183446%_))))
                  (_%__kont189475189476%_
                   (lambda (_%L183987%_ _%L183988%_ _%L183989%_ _%L183990%_)
                     (let ((_%$field184025%_
                            (let ((__tmp190137
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183445%_ 'slots)))
                                  (__tmp190136
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L183988%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190137 __tmp190136)))
                           (_%expr184026%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self183445%_ _%L183987%_))))
                       (let ((__tmp190138
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self183445%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field184025%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self183445%_ 'receiver))
                          '()))
              (cons _%expr184026%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190138 _%stx183446%_)))))
                  (_%__kont189477189478%_
                   (lambda (_%L183859%_ _%L183860%_)
                     (let* ((_%accessor183882%_
                             (let ((__tmp190139
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L183860%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp190139)))
                            (_%klass183884%_
                             (let ((__tmp190140
                                    (##structure-ref
                                     _%accessor183882%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx183446%_
                                __tmp190140)))
                            (_%slot183886%_
                             (##structure-ref
                              _%accessor183882%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor183882%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass183884%_
                                      _%slot183886%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass183884%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx183446%_
                           (let* ((_%$field183892%_
                                   (let ((__tmp190141
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183445%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp190141 _%slot183886%_)))
                                  (__tmp190142
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self183445%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field183892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self183445%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190142
                              _%stx183446%_))))))
                  (_%__kont189479189480%_
                   (lambda (_%L183754%_ _%L183755%_ _%L183756%_)
                     (let* ((_%mutator183784%_
                             (let ((__tmp190143
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L183756%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp190143)))
                            (_%klass183786%_
                             (let ((__tmp190144
                                    (##structure-ref
                                     _%mutator183784%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx183446%_
                                __tmp190144)))
                            (_%slot183788%_
                             (##structure-ref
                              _%mutator183784%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr183790%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self183445%_ _%L183754%_))))
                       (if (if (##structure-ref
                                _%mutator183784%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass183786%_
                                      _%slot183788%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass183786%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp190145
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L183756%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L183755%_
                                                                '()))
                                                    (cons _%expr183790%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190145 _%stx183446%_))
                           (let* ((_%$field183796%_
                                   (let ((__tmp190146
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183445%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp190146 _%slot183788%_)))
                                  (__tmp190147
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self183445%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field183796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self183445%_ 'receiver))
                               '()))
                   (cons _%expr183790%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190147
                              _%stx183446%_))))))
                  (_%__kont189481189482%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self183445%_ _%stx183446%_)))))
              (let* ((_%__match189962189963%_
                      (lambda (_%e183650183690%_
                               _%hd183651183693%_
                               _%tl183652183695%_
                               _%e183653183698%_
                               _%hd183654183701%_
                               _%tl183655183703%_
                               _%e183656183706%_
                               _%hd183657183709%_
                               _%tl183658183711%_
                               _%e183659183714%_
                               _%hd183660183717%_
                               _%tl183661183719%_
                               _%e183662183722%_
                               _%hd183663183725%_
                               _%tl183664183727%_
                               _%e183665183730%_
                               _%hd183666183733%_
                               _%tl183667183735%_
                               _%e183668183738%_
                               _%hd183669183741%_
                               _%tl183670183743%_
                               _%e183671183746%_
                               _%hd183672183749%_
                               _%tl183673183751%_)
                        (let ((_%L183754%_ _%hd183672183749%_)
                              (_%L183755%_ _%hd183669183741%_)
                              (_%L183756%_ _%hd183660183717%_))
                          (if (and (let ((__tmp190148
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183445%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L183755%_
                                      __tmp190148))
                                   (let ((__tmp190149
                                          (let ((__tmp190150
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L183756%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp190150))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp190149
                                      'gxc#!mutator::t)))
                              (_%__kont189479189480%_
                               _%L183754%_
                               _%L183755%_
                               _%L183756%_)
                              (_%__kont189481189482%_)))))
                     (_%__match189960189961%_
                      (lambda (_%e183650183690%_
                               _%hd183651183693%_
                               _%tl183652183695%_
                               _%e183653183698%_
                               _%hd183654183701%_
                               _%tl183655183703%_
                               _%e183656183706%_
                               _%hd183657183709%_
                               _%tl183658183711%_
                               _%e183659183714%_
                               _%hd183660183717%_
                               _%tl183661183719%_
                               _%e183662183722%_
                               _%hd183663183725%_
                               _%tl183664183727%_
                               _%e183665183730%_
                               _%hd183666183733%_
                               _%tl183667183735%_
                               _%e183668183738%_
                               _%hd183669183741%_
                               _%tl183670183743%_
                               _%e183671183746%_
                               _%hd183672183749%_
                               _%tl183673183751%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183673183751%_))
                            (_%__match189962189963%_
                             _%e183650183690%_
                             _%hd183651183693%_
                             _%tl183652183695%_
                             _%e183653183698%_
                             _%hd183654183701%_
                             _%tl183655183703%_
                             _%e183656183706%_
                             _%hd183657183709%_
                             _%tl183658183711%_
                             _%e183659183714%_
                             _%hd183660183717%_
                             _%tl183661183719%_
                             _%e183662183722%_
                             _%hd183663183725%_
                             _%tl183664183727%_
                             _%e183665183730%_
                             _%hd183666183733%_
                             _%tl183667183735%_
                             _%e183668183738%_
                             _%hd183669183741%_
                             _%tl183670183743%_
                             _%e183671183746%_
                             _%hd183672183749%_
                             _%tl183673183751%_)
                            (_%__kont189481189482%_))))
                     (_%__match189954189955%_
                      (lambda (_%e183650183690%_
                               _%hd183651183693%_
                               _%tl183652183695%_
                               _%e183653183698%_
                               _%hd183654183701%_
                               _%tl183655183703%_
                               _%e183656183706%_
                               _%hd183657183709%_
                               _%tl183658183711%_
                               _%e183659183714%_
                               _%hd183660183717%_
                               _%tl183661183719%_
                               _%e183662183722%_
                               _%hd183663183725%_
                               _%tl183664183727%_
                               _%e183665183730%_
                               _%hd183666183733%_
                               _%tl183667183735%_
                               _%e183668183738%_
                               _%hd183669183741%_
                               _%tl183670183743%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183664183727%_))
                            (let ((_%e183671183746%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183664183727%_))))
                              (let ((_%tl183673183751%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183671183746%_)))
                                    (_%hd183672183749%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183671183746%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183673183751%_))
                                    (_%__match189962189963%_
                                     _%e183650183690%_
                                     _%hd183651183693%_
                                     _%tl183652183695%_
                                     _%e183653183698%_
                                     _%hd183654183701%_
                                     _%tl183655183703%_
                                     _%e183656183706%_
                                     _%hd183657183709%_
                                     _%tl183658183711%_
                                     _%e183659183714%_
                                     _%hd183660183717%_
                                     _%tl183661183719%_
                                     _%e183662183722%_
                                     _%hd183663183725%_
                                     _%tl183664183727%_
                                     _%e183665183730%_
                                     _%hd183666183733%_
                                     _%tl183667183735%_
                                     _%e183668183738%_
                                     _%hd183669183741%_
                                     _%tl183670183743%_
                                     _%e183671183746%_
                                     _%hd183672183749%_
                                     _%tl183673183751%_)
                                    (_%__kont189481189482%_))))
                            (_%__kont189481189482%_))))
                     (_%__match189900189901%_
                      (lambda (_%e183626183803%_
                               _%hd183627183806%_
                               _%tl183628183808%_
                               _%e183629183811%_
                               _%hd183630183814%_
                               _%tl183631183816%_
                               _%e183632183819%_
                               _%hd183633183822%_
                               _%tl183634183824%_
                               _%e183635183827%_
                               _%hd183636183830%_
                               _%tl183637183832%_
                               _%e183638183835%_
                               _%hd183639183838%_
                               _%tl183640183840%_
                               _%e183641183843%_
                               _%hd183642183846%_
                               _%tl183643183848%_
                               _%e183644183851%_
                               _%hd183645183854%_
                               _%tl183646183856%_)
                        (let ((_%L183859%_ _%hd183645183854%_)
                              (_%L183860%_ _%hd183636183830%_))
                          (if (and (let ((__tmp190151
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183445%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L183859%_
                                      __tmp190151))
                                   (let ((__tmp190152
                                          (let ((__tmp190153
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L183860%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp190153))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp190152
                                      'gxc#!accessor::t)))
                              (_%__kont189477189478%_ _%L183859%_ _%L183860%_)
                              (_%__kont189481189482%_)))))
                     (_%__match189898189899%_
                      (lambda (_%e183626183803%_
                               _%hd183627183806%_
                               _%tl183628183808%_
                               _%e183629183811%_
                               _%hd183630183814%_
                               _%tl183631183816%_
                               _%e183632183819%_
                               _%hd183633183822%_
                               _%tl183634183824%_
                               _%e183635183827%_
                               _%hd183636183830%_
                               _%tl183637183832%_
                               _%e183638183835%_
                               _%hd183639183838%_
                               _%tl183640183840%_
                               _%e183641183843%_
                               _%hd183642183846%_
                               _%tl183643183848%_
                               _%e183644183851%_
                               _%hd183645183854%_
                               _%tl183646183856%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183640183840%_))
                            (_%__match189900189901%_
                             _%e183626183803%_
                             _%hd183627183806%_
                             _%tl183628183808%_
                             _%e183629183811%_
                             _%hd183630183814%_
                             _%tl183631183816%_
                             _%e183632183819%_
                             _%hd183633183822%_
                             _%tl183634183824%_
                             _%e183635183827%_
                             _%hd183636183830%_
                             _%tl183637183832%_
                             _%e183638183835%_
                             _%hd183639183838%_
                             _%tl183640183840%_
                             _%e183641183843%_
                             _%hd183642183846%_
                             _%tl183643183848%_
                             _%e183644183851%_
                             _%hd183645183854%_
                             _%tl183646183856%_)
                            (_%__match189954189955%_
                             _%e183626183803%_
                             _%hd183627183806%_
                             _%tl183628183808%_
                             _%e183629183811%_
                             _%hd183630183814%_
                             _%tl183631183816%_
                             _%e183632183819%_
                             _%hd183633183822%_
                             _%tl183634183824%_
                             _%e183635183827%_
                             _%hd183636183830%_
                             _%tl183637183832%_
                             _%e183638183835%_
                             _%hd183639183838%_
                             _%tl183640183840%_
                             _%e183641183843%_
                             _%hd183642183846%_
                             _%tl183643183848%_
                             _%e183644183851%_
                             _%hd183645183854%_
                             _%tl183646183856%_))))
                     (_%__match189844189845%_
                      (lambda (_%e183591183899%_
                               _%hd183592183902%_
                               _%tl183593183904%_
                               _%e183594183907%_
                               _%hd183595183910%_
                               _%tl183596183912%_
                               _%e183597183915%_
                               _%hd183598183918%_
                               _%tl183599183920%_
                               _%e183600183923%_
                               _%hd183601183926%_
                               _%tl183602183928%_
                               _%e183603183931%_
                               _%hd183604183934%_
                               _%tl183605183936%_
                               _%e183606183939%_
                               _%hd183607183942%_
                               _%tl183608183944%_
                               _%e183609183947%_
                               _%hd183610183950%_
                               _%tl183611183952%_
                               _%e183612183955%_
                               _%hd183613183958%_
                               _%tl183614183960%_
                               _%e183615183963%_
                               _%hd183616183966%_
                               _%tl183617183968%_
                               _%e183618183971%_
                               _%hd183619183974%_
                               _%tl183620183976%_
                               _%e183621183979%_
                               _%hd183622183982%_
                               _%tl183623183984%_)
                        (let ((_%L183987%_ _%hd183622183982%_)
                              (_%L183988%_ _%hd183619183974%_)
                              (_%L183989%_ _%hd183610183950%_)
                              (_%L183990%_ _%hd183601183926%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L183990%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L183990%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp190154
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183445%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L183989%_
                                      __tmp190154)))
                              (_%__kont189475189476%_
                               _%L183987%_
                               _%L183988%_
                               _%L183989%_
                               _%L183990%_)
                              (_%__kont189481189482%_)))))
                     (_%__match189836189837%_
                      (lambda (_%e183591183899%_
                               _%hd183592183902%_
                               _%tl183593183904%_
                               _%e183594183907%_
                               _%hd183595183910%_
                               _%tl183596183912%_
                               _%e183597183915%_
                               _%hd183598183918%_
                               _%tl183599183920%_
                               _%e183600183923%_
                               _%hd183601183926%_
                               _%tl183602183928%_
                               _%e183603183931%_
                               _%hd183604183934%_
                               _%tl183605183936%_
                               _%e183606183939%_
                               _%hd183607183942%_
                               _%tl183608183944%_
                               _%e183609183947%_
                               _%hd183610183950%_
                               _%tl183611183952%_
                               _%e183612183955%_
                               _%hd183613183958%_
                               _%tl183614183960%_
                               _%e183615183963%_
                               _%hd183616183966%_
                               _%tl183617183968%_
                               _%e183618183971%_
                               _%hd183619183974%_
                               _%tl183620183976%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183614183960%_))
                            (let ((_%e183621183979%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183614183960%_))))
                              (let ((_%tl183623183984%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183621183979%_)))
                                    (_%hd183622183982%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183621183979%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183623183984%_))
                                    (_%__match189844189845%_
                                     _%e183591183899%_
                                     _%hd183592183902%_
                                     _%tl183593183904%_
                                     _%e183594183907%_
                                     _%hd183595183910%_
                                     _%tl183596183912%_
                                     _%e183597183915%_
                                     _%hd183598183918%_
                                     _%tl183599183920%_
                                     _%e183600183923%_
                                     _%hd183601183926%_
                                     _%tl183602183928%_
                                     _%e183603183931%_
                                     _%hd183604183934%_
                                     _%tl183605183936%_
                                     _%e183606183939%_
                                     _%hd183607183942%_
                                     _%tl183608183944%_
                                     _%e183609183947%_
                                     _%hd183610183950%_
                                     _%tl183611183952%_
                                     _%e183612183955%_
                                     _%hd183613183958%_
                                     _%tl183614183960%_
                                     _%e183615183963%_
                                     _%hd183616183966%_
                                     _%tl183617183968%_
                                     _%e183618183971%_
                                     _%hd183619183974%_
                                     _%tl183620183976%_
                                     _%e183621183979%_
                                     _%hd183622183982%_
                                     _%tl183623183984%_)
                                    (_%__kont189481189482%_))))
                            (_%__match189960189961%_
                             _%e183591183899%_
                             _%hd183592183902%_
                             _%tl183593183904%_
                             _%e183594183907%_
                             _%hd183595183910%_
                             _%tl183596183912%_
                             _%e183597183915%_
                             _%hd183598183918%_
                             _%tl183599183920%_
                             _%e183600183923%_
                             _%hd183601183926%_
                             _%tl183602183928%_
                             _%e183603183931%_
                             _%hd183604183934%_
                             _%tl183605183936%_
                             _%e183606183939%_
                             _%hd183607183942%_
                             _%tl183608183944%_
                             _%e183609183947%_
                             _%hd183610183950%_
                             _%tl183611183952%_
                             _%e183612183955%_
                             _%hd183613183958%_
                             _%tl183614183960%_))))
                     (_%__match189758189759%_
                      (lambda (_%e183557184033%_
                               _%hd183558184036%_
                               _%tl183559184038%_
                               _%e183560184041%_
                               _%hd183561184044%_
                               _%tl183562184046%_
                               _%e183563184049%_
                               _%hd183564184052%_
                               _%tl183565184054%_
                               _%e183566184057%_
                               _%hd183567184060%_
                               _%tl183568184062%_
                               _%e183569184065%_
                               _%hd183570184068%_
                               _%tl183571184070%_
                               _%e183572184073%_
                               _%hd183573184076%_
                               _%tl183574184078%_
                               _%e183575184081%_
                               _%hd183576184084%_
                               _%tl183577184086%_
                               _%e183578184089%_
                               _%hd183579184092%_
                               _%tl183580184094%_
                               _%e183581184097%_
                               _%hd183582184100%_
                               _%tl183583184102%_
                               _%e183584184105%_
                               _%hd183585184108%_
                               _%tl183586184110%_)
                        (let ((_%L184113%_ _%hd183585184108%_)
                              (_%L184114%_ _%hd183576184084%_)
                              (_%L184115%_ _%hd183567184060%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L184115%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L184115%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp190155
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183445%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L184114%_
                                      __tmp190155)))
                              (_%__kont189473189474%_
                               _%L184113%_
                               _%L184114%_
                               _%L184115%_)
                              (_%__match189962189963%_
                               _%e183557184033%_
                               _%hd183558184036%_
                               _%tl183559184038%_
                               _%e183560184041%_
                               _%hd183561184044%_
                               _%tl183562184046%_
                               _%e183563184049%_
                               _%hd183564184052%_
                               _%tl183565184054%_
                               _%e183566184057%_
                               _%hd183567184060%_
                               _%tl183568184062%_
                               _%e183569184065%_
                               _%hd183570184068%_
                               _%tl183571184070%_
                               _%e183572184073%_
                               _%hd183573184076%_
                               _%tl183574184078%_
                               _%e183575184081%_
                               _%hd183576184084%_
                               _%tl183577184086%_
                               _%e183578184089%_
                               _%hd183579184092%_
                               _%tl183580184094%_)))))
                     (_%__match189756189757%_
                      (lambda (_%e183557184033%_
                               _%hd183558184036%_
                               _%tl183559184038%_
                               _%e183560184041%_
                               _%hd183561184044%_
                               _%tl183562184046%_
                               _%e183563184049%_
                               _%hd183564184052%_
                               _%tl183565184054%_
                               _%e183566184057%_
                               _%hd183567184060%_
                               _%tl183568184062%_
                               _%e183569184065%_
                               _%hd183570184068%_
                               _%tl183571184070%_
                               _%e183572184073%_
                               _%hd183573184076%_
                               _%tl183574184078%_
                               _%e183575184081%_
                               _%hd183576184084%_
                               _%tl183577184086%_
                               _%e183578184089%_
                               _%hd183579184092%_
                               _%tl183580184094%_
                               _%e183581184097%_
                               _%hd183582184100%_
                               _%tl183583184102%_
                               _%e183584184105%_
                               _%hd183585184108%_
                               _%tl183586184110%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183580184094%_))
                            (_%__match189758189759%_
                             _%e183557184033%_
                             _%hd183558184036%_
                             _%tl183559184038%_
                             _%e183560184041%_
                             _%hd183561184044%_
                             _%tl183562184046%_
                             _%e183563184049%_
                             _%hd183564184052%_
                             _%tl183565184054%_
                             _%e183566184057%_
                             _%hd183567184060%_
                             _%tl183568184062%_
                             _%e183569184065%_
                             _%hd183570184068%_
                             _%tl183571184070%_
                             _%e183572184073%_
                             _%hd183573184076%_
                             _%tl183574184078%_
                             _%e183575184081%_
                             _%hd183576184084%_
                             _%tl183577184086%_
                             _%e183578184089%_
                             _%hd183579184092%_
                             _%tl183580184094%_
                             _%e183581184097%_
                             _%hd183582184100%_
                             _%tl183583184102%_
                             _%e183584184105%_
                             _%hd183585184108%_
                             _%tl183586184110%_)
                            (_%__match189836189837%_
                             _%e183557184033%_
                             _%hd183558184036%_
                             _%tl183559184038%_
                             _%e183560184041%_
                             _%hd183561184044%_
                             _%tl183562184046%_
                             _%e183563184049%_
                             _%hd183564184052%_
                             _%tl183565184054%_
                             _%e183566184057%_
                             _%hd183567184060%_
                             _%tl183568184062%_
                             _%e183569184065%_
                             _%hd183570184068%_
                             _%tl183571184070%_
                             _%e183572184073%_
                             _%hd183573184076%_
                             _%tl183574184078%_
                             _%e183575184081%_
                             _%hd183576184084%_
                             _%tl183577184086%_
                             _%e183578184089%_
                             _%hd183579184092%_
                             _%tl183580184094%_
                             _%e183581184097%_
                             _%hd183582184100%_
                             _%tl183583184102%_
                             _%e183584184105%_
                             _%hd183585184108%_
                             _%tl183586184110%_))))
                     (_%__match189746189747%_
                      (lambda (_%e183557184033%_
                               _%hd183558184036%_
                               _%tl183559184038%_
                               _%e183560184041%_
                               _%hd183561184044%_
                               _%tl183562184046%_
                               _%e183563184049%_
                               _%hd183564184052%_
                               _%tl183565184054%_
                               _%e183566184057%_
                               _%hd183567184060%_
                               _%tl183568184062%_
                               _%e183569184065%_
                               _%hd183570184068%_
                               _%tl183571184070%_
                               _%e183572184073%_
                               _%hd183573184076%_
                               _%tl183574184078%_
                               _%e183575184081%_
                               _%hd183576184084%_
                               _%tl183577184086%_
                               _%e183578184089%_
                               _%hd183579184092%_
                               _%tl183580184094%_
                               _%e183581184097%_
                               _%hd183582184100%_
                               _%tl183583184102%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd183582184100%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183583184102%_))
                                (let ((_%e183584184105%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183583184102%_))))
                                  (let ((_%tl183586184110%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183584184105%_)))
                                        (_%hd183585184108%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183584184105%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183586184110%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl183580184094%_))
                                            (_%__match189758189759%_
                                             _%e183557184033%_
                                             _%hd183558184036%_
                                             _%tl183559184038%_
                                             _%e183560184041%_
                                             _%hd183561184044%_
                                             _%tl183562184046%_
                                             _%e183563184049%_
                                             _%hd183564184052%_
                                             _%tl183565184054%_
                                             _%e183566184057%_
                                             _%hd183567184060%_
                                             _%tl183568184062%_
                                             _%e183569184065%_
                                             _%hd183570184068%_
                                             _%tl183571184070%_
                                             _%e183572184073%_
                                             _%hd183573184076%_
                                             _%tl183574184078%_
                                             _%e183575184081%_
                                             _%hd183576184084%_
                                             _%tl183577184086%_
                                             _%e183578184089%_
                                             _%hd183579184092%_
                                             _%tl183580184094%_
                                             _%e183581184097%_
                                             _%hd183582184100%_
                                             _%tl183583184102%_
                                             _%e183584184105%_
                                             _%hd183585184108%_
                                             _%tl183586184110%_)
                                            (_%__match189836189837%_
                                             _%e183557184033%_
                                             _%hd183558184036%_
                                             _%tl183559184038%_
                                             _%e183560184041%_
                                             _%hd183561184044%_
                                             _%tl183562184046%_
                                             _%e183563184049%_
                                             _%hd183564184052%_
                                             _%tl183565184054%_
                                             _%e183566184057%_
                                             _%hd183567184060%_
                                             _%tl183568184062%_
                                             _%e183569184065%_
                                             _%hd183570184068%_
                                             _%tl183571184070%_
                                             _%e183572184073%_
                                             _%hd183573184076%_
                                             _%tl183574184078%_
                                             _%e183575184081%_
                                             _%hd183576184084%_
                                             _%tl183577184086%_
                                             _%e183578184089%_
                                             _%hd183579184092%_
                                             _%tl183580184094%_
                                             _%e183581184097%_
                                             _%hd183582184100%_
                                             _%tl183583184102%_
                                             _%e183584184105%_
                                             _%hd183585184108%_
                                             _%tl183586184110%_))
                                        (_%__match189960189961%_
                                         _%e183557184033%_
                                         _%hd183558184036%_
                                         _%tl183559184038%_
                                         _%e183560184041%_
                                         _%hd183561184044%_
                                         _%tl183562184046%_
                                         _%e183563184049%_
                                         _%hd183564184052%_
                                         _%tl183565184054%_
                                         _%e183566184057%_
                                         _%hd183567184060%_
                                         _%tl183568184062%_
                                         _%e183569184065%_
                                         _%hd183570184068%_
                                         _%tl183571184070%_
                                         _%e183572184073%_
                                         _%hd183573184076%_
                                         _%tl183574184078%_
                                         _%e183575184081%_
                                         _%hd183576184084%_
                                         _%tl183577184086%_
                                         _%e183578184089%_
                                         _%hd183579184092%_
                                         _%tl183580184094%_))))
                                (_%__match189960189961%_
                                 _%e183557184033%_
                                 _%hd183558184036%_
                                 _%tl183559184038%_
                                 _%e183560184041%_
                                 _%hd183561184044%_
                                 _%tl183562184046%_
                                 _%e183563184049%_
                                 _%hd183564184052%_
                                 _%tl183565184054%_
                                 _%e183566184057%_
                                 _%hd183567184060%_
                                 _%tl183568184062%_
                                 _%e183569184065%_
                                 _%hd183570184068%_
                                 _%tl183571184070%_
                                 _%e183572184073%_
                                 _%hd183573184076%_
                                 _%tl183574184078%_
                                 _%e183575184081%_
                                 _%hd183576184084%_
                                 _%tl183577184086%_
                                 _%e183578184089%_
                                 _%hd183579184092%_
                                 _%tl183580184094%_))
                            (_%__match189960189961%_
                             _%e183557184033%_
                             _%hd183558184036%_
                             _%tl183559184038%_
                             _%e183560184041%_
                             _%hd183561184044%_
                             _%tl183562184046%_
                             _%e183563184049%_
                             _%hd183564184052%_
                             _%tl183565184054%_
                             _%e183566184057%_
                             _%hd183567184060%_
                             _%tl183568184062%_
                             _%e183569184065%_
                             _%hd183570184068%_
                             _%tl183571184070%_
                             _%e183572184073%_
                             _%hd183573184076%_
                             _%tl183574184078%_
                             _%e183575184081%_
                             _%hd183576184084%_
                             _%tl183577184086%_
                             _%e183578184089%_
                             _%hd183579184092%_
                             _%tl183580184094%_))))
                     (_%__match189678189679%_
                      (lambda (_%e183506184154%_
                               _%hd183507184157%_
                               _%tl183508184159%_
                               _%e183509184162%_
                               _%hd183510184165%_
                               _%tl183511184167%_
                               _%e183512184170%_
                               _%hd183513184173%_
                               _%tl183514184175%_
                               _%e183515184178%_
                               _%hd183516184181%_
                               _%tl183517184183%_
                               _%e183518184186%_
                               _%hd183519184189%_
                               _%tl183520184191%_
                               _%e183521184194%_
                               _%hd183522184197%_
                               _%tl183523184199%_
                               _%e183524184202%_
                               _%hd183525184205%_
                               _%tl183526184207%_
                               _%e183527184210%_
                               _%hd183528184213%_
                               _%tl183529184215%_
                               _%e183530184218%_
                               _%hd183531184221%_
                               _%tl183532184223%_
                               _%e183533184226%_
                               _%hd183534184229%_
                               _%tl183535184231%_
                               _%e183536184234%_
                               _%hd183537184237%_
                               _%tl183538184239%_
                               _%e183539184242%_
                               _%hd183540184245%_
                               _%tl183541184247%_
                               _%e183542184250%_
                               _%hd183543184253%_
                               _%tl183544184255%_
                               _%__splice189471189472%_
                               _%target183545184258%_
                               _%tl183547184260%_)
                        (letrec ((_%loop183548184263%_
                                  (lambda (_%hd183546184266%_
                                           _%args183552184268%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183546184266%_))
                                        (let ((_%e183549184271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183546184266%_))))
                                          (let ((_%lp-tl183551184276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183549184271%_)))
                                                (_%lp-hd183550184274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183549184271%_))))
                                            (_%loop183548184263%_
                                             _%lp-tl183551184276%_
                                             (cons _%lp-hd183550184274%_
                                                   _%args183552184268%_))))
                                        (let ((_%args183553184279%_
                                               (reverse _%args183552184268%_)))
                                          (let ((_%L184282%_
                                                 _%args183553184279%_)
                                                (_%L184283%_
                                                 _%hd183543184253%_)
                                                (_%L184284%_
                                                 _%hd183534184229%_)
                                                (_%L184285%_
                                                 _%hd183525184205%_)
                                                (_%L184286%_
                                                 _%hd183516184181%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L184286%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L184285%_
                                                        'call-method))
                                                     (let ((__tmp190156
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183445%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L184284%_
                                                        __tmp190156)))
                                                (_%__kont189469189470%_
                                                 _%L184282%_
                                                 _%L184283%_
                                                 _%L184284%_
                                                 _%L184285%_
                                                 _%L184286%_)
                                                (_%__kont189481189482%_))))))))
                          (_%loop183548184263%_ _%target183545184258%_ '()))))
                     (_%__match189636189637%_
                      (lambda (_%e183506184154%_
                               _%hd183507184157%_
                               _%tl183508184159%_
                               _%e183509184162%_
                               _%hd183510184165%_
                               _%tl183511184167%_
                               _%e183512184170%_
                               _%hd183513184173%_
                               _%tl183514184175%_
                               _%e183515184178%_
                               _%hd183516184181%_
                               _%tl183517184183%_
                               _%e183518184186%_
                               _%hd183519184189%_
                               _%tl183520184191%_
                               _%e183521184194%_
                               _%hd183522184197%_
                               _%tl183523184199%_
                               _%e183524184202%_
                               _%hd183525184205%_
                               _%tl183526184207%_
                               _%e183527184210%_
                               _%hd183528184213%_
                               _%tl183529184215%_
                               _%e183530184218%_
                               _%hd183531184221%_
                               _%tl183532184223%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd183531184221%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183532184223%_))
                                (let ((_%e183533184226%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183532184223%_))))
                                  (let ((_%tl183535184231%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183533184226%_)))
                                        (_%hd183534184229%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183533184226%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183535184231%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183529184215%_))
                                            (let ((_%e183536184234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183529184215%_))))
                                              (let ((_%tl183538184239%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183536184234%_)))
                                                    (_%hd183537184237%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183536184234%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd183537184237%_))
                                                    (let ((_%e183539184242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd183537184237%_))))
                                                      (let ((_%tl183541184247%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e183539184242%_)))
                    (_%hd183540184245%_
                     (let () (declare (not safe)) (##car _%e183539184242%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd183540184245%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd183540184245%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183541184247%_))
                            (let ((_%e183542184250%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183541184247%_))))
                              (let ((_%tl183544184255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183542184250%_)))
                                    (_%hd183543184253%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183542184250%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183544184255%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl183538184239%_))
                                        (let ((_%__splice189471189472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl183538184239%_
                                                  '0))))
                                          (let ((_%tl183547184260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice189471189472%_
                                                    '1)))
                                                (_%target183545184258%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice189471189472%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl183547184260%_))
                                                (_%__match189678189679%_
                                                 _%e183506184154%_
                                                 _%hd183507184157%_
                                                 _%tl183508184159%_
                                                 _%e183509184162%_
                                                 _%hd183510184165%_
                                                 _%tl183511184167%_
                                                 _%e183512184170%_
                                                 _%hd183513184173%_
                                                 _%tl183514184175%_
                                                 _%e183515184178%_
                                                 _%hd183516184181%_
                                                 _%tl183517184183%_
                                                 _%e183518184186%_
                                                 _%hd183519184189%_
                                                 _%tl183520184191%_
                                                 _%e183521184194%_
                                                 _%hd183522184197%_
                                                 _%tl183523184199%_
                                                 _%e183524184202%_
                                                 _%hd183525184205%_
                                                 _%tl183526184207%_
                                                 _%e183527184210%_
                                                 _%hd183528184213%_
                                                 _%tl183529184215%_
                                                 _%e183530184218%_
                                                 _%hd183531184221%_
                                                 _%tl183532184223%_
                                                 _%e183533184226%_
                                                 _%hd183534184229%_
                                                 _%tl183535184231%_
                                                 _%e183536184234%_
                                                 _%hd183537184237%_
                                                 _%tl183538184239%_
                                                 _%e183539184242%_
                                                 _%hd183540184245%_
                                                 _%tl183541184247%_
                                                 _%e183542184250%_
                                                 _%hd183543184253%_
                                                 _%tl183544184255%_
                                                 _%__splice189471189472%_
                                                 _%target183545184258%_
                                                 _%tl183547184260%_)
                                                (_%__kont189481189482%_))))
                                        (_%__kont189481189482%_))
                                    (_%__kont189481189482%_))))
                            (_%__kont189481189482%_))
                        (_%__kont189481189482%_))
                    (_%__kont189481189482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont189481189482%_))))
                                            (_%__match189960189961%_
                                             _%e183506184154%_
                                             _%hd183507184157%_
                                             _%tl183508184159%_
                                             _%e183509184162%_
                                             _%hd183510184165%_
                                             _%tl183511184167%_
                                             _%e183512184170%_
                                             _%hd183513184173%_
                                             _%tl183514184175%_
                                             _%e183515184178%_
                                             _%hd183516184181%_
                                             _%tl183517184183%_
                                             _%e183518184186%_
                                             _%hd183519184189%_
                                             _%tl183520184191%_
                                             _%e183521184194%_
                                             _%hd183522184197%_
                                             _%tl183523184199%_
                                             _%e183524184202%_
                                             _%hd183525184205%_
                                             _%tl183526184207%_
                                             _%e183527184210%_
                                             _%hd183528184213%_
                                             _%tl183529184215%_))
                                        (_%__match189960189961%_
                                         _%e183506184154%_
                                         _%hd183507184157%_
                                         _%tl183508184159%_
                                         _%e183509184162%_
                                         _%hd183510184165%_
                                         _%tl183511184167%_
                                         _%e183512184170%_
                                         _%hd183513184173%_
                                         _%tl183514184175%_
                                         _%e183515184178%_
                                         _%hd183516184181%_
                                         _%tl183517184183%_
                                         _%e183518184186%_
                                         _%hd183519184189%_
                                         _%tl183520184191%_
                                         _%e183521184194%_
                                         _%hd183522184197%_
                                         _%tl183523184199%_
                                         _%e183524184202%_
                                         _%hd183525184205%_
                                         _%tl183526184207%_
                                         _%e183527184210%_
                                         _%hd183528184213%_
                                         _%tl183529184215%_))))
                                (_%__match189960189961%_
                                 _%e183506184154%_
                                 _%hd183507184157%_
                                 _%tl183508184159%_
                                 _%e183509184162%_
                                 _%hd183510184165%_
                                 _%tl183511184167%_
                                 _%e183512184170%_
                                 _%hd183513184173%_
                                 _%tl183514184175%_
                                 _%e183515184178%_
                                 _%hd183516184181%_
                                 _%tl183517184183%_
                                 _%e183518184186%_
                                 _%hd183519184189%_
                                 _%tl183520184191%_
                                 _%e183521184194%_
                                 _%hd183522184197%_
                                 _%tl183523184199%_
                                 _%e183524184202%_
                                 _%hd183525184205%_
                                 _%tl183526184207%_
                                 _%e183527184210%_
                                 _%hd183528184213%_
                                 _%tl183529184215%_))
                            (_%__match189746189747%_
                             _%e183506184154%_
                             _%hd183507184157%_
                             _%tl183508184159%_
                             _%e183509184162%_
                             _%hd183510184165%_
                             _%tl183511184167%_
                             _%e183512184170%_
                             _%hd183513184173%_
                             _%tl183514184175%_
                             _%e183515184178%_
                             _%hd183516184181%_
                             _%tl183517184183%_
                             _%e183518184186%_
                             _%hd183519184189%_
                             _%tl183520184191%_
                             _%e183521184194%_
                             _%hd183522184197%_
                             _%tl183523184199%_
                             _%e183524184202%_
                             _%hd183525184205%_
                             _%tl183526184207%_
                             _%e183527184210%_
                             _%hd183528184213%_
                             _%tl183529184215%_
                             _%e183530184218%_
                             _%hd183531184221%_
                             _%tl183532184223%_))))
                     (_%__match189568189569%_
                      (lambda (_%e183462184346%_
                               _%hd183463184349%_
                               _%tl183464184351%_
                               _%e183465184354%_
                               _%hd183466184357%_
                               _%tl183467184359%_
                               _%e183468184362%_
                               _%hd183469184365%_
                               _%tl183470184367%_
                               _%e183471184370%_
                               _%hd183472184373%_
                               _%tl183473184375%_
                               _%e183474184378%_
                               _%hd183475184381%_
                               _%tl183476184383%_
                               _%e183477184386%_
                               _%hd183478184389%_
                               _%tl183479184391%_
                               _%e183480184394%_
                               _%hd183481184397%_
                               _%tl183482184399%_
                               _%e183483184402%_
                               _%hd183484184405%_
                               _%tl183485184407%_
                               _%e183486184410%_
                               _%hd183487184413%_
                               _%tl183488184415%_
                               _%e183489184418%_
                               _%hd183490184421%_
                               _%tl183491184423%_
                               _%__splice189467189468%_
                               _%target183492184426%_
                               _%tl183494184428%_)
                        (letrec ((_%loop183495184431%_
                                  (lambda (_%hd183493184434%_
                                           _%args183499184436%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183493184434%_))
                                        (let ((_%e183496184439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183493184434%_))))
                                          (let ((_%lp-tl183498184444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183496184439%_)))
                                                (_%lp-hd183497184442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183496184439%_))))
                                            (_%loop183495184431%_
                                             _%lp-tl183498184444%_
                                             (cons _%lp-hd183497184442%_
                                                   _%args183499184436%_))))
                                        (let ((_%args183500184447%_
                                               (reverse _%args183499184436%_)))
                                          (let ((_%L184450%_
                                                 _%args183500184447%_)
                                                (_%L184451%_
                                                 _%hd183490184421%_)
                                                (_%L184452%_
                                                 _%hd183481184397%_)
                                                (_%L184453%_
                                                 _%hd183472184373%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L184453%_
                                                        'call-method))
                                                     (let ((__tmp190157
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183445%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L184452%_
                                                        __tmp190157)))
                                                (_%__kont189465189466%_
                                                 _%L184450%_
                                                 _%L184451%_
                                                 _%L184452%_
                                                 _%L184453%_)
                                                (_%__match189756189757%_
                                                 _%e183462184346%_
                                                 _%hd183463184349%_
                                                 _%tl183464184351%_
                                                 _%e183465184354%_
                                                 _%hd183466184357%_
                                                 _%tl183467184359%_
                                                 _%e183468184362%_
                                                 _%hd183469184365%_
                                                 _%tl183470184367%_
                                                 _%e183471184370%_
                                                 _%hd183472184373%_
                                                 _%tl183473184375%_
                                                 _%e183474184378%_
                                                 _%hd183475184381%_
                                                 _%tl183476184383%_
                                                 _%e183477184386%_
                                                 _%hd183478184389%_
                                                 _%tl183479184391%_
                                                 _%e183480184394%_
                                                 _%hd183481184397%_
                                                 _%tl183482184399%_
                                                 _%e183483184402%_
                                                 _%hd183484184405%_
                                                 _%tl183485184407%_
                                                 _%e183486184410%_
                                                 _%hd183487184413%_
                                                 _%tl183488184415%_
                                                 _%e183489184418%_
                                                 _%hd183490184421%_
                                                 _%tl183491184423%_))))))))
                          (_%loop183495184431%_ _%target183492184426%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189463189464%_))
                    (let ((_%e183462184346%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189463189464%_))))
                      (let ((_%tl183464184351%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183462184346%_)))
                            (_%hd183463184349%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183462184346%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183464184351%_))
                            (let ((_%e183465184354%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183464184351%_))))
                              (let ((_%tl183467184359%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183465184354%_)))
                                    (_%hd183466184357%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183465184354%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd183466184357%_))
                                    (let ((_%e183468184362%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd183466184357%_))))
                                      (let ((_%tl183470184367%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183468184362%_)))
                                            (_%hd183469184365%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183468184362%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd183469184365%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd183469184365%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl183470184367%_))
                                                    (let ((_%e183471184370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl183470184367%_))))
                                                      (let ((_%tl183473184375%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e183471184370%_)))
                    (_%hd183472184373%_
                     (let () (declare (not safe)) (##car _%e183471184370%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl183473184375%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl183467184359%_))
                        (let ((_%e183474184378%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl183467184359%_))))
                          (let ((_%tl183476184383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e183474184378%_)))
                                (_%hd183475184381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e183474184378%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd183475184381%_))
                                (let ((_%e183477184386%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd183475184381%_))))
                                  (let ((_%tl183479184391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183477184386%_)))
                                        (_%hd183478184389%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183477184386%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd183478184389%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd183478184389%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl183479184391%_))
                                                (let ((_%e183480184394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl183479184391%_))))
                                                  (let ((_%tl183482184399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e183480184394%_)))
                                                        (_%hd183481184397%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e183480184394%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl183482184399%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl183476184383%_))
                                                            (let ((_%e183483184402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl183476184383%_))))
                      (let ((_%tl183485184407%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183483184402%_)))
                            (_%hd183484184405%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183483184402%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd183484184405%_))
                            (let ((_%e183486184410%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd183484184405%_))))
                              (let ((_%tl183488184415%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183486184410%_)))
                                    (_%hd183487184413%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183486184410%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd183487184413%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd183487184413%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183488184415%_))
                                            (let ((_%e183489184418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183488184415%_))))
                                              (let ((_%tl183491184423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183489184418%_)))
                                                    (_%hd183490184421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183489184418%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl183491184423%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl183485184407%_))
                                                        (let ((_%__splice189467189468%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl183485184407%_
                          '0))))
                  (let ((_%tl183494184428%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice189467189468%_ '1)))
                        (_%target183492184426%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice189467189468%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl183494184428%_))
                        (_%__match189568189569%_
                         _%e183462184346%_
                         _%hd183463184349%_
                         _%tl183464184351%_
                         _%e183465184354%_
                         _%hd183466184357%_
                         _%tl183467184359%_
                         _%e183468184362%_
                         _%hd183469184365%_
                         _%tl183470184367%_
                         _%e183471184370%_
                         _%hd183472184373%_
                         _%tl183473184375%_
                         _%e183474184378%_
                         _%hd183475184381%_
                         _%tl183476184383%_
                         _%e183477184386%_
                         _%hd183478184389%_
                         _%tl183479184391%_
                         _%e183480184394%_
                         _%hd183481184397%_
                         _%tl183482184399%_
                         _%e183483184402%_
                         _%hd183484184405%_
                         _%tl183485184407%_
                         _%e183486184410%_
                         _%hd183487184413%_
                         _%tl183488184415%_
                         _%e183489184418%_
                         _%hd183490184421%_
                         _%tl183491184423%_
                         _%__splice189467189468%_
                         _%target183492184426%_
                         _%tl183494184428%_)
                        (_%__match189756189757%_
                         _%e183462184346%_
                         _%hd183463184349%_
                         _%tl183464184351%_
                         _%e183465184354%_
                         _%hd183466184357%_
                         _%tl183467184359%_
                         _%e183468184362%_
                         _%hd183469184365%_
                         _%tl183470184367%_
                         _%e183471184370%_
                         _%hd183472184373%_
                         _%tl183473184375%_
                         _%e183474184378%_
                         _%hd183475184381%_
                         _%tl183476184383%_
                         _%e183477184386%_
                         _%hd183478184389%_
                         _%tl183479184391%_
                         _%e183480184394%_
                         _%hd183481184397%_
                         _%tl183482184399%_
                         _%e183483184402%_
                         _%hd183484184405%_
                         _%tl183485184407%_
                         _%e183486184410%_
                         _%hd183487184413%_
                         _%tl183488184415%_
                         _%e183489184418%_
                         _%hd183490184421%_
                         _%tl183491184423%_))))
                (_%__match189756189757%_
                 _%e183462184346%_
                 _%hd183463184349%_
                 _%tl183464184351%_
                 _%e183465184354%_
                 _%hd183466184357%_
                 _%tl183467184359%_
                 _%e183468184362%_
                 _%hd183469184365%_
                 _%tl183470184367%_
                 _%e183471184370%_
                 _%hd183472184373%_
                 _%tl183473184375%_
                 _%e183474184378%_
                 _%hd183475184381%_
                 _%tl183476184383%_
                 _%e183477184386%_
                 _%hd183478184389%_
                 _%tl183479184391%_
                 _%e183480184394%_
                 _%hd183481184397%_
                 _%tl183482184399%_
                 _%e183483184402%_
                 _%hd183484184405%_
                 _%tl183485184407%_
                 _%e183486184410%_
                 _%hd183487184413%_
                 _%tl183488184415%_
                 _%e183489184418%_
                 _%hd183490184421%_
                 _%tl183491184423%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match189960189961%_
                                                     _%e183462184346%_
                                                     _%hd183463184349%_
                                                     _%tl183464184351%_
                                                     _%e183465184354%_
                                                     _%hd183466184357%_
                                                     _%tl183467184359%_
                                                     _%e183468184362%_
                                                     _%hd183469184365%_
                                                     _%tl183470184367%_
                                                     _%e183471184370%_
                                                     _%hd183472184373%_
                                                     _%tl183473184375%_
                                                     _%e183474184378%_
                                                     _%hd183475184381%_
                                                     _%tl183476184383%_
                                                     _%e183477184386%_
                                                     _%hd183478184389%_
                                                     _%tl183479184391%_
                                                     _%e183480184394%_
                                                     _%hd183481184397%_
                                                     _%tl183482184399%_
                                                     _%e183483184402%_
                                                     _%hd183484184405%_
                                                     _%tl183485184407%_))))
                                            (_%__match189960189961%_
                                             _%e183462184346%_
                                             _%hd183463184349%_
                                             _%tl183464184351%_
                                             _%e183465184354%_
                                             _%hd183466184357%_
                                             _%tl183467184359%_
                                             _%e183468184362%_
                                             _%hd183469184365%_
                                             _%tl183470184367%_
                                             _%e183471184370%_
                                             _%hd183472184373%_
                                             _%tl183473184375%_
                                             _%e183474184378%_
                                             _%hd183475184381%_
                                             _%tl183476184383%_
                                             _%e183477184386%_
                                             _%hd183478184389%_
                                             _%tl183479184391%_
                                             _%e183480184394%_
                                             _%hd183481184397%_
                                             _%tl183482184399%_
                                             _%e183483184402%_
                                             _%hd183484184405%_
                                             _%tl183485184407%_))
                                        (_%__match189636189637%_
                                         _%e183462184346%_
                                         _%hd183463184349%_
                                         _%tl183464184351%_
                                         _%e183465184354%_
                                         _%hd183466184357%_
                                         _%tl183467184359%_
                                         _%e183468184362%_
                                         _%hd183469184365%_
                                         _%tl183470184367%_
                                         _%e183471184370%_
                                         _%hd183472184373%_
                                         _%tl183473184375%_
                                         _%e183474184378%_
                                         _%hd183475184381%_
                                         _%tl183476184383%_
                                         _%e183477184386%_
                                         _%hd183478184389%_
                                         _%tl183479184391%_
                                         _%e183480184394%_
                                         _%hd183481184397%_
                                         _%tl183482184399%_
                                         _%e183483184402%_
                                         _%hd183484184405%_
                                         _%tl183485184407%_
                                         _%e183486184410%_
                                         _%hd183487184413%_
                                         _%tl183488184415%_))
                                    (_%__match189960189961%_
                                     _%e183462184346%_
                                     _%hd183463184349%_
                                     _%tl183464184351%_
                                     _%e183465184354%_
                                     _%hd183466184357%_
                                     _%tl183467184359%_
                                     _%e183468184362%_
                                     _%hd183469184365%_
                                     _%tl183470184367%_
                                     _%e183471184370%_
                                     _%hd183472184373%_
                                     _%tl183473184375%_
                                     _%e183474184378%_
                                     _%hd183475184381%_
                                     _%tl183476184383%_
                                     _%e183477184386%_
                                     _%hd183478184389%_
                                     _%tl183479184391%_
                                     _%e183480184394%_
                                     _%hd183481184397%_
                                     _%tl183482184399%_
                                     _%e183483184402%_
                                     _%hd183484184405%_
                                     _%tl183485184407%_))))
                            (_%__match189960189961%_
                             _%e183462184346%_
                             _%hd183463184349%_
                             _%tl183464184351%_
                             _%e183465184354%_
                             _%hd183466184357%_
                             _%tl183467184359%_
                             _%e183468184362%_
                             _%hd183469184365%_
                             _%tl183470184367%_
                             _%e183471184370%_
                             _%hd183472184373%_
                             _%tl183473184375%_
                             _%e183474184378%_
                             _%hd183475184381%_
                             _%tl183476184383%_
                             _%e183477184386%_
                             _%hd183478184389%_
                             _%tl183479184391%_
                             _%e183480184394%_
                             _%hd183481184397%_
                             _%tl183482184399%_
                             _%e183483184402%_
                             _%hd183484184405%_
                             _%tl183485184407%_))))
                    (_%__match189898189899%_
                     _%e183462184346%_
                     _%hd183463184349%_
                     _%tl183464184351%_
                     _%e183465184354%_
                     _%hd183466184357%_
                     _%tl183467184359%_
                     _%e183468184362%_
                     _%hd183469184365%_
                     _%tl183470184367%_
                     _%e183471184370%_
                     _%hd183472184373%_
                     _%tl183473184375%_
                     _%e183474184378%_
                     _%hd183475184381%_
                     _%tl183476184383%_
                     _%e183477184386%_
                     _%hd183478184389%_
                     _%tl183479184391%_
                     _%e183480184394%_
                     _%hd183481184397%_
                     _%tl183482184399%_))
                (_%__kont189481189482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont189481189482%_))
                                            (_%__kont189481189482%_))
                                        (_%__kont189481189482%_))))
                                (_%__kont189481189482%_))))
                        (_%__kont189481189482%_))
                    (_%__kont189481189482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont189481189482%_))
                                                (_%__kont189481189482%_))
                                            (_%__kont189481189482%_))))
                                    (_%__kont189481189482%_))))
                            (_%__kont189481189482%_))))
                    (_%__kont189481189482%_))))))))))
