(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1768863416)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp189946 (list gxc#::identity::t))
            (__tmp189945 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp189946
         '()
         __tmp189945
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args188743%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args188743%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp189947
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
        (__make-atomic-promise __tmp189947)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx188735%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self188738%_
                (let ((__obj189938
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj189938))
               (__tmp189948
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self188738%_ _%stx188735%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp189948
           gxc#current-compile-method
           _%self188738%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp189950 (list gxc#::false::t))
            (__tmp189949 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp189950
         '()
         __tmp189949
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args188732%_
        (apply make-instance gxc#::extract-receiver::t _%$args188732%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp189951
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
        (__make-atomic-promise __tmp189951)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx188724%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self188727%_
                (let ((__obj189940
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj189940))
               (__tmp189952
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self188727%_ _%stx188724%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp189952
           gxc#current-compile-method
           _%self188727%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp189954 (list gxc#::void::t))
            (__tmp189953 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp189954
         '(receiver methods slots)
         __tmp189953
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args188721%_
        (apply make-instance gxc#::collect-object-refs::t _%$args188721%_)))
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
      (let ((__tmp189955
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
        (__make-atomic-promise __tmp189955)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords188687%_
               _%receiver188682188688%_
               _%methods188683188690%_
               _%slots188684188692%_
               _%stx188694%_)
        (let* ((_%receiver188697%_
                (if (eq? _%receiver188682188688%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver188682188688%_))
               (_%methods188699%_
                (if (eq? _%methods188683188690%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods188683188690%_))
               (_%slots188701%_
                (if (eq? _%slots188684188692%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots188684188692%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self188703%_
                  (let ((__obj189942
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
                       __obj189942
                       _%receiver188697%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189942
                       _%methods188699%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189942
                       _%slots188701%_
                       '3
                       '#f
                       '#f))
                    __obj189942))
                 (__tmp189956
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self188703%_ _%stx188694%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp189956
             gxc#current-compile-method
             _%self188703%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords188710%_ . _%args188711%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords188710%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188710%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188710%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188710%_
                  'slots:
                  absent-value))
               _%args188711%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args188685188717%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args188685188717%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp189958 (list gxc#::basic-xform-expression::t))
            (__tmp189957 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp189958
         '(receiver klass methods slots)
         __tmp189957
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args188678%_
        (apply make-instance gxc#::subst-object-refs::t _%$args188678%_)))
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
      (let ((__tmp189959
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
        (__make-atomic-promise __tmp189959)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords188640%_
               _%receiver188634188641%_
               _%klass188635188643%_
               _%methods188636188645%_
               _%slots188637188647%_
               _%stx188649%_)
        (let* ((_%receiver188652%_
                (if (eq? _%receiver188634188641%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver188634188641%_))
               (_%klass188654%_
                (if (eq? _%klass188635188643%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass188635188643%_))
               (_%methods188656%_
                (if (eq? _%methods188636188645%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods188636188645%_))
               (_%slots188658%_
                (if (eq? _%slots188637188647%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots188637188647%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self188660%_
                  (let ((__obj189944
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
                       __obj189944
                       _%receiver188652%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189944
                       _%klass188654%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189944
                       _%methods188656%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj189944
                       _%slots188658%_
                       '4
                       '#f
                       '#f))
                    __obj189944))
                 (__tmp189960
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self188660%_ _%stx188649%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp189960
             gxc#current-compile-method
             _%self188660%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords188667%_ . _%args188668%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords188667%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188667%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188667%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188667%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188667%_
                  'slots:
                  absent-value))
               _%args188668%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args188638188674%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args188638188674%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self185749%_ _%stx185750%_)
        (letrec ((_%generate-method-bind185752%_
                  (lambda (_%$klass188626%_
                           _%$method-table188627%_
                           _%id188628%_
                           _%$id188629%_)
                    (let ((_%$tmp188631%_
                           (let ((__tmp189961
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp189961))))
                      (cons (cons _%$id188629%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp188631%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table188627%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id188628%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp188631%_ '()))
                    (cons (cons '%#ref (cons _%$tmp188631%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id188628%_
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
                 (_%generate-slot-bind185753%_
                  (lambda (_%$klass188620%_ _%id188621%_ _%$id188622%_)
                    (let ((_%$tmp188624%_
                           (let ((__tmp189962
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp189962))))
                      (cons (cons _%$id188622%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp188624%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass188620%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id188621%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp188624%_ '()))
                        (cons (cons '%#ref (cons _%$tmp188624%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id188621%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl185754%_
                  (lambda (_%$klass188614%_
                           _%$method-table188615%_
                           _%methods-bind188616%_
                           _%slots-bind188617%_
                           _%specializer-impl188618%_)
                    (let ((__tmp189963
                           (cons '%#lambda
                                 (cons (cons _%$klass188614%_
                                             (cons _%$method-table188615%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind188617%_
                                                            _%methods-bind188616%_))
                                                         (cons _%specializer-impl188618%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp189963 _%stx185750%_))))
                 (_%generate-specializer-def185755%_
                  (lambda (_%id188610%_
                           _%specializer-id188611%_
                           _%specializer-impl188612%_)
                    (let ((__tmp189964
                           (cons '%#begin
                                 (cons _%stx185750%_
                                       (cons (let ((__tmp189965
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id188611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl188612%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp189965
                                                _%stx185750%_))
                                             (cons (let ((__tmp189966
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id188610%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id188611%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp189966
                                                      _%stx185750%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp189964 _%stx185750%_)))))
          (let* ((_%__stx188832188833%_ _%stx185750%_)
                 (_%g185758185778%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx188832188833%_)))))
            (let ((_%__kont188834188835%_
                   (lambda (_%L185822%_ _%L185823%_)
                     (let ((_%method-calls185842%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs185843%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty185844%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?185846%_
                                 (lambda ()
                                   (if (let ((__tmp189967
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls185842%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp189967))
                                       (let ((__tmp189968
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs185843%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp189968))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L185822%_))
                             (let* ((_%__stx188746188747%_ _%L185822%_)
                                    (_%g186234186252%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx188746188747%_)))))
                               (let ((_%__kont188748188749%_
                                      (lambda (_%L186288%_
                                               _%L186289%_
                                               _%L186290%_)
                                        (let ((_%receiver186310%_
                                               (let ((_%$e186307%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L186288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e186307%_
                                                     _%$e186307%_
                                                     _%L186290%_))))
                                          (for-each
                                           (lambda (_%g186311186313%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver186310%_
                                              _%method-calls185842%_
                                              _%slot-refs185843%_
                                              _%g186311186313%_))
                                           _%L186288%_)
                                          (if (_%no-specializer?185846%_)
                                              _%stx185750%_
                                              (let* ((_%specializer-id186322%_
                                                      (let* ((_%id186316%_
                                                              (let ((__tmp189969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L185823%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp189969 '"::specialize")))
                     (_%specializer-id186319%_
                      (let ((__tmp189970
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx185750%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id186316%_ __tmp189970))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id186319%_))
                _%specializer-id186319%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass186324%_
                                                      (let ((__tmp189971
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp189971)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table186326%_
                                                      (let ((__tmp189972
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp189972)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods186328%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls185842%_)))
                                                     (_%$methods186332%_
                                                      (let ((__tmp189973
                                                             (lambda (_%id186330%_)
                                                               (let ((__tmp189974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id186330%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp189974)))))
                (declare (not safe))
                (##map __tmp189973 _%methods186328%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_186341%_
                                                      (let ((__tmp189975
                                                             (lambda (_%g186333186336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186334186338%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls185842%_
                          _%g186333186336%_
                          _%g186334186338%_)))))
                (declare (not safe))
                (##for-each __tmp189975 _%methods186328%_ _%$methods186332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind186351%_
                                                      (let ((__tmp189976
                                                             (lambda (_%g186343186346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186344186348%_)
                       (_%generate-method-bind185752%_
                        _%$klass186324%_
                        _%$method-table186326%_
                        _%g186343186346%_
                        _%g186344186348%_))))
                (declare (not safe))
                (##map __tmp189976 _%methods186328%_ _%$methods186332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots186353%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs185843%_)))
                                                     (_%$slots186357%_
                                                      (let ((__tmp189977
                                                             (lambda (_%id186355%_)
                                                               (let ((__tmp189978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id186355%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp189978)))))
                (declare (not safe))
                (##map __tmp189977 _%slots186353%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_186366%_
                                                      (let ((__tmp189979
                                                             (lambda (_%g186358186361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186359186363%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs185843%_
                          _%g186358186361%_
                          _%g186359186363%_)))))
                (declare (not safe))
                (##for-each __tmp189979 _%slots186353%_ _%$slots186357%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind186375%_
                                                      (let ((__tmp189980
                                                             (lambda (_%g186367186370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186368186372%_)
                       (_%generate-slot-bind185753%_
                        _%$klass186324%_
                        _%g186367186370%_
                        _%g186368186372%_))))
                (declare (not safe))
                (##map __tmp189980 _%slots186353%_ _%$slots186357%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body186381%_
                                                      (map (lambda (_%g186376186378%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver186310%_
                                                              _%$klass186324%_
                                                              _%method-calls185842%_
                                                              _%slot-refs185843%_
                                                              _%g186376186378%_))
                                                           _%L186288%_))
                                                     (_%specializer-impl186383%_
                                                      (let ((__tmp189981
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L186290%_ _%L186289%_)
                                 _%specializer-body186381%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp189981 _%stx185750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl186385%_
                                                      (_%generate-specializer-impl185754%_
                                                       _%$klass186324%_
                                                       _%$method-table186326%_
                                                       _%methods-bind186351%_
                                                       _%slots-bind186375%_
                                                       _%specializer-impl186383%_)))
                                                (let ((__tmp189983
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L185823%_)))
                                                      (__tmp189982
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id186322%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp189983
                                                   '" => "
                                                   __tmp189982))
                                                (_%generate-specializer-def185755%_
                                                 _%L185823%_
                                                 _%specializer-id186322%_
                                                 _%specializer-impl186385%_))))))
                                     (_%__kont188750188751%_
                                      (lambda () _%stx185750%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx188746188747%_))
                                     (let ((_%e186239186264%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx188746188747%_))))
                                       (let ((_%tl186241186269%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186239186264%_)))
                                             (_%hd186240186267%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186239186264%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl186241186269%_))
                                             (let ((_%e186242186272%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl186241186269%_))))
                                               (let ((_%tl186244186277%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e186242186272%_)))
                                                     (_%hd186243186275%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e186242186272%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd186243186275%_))
                                                     (let ((_%e186245186280%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd186243186275%_))))
                                                       (let ((_%tl186247186285%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e186245186280%_)))
                     (_%hd186246186283%_
                      (let () (declare (not safe)) (##car _%e186245186280%_))))
                 (_%__kont188748188749%_
                  _%tl186244186277%_
                  _%tl186247186285%_
                  _%hd186246186283%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont188750188751%_))))
                                             (_%__kont188750188751%_))))
                                     (_%__kont188750188751%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L185822%_))
                                 (let* ((_%g186392186411%_
                                         (lambda (_%g186393186408%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g186393186408%_))))
                                        (_%g186391186709%_
                                         (lambda (_%g186393186414%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g186393186414%_))
                                               (let ((_%e186395186416%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g186393186414%_))))
                                                 (let ((_%hd186396186419%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e186395186416%_)))
                                                       (_%tl186397186421%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e186395186416%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl186397186421%_))
                                                       (let ((_g189984_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl186397186421%_ '0))))
                 (begin
                   (let ((_g189985_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g189984_)
                                (##values-length _g189984_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g189985_ 2)))
                         (error "Context expects 2 values" _g189985_)))
                   (let ((_%target186398186424%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g189984_ 0)))
                         (_%tl186400186426%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g189984_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl186400186426%_))
                         (letrec ((_%loop186401186429%_
                                   (lambda (_%hd186399186432%_
                                            _%clause186405186434%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd186399186432%_))
                                         (let ((_%e186402186437%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd186399186432%_))))
                                           (let ((_%lp-hd186403186440%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e186402186437%_)))
                                                 (_%lp-tl186404186442%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e186402186437%_))))
                                             (_%loop186401186429%_
                                              _%lp-tl186404186442%_
                                              (cons _%lp-hd186403186440%_
                                                    _%clause186405186434%_))))
                                         (let ((_%clause186406186445%_
                                                (reverse _%clause186405186434%_)))
                                           ((lambda (_%L186448%_)
                                              (for-each
                                               (lambda (_%clause186462%_)
                                                 (let* ((_%__stx188772188773%_
                                                         _%clause186462%_)
                                                        (_%g186465186480%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx188772188773%_)))))
                                                   (let ((_%__kont188774188775%_
                                                          (lambda (_%L186508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L186509%_
                           _%L186510%_)
                    (let ((_%receiver186529%_
                           (let ((_%$e186526%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L186508%_))))
                             (if _%$e186526%_ _%$e186526%_ _%L186510%_))))
                      (for-each
                       (lambda (_%g186530186532%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver186529%_
                          _%method-calls185842%_
                          _%slot-refs185843%_
                          _%g186530186532%_))
                       _%L186508%_))))
                 (_%__kont188776188777%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx188772188773%_))
                                                         (let ((_%e186470186492%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx188772188773%_))))
                   (let ((_%tl186472186497%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e186470186492%_)))
                         (_%hd186471186495%_
                          (let ()
                            (declare (not safe))
                            (##car _%e186470186492%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd186471186495%_))
                         (let ((_%e186473186500%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd186471186495%_))))
                           (let ((_%tl186475186505%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e186473186500%_)))
                                 (_%hd186474186503%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e186473186500%_))))
                             (_%__kont188774188775%_
                              _%tl186472186497%_
                              _%tl186475186505%_
                              _%hd186474186503%_)))
                         (_%__kont188776188777%_))))
                 (_%__kont188776188777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp189986
                                                      (lambda (_%g186537186540%_
                                                               _%g186538186542%_)
                                                        (cons _%g186537186540%_
                                                              _%g186538186542%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp189986
                                                  '()
                                                  _%L186448%_)))
                                              (if (_%no-specializer?185846%_)
                                                  _%stx185750%_
                                                  (let* ((_%specializer-id186551%_
                                                          (let* ((_%id186545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp189987
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L185823%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp189987 '"::specialize")))
                         (_%specializer-id186548%_
                          (let ((__tmp189988
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx185750%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id186545%_
                             __tmp189988))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id186548%_))
                    _%specializer-id186548%_))
                 (_%$klass186553%_
                  (let ((__tmp189989
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp189989)))
                 (_%$method-table186555%_
                  (let ((__tmp189990
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp189990)))
                 (_%methods186557%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls185842%_)))
                 (_%$methods186561%_
                  (let ((__tmp189991
                         (lambda (_%id186559%_)
                           (let ((__tmp189992 (gensym _%id186559%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp189992)))))
                    (declare (not safe))
                    (##map __tmp189991 _%methods186557%_)))
                 (_%_186570%_
                  (let ((__tmp189993
                         (lambda (_%g186562186565%_ _%g186563186567%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls185842%_
                              _%g186562186565%_
                              _%g186563186567%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp189993
                     _%methods186557%_
                     _%$methods186561%_)))
                 (_%methods-bind186580%_
                  (let ((__tmp189994
                         (lambda (_%g186572186575%_ _%g186573186577%_)
                           (_%generate-method-bind185752%_
                            _%$klass186553%_
                            _%$method-table186555%_
                            _%g186572186575%_
                            _%g186573186577%_))))
                    (declare (not safe))
                    (##map __tmp189994 _%methods186557%_ _%$methods186561%_)))
                 (_%slots186582%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs185843%_)))
                 (_%$slots186586%_
                  (let ((__tmp189995
                         (lambda (_%id186584%_)
                           (let ((__tmp189996 (gensym _%id186584%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp189996)))))
                    (declare (not safe))
                    (##map __tmp189995 _%slots186582%_)))
                 (_%_186595%_
                  (let ((__tmp189997
                         (lambda (_%g186587186590%_ _%g186588186592%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs185843%_
                              _%g186587186590%_
                              _%g186588186592%_)))))
                    (declare (not safe))
                    (##for-each __tmp189997 _%slots186582%_ _%$slots186586%_)))
                 (_%slots-bind186604%_
                  (let ((__tmp189998
                         (lambda (_%g186596186599%_ _%g186597186601%_)
                           (_%generate-slot-bind185753%_
                            _%$klass186553%_
                            _%g186596186599%_
                            _%g186597186601%_))))
                    (declare (not safe))
                    (##map __tmp189998 _%slots186582%_ _%$slots186586%_)))
                 (_%specializer-clauses186702%_
                  (map (lambda (_%clause186606%_)
                         (let* ((_%__stx188792188793%_ _%clause186606%_)
                                (_%g186609186624%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx188792188793%_)))))
                           (let ((_%__kont188794188795%_
                                  (lambda (_%L186652%_ _%L186653%_ _%L186654%_)
                                    (let* ((_%receiver186683%_
                                            (let ((_%$e186680%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L186652%_))))
                                              (if _%$e186680%_
                                                  _%$e186680%_
                                                  _%L186654%_)))
                                           (_%body186689%_
                                            (map (lambda (_%g186684186686%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver186683%_
                                                    _%$klass186553%_
                                                    _%method-calls185842%_
                                                    _%slot-refs185843%_
                                                    _%g186684186686%_))
                                                 _%L186652%_)))
                                      (cons (cons _%L186654%_ _%L186653%_)
                                            _%body186689%_))))
                                 (_%__kont188796188797%_
                                  (lambda () _%clause186606%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx188792188793%_))
                                 (let ((_%e186614186636%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx188792188793%_))))
                                   (let ((_%tl186616186641%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e186614186636%_)))
                                         (_%hd186615186639%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e186614186636%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd186615186639%_))
                                         (let ((_%e186617186644%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd186615186639%_))))
                                           (let ((_%tl186619186649%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e186617186644%_)))
                                                 (_%hd186618186647%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e186617186644%_))))
                                             (_%__kont188794188795%_
                                              _%tl186616186641%_
                                              _%tl186619186649%_
                                              _%hd186618186647%_)))
                                         (_%__kont188796188797%_))))
                                 (_%__kont188796188797%_)))))
                       (let ((__tmp189999
                              (lambda (_%g186694186697%_ _%g186695186699%_)
                                (cons _%g186694186697%_ _%g186695186699%_))))
                         (declare (not safe))
                         (__foldr1 __tmp189999 '() _%L186448%_))))
                 (_%specializer-impl186704%_
                  (let ((__tmp190000
                         (cons '%#case-lambda _%specializer-clauses186702%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp190000 _%stx185750%_)))
                 (_%specializer-impl186706%_
                  (_%generate-specializer-impl185754%_
                   _%$klass186553%_
                   _%$method-table186555%_
                   _%methods-bind186580%_
                   _%slots-bind186604%_
                   _%specializer-impl186704%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp190002
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L185823%_)))
                                                          (__tmp190001
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id186551%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp190002
                                                       '" => "
                                                       __tmp190001))
                                                    (_%generate-specializer-def185755%_
                                                     _%L185823%_
                                                     _%specializer-id186551%_
                                                     _%specializer-impl186706%_))))
                                            _%clause186406186445%_))))))
                           (_%loop186401186429%_ _%target186398186424%_ '()))
                         (_%g186392186411%_ _%g186393186414%_)))))
               (_%g186392186411%_ _%g186393186414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g186392186411%_
                                                _%g186393186414%_)))))
                                   (_%g186391186709%_ _%L185822%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L185822%_))
                                     (let* ((_%g186713186743%_
                                             (lambda (_%g186714186740%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g186714186740%_))))
                                            (_%g186712187374%_
                                             (lambda (_%g186714186746%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g186714186746%_))
                                                   (let ((_%e186718186748%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g186714186746%_))))
                                                     (let ((_%hd186719186751%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e186718186748%_)))
                                                           (_%tl186720186753%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e186718186748%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl186720186753%_))
                                                           (let ((_%e186721186756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl186720186753%_))))
                     (let ((_%hd186722186759%_
                            (let ()
                              (declare (not safe))
                              (##car _%e186721186756%_)))
                           (_%tl186723186761%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e186721186756%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd186722186759%_))
                           (let ((_%e186724186764%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd186722186759%_))))
                             (let ((_%hd186725186767%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e186724186764%_)))
                                   (_%tl186726186769%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e186724186764%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd186725186767%_))
                                   (let ((_%e186727186772%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd186725186767%_))))
                                     (let ((_%hd186728186775%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e186727186772%_)))
                                           (_%tl186729186777%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e186727186772%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd186728186775%_))
                                           (let ((_%e186730186780%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd186728186775%_))))
                                             (let ((_%hd186731186783%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186730186780%_)))
                                                   (_%tl186732186785%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186730186780%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186732186785%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl186729186777%_))
                                                       (let ((_%e186733186788%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl186729186777%_))))
                 (let ((_%hd186734186791%_
                        (let ()
                          (declare (not safe))
                          (##car _%e186733186788%_)))
                       (_%tl186735186793%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e186733186788%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl186735186793%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl186726186769%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl186723186761%_))
                               (let ((_%e186736186796%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl186723186761%_))))
                                 (let ((_%hd186737186799%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e186736186796%_)))
                                       (_%tl186738186801%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e186736186796%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl186738186801%_))
                                       ((lambda (_%L186804%_
                                                 _%L186805%_
                                                 _%L186806%_)
                                          (let* ((_%g186830186848%_
                                                  (lambda (_%g186831186845%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g186831186845%_))))
                                                 (_%g186829186904%_
                                                  (lambda (_%g186831186851%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g186831186851%_))
                                                        (let ((_%e186835186853%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g186831186851%_))))
                  (let ((_%hd186836186856%_
                         (let ()
                           (declare (not safe))
                           (##car _%e186835186853%_)))
                        (_%tl186837186858%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e186835186853%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl186837186858%_))
                        (let ((_%e186838186861%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl186837186858%_))))
                          (let ((_%hd186839186864%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186838186861%_)))
                                (_%tl186840186866%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186838186861%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd186839186864%_))
                                (let ((_%e186841186869%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd186839186864%_))))
                                  (let ((_%hd186842186872%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e186841186869%_)))
                                        (_%tl186843186874%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e186841186869%_))))
                                    ((lambda (_%L186877%_
                                              _%L186878%_
                                              _%L186879%_)
                                       (let ((_%receiver186898%_
                                              (let ((_%$e186895%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L186877%_))))
                                                (if _%$e186895%_
                                                    _%$e186895%_
                                                    _%L186879%_))))
                                         (for-each
                                          (lambda (_%g186899186901%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver186898%_
                                             _%method-calls185842%_
                                             _%slot-refs185843%_
                                             _%g186899186901%_))
                                          _%L186877%_)))
                                     _%tl186840186866%_
                                     _%tl186843186874%_
                                     _%hd186842186872%_)))
                                (_%g186830186848%_ _%g186831186851%_))))
                        (_%g186830186848%_ _%g186831186851%_))))
                (_%g186830186848%_ _%g186831186851%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g186829186904%_ _%L186805%_))
                                          (let* ((_%g186907186926%_
                                                  (lambda (_%g186908186923%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g186908186923%_))))
                                                 (_%g186906187050%_
                                                  (lambda (_%g186908186929%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g186908186929%_))
                                                        (let ((_%e186910186931%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g186908186929%_))))
                  (let ((_%hd186911186934%_
                         (let ()
                           (declare (not safe))
                           (##car _%e186910186931%_)))
                        (_%tl186912186936%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e186910186931%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl186912186936%_))
                        (let ((_g190003_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl186912186936%_
                                  '0))))
                          (begin
                            (let ((_g190004_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g190003_)
                                         (##values-length _g190003_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g190004_ 2)))
                                  (error "Context expects 2 values"
                                         _g190004_)))
                            (let ((_%target186913186939%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190003_ 0)))
                                  (_%tl186915186941%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190003_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl186915186941%_))
                                  (letrec ((_%loop186916186944%_
                                            (lambda (_%hd186914186947%_
                                                     _%clause186920186949%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd186914186947%_))
                                                  (let ((_%e186917186952%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd186914186947%_))))
                                                    (let ((_%lp-hd186918186955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e186917186952%_)))
                                                          (_%lp-tl186919186957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e186917186952%_))))
                                                      (_%loop186916186944%_
                                                       _%lp-tl186919186957%_
                                                       (cons _%lp-hd186918186955%_
                                                             _%clause186920186949%_))))
                                                  (let ((_%clause186921186960%_
                                                         (reverse _%clause186920186949%_)))
                                                    ((lambda (_%L186963%_)
                                                       (for-each
                                                        (lambda (_%clause186976%_)
                                                          (let* ((_%g186978186993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g186979186990%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g186979186990%_))))
                         (_%g186977187040%_
                          (lambda (_%g186979186996%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g186979186996%_))
                                (let ((_%e186983186998%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g186979186996%_))))
                                  (let ((_%hd186984187001%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e186983186998%_)))
                                        (_%tl186985187003%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e186983186998%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd186984187001%_))
                                        (let ((_%e186986187006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd186984187001%_))))
                                          (let ((_%hd186987187009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e186986187006%_)))
                                                (_%tl186988187011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e186986187006%_))))
                                            ((lambda (_%L187014%_
                                                      _%L187015%_
                                                      _%L187016%_)
                                               (let ((_%receiver187034%_
                                                      (let ((_%$e187031%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L187014%_))))
                (if _%$e187031%_ _%$e187031%_ _%L187016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g187035187037%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver187034%_
                                                     _%method-calls185842%_
                                                     _%slot-refs185843%_
                                                     _%g187035187037%_))
                                                  _%L187014%_)))
                                             _%tl186985187003%_
                                             _%tl186988187011%_
                                             _%hd186987187009%_)))
                                        (_%g186978186993%_
                                         _%g186979186996%_))))
                                (_%g186978186993%_ _%g186979186996%_)))))
                    (_%g186977187040%_ _%clause186976%_)))
                (let ((__tmp190005
                       (lambda (_%g187042187045%_ _%g187043187047%_)
                         (cons _%g187042187045%_ _%g187043187047%_))))
                  (declare (not safe))
                  (__foldr1 __tmp190005 '() _%L186963%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause186921186960%_))))))
                                    (_%loop186916186944%_
                                     _%target186913186939%_
                                     '()))
                                  (_%g186907186926%_ _%g186908186929%_)))))
                        (_%g186907186926%_ _%g186908186929%_))))
                (_%g186907186926%_ _%g186908186929%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g186906187050%_ _%L186804%_))
                                          (if (_%no-specializer?185846%_)
                                              _%stx185750%_
                                              (let* ((_%specializer-id187059%_
                                                      (let* ((_%id187053%_
                                                              (let ((__tmp190006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L185823%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp190006 '"::specialize")))
                     (_%specializer-id187056%_
                      (let ((__tmp190007
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx185750%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id187053%_ __tmp190007))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id187056%_))
                _%specializer-id187056%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass187061%_
                                                      (let ((__tmp190008
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp190008)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table187063%_
                                                      (let ((__tmp190009
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp190009)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods187065%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls185842%_)))
                                                     (_%$methods187069%_
                                                      (let ((__tmp190010
                                                             (lambda (_%id187067%_)
                                                               (let ((__tmp190011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id187067%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190011)))))
                (declare (not safe))
                (##map __tmp190010 _%methods187065%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_187078%_
                                                      (let ((__tmp190012
                                                             (lambda (_%g187070187073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187071187075%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls185842%_
                          _%g187070187073%_
                          _%g187071187075%_)))))
                (declare (not safe))
                (##for-each __tmp190012 _%methods187065%_ _%$methods187069%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind187088%_
                                                      (let ((__tmp190013
                                                             (lambda (_%g187080187083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187081187085%_)
                       (_%generate-method-bind185752%_
                        _%$klass187061%_
                        _%$method-table187063%_
                        _%g187080187083%_
                        _%g187081187085%_))))
                (declare (not safe))
                (##map __tmp190013 _%methods187065%_ _%$methods187069%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots187090%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs185843%_)))
                                                     (_%$slots187094%_
                                                      (let ((__tmp190014
                                                             (lambda (_%id187092%_)
                                                               (let ((__tmp190015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id187092%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190015)))))
                (declare (not safe))
                (##map __tmp190014 _%slots187090%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_187103%_
                                                      (let ((__tmp190016
                                                             (lambda (_%g187095187098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187096187100%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs185843%_
                          _%g187095187098%_
                          _%g187096187100%_)))))
                (declare (not safe))
                (##for-each __tmp190016 _%slots187090%_ _%$slots187094%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind187112%_
                                                      (let ((__tmp190017
                                                             (lambda (_%g187104187107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187105187109%_)
                       (_%generate-slot-bind185753%_
                        _%$klass187061%_
                        _%g187104187107%_
                        _%g187105187109%_))))
                (declare (not safe))
                (##map __tmp190017 _%slots187090%_ _%$slots187094%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr187204%_
                                                      (let* ((_%g187114187132%_
                                                              (lambda (_%g187115187129%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187115187129%_))))
                     (_%g187113187201%_
                      (lambda (_%g187115187135%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187115187135%_))
                            (let ((_%e187119187137%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187115187135%_))))
                              (let ((_%hd187120187140%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187119187137%_)))
                                    (_%tl187121187142%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187119187137%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187121187142%_))
                                    (let ((_%e187122187145%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187121187142%_))))
                                      (let ((_%hd187123187148%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187122187145%_)))
                                            (_%tl187124187150%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187122187145%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd187123187148%_))
                                            (let ((_%e187125187153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd187123187148%_))))
                                              (let ((_%hd187126187156%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187125187153%_)))
                                                    (_%tl187127187158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187125187153%_))))
                                                ((lambda (_%L187161%_
                                                          _%L187162%_
                                                          _%L187163%_)
                                                   (let* ((_%receiver187192%_
                                                           (let ((_%$e187189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L187161%_))))
                     (if _%$e187189%_ _%$e187189%_ _%L187163%_)))
                  (_%body187198%_
                   (map (lambda (_%g187193187195%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver187192%_
                           _%$klass187061%_
                           _%method-calls185842%_
                           _%slot-refs185843%_
                           _%g187193187195%_))
                        _%L187161%_))
                  (__tmp190018
                   (cons '%#lambda
                         (cons (cons _%L187163%_ _%L187162%_)
                               _%body187198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190018
                                                      _%L186805%_)))
                                                 _%tl187124187150%_
                                                 _%tl187127187158%_
                                                 _%hd187126187156%_)))
                                            (_%g187114187132%_
                                             _%g187115187135%_))))
                                    (_%g187114187132%_ _%g187115187135%_))))
                            (_%g187114187132%_ _%g187115187135%_)))))
                (_%g187113187201%_ _%L186805%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr187367%_
                                                      (let* ((_%g187206187225%_
                                                              (lambda (_%g187207187222%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187207187222%_))))
                     (_%g187205187364%_
                      (lambda (_%g187207187228%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187207187228%_))
                            (let ((_%e187209187230%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187207187228%_))))
                              (let ((_%hd187210187233%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187209187230%_)))
                                    (_%tl187211187235%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187209187230%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl187211187235%_))
                                    (let ((_g190019_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl187211187235%_
                                              '0))))
                                      (begin
                                        (let ((_g190020_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g190019_)
                                                     (##values-length
                                                      _g190019_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g190020_ 2)))
                                              (error "Context expects 2 values"
                                                     _g190020_)))
                                        (let ((_%target187212187238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g190019_ 0)))
                                              (_%tl187214187240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g190019_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187214187240%_))
                                              (letrec ((_%loop187215187243%_
                                                        (lambda (_%hd187213187246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause187219187248%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd187213187246%_))
                      (let ((_%e187216187251%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd187213187246%_))))
                        (let ((_%lp-hd187217187254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187216187251%_)))
                              (_%lp-tl187218187256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187216187251%_))))
                          (_%loop187215187243%_
                           _%lp-tl187218187256%_
                           (cons _%lp-hd187217187254%_
                                 _%clause187219187248%_))))
                      (let ((_%clause187220187259%_
                             (reverse _%clause187219187248%_)))
                        ((lambda (_%L187262%_)
                           (let* ((_%clauses187362%_
                                   (map (lambda (_%clause187276%_)
                                          (let* ((_%__stx188812188813%_
                                                  _%clause187276%_)
                                                 (_%g187279187294%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx188812188813%_)))))
                                            (let ((_%__kont188814188815%_
                                                   (lambda (_%L187322%_
                                                            _%L187323%_
                                                            _%L187324%_)
                                                     (let* ((_%receiver187343%_
                                                             (let ((_%$e187340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L187322%_))))
                       (if _%$e187340%_ _%$e187340%_ _%L187324%_)))
                    (_%body187349%_
                     (map (lambda (_%g187344187346%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver187343%_
                             _%$klass187061%_
                             _%method-calls185842%_
                             _%slot-refs185843%_
                             _%g187344187346%_))
                          _%L187322%_)))
               (cons (cons _%L187324%_ _%L187323%_) _%body187349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188816188817%_
                                                   (lambda ()
                                                     _%clause187276%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx188812188813%_))
                                                  (let ((_%e187284187306%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx188812188813%_))))
                                                    (let ((_%tl187286187311%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187284187306%_)))
                                                          (_%hd187285187309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187284187306%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd187285187309%_))
                                                          (let ((_%e187287187314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd187285187309%_))))
                    (let ((_%tl187289187319%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187287187314%_)))
                          (_%hd187288187317%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187287187314%_))))
                      (_%__kont188814188815%_
                       _%tl187286187311%_
                       _%tl187289187319%_
                       _%hd187288187317%_)))
                  (_%__kont188816188817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188816188817%_)))))
                                        (let ((__tmp190021
                                               (lambda (_%g187354187357%_
                                                        _%g187355187359%_)
                                                 (cons _%g187354187357%_
                                                       _%g187355187359%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp190021
                                           '()
                                           _%L187262%_))))
                                  (__tmp190022
                                   (cons '%#case-lambda _%clauses187362%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190022 _%L186804%_)))
                         _%clause187220187259%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop187215187243%_
                                                 _%target187212187238%_
                                                 '()))
                                              (_%g187206187225%_
                                               _%g187207187228%_)))))
                                    (_%g187206187225%_ _%g187207187228%_))))
                            (_%g187206187225%_ _%g187207187228%_)))))
                (_%g187205187364%_ _%L186804%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl187369%_
                                                      (let ((__tmp190023
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L186806%_ '())
                                             (cons _%specializer-lambda-expr187204%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr187367%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190023 _%stx185750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl187371%_
                                                      (_%generate-specializer-impl185754%_
                                                       _%$klass187061%_
                                                       _%$method-table187063%_
                                                       _%methods-bind187088%_
                                                       _%slots-bind187112%_
                                                       _%specializer-impl187369%_)))
                                                (let ((__tmp190025
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L185823%_)))
                                                      (__tmp190024
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id187059%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp190025
                                                   '" => "
                                                   __tmp190024))
                                                (_%generate-specializer-def185755%_
                                                 _%L185823%_
                                                 _%specializer-id187059%_
                                                 _%specializer-impl187371%_))))
                                        _%hd186737186799%_
                                        _%hd186734186791%_
                                        _%hd186731186783%_)
                                       (_%g186713186743%_ _%g186714186746%_))))
                               (_%g186713186743%_ _%g186714186746%_))
                           (_%g186713186743%_ _%g186714186746%_))
                       (_%g186713186743%_ _%g186714186746%_))))
               (_%g186713186743%_ _%g186714186746%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g186713186743%_
                                                    _%g186714186746%_))))
                                           (_%g186713186743%_
                                            _%g186714186746%_))))
                                   (_%g186713186743%_ _%g186714186746%_))))
                           (_%g186713186743%_ _%g186714186746%_))))
                   (_%g186713186743%_ _%g186714186746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g186713186743%_
                                                    _%g186714186746%_)))))
                                       (_%g186712187374%_ _%L185822%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L185822%_))
                                         (let* ((_%g187378187431%_
                                                 (lambda (_%g187379187428%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g187379187428%_))))
                                                (_%g187377188602%_
                                                 (lambda (_%g187379187434%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g187379187434%_))
                                                       (let ((_%e187385187436%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g187379187434%_))))
                 (let ((_%hd187386187439%_
                        (let ()
                          (declare (not safe))
                          (##car _%e187385187436%_)))
                       (_%tl187387187441%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e187385187436%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd187386187439%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd187386187439%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl187387187441%_))
                               (let ((_%e187388187444%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl187387187441%_))))
                                 (let ((_%hd187389187447%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e187388187444%_)))
                                       (_%tl187390187449%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e187388187444%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd187389187447%_))
                                       (let ((_%e187391187452%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd187389187447%_))))
                                         (let ((_%hd187392187455%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e187391187452%_)))
                                               (_%tl187393187457%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e187391187452%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd187392187455%_))
                                               (let ((_%e187394187460%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd187392187455%_))))
                                                 (let ((_%hd187395187463%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e187394187460%_)))
                                                       (_%tl187396187465%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e187394187460%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd187395187463%_))
                                                       (let ((_%e187397187468%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd187395187463%_))))
                 (let ((_%hd187398187471%_
                        (let ()
                          (declare (not safe))
                          (##car _%e187397187468%_)))
                       (_%tl187399187473%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e187397187468%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl187399187473%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl187396187465%_))
                           (let ((_%e187400187476%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl187396187465%_))))
                             (let ((_%hd187401187479%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e187400187476%_)))
                                   (_%tl187402187481%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e187400187476%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd187401187479%_))
                                   (let ((_%e187403187484%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd187401187479%_))))
                                     (let ((_%hd187404187487%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e187403187484%_)))
                                           (_%tl187405187489%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e187403187484%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd187404187487%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd187404187487%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl187405187489%_))
                                                   (let ((_%e187406187492%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl187405187489%_))))
                                                     (let ((_%hd187407187495%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e187406187492%_)))
                                                           (_%tl187408187497%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e187406187492%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd187407187495%_))
                                                           (let ((_%e187409187500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd187407187495%_))))
                     (let ((_%hd187410187503%_
                            (let ()
                              (declare (not safe))
                              (##car _%e187409187500%_)))
                           (_%tl187411187505%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e187409187500%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd187410187503%_))
                           (let ((_%e187412187508%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd187410187503%_))))
                             (let ((_%hd187413187511%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e187412187508%_)))
                                   (_%tl187414187513%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e187412187508%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd187413187511%_))
                                   (let ((_%e187415187516%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd187413187511%_))))
                                     (let ((_%hd187416187519%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e187415187516%_)))
                                           (_%tl187417187521%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e187415187516%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl187417187521%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl187414187513%_))
                                               (let ((_%e187418187524%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl187414187513%_))))
                                                 (let ((_%hd187419187527%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e187418187524%_)))
                                                       (_%tl187420187529%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e187418187524%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl187420187529%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl187411187505%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl187408187497%_))
                       (let ((_%e187421187532%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl187408187497%_))))
                         (let ((_%hd187422187535%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e187421187532%_)))
                               (_%tl187423187537%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e187421187532%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl187423187537%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl187402187481%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl187393187457%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187390187449%_))
                                           (let ((_%e187424187540%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187390187449%_))))
                                             (let ((_%hd187425187543%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187424187540%_)))
                                                   (_%tl187426187545%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187424187540%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187426187545%_))
                                                   ((lambda (_%L187548%_
                                                             _%L187549%_
                                                             _%L187550%_
                                                             _%L187551%_
                                                             _%L187552%_)
                                                      (let* ((_%g187592187654%_
                                                              (lambda (_%g187593187651%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187593187651%_))))
                     (_%g187591188599%_
                      (lambda (_%g187593187657%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187593187657%_))
                            (let ((_%e187599187659%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187593187657%_))))
                              (let ((_%hd187600187662%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187599187659%_)))
                                    (_%tl187601187664%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187599187659%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187600187662%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd187600187662%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187601187664%_))
                                            (let ((_%e187602187667%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187601187664%_))))
                                              (let ((_%hd187603187670%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187602187667%_)))
                                                    (_%tl187604187672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187602187667%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl187604187672%_))
                                                    (let ((_%e187605187675%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl187604187672%_))))
                                                      (let ((_%hd187606187678%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e187605187675%_)))
                    (_%tl187607187680%_
                     (let () (declare (not safe)) (##cdr _%e187605187675%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd187606187678%_))
                    (let ((_%e187608187683%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd187606187678%_))))
                      (let ((_%hd187609187686%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187608187683%_)))
                            (_%tl187610187688%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187608187683%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd187609187686%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd187609187686%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187610187688%_))
                                    (let ((_%e187611187691%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187610187688%_))))
                                      (let ((_%hd187612187694%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187611187691%_)))
                                            (_%tl187613187696%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187611187691%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd187612187694%_))
                                            (let ((_%e187614187699%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd187612187694%_))))
                                              (let ((_%hd187615187702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187614187699%_)))
                                                    (_%tl187616187704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187614187699%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd187615187702%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd187615187702%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187616187704%_))
                                                            (let ((_%e187617187707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187616187704%_))))
                      (let ((_%hd187618187710%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187617187707%_)))
                            (_%tl187619187712%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187617187707%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl187619187712%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl187613187696%_))
                                (let ((_%e187620187715%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl187613187696%_))))
                                  (let ((_%hd187621187718%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187620187715%_)))
                                        (_%tl187622187720%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187620187715%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd187621187718%_))
                                        (let ((_%e187623187723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd187621187718%_))))
                                          (let ((_%hd187624187726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e187623187723%_)))
                                                (_%tl187625187728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e187623187723%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd187624187726%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd187624187726%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl187625187728%_))
                                                        (let ((_%e187626187731%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl187625187728%_))))
                  (let ((_%hd187627187734%_
                         (let ()
                           (declare (not safe))
                           (##car _%e187626187731%_)))
                        (_%tl187628187736%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e187626187731%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl187628187736%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl187622187720%_))
                            (let ((_%e187629187739%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl187622187720%_))))
                              (let ((_%hd187630187742%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187629187739%_)))
                                    (_%tl187631187744%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187629187739%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd187630187742%_))
                                    (let ((_%e187632187747%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd187630187742%_))))
                                      (let ((_%hd187633187750%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187632187747%_)))
                                            (_%tl187634187752%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187632187747%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd187633187750%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd187633187750%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl187634187752%_))
                                                    (let ((_%e187635187755%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl187634187752%_))))
                                                      (let ((_%hd187636187758%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e187635187755%_)))
                    (_%tl187637187760%_
                     (let () (declare (not safe)) (##cdr _%e187635187755%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl187637187760%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl187631187744%_))
                        (if (let ((__tmp190026
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl187631187744%_))))
                              (declare (not safe))
                              (##fx>= __tmp190026 '1))
                            (let ((_g190027_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl187631187744%_
                                      '1))))
                              (begin
                                (let ((_g190028_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g190027_)
                                             (##values-length _g190027_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g190028_ 2)))
                                      (error "Context expects 2 values"
                                             _g190028_)))
                                (let ((_%target187638187763%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190027_ 0)))
                                      (_%tl187640187765%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190027_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187640187765%_))
                                      (let ((_%e187647187768%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187640187765%_))))
                                        (let ((_%hd187648187771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187647187768%_)))
                                              (_%tl187649187773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187647187768%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187649187773%_))
                                              (letrec ((_%loop187641187776%_
                                                        (lambda (_%hd187639187779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref187645187781%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd187639187779%_))
                      (let ((_%e187642187784%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd187639187779%_))))
                        (let ((_%lp-hd187643187787%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187642187784%_)))
                              (_%lp-tl187644187789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187642187784%_))))
                          (_%loop187641187776%_
                           _%lp-tl187644187789%_
                           (cons _%lp-hd187643187787%_
                                 _%kw-ref187645187781%_))))
                      (let ((_%kw-ref187646187792%_
                             (reverse _%kw-ref187645187781%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl187607187680%_))
                            ((lambda (_%L187795%_
                                      _%L187796%_
                                      _%L187797%_
                                      _%L187798%_
                                      _%L187799%_)
                               (let* ((_%kw-count187850%_
                                       (length (let ((__tmp190029
                                                      (lambda (_%g187842187845%_
                                                               _%g187843187847%_)
                                                        (cons _%g187842187845%_
                                                              _%g187843187847%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp190029
                                                  '()
                                                  _%L187796%_))))
                                      (_%self-index187852%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count187850%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L187550%_))
                                     (let* ((_%g187856187870%_
                                             (lambda (_%g187857187867%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g187857187867%_))))
                                            (_%g187855187993%_
                                             (lambda (_%g187857187873%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g187857187873%_))
                                                   (let ((_%e187860187875%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g187857187873%_))))
                                                     (let ((_%hd187861187878%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e187860187875%_)))
                                                           (_%tl187862187880%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e187860187875%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl187862187880%_))
                                                           (let ((_%e187863187883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl187862187880%_))))
                     (let ((_%hd187864187886%_
                            (let ()
                              (declare (not safe))
                              (##car _%e187863187883%_)))
                           (_%tl187865187888%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e187863187883%_))))
                       ((lambda (_%L187891%_ _%L187892%_)
                          (let* ((_%self187909%_
                                  (list-ref _%L187892%_ _%self-index187852%_))
                                 (_%receiver187914%_
                                  (let ((_%$e187911%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L187891%_))))
                                    (if _%$e187911%_
                                        _%$e187911%_
                                        _%self187909%_))))
                            (for-each
                             (lambda (_%g187916187918%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver187914%_
                                _%method-calls185842%_
                                _%slot-refs185843%_
                                _%g187916187918%_))
                             _%L187891%_)
                            (if (_%no-specializer?185846%_)
                                _%stx185750%_
                                (let* ((_%specializer-id187927%_
                                        (let* ((_%id187921%_
                                                (let ((__tmp190030
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L185823%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp190030
                                                   '"::specialize")))
                                               (_%specializer-id187924%_
                                                (let ((__tmp190031
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx185750%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id187921%_
                                                   __tmp190031))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id187924%_))
                                          _%specializer-id187924%_))
                                       (_%$klass187929%_
                                        (let ((__tmp190032
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp190032)))
                                       (_%$method-table187931%_
                                        (let ((__tmp190033
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp190033)))
                                       (_%methods187933%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls185842%_)))
                                       (_%$methods187937%_
                                        (let ((__tmp190034
                                               (lambda (_%id187935%_)
                                                 (let ((__tmp190035
                                                        (gensym _%id187935%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp190035)))))
                                          (declare (not safe))
                                          (##map __tmp190034
                                                 _%methods187933%_)))
                                       (_%_187946%_
                                        (let ((__tmp190036
                                               (lambda (_%g187938187941%_
                                                        _%g187939187943%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls185842%_
                                                    _%g187938187941%_
                                                    _%g187939187943%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp190036
                                           _%methods187933%_
                                           _%$methods187937%_)))
                                       (_%methods-bind187956%_
                                        (let ((__tmp190037
                                               (lambda (_%g187948187951%_
                                                        _%g187949187953%_)
                                                 (_%generate-method-bind185752%_
                                                  _%$klass187929%_
                                                  _%$method-table187931%_
                                                  _%g187948187951%_
                                                  _%g187949187953%_))))
                                          (declare (not safe))
                                          (##map __tmp190037
                                                 _%methods187933%_
                                                 _%$methods187937%_)))
                                       (_%slots187958%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs185843%_)))
                                       (_%$slots187962%_
                                        (let ((__tmp190038
                                               (lambda (_%id187960%_)
                                                 (let ((__tmp190039
                                                        (gensym _%id187960%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp190039)))))
                                          (declare (not safe))
                                          (##map __tmp190038 _%slots187958%_)))
                                       (_%_187971%_
                                        (let ((__tmp190040
                                               (lambda (_%g187963187966%_
                                                        _%g187964187968%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs185843%_
                                                    _%g187963187966%_
                                                    _%g187964187968%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp190040
                                           _%slots187958%_
                                           _%$slots187962%_)))
                                       (_%slots-bind187980%_
                                        (let ((__tmp190041
                                               (lambda (_%g187972187975%_
                                                        _%g187973187977%_)
                                                 (_%generate-slot-bind185753%_
                                                  _%$klass187929%_
                                                  _%g187972187975%_
                                                  _%g187973187977%_))))
                                          (declare (not safe))
                                          (##map __tmp190041
                                                 _%slots187958%_
                                                 _%$slots187962%_)))
                                       (_%specializer-impl187988%_
                                        (let* ((_%specializer-body187986%_
                                                (map (lambda (_%g187981187983%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver187914%_
                                                        _%$klass187929%_
                                                        _%method-calls185842%_
                                                        _%slot-refs185843%_
                                                        _%g187981187983%_))
                                                     _%L187891%_))
                                               (__tmp190042
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L187552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L187551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp190043
                                   (cons '%#lambda
                                         (cons _%L187892%_
                                               _%specializer-body187986%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp190043 _%L187550%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L187549%_ '())))
                                      '()))
                          '())
                    (cons _%L187548%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp190042
                                           _%stx185750%_)))
                                       (_%specializer-impl187990%_
                                        (_%generate-specializer-impl185754%_
                                         _%$klass187929%_
                                         _%$method-table187931%_
                                         _%methods-bind187956%_
                                         _%slots-bind187980%_
                                         _%specializer-impl187988%_)))
                                  (let ((__tmp190045
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L185823%_)))
                                        (__tmp190044
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id187927%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp190045
                                     '" => "
                                     __tmp190044))
                                  (_%generate-specializer-def185755%_
                                   _%L185823%_
                                   _%specializer-id187927%_
                                   _%specializer-impl187990%_)))))
                        _%tl187865187888%_
                        _%hd187864187886%_)))
                   (_%g187856187870%_ _%g187857187873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g187856187870%_
                                                    _%g187857187873%_)))))
                                       (_%g187855187993%_ _%L187550%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L187550%_))
                                         (let* ((_%g187997188027%_
                                                 (lambda (_%g187998188024%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g187998188024%_))))
                                                (_%g187996188595%_
                                                 (lambda (_%g187998188030%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g187998188030%_))
                                                       (let ((_%e188002188032%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g187998188030%_))))
                 (let ((_%hd188003188035%_
                        (let ()
                          (declare (not safe))
                          (##car _%e188002188032%_)))
                       (_%tl188004188037%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e188002188032%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl188004188037%_))
                       (let ((_%e188005188040%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl188004188037%_))))
                         (let ((_%hd188006188043%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e188005188040%_)))
                               (_%tl188007188045%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e188005188040%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd188006188043%_))
                               (let ((_%e188008188048%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd188006188043%_))))
                                 (let ((_%hd188009188051%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e188008188048%_)))
                                       (_%tl188010188053%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e188008188048%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd188009188051%_))
                                       (let ((_%e188011188056%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd188009188051%_))))
                                         (let ((_%hd188012188059%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e188011188056%_)))
                                               (_%tl188013188061%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e188011188056%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd188012188059%_))
                                               (let ((_%e188014188064%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd188012188059%_))))
                                                 (let ((_%hd188015188067%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e188014188064%_)))
                                                       (_%tl188016188069%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e188014188064%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl188016188069%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl188013188061%_))
                                                           (let ((_%e188017188072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl188013188061%_))))
                     (let ((_%hd188018188075%_
                            (let ()
                              (declare (not safe))
                              (##car _%e188017188072%_)))
                           (_%tl188019188077%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e188017188072%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl188019188077%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl188010188053%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl188007188045%_))
                                   (let ((_%e188020188080%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl188007188045%_))))
                                     (let ((_%hd188021188083%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e188020188080%_)))
                                           (_%tl188022188085%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e188020188080%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl188022188085%_))
                                           ((lambda (_%L188088%_
                                                     _%L188089%_
                                                     _%L188090%_)
                                              (let* ((_%g188114188128%_
                                                      (lambda (_%g188115188125%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188115188125%_))))
                                                     (_%g188113188175%_
                                                      (lambda (_%g188115188131%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188115188131%_))
                                                            (let ((_%e188118188133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188115188131%_))))
                      (let ((_%hd188119188136%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188118188133%_)))
                            (_%tl188120188138%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188118188133%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl188120188138%_))
                            (let ((_%e188121188141%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl188120188138%_))))
                              (let ((_%hd188122188144%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188121188141%_)))
                                    (_%tl188123188146%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188121188141%_))))
                                ((lambda (_%L188149%_ _%L188150%_)
                                   (let* ((_%self188163%_
                                           (list-ref
                                            _%L188150%_
                                            _%self-index187852%_))
                                          (_%receiver188168%_
                                           (let ((_%$e188165%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L188149%_))))
                                             (if _%$e188165%_
                                                 _%$e188165%_
                                                 _%self188163%_))))
                                     (for-each
                                      (lambda (_%g188170188172%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver188168%_
                                         _%method-calls185842%_
                                         _%slot-refs185843%_
                                         _%g188170188172%_))
                                      _%L188149%_)))
                                 _%tl188123188146%_
                                 _%hd188122188144%_)))
                            (_%g188114188128%_ _%g188115188131%_))))
                    (_%g188114188128%_ _%g188115188131%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188113188175%_
                                                 _%L188089%_))
                                              (let* ((_%g188178188197%_
                                                      (lambda (_%g188179188194%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188179188194%_))))
                                                     (_%g188177188308%_
                                                      (lambda (_%g188179188200%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188179188200%_))
                                                            (let ((_%e188181188202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188179188200%_))))
                      (let ((_%hd188182188205%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188181188202%_)))
                            (_%tl188183188207%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188181188202%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl188183188207%_))
                            (let ((_g190046_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl188183188207%_
                                      '0))))
                              (begin
                                (let ((_g190047_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g190046_)
                                             (##values-length _g190046_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g190047_ 2)))
                                      (error "Context expects 2 values"
                                             _g190047_)))
                                (let ((_%target188184188210%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190046_ 0)))
                                      (_%tl188186188212%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190046_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188186188212%_))
                                      (letrec ((_%loop188187188215%_
                                                (lambda (_%hd188185188218%_
                                                         _%clause188191188220%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd188185188218%_))
                                                      (let ((_%e188188188223%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd188185188218%_))))
                (let ((_%lp-hd188189188226%_
                       (let () (declare (not safe)) (##car _%e188188188223%_)))
                      (_%lp-tl188190188228%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e188188188223%_))))
                  (_%loop188187188215%_
                   _%lp-tl188190188228%_
                   (cons _%lp-hd188189188226%_ _%clause188191188220%_))))
              (let ((_%clause188192188231%_ (reverse _%clause188191188220%_)))
                ((lambda (_%L188234%_)
                   (for-each
                    (lambda (_%clause188247%_)
                      (let* ((_%g188249188260%_
                              (lambda (_%g188250188257%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g188250188257%_))))
                             (_%g188248188298%_
                              (lambda (_%g188250188263%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g188250188263%_))
                                    (let ((_%e188253188265%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g188250188263%_))))
                                      (let ((_%hd188254188268%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188253188265%_)))
                                            (_%tl188255188270%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188253188265%_))))
                                        ((lambda (_%L188273%_ _%L188274%_)
                                           (let* ((_%self188286%_
                                                   (list-ref
                                                    _%L188274%_
                                                    _%self-index187852%_))
                                                  (_%receiver188291%_
                                                   (let ((_%$e188288%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L188273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e188288%_
                                                         _%$e188288%_
                                                         _%self188286%_))))
                                             (for-each
                                              (lambda (_%g188293188295%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver188291%_
                                                 _%method-calls185842%_
                                                 _%slot-refs185843%_
                                                 _%g188293188295%_))
                                              _%L188273%_)))
                                         _%tl188255188270%_
                                         _%hd188254188268%_)))
                                    (_%g188249188260%_ _%g188250188263%_)))))
                        (_%g188248188298%_ _%clause188247%_)))
                    (let ((__tmp190048
                           (lambda (_%g188300188303%_ _%g188301188305%_)
                             (cons _%g188300188303%_ _%g188301188305%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190048 '() _%L188234%_))))
                 _%clause188192188231%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop188187188215%_
                                         _%target188184188210%_
                                         '()))
                                      (_%g188178188197%_ _%g188179188200%_)))))
                            (_%g188178188197%_ _%g188179188200%_))))
                    (_%g188178188197%_ _%g188179188200%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188177188308%_
                                                 _%L188088%_))
                                              (if (_%no-specializer?185846%_)
                                                  _%stx185750%_
                                                  (let* ((_%specializer-id188317%_
                                                          (let* ((_%id188311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190049
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L185823%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp190049 '"::specialize")))
                         (_%specializer-id188314%_
                          (let ((__tmp190050
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx185750%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id188311%_
                             __tmp190050))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id188314%_))
                    _%specializer-id188314%_))
                 (_%$klass188319%_
                  (let ((__tmp190051
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190051)))
                 (_%$method-table188321%_
                  (let ((__tmp190052
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190052)))
                 (_%methods188323%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls185842%_)))
                 (_%$methods188327%_
                  (let ((__tmp190053
                         (lambda (_%id188325%_)
                           (let ((__tmp190054 (gensym _%id188325%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190054)))))
                    (declare (not safe))
                    (##map __tmp190053 _%methods188323%_)))
                 (_%_188336%_
                  (let ((__tmp190055
                         (lambda (_%g188328188331%_ _%g188329188333%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls185842%_
                              _%g188328188331%_
                              _%g188329188333%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp190055
                     _%methods188323%_
                     _%$methods188327%_)))
                 (_%methods-bind188346%_
                  (let ((__tmp190056
                         (lambda (_%g188338188341%_ _%g188339188343%_)
                           (_%generate-method-bind185752%_
                            _%$klass188319%_
                            _%$method-table188321%_
                            _%g188338188341%_
                            _%g188339188343%_))))
                    (declare (not safe))
                    (##map __tmp190056 _%methods188323%_ _%$methods188327%_)))
                 (_%slots188348%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs185843%_)))
                 (_%$slots188352%_
                  (let ((__tmp190057
                         (lambda (_%id188350%_)
                           (let ((__tmp190058 (gensym _%id188350%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190058)))))
                    (declare (not safe))
                    (##map __tmp190057 _%slots188348%_)))
                 (_%_188361%_
                  (let ((__tmp190059
                         (lambda (_%g188353188356%_ _%g188354188358%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs185843%_
                              _%g188353188356%_
                              _%g188354188358%_)))))
                    (declare (not safe))
                    (##for-each __tmp190059 _%slots188348%_ _%$slots188352%_)))
                 (_%slots-bind188370%_
                  (let ((__tmp190060
                         (lambda (_%g188362188365%_ _%g188363188367%_)
                           (_%generate-slot-bind185753%_
                            _%$klass188319%_
                            _%g188362188365%_
                            _%g188363188367%_))))
                    (declare (not safe))
                    (##map __tmp190060 _%slots188348%_ _%$slots188352%_)))
                 (_%specializer-lambda-expr188448%_
                  (let* ((_%g188372188386%_
                          (lambda (_%g188373188383%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g188373188383%_))))
                         (_%g188371188445%_
                          (lambda (_%g188373188389%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g188373188389%_))
                                (let ((_%e188376188391%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g188373188389%_))))
                                  (let ((_%hd188377188394%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188376188391%_)))
                                        (_%tl188378188396%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188376188391%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl188378188396%_))
                                        (let ((_%e188379188399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl188378188396%_))))
                                          (let ((_%hd188380188402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e188379188399%_)))
                                                (_%tl188381188404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e188379188399%_))))
                                            ((lambda (_%L188407%_ _%L188408%_)
                                               (let* ((_%self188431%_
                                                       (list-ref
                                                        _%L188408%_
                                                        _%self-index187852%_))
                                                      (_%receiver188436%_
                                                       (let ((_%$e188433%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L188407%_))))
                 (if _%$e188433%_ _%$e188433%_ _%self188431%_)))
              (_%body188442%_
               (map (lambda (_%g188437188439%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver188436%_
                       _%$klass188319%_
                       _%method-calls185842%_
                       _%slot-refs185843%_
                       _%g188437188439%_))
                    _%L188407%_))
              (__tmp190061 (cons '%#lambda (cons _%L188408%_ _%body188442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190061
                                                  _%L188089%_)))
                                             _%tl188381188404%_
                                             _%hd188380188402%_)))
                                        (_%g188372188386%_
                                         _%g188373188389%_))))
                                (_%g188372188386%_ _%g188373188389%_)))))
                    (_%g188371188445%_ _%L188089%_)))
                 (_%specializer-case-lambda-expr188588%_
                  (let* ((_%g188450188469%_
                          (lambda (_%g188451188466%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g188451188466%_))))
                         (_%g188449188585%_
                          (lambda (_%g188451188472%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g188451188472%_))
                                (let ((_%e188453188474%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g188451188472%_))))
                                  (let ((_%hd188454188477%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188453188474%_)))
                                        (_%tl188455188479%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188453188474%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl188455188479%_))
                                        (let ((_g190062_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl188455188479%_
                                                  '0))))
                                          (begin
                                            (let ((_g190063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g190062_)
                                                         (##values-length
                                                          _g190062_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g190063_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g190063_)))
                                            (let ((_%target188456188482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g190062_
                                                      0)))
                                                  (_%tl188458188484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g190062_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl188458188484%_))
                                                  (letrec ((_%loop188459188487%_
                                                            (lambda (_%hd188457188490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause188463188492%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd188457188490%_))
                          (let ((_%e188460188495%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd188457188490%_))))
                            (let ((_%lp-hd188461188498%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188460188495%_)))
                                  (_%lp-tl188462188500%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188460188495%_))))
                              (_%loop188459188487%_
                               _%lp-tl188462188500%_
                               (cons _%lp-hd188461188498%_
                                     _%clause188463188492%_))))
                          (let ((_%clause188464188503%_
                                 (reverse _%clause188463188492%_)))
                            ((lambda (_%L188506%_)
                               (let* ((_%clauses188583%_
                                       (map (lambda (_%clause188520%_)
                                              (let* ((_%g188522188533%_
                                                      (lambda (_%g188523188530%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188523188530%_))))
                                                     (_%g188521188573%_
                                                      (lambda (_%g188523188536%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188523188536%_))
                                                            (let ((_%e188526188538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188523188536%_))))
                      (let ((_%hd188527188541%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188526188538%_)))
                            (_%tl188528188543%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188526188538%_))))
                        ((lambda (_%L188546%_ _%L188547%_)
                           (let* ((_%self188559%_
                                   (list-ref _%L188547%_ _%self-index187852%_))
                                  (_%receiver188564%_
                                   (let ((_%$e188561%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L188546%_))))
                                     (if _%$e188561%_
                                         _%$e188561%_
                                         _%self188559%_)))
                                  (_%body188570%_
                                   (map (lambda (_%g188565188567%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver188564%_
                                           _%$klass188319%_
                                           _%method-calls185842%_
                                           _%slot-refs185843%_
                                           _%g188565188567%_))
                                        _%L188546%_)))
                             (cons _%L188547%_ _%body188570%_)))
                         _%tl188528188543%_
                         _%hd188527188541%_)))
                    (_%g188522188533%_ _%g188523188536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188521188573%_
                                                 _%clause188520%_)))
                                            (let ((__tmp190064
                                                   (lambda (_%g188575188578%_
                                                            _%g188576188580%_)
                                                     (cons _%g188575188578%_
                                                           _%g188576188580%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp190064
                                               '()
                                               _%L188506%_))))
                                      (__tmp190065
                                       (cons '%#case-lambda
                                             _%clauses188583%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp190065
                                  _%L188088%_)))
                             _%clause188464188503%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop188459188487%_
                                                     _%target188456188482%_
                                                     '()))
                                                  (_%g188450188469%_
                                                   _%g188451188472%_)))))
                                        (_%g188450188469%_
                                         _%g188451188472%_))))
                                (_%g188450188469%_ _%g188451188472%_)))))
                    (_%g188449188585%_ _%L188088%_)))
                 (_%specializer-impl188590%_
                  (let ((__tmp190066
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L187552%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L187551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp190067
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L188090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr188448%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr188588%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190067
                                                _%stx185750%_))
                                             '()))
                                 '())
                           (cons _%L187549%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L187548%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp190066 _%stx185750%_)))
                 (_%specializer-impl188592%_
                  (_%generate-specializer-impl185754%_
                   _%$klass188319%_
                   _%$method-table188321%_
                   _%methods-bind188346%_
                   _%slots-bind188370%_
                   _%specializer-impl188590%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp190069
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L185823%_)))
                                                          (__tmp190068
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id188317%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp190069
                                                       '" => "
                                                       __tmp190068))
                                                    (_%generate-specializer-def185755%_
                                                     _%L185823%_
                                                     _%specializer-id188317%_
                                                     _%specializer-impl188592%_))))
                                            _%hd188021188083%_
                                            _%hd188018188075%_
                                            _%hd188015188067%_)
                                           (_%g187997188027%_
                                            _%g187998188030%_))))
                                   (_%g187997188027%_ _%g187998188030%_))
                               (_%g187997188027%_ _%g187998188030%_))
                           (_%g187997188027%_ _%g187998188030%_))))
                   (_%g187997188027%_ _%g187998188030%_))
               (_%g187997188027%_ _%g187998188030%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187997188027%_
                                                _%g187998188030%_))))
                                       (_%g187997188027%_ _%g187998188030%_))))
                               (_%g187997188027%_ _%g187998188030%_))))
                       (_%g187997188027%_ _%g187998188030%_))))
               (_%g187997188027%_ _%g187998188030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g187996188595%_ _%L187550%_))
                                         _%stx185750%_))))
                             _%hd187648187771%_
                             _%kw-ref187646187792%_
                             _%hd187636187758%_
                             _%hd187627187734%_
                             _%hd187618187710%_)
                            (_%g187592187654%_ _%g187593187657%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop187641187776%_
                                                 _%target187638187763%_
                                                 '()))
                                              (_%g187592187654%_
                                               _%g187593187657%_))))
                                      (_%g187592187654%_ _%g187593187657%_)))))
                            (_%g187592187654%_ _%g187593187657%_))
                        (_%g187592187654%_ _%g187593187657%_))
                    (_%g187592187654%_ _%g187593187657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187592187654%_
                                                     _%g187593187657%_))
                                                (_%g187592187654%_
                                                 _%g187593187657%_))
                                            (_%g187592187654%_
                                             _%g187593187657%_))))
                                    (_%g187592187654%_ _%g187593187657%_))))
                            (_%g187592187654%_ _%g187593187657%_))
                        (_%g187592187654%_ _%g187593187657%_))))
                (_%g187592187654%_ _%g187593187657%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187592187654%_
                                                     _%g187593187657%_))
                                                (_%g187592187654%_
                                                 _%g187593187657%_))))
                                        (_%g187592187654%_
                                         _%g187593187657%_))))
                                (_%g187592187654%_ _%g187593187657%_))
                            (_%g187592187654%_ _%g187593187657%_))))
                    (_%g187592187654%_ _%g187593187657%_))
                (_%g187592187654%_ _%g187593187657%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187592187654%_
                                                     _%g187593187657%_))))
                                            (_%g187592187654%_
                                             _%g187593187657%_))))
                                    (_%g187592187654%_ _%g187593187657%_))
                                (_%g187592187654%_ _%g187593187657%_))
                            (_%g187592187654%_ _%g187593187657%_))))
                    (_%g187592187654%_ _%g187593187657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187592187654%_
                                                     _%g187593187657%_))))
                                            (_%g187592187654%_
                                             _%g187593187657%_))
                                        (_%g187592187654%_ _%g187593187657%_))
                                    (_%g187592187654%_ _%g187593187657%_))))
                            (_%g187592187654%_ _%g187593187657%_)))))
                (_%g187591188599%_ _%L187549%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd187425187543%_
                                                    _%hd187422187535%_
                                                    _%hd187419187527%_
                                                    _%hd187416187519%_
                                                    _%hd187398187471%_)
                                                   (_%g187378187431%_
                                                    _%g187379187434%_))))
                                           (_%g187378187431%_
                                            _%g187379187434%_))
                                       (_%g187378187431%_ _%g187379187434%_))
                                   (_%g187378187431%_ _%g187379187434%_))
                               (_%g187378187431%_ _%g187379187434%_))))
                       (_%g187378187431%_ _%g187379187434%_))
                   (_%g187378187431%_ _%g187379187434%_))
               (_%g187378187431%_ _%g187379187434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187378187431%_
                                                _%g187379187434%_))
                                           (_%g187378187431%_
                                            _%g187379187434%_))))
                                   (_%g187378187431%_ _%g187379187434%_))))
                           (_%g187378187431%_ _%g187379187434%_))))
                   (_%g187378187431%_ _%g187379187434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g187378187431%_
                                                    _%g187379187434%_))
                                               (_%g187378187431%_
                                                _%g187379187434%_))
                                           (_%g187378187431%_
                                            _%g187379187434%_))))
                                   (_%g187378187431%_ _%g187379187434%_))))
                           (_%g187378187431%_ _%g187379187434%_))
                       (_%g187378187431%_ _%g187379187434%_))))
               (_%g187378187431%_ _%g187379187434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187378187431%_
                                                _%g187379187434%_))))
                                       (_%g187378187431%_ _%g187379187434%_))))
                               (_%g187378187431%_ _%g187379187434%_))
                           (_%g187378187431%_ _%g187379187434%_))
                       (_%g187378187431%_ _%g187379187434%_))))
               (_%g187378187431%_ _%g187379187434%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g187377188602%_ _%L185822%_))
                                         _%stx185750%_))))))))
                  (_%__kont188836188837%_ (lambda () _%stx185750%_)))
              (let ((_%__match188865188866%_
                     (lambda (_%e185762185790%_
                              _%hd185763185793%_
                              _%tl185764185795%_
                              _%e185765185798%_
                              _%hd185766185801%_
                              _%tl185767185803%_
                              _%e185768185806%_
                              _%hd185769185809%_
                              _%tl185770185811%_
                              _%e185771185814%_
                              _%hd185772185817%_
                              _%tl185773185819%_)
                       (let ((_%L185822%_ _%hd185772185817%_)
                             (_%L185823%_ _%hd185769185809%_))
                         (if (let ((__tmp190070
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L185823%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp190070))
                             (_%__kont188834188835%_ _%L185822%_ _%L185823%_)
                             (_%__kont188836188837%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx188832188833%_))
                    (let ((_%e185762185790%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx188832188833%_))))
                      (let ((_%tl185764185795%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185762185790%_)))
                            (_%hd185763185793%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185762185790%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl185764185795%_))
                            (let ((_%e185765185798%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl185764185795%_))))
                              (let ((_%tl185767185803%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e185765185798%_)))
                                    (_%hd185766185801%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e185765185798%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd185766185801%_))
                                    (let ((_%e185768185806%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd185766185801%_))))
                                      (let ((_%tl185770185811%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185768185806%_)))
                                            (_%hd185769185809%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185768185806%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl185770185811%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185767185803%_))
                                                (let ((_%e185771185814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185767185803%_))))
                                                  (let ((_%tl185773185819%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185771185814%_)))
                                                        (_%hd185772185817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185771185814%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185773185819%_))
                                                        (_%__match188865188866%_
                                                         _%e185762185790%_
                                                         _%hd185763185793%_
                                                         _%tl185764185795%_
                                                         _%e185765185798%_
                                                         _%hd185766185801%_
                                                         _%tl185767185803%_
                                                         _%e185768185806%_
                                                         _%hd185769185809%_
                                                         _%tl185770185811%_
                                                         _%e185771185814%_
                                                         _%hd185772185817%_
                                                         _%tl185773185819%_)
                                                        (_%__kont188836188837%_))))
                                                (_%__kont188836188837%_))
                                            (_%__kont188836188837%_))))
                                    (_%__kont188836188837%_))))
                            (_%__kont188836188837%_))))
                    (_%__kont188836188837%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self185602%_ _%stx185603%_)
        (let* ((_%__stx188868188869%_ _%stx185603%_)
               (_%g185606185639%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx188868188869%_)))))
          (let ((_%__kont188870188871%_ (lambda (_%L185729%_) _%L185729%_))
                (_%__kont188872188873%_
                 (lambda (_%L185668%_ _%L185669%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self185602%_ _%L185668%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx188868188869%_))
                (let ((_%e185609185689%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx188868188869%_))))
                  (let ((_%tl185611185694%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e185609185689%_)))
                        (_%hd185610185692%_
                         (let ()
                           (declare (not safe))
                           (##car _%e185609185689%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl185611185694%_))
                        (let ((_%e185612185697%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl185611185694%_))))
                          (let ((_%tl185614185702%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185612185697%_)))
                                (_%hd185613185700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185612185697%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd185613185700%_))
                                (let ((_%e185615185705%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd185613185700%_))))
                                  (let ((_%tl185617185710%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185615185705%_)))
                                        (_%hd185616185708%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185615185705%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd185616185708%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd185616185708%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185617185710%_))
                                                (let ((_%e185618185713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185617185710%_))))
                                                  (let ((_%tl185620185718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185618185713%_)))
                                                        (_%hd185619185716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185618185713%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185620185718%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl185614185702%_))
                                                            (let ((_%e185621185721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl185614185702%_))))
                      (let ((_%tl185623185726%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185621185721%_)))
                            (_%hd185622185724%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185621185721%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl185623185726%_))
                            (_%__kont188870188871%_ _%hd185619185716%_)
                            (let ()
                              (declare (not safe))
                              (_%g185606185639%_)))))
                    (let () (declare (not safe)) (_%g185606185639%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl185614185702%_))
                    (let ((_%e185632185660%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl185614185702%_))))
                      (let ((_%tl185634185665%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185632185660%_)))
                            (_%hd185633185663%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185632185660%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl185634185665%_))
                            (_%__kont188872188873%_
                             _%hd185633185663%_
                             _%hd185613185700%_)
                            (let ()
                              (declare (not safe))
                              (_%g185606185639%_)))))
                    (let () (declare (not safe)) (_%g185606185639%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl185614185702%_))
                                                    (let ((_%e185632185660%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl185614185702%_))))
                                                      (let ((_%tl185634185665%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e185632185660%_)))
                    (_%hd185633185663%_
                     (let () (declare (not safe)) (##car _%e185632185660%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl185634185665%_))
                    (_%__kont188872188873%_
                     _%hd185633185663%_
                     _%hd185613185700%_)
                    (let () (declare (not safe)) (_%g185606185639%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g185606185639%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185614185702%_))
                                                (let ((_%e185632185660%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185614185702%_))))
                                                  (let ((_%tl185634185665%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185632185660%_)))
                                                        (_%hd185633185663%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185632185660%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185634185665%_))
                                                        (_%__kont188872188873%_
                                                         _%hd185633185663%_
                                                         _%hd185613185700%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g185606185639%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g185606185639%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl185614185702%_))
                                            (let ((_%e185632185660%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl185614185702%_))))
                                              (let ((_%tl185634185665%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e185632185660%_)))
                                                    (_%hd185633185663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e185632185660%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl185634185665%_))
                                                    (_%__kont188872188873%_
                                                     _%hd185633185663%_
                                                     _%hd185613185700%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g185606185639%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g185606185639%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl185614185702%_))
                                    (let ((_%e185632185660%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl185614185702%_))))
                                      (let ((_%tl185634185665%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185632185660%_)))
                                            (_%hd185633185663%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185632185660%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl185634185665%_))
                                            (_%__kont188872188873%_
                                             _%hd185633185663%_
                                             _%hd185613185700%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g185606185639%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g185606185639%_))))))
                        (let () (declare (not safe)) (_%g185606185639%_)))))
                (let () (declare (not safe)) (_%g185606185639%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self185518%_ _%stx185519%_)
        (let* ((_%g185521185542%_
                (lambda (_%g185522185539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g185522185539%_))))
               (_%g185520185599%_
                (lambda (_%g185522185545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g185522185545%_))
                      (let ((_%e185526185547%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g185522185545%_))))
                        (let ((_%hd185527185550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185526185547%_)))
                              (_%tl185528185552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185526185547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl185528185552%_))
                              (let ((_%e185529185555%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl185528185552%_))))
                                (let ((_%hd185530185558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e185529185555%_)))
                                      (_%tl185531185560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e185529185555%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185531185560%_))
                                      (let ((_%e185532185563%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185531185560%_))))
                                        (let ((_%hd185533185566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185532185563%_)))
                                              (_%tl185534185568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185532185563%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185534185568%_))
                                              (let ((_%e185535185571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl185534185568%_))))
                                                (let ((_%hd185536185574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185535185571%_)))
                                                      (_%tl185537185576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185535185571%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl185537185576%_))
                                                      ((lambda (_%L185579%_
                                                                _%L185580%_
                                                                _%L185581%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self185518%_
                                                            _%L185580%_)))
                                                       _%hd185536185574%_
                                                       _%hd185533185566%_
                                                       _%hd185530185558%_)
                                                      (_%g185521185542%_
                                                       _%g185522185545%_))))
                                              (_%g185521185542%_
                                               _%g185522185545%_))))
                                      (_%g185521185542%_ _%g185522185545%_))))
                              (_%g185521185542%_ _%g185522185545%_))))
                      (_%g185521185542%_ _%g185522185545%_)))))
          (_%g185520185599%_ _%stx185519%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self184479%_ _%stx184480%_)
        (let* ((_%__stx188934188935%_ _%stx184480%_)
               (_%g184488184710%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx188934188935%_)))))
          (let ((_%__kont188936188937%_
                 (lambda (_%L185467%_ _%L185468%_ _%L185469%_ _%L185470%_)
                   (let ((__tmp190072
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184479%_ 'methods)))
                         (__tmp190071
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185468%_))))
                     (declare (not safe))
                     (hash-put! __tmp190072 __tmp190071 '#t))
                   (for-each
                    (lambda (_%g185503185505%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self184479%_ _%g185503185505%_)))
                    (let ((__tmp190073
                           (lambda (_%g185507185510%_ _%g185508185512%_)
                             (cons _%g185507185510%_ _%g185508185512%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190073 '() _%L185467%_)))))
                (_%__kont188940188941%_
                 (lambda (_%L185302%_
                          _%L185303%_
                          _%L185304%_
                          _%L185305%_
                          _%L185306%_)
                   (let ((__tmp190075
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184479%_ 'methods)))
                         (__tmp190074
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185303%_))))
                     (declare (not safe))
                     (hash-put! __tmp190075 __tmp190074 '#t))
                   (for-each
                    (lambda (_%g185346185348%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self184479%_ _%g185346185348%_)))
                    (let ((__tmp190076
                           (lambda (_%g185350185353%_ _%g185351185355%_)
                             (cons _%g185350185353%_ _%g185351185355%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190076 '() _%L185302%_)))))
                (_%__kont188944188945%_
                 (lambda (_%L185135%_ _%L185136%_ _%L185137%_)
                   (let ((__tmp190078
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184479%_ 'slots)))
                         (__tmp190077
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185135%_))))
                     (declare (not safe))
                     (hash-put! __tmp190078 __tmp190077 '#t))))
                (_%__kont188946188947%_
                 (lambda (_%L185012%_ _%L185013%_ _%L185014%_ _%L185015%_)
                   (let ((__tmp190080
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184479%_ 'slots)))
                         (__tmp190079
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L185013%_))))
                     (declare (not safe))
                     (hash-put! __tmp190080 __tmp190079 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self184479%_ _%L185012%_))))
                (_%__kont188948188949%_
                 (lambda (_%L184886%_ _%L184887%_)
                   (let* ((_%accessor184909%_
                           (let ((__tmp190081
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L184887%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp190081)))
                          (_%klass184911%_
                           (let ((__tmp190082
                                  (##structure-ref
                                   _%accessor184909%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx184480%_
                              __tmp190082)))
                          (_%slot184913%_
                           (##structure-ref
                            _%accessor184909%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor184909%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass184911%_
                                    _%slot184913%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass184911%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp190084
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self184479%_ 'slots)))
                               (__tmp190083
                                (##structure-ref
                                 _%accessor184909%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp190084 __tmp190083 '#t))))))
                (_%__kont188950188951%_
                 (lambda (_%L184786%_ _%L184787%_ _%L184788%_)
                   (let* ((_%mutator184815%_
                           (let ((__tmp190085
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L184788%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp190085)))
                          (_%klass184817%_
                           (let ((__tmp190086
                                  (##structure-ref
                                   _%mutator184815%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx184480%_
                              __tmp190086)))
                          (_%slot184819%_
                           (##structure-ref
                            _%mutator184815%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator184815%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass184817%_
                                    _%slot184819%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass184817%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp190087
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self184479%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp190087 _%slot184819%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self184479%_ _%L184786%_)))))
                (_%__kont188952188953%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self184479%_ _%stx184480%_)))))
            (let* ((_%__match189433189434%_
                    (lambda (_%e184682184722%_
                             _%hd184683184725%_
                             _%tl184684184727%_
                             _%e184685184730%_
                             _%hd184686184733%_
                             _%tl184687184735%_
                             _%e184688184738%_
                             _%hd184689184741%_
                             _%tl184690184743%_
                             _%e184691184746%_
                             _%hd184692184749%_
                             _%tl184693184751%_
                             _%e184694184754%_
                             _%hd184695184757%_
                             _%tl184696184759%_
                             _%e184697184762%_
                             _%hd184698184765%_
                             _%tl184699184767%_
                             _%e184700184770%_
                             _%hd184701184773%_
                             _%tl184702184775%_
                             _%e184703184778%_
                             _%hd184704184781%_
                             _%tl184705184783%_)
                      (let ((_%L184786%_ _%hd184704184781%_)
                            (_%L184787%_ _%hd184701184773%_)
                            (_%L184788%_ _%hd184692184749%_))
                        (if (and (let ((__tmp190088
                                        (let ((__tmp190089
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L184788%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp190089))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp190088
                                    'gxc#!mutator::t))
                                 (let ((__tmp190090
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184479%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L184787%_
                                    __tmp190090)))
                            (_%__kont188950188951%_
                             _%L184786%_
                             _%L184787%_
                             _%L184788%_)
                            (_%__kont188952188953%_)))))
                   (_%__match189431189432%_
                    (lambda (_%e184682184722%_
                             _%hd184683184725%_
                             _%tl184684184727%_
                             _%e184685184730%_
                             _%hd184686184733%_
                             _%tl184687184735%_
                             _%e184688184738%_
                             _%hd184689184741%_
                             _%tl184690184743%_
                             _%e184691184746%_
                             _%hd184692184749%_
                             _%tl184693184751%_
                             _%e184694184754%_
                             _%hd184695184757%_
                             _%tl184696184759%_
                             _%e184697184762%_
                             _%hd184698184765%_
                             _%tl184699184767%_
                             _%e184700184770%_
                             _%hd184701184773%_
                             _%tl184702184775%_
                             _%e184703184778%_
                             _%hd184704184781%_
                             _%tl184705184783%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184705184783%_))
                          (_%__match189433189434%_
                           _%e184682184722%_
                           _%hd184683184725%_
                           _%tl184684184727%_
                           _%e184685184730%_
                           _%hd184686184733%_
                           _%tl184687184735%_
                           _%e184688184738%_
                           _%hd184689184741%_
                           _%tl184690184743%_
                           _%e184691184746%_
                           _%hd184692184749%_
                           _%tl184693184751%_
                           _%e184694184754%_
                           _%hd184695184757%_
                           _%tl184696184759%_
                           _%e184697184762%_
                           _%hd184698184765%_
                           _%tl184699184767%_
                           _%e184700184770%_
                           _%hd184701184773%_
                           _%tl184702184775%_
                           _%e184703184778%_
                           _%hd184704184781%_
                           _%tl184705184783%_)
                          (_%__kont188952188953%_))))
                   (_%__match189425189426%_
                    (lambda (_%e184682184722%_
                             _%hd184683184725%_
                             _%tl184684184727%_
                             _%e184685184730%_
                             _%hd184686184733%_
                             _%tl184687184735%_
                             _%e184688184738%_
                             _%hd184689184741%_
                             _%tl184690184743%_
                             _%e184691184746%_
                             _%hd184692184749%_
                             _%tl184693184751%_
                             _%e184694184754%_
                             _%hd184695184757%_
                             _%tl184696184759%_
                             _%e184697184762%_
                             _%hd184698184765%_
                             _%tl184699184767%_
                             _%e184700184770%_
                             _%hd184701184773%_
                             _%tl184702184775%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184696184759%_))
                          (let ((_%e184703184778%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184696184759%_))))
                            (let ((_%tl184705184783%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184703184778%_)))
                                  (_%hd184704184781%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184703184778%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184705184783%_))
                                  (_%__match189433189434%_
                                   _%e184682184722%_
                                   _%hd184683184725%_
                                   _%tl184684184727%_
                                   _%e184685184730%_
                                   _%hd184686184733%_
                                   _%tl184687184735%_
                                   _%e184688184738%_
                                   _%hd184689184741%_
                                   _%tl184690184743%_
                                   _%e184691184746%_
                                   _%hd184692184749%_
                                   _%tl184693184751%_
                                   _%e184694184754%_
                                   _%hd184695184757%_
                                   _%tl184696184759%_
                                   _%e184697184762%_
                                   _%hd184698184765%_
                                   _%tl184699184767%_
                                   _%e184700184770%_
                                   _%hd184701184773%_
                                   _%tl184702184775%_
                                   _%e184703184778%_
                                   _%hd184704184781%_
                                   _%tl184705184783%_)
                                  (_%__kont188952188953%_))))
                          (_%__kont188952188953%_))))
                   (_%__match189371189372%_
                    (lambda (_%e184658184830%_
                             _%hd184659184833%_
                             _%tl184660184835%_
                             _%e184661184838%_
                             _%hd184662184841%_
                             _%tl184663184843%_
                             _%e184664184846%_
                             _%hd184665184849%_
                             _%tl184666184851%_
                             _%e184667184854%_
                             _%hd184668184857%_
                             _%tl184669184859%_
                             _%e184670184862%_
                             _%hd184671184865%_
                             _%tl184672184867%_
                             _%e184673184870%_
                             _%hd184674184873%_
                             _%tl184675184875%_
                             _%e184676184878%_
                             _%hd184677184881%_
                             _%tl184678184883%_)
                      (let ((_%L184886%_ _%hd184677184881%_)
                            (_%L184887%_ _%hd184668184857%_))
                        (if (and (let ((__tmp190091
                                        (let ((__tmp190092
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L184887%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp190092))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp190091
                                    'gxc#!accessor::t))
                                 (let ((__tmp190093
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184479%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L184886%_
                                    __tmp190093)))
                            (_%__kont188948188949%_ _%L184886%_ _%L184887%_)
                            (_%__kont188952188953%_)))))
                   (_%__match189369189370%_
                    (lambda (_%e184658184830%_
                             _%hd184659184833%_
                             _%tl184660184835%_
                             _%e184661184838%_
                             _%hd184662184841%_
                             _%tl184663184843%_
                             _%e184664184846%_
                             _%hd184665184849%_
                             _%tl184666184851%_
                             _%e184667184854%_
                             _%hd184668184857%_
                             _%tl184669184859%_
                             _%e184670184862%_
                             _%hd184671184865%_
                             _%tl184672184867%_
                             _%e184673184870%_
                             _%hd184674184873%_
                             _%tl184675184875%_
                             _%e184676184878%_
                             _%hd184677184881%_
                             _%tl184678184883%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184672184867%_))
                          (_%__match189371189372%_
                           _%e184658184830%_
                           _%hd184659184833%_
                           _%tl184660184835%_
                           _%e184661184838%_
                           _%hd184662184841%_
                           _%tl184663184843%_
                           _%e184664184846%_
                           _%hd184665184849%_
                           _%tl184666184851%_
                           _%e184667184854%_
                           _%hd184668184857%_
                           _%tl184669184859%_
                           _%e184670184862%_
                           _%hd184671184865%_
                           _%tl184672184867%_
                           _%e184673184870%_
                           _%hd184674184873%_
                           _%tl184675184875%_
                           _%e184676184878%_
                           _%hd184677184881%_
                           _%tl184678184883%_)
                          (_%__match189425189426%_
                           _%e184658184830%_
                           _%hd184659184833%_
                           _%tl184660184835%_
                           _%e184661184838%_
                           _%hd184662184841%_
                           _%tl184663184843%_
                           _%e184664184846%_
                           _%hd184665184849%_
                           _%tl184666184851%_
                           _%e184667184854%_
                           _%hd184668184857%_
                           _%tl184669184859%_
                           _%e184670184862%_
                           _%hd184671184865%_
                           _%tl184672184867%_
                           _%e184673184870%_
                           _%hd184674184873%_
                           _%tl184675184875%_
                           _%e184676184878%_
                           _%hd184677184881%_
                           _%tl184678184883%_))))
                   (_%__match189315189316%_
                    (lambda (_%e184623184924%_
                             _%hd184624184927%_
                             _%tl184625184929%_
                             _%e184626184932%_
                             _%hd184627184935%_
                             _%tl184628184937%_
                             _%e184629184940%_
                             _%hd184630184943%_
                             _%tl184631184945%_
                             _%e184632184948%_
                             _%hd184633184951%_
                             _%tl184634184953%_
                             _%e184635184956%_
                             _%hd184636184959%_
                             _%tl184637184961%_
                             _%e184638184964%_
                             _%hd184639184967%_
                             _%tl184640184969%_
                             _%e184641184972%_
                             _%hd184642184975%_
                             _%tl184643184977%_
                             _%e184644184980%_
                             _%hd184645184983%_
                             _%tl184646184985%_
                             _%e184647184988%_
                             _%hd184648184991%_
                             _%tl184649184993%_
                             _%e184650184996%_
                             _%hd184651184999%_
                             _%tl184652185001%_
                             _%e184653185004%_
                             _%hd184654185007%_
                             _%tl184655185009%_)
                      (let ((_%L185012%_ _%hd184654185007%_)
                            (_%L185013%_ _%hd184651184999%_)
                            (_%L185014%_ _%hd184642184975%_)
                            (_%L185015%_ _%hd184633184951%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185015%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185015%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp190094
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184479%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L185014%_
                                    __tmp190094)))
                            (_%__kont188946188947%_
                             _%L185012%_
                             _%L185013%_
                             _%L185014%_
                             _%L185015%_)
                            (_%__kont188952188953%_)))))
                   (_%__match189307189308%_
                    (lambda (_%e184623184924%_
                             _%hd184624184927%_
                             _%tl184625184929%_
                             _%e184626184932%_
                             _%hd184627184935%_
                             _%tl184628184937%_
                             _%e184629184940%_
                             _%hd184630184943%_
                             _%tl184631184945%_
                             _%e184632184948%_
                             _%hd184633184951%_
                             _%tl184634184953%_
                             _%e184635184956%_
                             _%hd184636184959%_
                             _%tl184637184961%_
                             _%e184638184964%_
                             _%hd184639184967%_
                             _%tl184640184969%_
                             _%e184641184972%_
                             _%hd184642184975%_
                             _%tl184643184977%_
                             _%e184644184980%_
                             _%hd184645184983%_
                             _%tl184646184985%_
                             _%e184647184988%_
                             _%hd184648184991%_
                             _%tl184649184993%_
                             _%e184650184996%_
                             _%hd184651184999%_
                             _%tl184652185001%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184646184985%_))
                          (let ((_%e184653185004%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184646184985%_))))
                            (let ((_%tl184655185009%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184653185004%_)))
                                  (_%hd184654185007%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184653185004%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184655185009%_))
                                  (_%__match189315189316%_
                                   _%e184623184924%_
                                   _%hd184624184927%_
                                   _%tl184625184929%_
                                   _%e184626184932%_
                                   _%hd184627184935%_
                                   _%tl184628184937%_
                                   _%e184629184940%_
                                   _%hd184630184943%_
                                   _%tl184631184945%_
                                   _%e184632184948%_
                                   _%hd184633184951%_
                                   _%tl184634184953%_
                                   _%e184635184956%_
                                   _%hd184636184959%_
                                   _%tl184637184961%_
                                   _%e184638184964%_
                                   _%hd184639184967%_
                                   _%tl184640184969%_
                                   _%e184641184972%_
                                   _%hd184642184975%_
                                   _%tl184643184977%_
                                   _%e184644184980%_
                                   _%hd184645184983%_
                                   _%tl184646184985%_
                                   _%e184647184988%_
                                   _%hd184648184991%_
                                   _%tl184649184993%_
                                   _%e184650184996%_
                                   _%hd184651184999%_
                                   _%tl184652185001%_
                                   _%e184653185004%_
                                   _%hd184654185007%_
                                   _%tl184655185009%_)
                                  (_%__kont188952188953%_))))
                          (_%__match189431189432%_
                           _%e184623184924%_
                           _%hd184624184927%_
                           _%tl184625184929%_
                           _%e184626184932%_
                           _%hd184627184935%_
                           _%tl184628184937%_
                           _%e184629184940%_
                           _%hd184630184943%_
                           _%tl184631184945%_
                           _%e184632184948%_
                           _%hd184633184951%_
                           _%tl184634184953%_
                           _%e184635184956%_
                           _%hd184636184959%_
                           _%tl184637184961%_
                           _%e184638184964%_
                           _%hd184639184967%_
                           _%tl184640184969%_
                           _%e184641184972%_
                           _%hd184642184975%_
                           _%tl184643184977%_
                           _%e184644184980%_
                           _%hd184645184983%_
                           _%tl184646184985%_))))
                   (_%__match189229189230%_
                    (lambda (_%e184589185055%_
                             _%hd184590185058%_
                             _%tl184591185060%_
                             _%e184592185063%_
                             _%hd184593185066%_
                             _%tl184594185068%_
                             _%e184595185071%_
                             _%hd184596185074%_
                             _%tl184597185076%_
                             _%e184598185079%_
                             _%hd184599185082%_
                             _%tl184600185084%_
                             _%e184601185087%_
                             _%hd184602185090%_
                             _%tl184603185092%_
                             _%e184604185095%_
                             _%hd184605185098%_
                             _%tl184606185100%_
                             _%e184607185103%_
                             _%hd184608185106%_
                             _%tl184609185108%_
                             _%e184610185111%_
                             _%hd184611185114%_
                             _%tl184612185116%_
                             _%e184613185119%_
                             _%hd184614185122%_
                             _%tl184615185124%_
                             _%e184616185127%_
                             _%hd184617185130%_
                             _%tl184618185132%_)
                      (let ((_%L185135%_ _%hd184617185130%_)
                            (_%L185136%_ _%hd184608185106%_)
                            (_%L185137%_ _%hd184599185082%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185137%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L185137%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp190095
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184479%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L185136%_
                                    __tmp190095)))
                            (_%__kont188944188945%_
                             _%L185135%_
                             _%L185136%_
                             _%L185137%_)
                            (_%__match189433189434%_
                             _%e184589185055%_
                             _%hd184590185058%_
                             _%tl184591185060%_
                             _%e184592185063%_
                             _%hd184593185066%_
                             _%tl184594185068%_
                             _%e184595185071%_
                             _%hd184596185074%_
                             _%tl184597185076%_
                             _%e184598185079%_
                             _%hd184599185082%_
                             _%tl184600185084%_
                             _%e184601185087%_
                             _%hd184602185090%_
                             _%tl184603185092%_
                             _%e184604185095%_
                             _%hd184605185098%_
                             _%tl184606185100%_
                             _%e184607185103%_
                             _%hd184608185106%_
                             _%tl184609185108%_
                             _%e184610185111%_
                             _%hd184611185114%_
                             _%tl184612185116%_)))))
                   (_%__match189227189228%_
                    (lambda (_%e184589185055%_
                             _%hd184590185058%_
                             _%tl184591185060%_
                             _%e184592185063%_
                             _%hd184593185066%_
                             _%tl184594185068%_
                             _%e184595185071%_
                             _%hd184596185074%_
                             _%tl184597185076%_
                             _%e184598185079%_
                             _%hd184599185082%_
                             _%tl184600185084%_
                             _%e184601185087%_
                             _%hd184602185090%_
                             _%tl184603185092%_
                             _%e184604185095%_
                             _%hd184605185098%_
                             _%tl184606185100%_
                             _%e184607185103%_
                             _%hd184608185106%_
                             _%tl184609185108%_
                             _%e184610185111%_
                             _%hd184611185114%_
                             _%tl184612185116%_
                             _%e184613185119%_
                             _%hd184614185122%_
                             _%tl184615185124%_
                             _%e184616185127%_
                             _%hd184617185130%_
                             _%tl184618185132%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184612185116%_))
                          (_%__match189229189230%_
                           _%e184589185055%_
                           _%hd184590185058%_
                           _%tl184591185060%_
                           _%e184592185063%_
                           _%hd184593185066%_
                           _%tl184594185068%_
                           _%e184595185071%_
                           _%hd184596185074%_
                           _%tl184597185076%_
                           _%e184598185079%_
                           _%hd184599185082%_
                           _%tl184600185084%_
                           _%e184601185087%_
                           _%hd184602185090%_
                           _%tl184603185092%_
                           _%e184604185095%_
                           _%hd184605185098%_
                           _%tl184606185100%_
                           _%e184607185103%_
                           _%hd184608185106%_
                           _%tl184609185108%_
                           _%e184610185111%_
                           _%hd184611185114%_
                           _%tl184612185116%_
                           _%e184613185119%_
                           _%hd184614185122%_
                           _%tl184615185124%_
                           _%e184616185127%_
                           _%hd184617185130%_
                           _%tl184618185132%_)
                          (_%__match189307189308%_
                           _%e184589185055%_
                           _%hd184590185058%_
                           _%tl184591185060%_
                           _%e184592185063%_
                           _%hd184593185066%_
                           _%tl184594185068%_
                           _%e184595185071%_
                           _%hd184596185074%_
                           _%tl184597185076%_
                           _%e184598185079%_
                           _%hd184599185082%_
                           _%tl184600185084%_
                           _%e184601185087%_
                           _%hd184602185090%_
                           _%tl184603185092%_
                           _%e184604185095%_
                           _%hd184605185098%_
                           _%tl184606185100%_
                           _%e184607185103%_
                           _%hd184608185106%_
                           _%tl184609185108%_
                           _%e184610185111%_
                           _%hd184611185114%_
                           _%tl184612185116%_
                           _%e184613185119%_
                           _%hd184614185122%_
                           _%tl184615185124%_
                           _%e184616185127%_
                           _%hd184617185130%_
                           _%tl184618185132%_))))
                   (_%__match189217189218%_
                    (lambda (_%e184589185055%_
                             _%hd184590185058%_
                             _%tl184591185060%_
                             _%e184592185063%_
                             _%hd184593185066%_
                             _%tl184594185068%_
                             _%e184595185071%_
                             _%hd184596185074%_
                             _%tl184597185076%_
                             _%e184598185079%_
                             _%hd184599185082%_
                             _%tl184600185084%_
                             _%e184601185087%_
                             _%hd184602185090%_
                             _%tl184603185092%_
                             _%e184604185095%_
                             _%hd184605185098%_
                             _%tl184606185100%_
                             _%e184607185103%_
                             _%hd184608185106%_
                             _%tl184609185108%_
                             _%e184610185111%_
                             _%hd184611185114%_
                             _%tl184612185116%_
                             _%e184613185119%_
                             _%hd184614185122%_
                             _%tl184615185124%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd184614185122%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184615185124%_))
                              (let ((_%e184616185127%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184615185124%_))))
                                (let ((_%tl184618185132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184616185127%_)))
                                      (_%hd184617185130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184616185127%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184618185132%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl184612185116%_))
                                          (_%__match189229189230%_
                                           _%e184589185055%_
                                           _%hd184590185058%_
                                           _%tl184591185060%_
                                           _%e184592185063%_
                                           _%hd184593185066%_
                                           _%tl184594185068%_
                                           _%e184595185071%_
                                           _%hd184596185074%_
                                           _%tl184597185076%_
                                           _%e184598185079%_
                                           _%hd184599185082%_
                                           _%tl184600185084%_
                                           _%e184601185087%_
                                           _%hd184602185090%_
                                           _%tl184603185092%_
                                           _%e184604185095%_
                                           _%hd184605185098%_
                                           _%tl184606185100%_
                                           _%e184607185103%_
                                           _%hd184608185106%_
                                           _%tl184609185108%_
                                           _%e184610185111%_
                                           _%hd184611185114%_
                                           _%tl184612185116%_
                                           _%e184613185119%_
                                           _%hd184614185122%_
                                           _%tl184615185124%_
                                           _%e184616185127%_
                                           _%hd184617185130%_
                                           _%tl184618185132%_)
                                          (_%__match189307189308%_
                                           _%e184589185055%_
                                           _%hd184590185058%_
                                           _%tl184591185060%_
                                           _%e184592185063%_
                                           _%hd184593185066%_
                                           _%tl184594185068%_
                                           _%e184595185071%_
                                           _%hd184596185074%_
                                           _%tl184597185076%_
                                           _%e184598185079%_
                                           _%hd184599185082%_
                                           _%tl184600185084%_
                                           _%e184601185087%_
                                           _%hd184602185090%_
                                           _%tl184603185092%_
                                           _%e184604185095%_
                                           _%hd184605185098%_
                                           _%tl184606185100%_
                                           _%e184607185103%_
                                           _%hd184608185106%_
                                           _%tl184609185108%_
                                           _%e184610185111%_
                                           _%hd184611185114%_
                                           _%tl184612185116%_
                                           _%e184613185119%_
                                           _%hd184614185122%_
                                           _%tl184615185124%_
                                           _%e184616185127%_
                                           _%hd184617185130%_
                                           _%tl184618185132%_))
                                      (_%__match189431189432%_
                                       _%e184589185055%_
                                       _%hd184590185058%_
                                       _%tl184591185060%_
                                       _%e184592185063%_
                                       _%hd184593185066%_
                                       _%tl184594185068%_
                                       _%e184595185071%_
                                       _%hd184596185074%_
                                       _%tl184597185076%_
                                       _%e184598185079%_
                                       _%hd184599185082%_
                                       _%tl184600185084%_
                                       _%e184601185087%_
                                       _%hd184602185090%_
                                       _%tl184603185092%_
                                       _%e184604185095%_
                                       _%hd184605185098%_
                                       _%tl184606185100%_
                                       _%e184607185103%_
                                       _%hd184608185106%_
                                       _%tl184609185108%_
                                       _%e184610185111%_
                                       _%hd184611185114%_
                                       _%tl184612185116%_))))
                              (_%__match189431189432%_
                               _%e184589185055%_
                               _%hd184590185058%_
                               _%tl184591185060%_
                               _%e184592185063%_
                               _%hd184593185066%_
                               _%tl184594185068%_
                               _%e184595185071%_
                               _%hd184596185074%_
                               _%tl184597185076%_
                               _%e184598185079%_
                               _%hd184599185082%_
                               _%tl184600185084%_
                               _%e184601185087%_
                               _%hd184602185090%_
                               _%tl184603185092%_
                               _%e184604185095%_
                               _%hd184605185098%_
                               _%tl184606185100%_
                               _%e184607185103%_
                               _%hd184608185106%_
                               _%tl184609185108%_
                               _%e184610185111%_
                               _%hd184611185114%_
                               _%tl184612185116%_))
                          (_%__match189431189432%_
                           _%e184589185055%_
                           _%hd184590185058%_
                           _%tl184591185060%_
                           _%e184592185063%_
                           _%hd184593185066%_
                           _%tl184594185068%_
                           _%e184595185071%_
                           _%hd184596185074%_
                           _%tl184597185076%_
                           _%e184598185079%_
                           _%hd184599185082%_
                           _%tl184600185084%_
                           _%e184601185087%_
                           _%hd184602185090%_
                           _%tl184603185092%_
                           _%e184604185095%_
                           _%hd184605185098%_
                           _%tl184606185100%_
                           _%e184607185103%_
                           _%hd184608185106%_
                           _%tl184609185108%_
                           _%e184610185111%_
                           _%hd184611185114%_
                           _%tl184612185116%_))))
                   (_%__match189149189150%_
                    (lambda (_%e184538185174%_
                             _%hd184539185177%_
                             _%tl184540185179%_
                             _%e184541185182%_
                             _%hd184542185185%_
                             _%tl184543185187%_
                             _%e184544185190%_
                             _%hd184545185193%_
                             _%tl184546185195%_
                             _%e184547185198%_
                             _%hd184548185201%_
                             _%tl184549185203%_
                             _%e184550185206%_
                             _%hd184551185209%_
                             _%tl184552185211%_
                             _%e184553185214%_
                             _%hd184554185217%_
                             _%tl184555185219%_
                             _%e184556185222%_
                             _%hd184557185225%_
                             _%tl184558185227%_
                             _%e184559185230%_
                             _%hd184560185233%_
                             _%tl184561185235%_
                             _%e184562185238%_
                             _%hd184563185241%_
                             _%tl184564185243%_
                             _%e184565185246%_
                             _%hd184566185249%_
                             _%tl184567185251%_
                             _%e184568185254%_
                             _%hd184569185257%_
                             _%tl184570185259%_
                             _%e184571185262%_
                             _%hd184572185265%_
                             _%tl184573185267%_
                             _%e184574185270%_
                             _%hd184575185273%_
                             _%tl184576185275%_
                             _%__splice188942188943%_
                             _%target184577185278%_
                             _%tl184579185280%_)
                      (letrec ((_%loop184580185283%_
                                (lambda (_%hd184578185286%_
                                         _%args184584185288%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd184578185286%_))
                                      (let ((_%e184581185291%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd184578185286%_))))
                                        (let ((_%lp-tl184583185296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184581185291%_)))
                                              (_%lp-hd184582185294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184581185291%_))))
                                          (_%loop184580185283%_
                                           _%lp-tl184583185296%_
                                           (cons _%lp-hd184582185294%_
                                                 _%args184584185288%_))))
                                      (let ((_%args184585185299%_
                                             (reverse _%args184584185288%_)))
                                        (let ((_%L185302%_
                                               _%args184585185299%_)
                                              (_%L185303%_ _%hd184575185273%_)
                                              (_%L185304%_ _%hd184566185249%_)
                                              (_%L185305%_ _%hd184557185225%_)
                                              (_%L185306%_ _%hd184548185201%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L185306%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L185305%_
                                                      'call-method))
                                                   (let ((__tmp190096
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self184479%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L185304%_
                                                      __tmp190096)))
                                              (_%__kont188940188941%_
                                               _%L185302%_
                                               _%L185303%_
                                               _%L185304%_
                                               _%L185305%_
                                               _%L185306%_)
                                              (_%__kont188952188953%_))))))))
                        (_%loop184580185283%_ _%target184577185278%_ '()))))
                   (_%__match189107189108%_
                    (lambda (_%e184538185174%_
                             _%hd184539185177%_
                             _%tl184540185179%_
                             _%e184541185182%_
                             _%hd184542185185%_
                             _%tl184543185187%_
                             _%e184544185190%_
                             _%hd184545185193%_
                             _%tl184546185195%_
                             _%e184547185198%_
                             _%hd184548185201%_
                             _%tl184549185203%_
                             _%e184550185206%_
                             _%hd184551185209%_
                             _%tl184552185211%_
                             _%e184553185214%_
                             _%hd184554185217%_
                             _%tl184555185219%_
                             _%e184556185222%_
                             _%hd184557185225%_
                             _%tl184558185227%_
                             _%e184559185230%_
                             _%hd184560185233%_
                             _%tl184561185235%_
                             _%e184562185238%_
                             _%hd184563185241%_
                             _%tl184564185243%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd184563185241%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184564185243%_))
                              (let ((_%e184565185246%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184564185243%_))))
                                (let ((_%tl184567185251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184565185246%_)))
                                      (_%hd184566185249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184565185246%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184567185251%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl184561185235%_))
                                          (let ((_%e184568185254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl184561185235%_))))
                                            (let ((_%tl184570185259%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e184568185254%_)))
                                                  (_%hd184569185257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e184568185254%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd184569185257%_))
                                                  (let ((_%e184571185262%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd184569185257%_))))
                                                    (let ((_%tl184573185267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184571185262%_)))
                                                          (_%hd184572185265%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184571185262%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd184572185265%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd184572185265%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184573185267%_))
                          (let ((_%e184574185270%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184573185267%_))))
                            (let ((_%tl184576185275%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184574185270%_)))
                                  (_%hd184575185273%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184574185270%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184576185275%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl184570185259%_))
                                      (let ((_%__splice188942188943%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl184570185259%_
                                                '0))))
                                        (let ((_%tl184579185280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice188942188943%_
                                                  '1)))
                                              (_%target184577185278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice188942188943%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl184579185280%_))
                                              (_%__match189149189150%_
                                               _%e184538185174%_
                                               _%hd184539185177%_
                                               _%tl184540185179%_
                                               _%e184541185182%_
                                               _%hd184542185185%_
                                               _%tl184543185187%_
                                               _%e184544185190%_
                                               _%hd184545185193%_
                                               _%tl184546185195%_
                                               _%e184547185198%_
                                               _%hd184548185201%_
                                               _%tl184549185203%_
                                               _%e184550185206%_
                                               _%hd184551185209%_
                                               _%tl184552185211%_
                                               _%e184553185214%_
                                               _%hd184554185217%_
                                               _%tl184555185219%_
                                               _%e184556185222%_
                                               _%hd184557185225%_
                                               _%tl184558185227%_
                                               _%e184559185230%_
                                               _%hd184560185233%_
                                               _%tl184561185235%_
                                               _%e184562185238%_
                                               _%hd184563185241%_
                                               _%tl184564185243%_
                                               _%e184565185246%_
                                               _%hd184566185249%_
                                               _%tl184567185251%_
                                               _%e184568185254%_
                                               _%hd184569185257%_
                                               _%tl184570185259%_
                                               _%e184571185262%_
                                               _%hd184572185265%_
                                               _%tl184573185267%_
                                               _%e184574185270%_
                                               _%hd184575185273%_
                                               _%tl184576185275%_
                                               _%__splice188942188943%_
                                               _%target184577185278%_
                                               _%tl184579185280%_)
                                              (_%__kont188952188953%_))))
                                      (_%__kont188952188953%_))
                                  (_%__kont188952188953%_))))
                          (_%__kont188952188953%_))
                      (_%__kont188952188953%_))
                  (_%__kont188952188953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188952188953%_))))
                                          (_%__match189431189432%_
                                           _%e184538185174%_
                                           _%hd184539185177%_
                                           _%tl184540185179%_
                                           _%e184541185182%_
                                           _%hd184542185185%_
                                           _%tl184543185187%_
                                           _%e184544185190%_
                                           _%hd184545185193%_
                                           _%tl184546185195%_
                                           _%e184547185198%_
                                           _%hd184548185201%_
                                           _%tl184549185203%_
                                           _%e184550185206%_
                                           _%hd184551185209%_
                                           _%tl184552185211%_
                                           _%e184553185214%_
                                           _%hd184554185217%_
                                           _%tl184555185219%_
                                           _%e184556185222%_
                                           _%hd184557185225%_
                                           _%tl184558185227%_
                                           _%e184559185230%_
                                           _%hd184560185233%_
                                           _%tl184561185235%_))
                                      (_%__match189431189432%_
                                       _%e184538185174%_
                                       _%hd184539185177%_
                                       _%tl184540185179%_
                                       _%e184541185182%_
                                       _%hd184542185185%_
                                       _%tl184543185187%_
                                       _%e184544185190%_
                                       _%hd184545185193%_
                                       _%tl184546185195%_
                                       _%e184547185198%_
                                       _%hd184548185201%_
                                       _%tl184549185203%_
                                       _%e184550185206%_
                                       _%hd184551185209%_
                                       _%tl184552185211%_
                                       _%e184553185214%_
                                       _%hd184554185217%_
                                       _%tl184555185219%_
                                       _%e184556185222%_
                                       _%hd184557185225%_
                                       _%tl184558185227%_
                                       _%e184559185230%_
                                       _%hd184560185233%_
                                       _%tl184561185235%_))))
                              (_%__match189431189432%_
                               _%e184538185174%_
                               _%hd184539185177%_
                               _%tl184540185179%_
                               _%e184541185182%_
                               _%hd184542185185%_
                               _%tl184543185187%_
                               _%e184544185190%_
                               _%hd184545185193%_
                               _%tl184546185195%_
                               _%e184547185198%_
                               _%hd184548185201%_
                               _%tl184549185203%_
                               _%e184550185206%_
                               _%hd184551185209%_
                               _%tl184552185211%_
                               _%e184553185214%_
                               _%hd184554185217%_
                               _%tl184555185219%_
                               _%e184556185222%_
                               _%hd184557185225%_
                               _%tl184558185227%_
                               _%e184559185230%_
                               _%hd184560185233%_
                               _%tl184561185235%_))
                          (_%__match189217189218%_
                           _%e184538185174%_
                           _%hd184539185177%_
                           _%tl184540185179%_
                           _%e184541185182%_
                           _%hd184542185185%_
                           _%tl184543185187%_
                           _%e184544185190%_
                           _%hd184545185193%_
                           _%tl184546185195%_
                           _%e184547185198%_
                           _%hd184548185201%_
                           _%tl184549185203%_
                           _%e184550185206%_
                           _%hd184551185209%_
                           _%tl184552185211%_
                           _%e184553185214%_
                           _%hd184554185217%_
                           _%tl184555185219%_
                           _%e184556185222%_
                           _%hd184557185225%_
                           _%tl184558185227%_
                           _%e184559185230%_
                           _%hd184560185233%_
                           _%tl184561185235%_
                           _%e184562185238%_
                           _%hd184563185241%_
                           _%tl184564185243%_))))
                   (_%__match189039189040%_
                    (lambda (_%e184494185363%_
                             _%hd184495185366%_
                             _%tl184496185368%_
                             _%e184497185371%_
                             _%hd184498185374%_
                             _%tl184499185376%_
                             _%e184500185379%_
                             _%hd184501185382%_
                             _%tl184502185384%_
                             _%e184503185387%_
                             _%hd184504185390%_
                             _%tl184505185392%_
                             _%e184506185395%_
                             _%hd184507185398%_
                             _%tl184508185400%_
                             _%e184509185403%_
                             _%hd184510185406%_
                             _%tl184511185408%_
                             _%e184512185411%_
                             _%hd184513185414%_
                             _%tl184514185416%_
                             _%e184515185419%_
                             _%hd184516185422%_
                             _%tl184517185424%_
                             _%e184518185427%_
                             _%hd184519185430%_
                             _%tl184520185432%_
                             _%e184521185435%_
                             _%hd184522185438%_
                             _%tl184523185440%_
                             _%__splice188938188939%_
                             _%target184524185443%_
                             _%tl184526185445%_)
                      (letrec ((_%loop184527185448%_
                                (lambda (_%hd184525185451%_
                                         _%args184531185453%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd184525185451%_))
                                      (let ((_%e184528185456%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd184525185451%_))))
                                        (let ((_%lp-tl184530185461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184528185456%_)))
                                              (_%lp-hd184529185459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184528185456%_))))
                                          (_%loop184527185448%_
                                           _%lp-tl184530185461%_
                                           (cons _%lp-hd184529185459%_
                                                 _%args184531185453%_))))
                                      (let ((_%args184532185464%_
                                             (reverse _%args184531185453%_)))
                                        (let ((_%L185467%_
                                               _%args184532185464%_)
                                              (_%L185468%_ _%hd184522185438%_)
                                              (_%L185469%_ _%hd184513185414%_)
                                              (_%L185470%_ _%hd184504185390%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L185470%_
                                                      'call-method))
                                                   (let ((__tmp190097
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self184479%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L185469%_
                                                      __tmp190097)))
                                              (_%__kont188936188937%_
                                               _%L185467%_
                                               _%L185468%_
                                               _%L185469%_
                                               _%L185470%_)
                                              (_%__match189227189228%_
                                               _%e184494185363%_
                                               _%hd184495185366%_
                                               _%tl184496185368%_
                                               _%e184497185371%_
                                               _%hd184498185374%_
                                               _%tl184499185376%_
                                               _%e184500185379%_
                                               _%hd184501185382%_
                                               _%tl184502185384%_
                                               _%e184503185387%_
                                               _%hd184504185390%_
                                               _%tl184505185392%_
                                               _%e184506185395%_
                                               _%hd184507185398%_
                                               _%tl184508185400%_
                                               _%e184509185403%_
                                               _%hd184510185406%_
                                               _%tl184511185408%_
                                               _%e184512185411%_
                                               _%hd184513185414%_
                                               _%tl184514185416%_
                                               _%e184515185419%_
                                               _%hd184516185422%_
                                               _%tl184517185424%_
                                               _%e184518185427%_
                                               _%hd184519185430%_
                                               _%tl184520185432%_
                                               _%e184521185435%_
                                               _%hd184522185438%_
                                               _%tl184523185440%_))))))))
                        (_%loop184527185448%_ _%target184524185443%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx188934188935%_))
                  (let ((_%e184494185363%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx188934188935%_))))
                    (let ((_%tl184496185368%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184494185363%_)))
                          (_%hd184495185366%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184494185363%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184496185368%_))
                          (let ((_%e184497185371%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184496185368%_))))
                            (let ((_%tl184499185376%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184497185371%_)))
                                  (_%hd184498185374%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184497185371%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd184498185374%_))
                                  (let ((_%e184500185379%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd184498185374%_))))
                                    (let ((_%tl184502185384%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e184500185379%_)))
                                          (_%hd184501185382%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e184500185379%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd184501185382%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd184501185382%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl184502185384%_))
                                                  (let ((_%e184503185387%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl184502185384%_))))
                                                    (let ((_%tl184505185392%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184503185387%_)))
                                                          (_%hd184504185390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184503185387%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl184505185392%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl184499185376%_))
                      (let ((_%e184506185395%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl184499185376%_))))
                        (let ((_%tl184508185400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e184506185395%_)))
                              (_%hd184507185398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e184506185395%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd184507185398%_))
                              (let ((_%e184509185403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd184507185398%_))))
                                (let ((_%tl184511185408%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184509185403%_)))
                                      (_%hd184510185406%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184509185403%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd184510185406%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd184510185406%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl184511185408%_))
                                              (let ((_%e184512185411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl184511185408%_))))
                                                (let ((_%tl184514185416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e184512185411%_)))
                                                      (_%hd184513185414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e184512185411%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl184514185416%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl184508185400%_))
                                                          (let ((_%e184515185419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl184508185400%_))))
                    (let ((_%tl184517185424%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184515185419%_)))
                          (_%hd184516185422%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184515185419%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd184516185422%_))
                          (let ((_%e184518185427%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd184516185422%_))))
                            (let ((_%tl184520185432%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184518185427%_)))
                                  (_%hd184519185430%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184518185427%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd184519185430%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd184519185430%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl184520185432%_))
                                          (let ((_%e184521185435%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl184520185432%_))))
                                            (let ((_%tl184523185440%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e184521185435%_)))
                                                  (_%hd184522185438%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e184521185435%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl184523185440%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl184517185424%_))
                                                      (let ((_%__splice188938188939%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl184517185424%_
                        '0))))
                (let ((_%tl184526185445%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice188938188939%_ '1)))
                      (_%target184524185443%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice188938188939%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl184526185445%_))
                      (_%__match189039189040%_
                       _%e184494185363%_
                       _%hd184495185366%_
                       _%tl184496185368%_
                       _%e184497185371%_
                       _%hd184498185374%_
                       _%tl184499185376%_
                       _%e184500185379%_
                       _%hd184501185382%_
                       _%tl184502185384%_
                       _%e184503185387%_
                       _%hd184504185390%_
                       _%tl184505185392%_
                       _%e184506185395%_
                       _%hd184507185398%_
                       _%tl184508185400%_
                       _%e184509185403%_
                       _%hd184510185406%_
                       _%tl184511185408%_
                       _%e184512185411%_
                       _%hd184513185414%_
                       _%tl184514185416%_
                       _%e184515185419%_
                       _%hd184516185422%_
                       _%tl184517185424%_
                       _%e184518185427%_
                       _%hd184519185430%_
                       _%tl184520185432%_
                       _%e184521185435%_
                       _%hd184522185438%_
                       _%tl184523185440%_
                       _%__splice188938188939%_
                       _%target184524185443%_
                       _%tl184526185445%_)
                      (_%__match189227189228%_
                       _%e184494185363%_
                       _%hd184495185366%_
                       _%tl184496185368%_
                       _%e184497185371%_
                       _%hd184498185374%_
                       _%tl184499185376%_
                       _%e184500185379%_
                       _%hd184501185382%_
                       _%tl184502185384%_
                       _%e184503185387%_
                       _%hd184504185390%_
                       _%tl184505185392%_
                       _%e184506185395%_
                       _%hd184507185398%_
                       _%tl184508185400%_
                       _%e184509185403%_
                       _%hd184510185406%_
                       _%tl184511185408%_
                       _%e184512185411%_
                       _%hd184513185414%_
                       _%tl184514185416%_
                       _%e184515185419%_
                       _%hd184516185422%_
                       _%tl184517185424%_
                       _%e184518185427%_
                       _%hd184519185430%_
                       _%tl184520185432%_
                       _%e184521185435%_
                       _%hd184522185438%_
                       _%tl184523185440%_))))
              (_%__match189227189228%_
               _%e184494185363%_
               _%hd184495185366%_
               _%tl184496185368%_
               _%e184497185371%_
               _%hd184498185374%_
               _%tl184499185376%_
               _%e184500185379%_
               _%hd184501185382%_
               _%tl184502185384%_
               _%e184503185387%_
               _%hd184504185390%_
               _%tl184505185392%_
               _%e184506185395%_
               _%hd184507185398%_
               _%tl184508185400%_
               _%e184509185403%_
               _%hd184510185406%_
               _%tl184511185408%_
               _%e184512185411%_
               _%hd184513185414%_
               _%tl184514185416%_
               _%e184515185419%_
               _%hd184516185422%_
               _%tl184517185424%_
               _%e184518185427%_
               _%hd184519185430%_
               _%tl184520185432%_
               _%e184521185435%_
               _%hd184522185438%_
               _%tl184523185440%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match189431189432%_
                                                   _%e184494185363%_
                                                   _%hd184495185366%_
                                                   _%tl184496185368%_
                                                   _%e184497185371%_
                                                   _%hd184498185374%_
                                                   _%tl184499185376%_
                                                   _%e184500185379%_
                                                   _%hd184501185382%_
                                                   _%tl184502185384%_
                                                   _%e184503185387%_
                                                   _%hd184504185390%_
                                                   _%tl184505185392%_
                                                   _%e184506185395%_
                                                   _%hd184507185398%_
                                                   _%tl184508185400%_
                                                   _%e184509185403%_
                                                   _%hd184510185406%_
                                                   _%tl184511185408%_
                                                   _%e184512185411%_
                                                   _%hd184513185414%_
                                                   _%tl184514185416%_
                                                   _%e184515185419%_
                                                   _%hd184516185422%_
                                                   _%tl184517185424%_))))
                                          (_%__match189431189432%_
                                           _%e184494185363%_
                                           _%hd184495185366%_
                                           _%tl184496185368%_
                                           _%e184497185371%_
                                           _%hd184498185374%_
                                           _%tl184499185376%_
                                           _%e184500185379%_
                                           _%hd184501185382%_
                                           _%tl184502185384%_
                                           _%e184503185387%_
                                           _%hd184504185390%_
                                           _%tl184505185392%_
                                           _%e184506185395%_
                                           _%hd184507185398%_
                                           _%tl184508185400%_
                                           _%e184509185403%_
                                           _%hd184510185406%_
                                           _%tl184511185408%_
                                           _%e184512185411%_
                                           _%hd184513185414%_
                                           _%tl184514185416%_
                                           _%e184515185419%_
                                           _%hd184516185422%_
                                           _%tl184517185424%_))
                                      (_%__match189107189108%_
                                       _%e184494185363%_
                                       _%hd184495185366%_
                                       _%tl184496185368%_
                                       _%e184497185371%_
                                       _%hd184498185374%_
                                       _%tl184499185376%_
                                       _%e184500185379%_
                                       _%hd184501185382%_
                                       _%tl184502185384%_
                                       _%e184503185387%_
                                       _%hd184504185390%_
                                       _%tl184505185392%_
                                       _%e184506185395%_
                                       _%hd184507185398%_
                                       _%tl184508185400%_
                                       _%e184509185403%_
                                       _%hd184510185406%_
                                       _%tl184511185408%_
                                       _%e184512185411%_
                                       _%hd184513185414%_
                                       _%tl184514185416%_
                                       _%e184515185419%_
                                       _%hd184516185422%_
                                       _%tl184517185424%_
                                       _%e184518185427%_
                                       _%hd184519185430%_
                                       _%tl184520185432%_))
                                  (_%__match189431189432%_
                                   _%e184494185363%_
                                   _%hd184495185366%_
                                   _%tl184496185368%_
                                   _%e184497185371%_
                                   _%hd184498185374%_
                                   _%tl184499185376%_
                                   _%e184500185379%_
                                   _%hd184501185382%_
                                   _%tl184502185384%_
                                   _%e184503185387%_
                                   _%hd184504185390%_
                                   _%tl184505185392%_
                                   _%e184506185395%_
                                   _%hd184507185398%_
                                   _%tl184508185400%_
                                   _%e184509185403%_
                                   _%hd184510185406%_
                                   _%tl184511185408%_
                                   _%e184512185411%_
                                   _%hd184513185414%_
                                   _%tl184514185416%_
                                   _%e184515185419%_
                                   _%hd184516185422%_
                                   _%tl184517185424%_))))
                          (_%__match189431189432%_
                           _%e184494185363%_
                           _%hd184495185366%_
                           _%tl184496185368%_
                           _%e184497185371%_
                           _%hd184498185374%_
                           _%tl184499185376%_
                           _%e184500185379%_
                           _%hd184501185382%_
                           _%tl184502185384%_
                           _%e184503185387%_
                           _%hd184504185390%_
                           _%tl184505185392%_
                           _%e184506185395%_
                           _%hd184507185398%_
                           _%tl184508185400%_
                           _%e184509185403%_
                           _%hd184510185406%_
                           _%tl184511185408%_
                           _%e184512185411%_
                           _%hd184513185414%_
                           _%tl184514185416%_
                           _%e184515185419%_
                           _%hd184516185422%_
                           _%tl184517185424%_))))
                  (_%__match189369189370%_
                   _%e184494185363%_
                   _%hd184495185366%_
                   _%tl184496185368%_
                   _%e184497185371%_
                   _%hd184498185374%_
                   _%tl184499185376%_
                   _%e184500185379%_
                   _%hd184501185382%_
                   _%tl184502185384%_
                   _%e184503185387%_
                   _%hd184504185390%_
                   _%tl184505185392%_
                   _%e184506185395%_
                   _%hd184507185398%_
                   _%tl184508185400%_
                   _%e184509185403%_
                   _%hd184510185406%_
                   _%tl184511185408%_
                   _%e184512185411%_
                   _%hd184513185414%_
                   _%tl184514185416%_))
              (_%__kont188952188953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont188952188953%_))
                                          (_%__kont188952188953%_))
                                      (_%__kont188952188953%_))))
                              (_%__kont188952188953%_))))
                      (_%__kont188952188953%_))
                  (_%__kont188952188953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont188952188953%_))
                                              (_%__kont188952188953%_))
                                          (_%__kont188952188953%_))))
                                  (_%__kont188952188953%_))))
                          (_%__kont188952188953%_))))
                  (_%__kont188952188953%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self183418%_ _%stx183419%_)
        (letrec ((_%force-e183421%_
                  (lambda (_%target184477%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target184477%_ '()))
                                      '()))))))
          (let* ((_%__stx189436189437%_ _%stx183419%_)
                 (_%g183429183651%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189436189437%_)))))
            (let ((_%__kont189438189439%_
                   (lambda (_%L184423%_ _%L184424%_ _%L184425%_ _%L184426%_)
                     (let ((_%$method184471%_
                            (let ((__tmp190099
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183418%_ 'methods)))
                                  (__tmp190098
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L184424%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190099 __tmp190098)))
                           (_%args184472%_
                            (map (lambda (_%g184459184461%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self183418%_
                                      _%g184459184461%_)))
                                 (let ((__tmp190100
                                        (lambda (_%g184463184466%_
                                                 _%g184464184468%_)
                                          (cons _%g184463184466%_
                                                _%g184464184468%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp190100 '() _%L184423%_)))))
                       (let ((__tmp190101
                              (cons '%#call
                                    (cons (_%force-e183421%_ _%$method184471%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183418%_
                                                               'receiver))
                                                            '()))
                                                _%args184472%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190101 _%stx183419%_)))))
                  (_%__kont189442189443%_
                   (lambda (_%L184255%_
                            _%L184256%_
                            _%L184257%_
                            _%L184258%_
                            _%L184259%_)
                     (let ((_%$method184311%_
                            (let ((__tmp190103
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183418%_ 'methods)))
                                  (__tmp190102
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L184256%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190103 __tmp190102)))
                           (_%args184312%_
                            (map (lambda (_%g184299184301%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self183418%_
                                      _%g184299184301%_)))
                                 (let ((__tmp190104
                                        (lambda (_%g184303184306%_
                                                 _%g184304184308%_)
                                          (cons _%g184303184306%_
                                                _%g184304184308%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp190104 '() _%L184255%_)))))
                       (let ((__tmp190105
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e183421%_
                                                 _%$method184311%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self183418%_ 'receiver))
                          '()))
              _%args184312%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190105 _%stx183419%_)))))
                  (_%__kont189446189447%_
                   (lambda (_%L184086%_ _%L184087%_ _%L184088%_)
                     (let* ((_%$field184120%_
                             (let ((__tmp190107
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self183418%_ 'slots)))
                                   (__tmp190106
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L184086%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp190107 __tmp190106)))
                            (__tmp190108
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self183418%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field184120%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self183418%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp190108 _%stx183419%_))))
                  (_%__kont189448189449%_
                   (lambda (_%L183960%_ _%L183961%_ _%L183962%_ _%L183963%_)
                     (let ((_%$field183998%_
                            (let ((__tmp190110
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183418%_ 'slots)))
                                  (__tmp190109
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L183961%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190110 __tmp190109)))
                           (_%expr183999%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self183418%_ _%L183960%_))))
                       (let ((__tmp190111
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self183418%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field183998%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self183418%_ 'receiver))
                          '()))
              (cons _%expr183999%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190111 _%stx183419%_)))))
                  (_%__kont189450189451%_
                   (lambda (_%L183832%_ _%L183833%_)
                     (let* ((_%accessor183855%_
                             (let ((__tmp190112
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L183833%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp190112)))
                            (_%klass183857%_
                             (let ((__tmp190113
                                    (##structure-ref
                                     _%accessor183855%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx183419%_
                                __tmp190113)))
                            (_%slot183859%_
                             (##structure-ref
                              _%accessor183855%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor183855%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass183857%_
                                      _%slot183859%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass183857%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx183419%_
                           (let* ((_%$field183865%_
                                   (let ((__tmp190114
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183418%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp190114 _%slot183859%_)))
                                  (__tmp190115
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self183418%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field183865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self183418%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190115
                              _%stx183419%_))))))
                  (_%__kont189452189453%_
                   (lambda (_%L183727%_ _%L183728%_ _%L183729%_)
                     (let* ((_%mutator183757%_
                             (let ((__tmp190116
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L183729%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp190116)))
                            (_%klass183759%_
                             (let ((__tmp190117
                                    (##structure-ref
                                     _%mutator183757%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx183419%_
                                __tmp190117)))
                            (_%slot183761%_
                             (##structure-ref
                              _%mutator183757%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr183763%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self183418%_ _%L183727%_))))
                       (if (if (##structure-ref
                                _%mutator183757%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass183759%_
                                      _%slot183761%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass183759%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp190118
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L183729%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L183728%_
                                                                '()))
                                                    (cons _%expr183763%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190118 _%stx183419%_))
                           (let* ((_%$field183769%_
                                   (let ((__tmp190119
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183418%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp190119 _%slot183761%_)))
                                  (__tmp190120
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self183418%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field183769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self183418%_ 'receiver))
                               '()))
                   (cons _%expr183763%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190120
                              _%stx183419%_))))))
                  (_%__kont189454189455%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self183418%_ _%stx183419%_)))))
              (let* ((_%__match189935189936%_
                      (lambda (_%e183623183663%_
                               _%hd183624183666%_
                               _%tl183625183668%_
                               _%e183626183671%_
                               _%hd183627183674%_
                               _%tl183628183676%_
                               _%e183629183679%_
                               _%hd183630183682%_
                               _%tl183631183684%_
                               _%e183632183687%_
                               _%hd183633183690%_
                               _%tl183634183692%_
                               _%e183635183695%_
                               _%hd183636183698%_
                               _%tl183637183700%_
                               _%e183638183703%_
                               _%hd183639183706%_
                               _%tl183640183708%_
                               _%e183641183711%_
                               _%hd183642183714%_
                               _%tl183643183716%_
                               _%e183644183719%_
                               _%hd183645183722%_
                               _%tl183646183724%_)
                        (let ((_%L183727%_ _%hd183645183722%_)
                              (_%L183728%_ _%hd183642183714%_)
                              (_%L183729%_ _%hd183633183690%_))
                          (if (and (let ((__tmp190121
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183418%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L183728%_
                                      __tmp190121))
                                   (let ((__tmp190122
                                          (let ((__tmp190123
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L183729%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp190123))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp190122
                                      'gxc#!mutator::t)))
                              (_%__kont189452189453%_
                               _%L183727%_
                               _%L183728%_
                               _%L183729%_)
                              (_%__kont189454189455%_)))))
                     (_%__match189933189934%_
                      (lambda (_%e183623183663%_
                               _%hd183624183666%_
                               _%tl183625183668%_
                               _%e183626183671%_
                               _%hd183627183674%_
                               _%tl183628183676%_
                               _%e183629183679%_
                               _%hd183630183682%_
                               _%tl183631183684%_
                               _%e183632183687%_
                               _%hd183633183690%_
                               _%tl183634183692%_
                               _%e183635183695%_
                               _%hd183636183698%_
                               _%tl183637183700%_
                               _%e183638183703%_
                               _%hd183639183706%_
                               _%tl183640183708%_
                               _%e183641183711%_
                               _%hd183642183714%_
                               _%tl183643183716%_
                               _%e183644183719%_
                               _%hd183645183722%_
                               _%tl183646183724%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183646183724%_))
                            (_%__match189935189936%_
                             _%e183623183663%_
                             _%hd183624183666%_
                             _%tl183625183668%_
                             _%e183626183671%_
                             _%hd183627183674%_
                             _%tl183628183676%_
                             _%e183629183679%_
                             _%hd183630183682%_
                             _%tl183631183684%_
                             _%e183632183687%_
                             _%hd183633183690%_
                             _%tl183634183692%_
                             _%e183635183695%_
                             _%hd183636183698%_
                             _%tl183637183700%_
                             _%e183638183703%_
                             _%hd183639183706%_
                             _%tl183640183708%_
                             _%e183641183711%_
                             _%hd183642183714%_
                             _%tl183643183716%_
                             _%e183644183719%_
                             _%hd183645183722%_
                             _%tl183646183724%_)
                            (_%__kont189454189455%_))))
                     (_%__match189927189928%_
                      (lambda (_%e183623183663%_
                               _%hd183624183666%_
                               _%tl183625183668%_
                               _%e183626183671%_
                               _%hd183627183674%_
                               _%tl183628183676%_
                               _%e183629183679%_
                               _%hd183630183682%_
                               _%tl183631183684%_
                               _%e183632183687%_
                               _%hd183633183690%_
                               _%tl183634183692%_
                               _%e183635183695%_
                               _%hd183636183698%_
                               _%tl183637183700%_
                               _%e183638183703%_
                               _%hd183639183706%_
                               _%tl183640183708%_
                               _%e183641183711%_
                               _%hd183642183714%_
                               _%tl183643183716%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183637183700%_))
                            (let ((_%e183644183719%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183637183700%_))))
                              (let ((_%tl183646183724%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183644183719%_)))
                                    (_%hd183645183722%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183644183719%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183646183724%_))
                                    (_%__match189935189936%_
                                     _%e183623183663%_
                                     _%hd183624183666%_
                                     _%tl183625183668%_
                                     _%e183626183671%_
                                     _%hd183627183674%_
                                     _%tl183628183676%_
                                     _%e183629183679%_
                                     _%hd183630183682%_
                                     _%tl183631183684%_
                                     _%e183632183687%_
                                     _%hd183633183690%_
                                     _%tl183634183692%_
                                     _%e183635183695%_
                                     _%hd183636183698%_
                                     _%tl183637183700%_
                                     _%e183638183703%_
                                     _%hd183639183706%_
                                     _%tl183640183708%_
                                     _%e183641183711%_
                                     _%hd183642183714%_
                                     _%tl183643183716%_
                                     _%e183644183719%_
                                     _%hd183645183722%_
                                     _%tl183646183724%_)
                                    (_%__kont189454189455%_))))
                            (_%__kont189454189455%_))))
                     (_%__match189873189874%_
                      (lambda (_%e183599183776%_
                               _%hd183600183779%_
                               _%tl183601183781%_
                               _%e183602183784%_
                               _%hd183603183787%_
                               _%tl183604183789%_
                               _%e183605183792%_
                               _%hd183606183795%_
                               _%tl183607183797%_
                               _%e183608183800%_
                               _%hd183609183803%_
                               _%tl183610183805%_
                               _%e183611183808%_
                               _%hd183612183811%_
                               _%tl183613183813%_
                               _%e183614183816%_
                               _%hd183615183819%_
                               _%tl183616183821%_
                               _%e183617183824%_
                               _%hd183618183827%_
                               _%tl183619183829%_)
                        (let ((_%L183832%_ _%hd183618183827%_)
                              (_%L183833%_ _%hd183609183803%_))
                          (if (and (let ((__tmp190124
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183418%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L183832%_
                                      __tmp190124))
                                   (let ((__tmp190125
                                          (let ((__tmp190126
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L183833%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp190126))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp190125
                                      'gxc#!accessor::t)))
                              (_%__kont189450189451%_ _%L183832%_ _%L183833%_)
                              (_%__kont189454189455%_)))))
                     (_%__match189871189872%_
                      (lambda (_%e183599183776%_
                               _%hd183600183779%_
                               _%tl183601183781%_
                               _%e183602183784%_
                               _%hd183603183787%_
                               _%tl183604183789%_
                               _%e183605183792%_
                               _%hd183606183795%_
                               _%tl183607183797%_
                               _%e183608183800%_
                               _%hd183609183803%_
                               _%tl183610183805%_
                               _%e183611183808%_
                               _%hd183612183811%_
                               _%tl183613183813%_
                               _%e183614183816%_
                               _%hd183615183819%_
                               _%tl183616183821%_
                               _%e183617183824%_
                               _%hd183618183827%_
                               _%tl183619183829%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183613183813%_))
                            (_%__match189873189874%_
                             _%e183599183776%_
                             _%hd183600183779%_
                             _%tl183601183781%_
                             _%e183602183784%_
                             _%hd183603183787%_
                             _%tl183604183789%_
                             _%e183605183792%_
                             _%hd183606183795%_
                             _%tl183607183797%_
                             _%e183608183800%_
                             _%hd183609183803%_
                             _%tl183610183805%_
                             _%e183611183808%_
                             _%hd183612183811%_
                             _%tl183613183813%_
                             _%e183614183816%_
                             _%hd183615183819%_
                             _%tl183616183821%_
                             _%e183617183824%_
                             _%hd183618183827%_
                             _%tl183619183829%_)
                            (_%__match189927189928%_
                             _%e183599183776%_
                             _%hd183600183779%_
                             _%tl183601183781%_
                             _%e183602183784%_
                             _%hd183603183787%_
                             _%tl183604183789%_
                             _%e183605183792%_
                             _%hd183606183795%_
                             _%tl183607183797%_
                             _%e183608183800%_
                             _%hd183609183803%_
                             _%tl183610183805%_
                             _%e183611183808%_
                             _%hd183612183811%_
                             _%tl183613183813%_
                             _%e183614183816%_
                             _%hd183615183819%_
                             _%tl183616183821%_
                             _%e183617183824%_
                             _%hd183618183827%_
                             _%tl183619183829%_))))
                     (_%__match189817189818%_
                      (lambda (_%e183564183872%_
                               _%hd183565183875%_
                               _%tl183566183877%_
                               _%e183567183880%_
                               _%hd183568183883%_
                               _%tl183569183885%_
                               _%e183570183888%_
                               _%hd183571183891%_
                               _%tl183572183893%_
                               _%e183573183896%_
                               _%hd183574183899%_
                               _%tl183575183901%_
                               _%e183576183904%_
                               _%hd183577183907%_
                               _%tl183578183909%_
                               _%e183579183912%_
                               _%hd183580183915%_
                               _%tl183581183917%_
                               _%e183582183920%_
                               _%hd183583183923%_
                               _%tl183584183925%_
                               _%e183585183928%_
                               _%hd183586183931%_
                               _%tl183587183933%_
                               _%e183588183936%_
                               _%hd183589183939%_
                               _%tl183590183941%_
                               _%e183591183944%_
                               _%hd183592183947%_
                               _%tl183593183949%_
                               _%e183594183952%_
                               _%hd183595183955%_
                               _%tl183596183957%_)
                        (let ((_%L183960%_ _%hd183595183955%_)
                              (_%L183961%_ _%hd183592183947%_)
                              (_%L183962%_ _%hd183583183923%_)
                              (_%L183963%_ _%hd183574183899%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L183963%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L183963%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp190127
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183418%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L183962%_
                                      __tmp190127)))
                              (_%__kont189448189449%_
                               _%L183960%_
                               _%L183961%_
                               _%L183962%_
                               _%L183963%_)
                              (_%__kont189454189455%_)))))
                     (_%__match189809189810%_
                      (lambda (_%e183564183872%_
                               _%hd183565183875%_
                               _%tl183566183877%_
                               _%e183567183880%_
                               _%hd183568183883%_
                               _%tl183569183885%_
                               _%e183570183888%_
                               _%hd183571183891%_
                               _%tl183572183893%_
                               _%e183573183896%_
                               _%hd183574183899%_
                               _%tl183575183901%_
                               _%e183576183904%_
                               _%hd183577183907%_
                               _%tl183578183909%_
                               _%e183579183912%_
                               _%hd183580183915%_
                               _%tl183581183917%_
                               _%e183582183920%_
                               _%hd183583183923%_
                               _%tl183584183925%_
                               _%e183585183928%_
                               _%hd183586183931%_
                               _%tl183587183933%_
                               _%e183588183936%_
                               _%hd183589183939%_
                               _%tl183590183941%_
                               _%e183591183944%_
                               _%hd183592183947%_
                               _%tl183593183949%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183587183933%_))
                            (let ((_%e183594183952%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183587183933%_))))
                              (let ((_%tl183596183957%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183594183952%_)))
                                    (_%hd183595183955%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183594183952%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183596183957%_))
                                    (_%__match189817189818%_
                                     _%e183564183872%_
                                     _%hd183565183875%_
                                     _%tl183566183877%_
                                     _%e183567183880%_
                                     _%hd183568183883%_
                                     _%tl183569183885%_
                                     _%e183570183888%_
                                     _%hd183571183891%_
                                     _%tl183572183893%_
                                     _%e183573183896%_
                                     _%hd183574183899%_
                                     _%tl183575183901%_
                                     _%e183576183904%_
                                     _%hd183577183907%_
                                     _%tl183578183909%_
                                     _%e183579183912%_
                                     _%hd183580183915%_
                                     _%tl183581183917%_
                                     _%e183582183920%_
                                     _%hd183583183923%_
                                     _%tl183584183925%_
                                     _%e183585183928%_
                                     _%hd183586183931%_
                                     _%tl183587183933%_
                                     _%e183588183936%_
                                     _%hd183589183939%_
                                     _%tl183590183941%_
                                     _%e183591183944%_
                                     _%hd183592183947%_
                                     _%tl183593183949%_
                                     _%e183594183952%_
                                     _%hd183595183955%_
                                     _%tl183596183957%_)
                                    (_%__kont189454189455%_))))
                            (_%__match189933189934%_
                             _%e183564183872%_
                             _%hd183565183875%_
                             _%tl183566183877%_
                             _%e183567183880%_
                             _%hd183568183883%_
                             _%tl183569183885%_
                             _%e183570183888%_
                             _%hd183571183891%_
                             _%tl183572183893%_
                             _%e183573183896%_
                             _%hd183574183899%_
                             _%tl183575183901%_
                             _%e183576183904%_
                             _%hd183577183907%_
                             _%tl183578183909%_
                             _%e183579183912%_
                             _%hd183580183915%_
                             _%tl183581183917%_
                             _%e183582183920%_
                             _%hd183583183923%_
                             _%tl183584183925%_
                             _%e183585183928%_
                             _%hd183586183931%_
                             _%tl183587183933%_))))
                     (_%__match189731189732%_
                      (lambda (_%e183530184006%_
                               _%hd183531184009%_
                               _%tl183532184011%_
                               _%e183533184014%_
                               _%hd183534184017%_
                               _%tl183535184019%_
                               _%e183536184022%_
                               _%hd183537184025%_
                               _%tl183538184027%_
                               _%e183539184030%_
                               _%hd183540184033%_
                               _%tl183541184035%_
                               _%e183542184038%_
                               _%hd183543184041%_
                               _%tl183544184043%_
                               _%e183545184046%_
                               _%hd183546184049%_
                               _%tl183547184051%_
                               _%e183548184054%_
                               _%hd183549184057%_
                               _%tl183550184059%_
                               _%e183551184062%_
                               _%hd183552184065%_
                               _%tl183553184067%_
                               _%e183554184070%_
                               _%hd183555184073%_
                               _%tl183556184075%_
                               _%e183557184078%_
                               _%hd183558184081%_
                               _%tl183559184083%_)
                        (let ((_%L184086%_ _%hd183558184081%_)
                              (_%L184087%_ _%hd183549184057%_)
                              (_%L184088%_ _%hd183540184033%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L184088%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L184088%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp190128
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183418%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L184087%_
                                      __tmp190128)))
                              (_%__kont189446189447%_
                               _%L184086%_
                               _%L184087%_
                               _%L184088%_)
                              (_%__match189935189936%_
                               _%e183530184006%_
                               _%hd183531184009%_
                               _%tl183532184011%_
                               _%e183533184014%_
                               _%hd183534184017%_
                               _%tl183535184019%_
                               _%e183536184022%_
                               _%hd183537184025%_
                               _%tl183538184027%_
                               _%e183539184030%_
                               _%hd183540184033%_
                               _%tl183541184035%_
                               _%e183542184038%_
                               _%hd183543184041%_
                               _%tl183544184043%_
                               _%e183545184046%_
                               _%hd183546184049%_
                               _%tl183547184051%_
                               _%e183548184054%_
                               _%hd183549184057%_
                               _%tl183550184059%_
                               _%e183551184062%_
                               _%hd183552184065%_
                               _%tl183553184067%_)))))
                     (_%__match189729189730%_
                      (lambda (_%e183530184006%_
                               _%hd183531184009%_
                               _%tl183532184011%_
                               _%e183533184014%_
                               _%hd183534184017%_
                               _%tl183535184019%_
                               _%e183536184022%_
                               _%hd183537184025%_
                               _%tl183538184027%_
                               _%e183539184030%_
                               _%hd183540184033%_
                               _%tl183541184035%_
                               _%e183542184038%_
                               _%hd183543184041%_
                               _%tl183544184043%_
                               _%e183545184046%_
                               _%hd183546184049%_
                               _%tl183547184051%_
                               _%e183548184054%_
                               _%hd183549184057%_
                               _%tl183550184059%_
                               _%e183551184062%_
                               _%hd183552184065%_
                               _%tl183553184067%_
                               _%e183554184070%_
                               _%hd183555184073%_
                               _%tl183556184075%_
                               _%e183557184078%_
                               _%hd183558184081%_
                               _%tl183559184083%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183553184067%_))
                            (_%__match189731189732%_
                             _%e183530184006%_
                             _%hd183531184009%_
                             _%tl183532184011%_
                             _%e183533184014%_
                             _%hd183534184017%_
                             _%tl183535184019%_
                             _%e183536184022%_
                             _%hd183537184025%_
                             _%tl183538184027%_
                             _%e183539184030%_
                             _%hd183540184033%_
                             _%tl183541184035%_
                             _%e183542184038%_
                             _%hd183543184041%_
                             _%tl183544184043%_
                             _%e183545184046%_
                             _%hd183546184049%_
                             _%tl183547184051%_
                             _%e183548184054%_
                             _%hd183549184057%_
                             _%tl183550184059%_
                             _%e183551184062%_
                             _%hd183552184065%_
                             _%tl183553184067%_
                             _%e183554184070%_
                             _%hd183555184073%_
                             _%tl183556184075%_
                             _%e183557184078%_
                             _%hd183558184081%_
                             _%tl183559184083%_)
                            (_%__match189809189810%_
                             _%e183530184006%_
                             _%hd183531184009%_
                             _%tl183532184011%_
                             _%e183533184014%_
                             _%hd183534184017%_
                             _%tl183535184019%_
                             _%e183536184022%_
                             _%hd183537184025%_
                             _%tl183538184027%_
                             _%e183539184030%_
                             _%hd183540184033%_
                             _%tl183541184035%_
                             _%e183542184038%_
                             _%hd183543184041%_
                             _%tl183544184043%_
                             _%e183545184046%_
                             _%hd183546184049%_
                             _%tl183547184051%_
                             _%e183548184054%_
                             _%hd183549184057%_
                             _%tl183550184059%_
                             _%e183551184062%_
                             _%hd183552184065%_
                             _%tl183553184067%_
                             _%e183554184070%_
                             _%hd183555184073%_
                             _%tl183556184075%_
                             _%e183557184078%_
                             _%hd183558184081%_
                             _%tl183559184083%_))))
                     (_%__match189719189720%_
                      (lambda (_%e183530184006%_
                               _%hd183531184009%_
                               _%tl183532184011%_
                               _%e183533184014%_
                               _%hd183534184017%_
                               _%tl183535184019%_
                               _%e183536184022%_
                               _%hd183537184025%_
                               _%tl183538184027%_
                               _%e183539184030%_
                               _%hd183540184033%_
                               _%tl183541184035%_
                               _%e183542184038%_
                               _%hd183543184041%_
                               _%tl183544184043%_
                               _%e183545184046%_
                               _%hd183546184049%_
                               _%tl183547184051%_
                               _%e183548184054%_
                               _%hd183549184057%_
                               _%tl183550184059%_
                               _%e183551184062%_
                               _%hd183552184065%_
                               _%tl183553184067%_
                               _%e183554184070%_
                               _%hd183555184073%_
                               _%tl183556184075%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd183555184073%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183556184075%_))
                                (let ((_%e183557184078%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183556184075%_))))
                                  (let ((_%tl183559184083%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183557184078%_)))
                                        (_%hd183558184081%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183557184078%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183559184083%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl183553184067%_))
                                            (_%__match189731189732%_
                                             _%e183530184006%_
                                             _%hd183531184009%_
                                             _%tl183532184011%_
                                             _%e183533184014%_
                                             _%hd183534184017%_
                                             _%tl183535184019%_
                                             _%e183536184022%_
                                             _%hd183537184025%_
                                             _%tl183538184027%_
                                             _%e183539184030%_
                                             _%hd183540184033%_
                                             _%tl183541184035%_
                                             _%e183542184038%_
                                             _%hd183543184041%_
                                             _%tl183544184043%_
                                             _%e183545184046%_
                                             _%hd183546184049%_
                                             _%tl183547184051%_
                                             _%e183548184054%_
                                             _%hd183549184057%_
                                             _%tl183550184059%_
                                             _%e183551184062%_
                                             _%hd183552184065%_
                                             _%tl183553184067%_
                                             _%e183554184070%_
                                             _%hd183555184073%_
                                             _%tl183556184075%_
                                             _%e183557184078%_
                                             _%hd183558184081%_
                                             _%tl183559184083%_)
                                            (_%__match189809189810%_
                                             _%e183530184006%_
                                             _%hd183531184009%_
                                             _%tl183532184011%_
                                             _%e183533184014%_
                                             _%hd183534184017%_
                                             _%tl183535184019%_
                                             _%e183536184022%_
                                             _%hd183537184025%_
                                             _%tl183538184027%_
                                             _%e183539184030%_
                                             _%hd183540184033%_
                                             _%tl183541184035%_
                                             _%e183542184038%_
                                             _%hd183543184041%_
                                             _%tl183544184043%_
                                             _%e183545184046%_
                                             _%hd183546184049%_
                                             _%tl183547184051%_
                                             _%e183548184054%_
                                             _%hd183549184057%_
                                             _%tl183550184059%_
                                             _%e183551184062%_
                                             _%hd183552184065%_
                                             _%tl183553184067%_
                                             _%e183554184070%_
                                             _%hd183555184073%_
                                             _%tl183556184075%_
                                             _%e183557184078%_
                                             _%hd183558184081%_
                                             _%tl183559184083%_))
                                        (_%__match189933189934%_
                                         _%e183530184006%_
                                         _%hd183531184009%_
                                         _%tl183532184011%_
                                         _%e183533184014%_
                                         _%hd183534184017%_
                                         _%tl183535184019%_
                                         _%e183536184022%_
                                         _%hd183537184025%_
                                         _%tl183538184027%_
                                         _%e183539184030%_
                                         _%hd183540184033%_
                                         _%tl183541184035%_
                                         _%e183542184038%_
                                         _%hd183543184041%_
                                         _%tl183544184043%_
                                         _%e183545184046%_
                                         _%hd183546184049%_
                                         _%tl183547184051%_
                                         _%e183548184054%_
                                         _%hd183549184057%_
                                         _%tl183550184059%_
                                         _%e183551184062%_
                                         _%hd183552184065%_
                                         _%tl183553184067%_))))
                                (_%__match189933189934%_
                                 _%e183530184006%_
                                 _%hd183531184009%_
                                 _%tl183532184011%_
                                 _%e183533184014%_
                                 _%hd183534184017%_
                                 _%tl183535184019%_
                                 _%e183536184022%_
                                 _%hd183537184025%_
                                 _%tl183538184027%_
                                 _%e183539184030%_
                                 _%hd183540184033%_
                                 _%tl183541184035%_
                                 _%e183542184038%_
                                 _%hd183543184041%_
                                 _%tl183544184043%_
                                 _%e183545184046%_
                                 _%hd183546184049%_
                                 _%tl183547184051%_
                                 _%e183548184054%_
                                 _%hd183549184057%_
                                 _%tl183550184059%_
                                 _%e183551184062%_
                                 _%hd183552184065%_
                                 _%tl183553184067%_))
                            (_%__match189933189934%_
                             _%e183530184006%_
                             _%hd183531184009%_
                             _%tl183532184011%_
                             _%e183533184014%_
                             _%hd183534184017%_
                             _%tl183535184019%_
                             _%e183536184022%_
                             _%hd183537184025%_
                             _%tl183538184027%_
                             _%e183539184030%_
                             _%hd183540184033%_
                             _%tl183541184035%_
                             _%e183542184038%_
                             _%hd183543184041%_
                             _%tl183544184043%_
                             _%e183545184046%_
                             _%hd183546184049%_
                             _%tl183547184051%_
                             _%e183548184054%_
                             _%hd183549184057%_
                             _%tl183550184059%_
                             _%e183551184062%_
                             _%hd183552184065%_
                             _%tl183553184067%_))))
                     (_%__match189651189652%_
                      (lambda (_%e183479184127%_
                               _%hd183480184130%_
                               _%tl183481184132%_
                               _%e183482184135%_
                               _%hd183483184138%_
                               _%tl183484184140%_
                               _%e183485184143%_
                               _%hd183486184146%_
                               _%tl183487184148%_
                               _%e183488184151%_
                               _%hd183489184154%_
                               _%tl183490184156%_
                               _%e183491184159%_
                               _%hd183492184162%_
                               _%tl183493184164%_
                               _%e183494184167%_
                               _%hd183495184170%_
                               _%tl183496184172%_
                               _%e183497184175%_
                               _%hd183498184178%_
                               _%tl183499184180%_
                               _%e183500184183%_
                               _%hd183501184186%_
                               _%tl183502184188%_
                               _%e183503184191%_
                               _%hd183504184194%_
                               _%tl183505184196%_
                               _%e183506184199%_
                               _%hd183507184202%_
                               _%tl183508184204%_
                               _%e183509184207%_
                               _%hd183510184210%_
                               _%tl183511184212%_
                               _%e183512184215%_
                               _%hd183513184218%_
                               _%tl183514184220%_
                               _%e183515184223%_
                               _%hd183516184226%_
                               _%tl183517184228%_
                               _%__splice189444189445%_
                               _%target183518184231%_
                               _%tl183520184233%_)
                        (letrec ((_%loop183521184236%_
                                  (lambda (_%hd183519184239%_
                                           _%args183525184241%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183519184239%_))
                                        (let ((_%e183522184244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183519184239%_))))
                                          (let ((_%lp-tl183524184249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183522184244%_)))
                                                (_%lp-hd183523184247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183522184244%_))))
                                            (_%loop183521184236%_
                                             _%lp-tl183524184249%_
                                             (cons _%lp-hd183523184247%_
                                                   _%args183525184241%_))))
                                        (let ((_%args183526184252%_
                                               (reverse _%args183525184241%_)))
                                          (let ((_%L184255%_
                                                 _%args183526184252%_)
                                                (_%L184256%_
                                                 _%hd183516184226%_)
                                                (_%L184257%_
                                                 _%hd183507184202%_)
                                                (_%L184258%_
                                                 _%hd183498184178%_)
                                                (_%L184259%_
                                                 _%hd183489184154%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L184259%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L184258%_
                                                        'call-method))
                                                     (let ((__tmp190129
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183418%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L184257%_
                                                        __tmp190129)))
                                                (_%__kont189442189443%_
                                                 _%L184255%_
                                                 _%L184256%_
                                                 _%L184257%_
                                                 _%L184258%_
                                                 _%L184259%_)
                                                (_%__kont189454189455%_))))))))
                          (_%loop183521184236%_ _%target183518184231%_ '()))))
                     (_%__match189609189610%_
                      (lambda (_%e183479184127%_
                               _%hd183480184130%_
                               _%tl183481184132%_
                               _%e183482184135%_
                               _%hd183483184138%_
                               _%tl183484184140%_
                               _%e183485184143%_
                               _%hd183486184146%_
                               _%tl183487184148%_
                               _%e183488184151%_
                               _%hd183489184154%_
                               _%tl183490184156%_
                               _%e183491184159%_
                               _%hd183492184162%_
                               _%tl183493184164%_
                               _%e183494184167%_
                               _%hd183495184170%_
                               _%tl183496184172%_
                               _%e183497184175%_
                               _%hd183498184178%_
                               _%tl183499184180%_
                               _%e183500184183%_
                               _%hd183501184186%_
                               _%tl183502184188%_
                               _%e183503184191%_
                               _%hd183504184194%_
                               _%tl183505184196%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd183504184194%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183505184196%_))
                                (let ((_%e183506184199%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183505184196%_))))
                                  (let ((_%tl183508184204%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183506184199%_)))
                                        (_%hd183507184202%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183506184199%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183508184204%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183502184188%_))
                                            (let ((_%e183509184207%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183502184188%_))))
                                              (let ((_%tl183511184212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183509184207%_)))
                                                    (_%hd183510184210%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183509184207%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd183510184210%_))
                                                    (let ((_%e183512184215%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd183510184210%_))))
                                                      (let ((_%tl183514184220%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e183512184215%_)))
                    (_%hd183513184218%_
                     (let () (declare (not safe)) (##car _%e183512184215%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd183513184218%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd183513184218%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183514184220%_))
                            (let ((_%e183515184223%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183514184220%_))))
                              (let ((_%tl183517184228%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183515184223%_)))
                                    (_%hd183516184226%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183515184223%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183517184228%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl183511184212%_))
                                        (let ((_%__splice189444189445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl183511184212%_
                                                  '0))))
                                          (let ((_%tl183520184233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice189444189445%_
                                                    '1)))
                                                (_%target183518184231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice189444189445%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl183520184233%_))
                                                (_%__match189651189652%_
                                                 _%e183479184127%_
                                                 _%hd183480184130%_
                                                 _%tl183481184132%_
                                                 _%e183482184135%_
                                                 _%hd183483184138%_
                                                 _%tl183484184140%_
                                                 _%e183485184143%_
                                                 _%hd183486184146%_
                                                 _%tl183487184148%_
                                                 _%e183488184151%_
                                                 _%hd183489184154%_
                                                 _%tl183490184156%_
                                                 _%e183491184159%_
                                                 _%hd183492184162%_
                                                 _%tl183493184164%_
                                                 _%e183494184167%_
                                                 _%hd183495184170%_
                                                 _%tl183496184172%_
                                                 _%e183497184175%_
                                                 _%hd183498184178%_
                                                 _%tl183499184180%_
                                                 _%e183500184183%_
                                                 _%hd183501184186%_
                                                 _%tl183502184188%_
                                                 _%e183503184191%_
                                                 _%hd183504184194%_
                                                 _%tl183505184196%_
                                                 _%e183506184199%_
                                                 _%hd183507184202%_
                                                 _%tl183508184204%_
                                                 _%e183509184207%_
                                                 _%hd183510184210%_
                                                 _%tl183511184212%_
                                                 _%e183512184215%_
                                                 _%hd183513184218%_
                                                 _%tl183514184220%_
                                                 _%e183515184223%_
                                                 _%hd183516184226%_
                                                 _%tl183517184228%_
                                                 _%__splice189444189445%_
                                                 _%target183518184231%_
                                                 _%tl183520184233%_)
                                                (_%__kont189454189455%_))))
                                        (_%__kont189454189455%_))
                                    (_%__kont189454189455%_))))
                            (_%__kont189454189455%_))
                        (_%__kont189454189455%_))
                    (_%__kont189454189455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont189454189455%_))))
                                            (_%__match189933189934%_
                                             _%e183479184127%_
                                             _%hd183480184130%_
                                             _%tl183481184132%_
                                             _%e183482184135%_
                                             _%hd183483184138%_
                                             _%tl183484184140%_
                                             _%e183485184143%_
                                             _%hd183486184146%_
                                             _%tl183487184148%_
                                             _%e183488184151%_
                                             _%hd183489184154%_
                                             _%tl183490184156%_
                                             _%e183491184159%_
                                             _%hd183492184162%_
                                             _%tl183493184164%_
                                             _%e183494184167%_
                                             _%hd183495184170%_
                                             _%tl183496184172%_
                                             _%e183497184175%_
                                             _%hd183498184178%_
                                             _%tl183499184180%_
                                             _%e183500184183%_
                                             _%hd183501184186%_
                                             _%tl183502184188%_))
                                        (_%__match189933189934%_
                                         _%e183479184127%_
                                         _%hd183480184130%_
                                         _%tl183481184132%_
                                         _%e183482184135%_
                                         _%hd183483184138%_
                                         _%tl183484184140%_
                                         _%e183485184143%_
                                         _%hd183486184146%_
                                         _%tl183487184148%_
                                         _%e183488184151%_
                                         _%hd183489184154%_
                                         _%tl183490184156%_
                                         _%e183491184159%_
                                         _%hd183492184162%_
                                         _%tl183493184164%_
                                         _%e183494184167%_
                                         _%hd183495184170%_
                                         _%tl183496184172%_
                                         _%e183497184175%_
                                         _%hd183498184178%_
                                         _%tl183499184180%_
                                         _%e183500184183%_
                                         _%hd183501184186%_
                                         _%tl183502184188%_))))
                                (_%__match189933189934%_
                                 _%e183479184127%_
                                 _%hd183480184130%_
                                 _%tl183481184132%_
                                 _%e183482184135%_
                                 _%hd183483184138%_
                                 _%tl183484184140%_
                                 _%e183485184143%_
                                 _%hd183486184146%_
                                 _%tl183487184148%_
                                 _%e183488184151%_
                                 _%hd183489184154%_
                                 _%tl183490184156%_
                                 _%e183491184159%_
                                 _%hd183492184162%_
                                 _%tl183493184164%_
                                 _%e183494184167%_
                                 _%hd183495184170%_
                                 _%tl183496184172%_
                                 _%e183497184175%_
                                 _%hd183498184178%_
                                 _%tl183499184180%_
                                 _%e183500184183%_
                                 _%hd183501184186%_
                                 _%tl183502184188%_))
                            (_%__match189719189720%_
                             _%e183479184127%_
                             _%hd183480184130%_
                             _%tl183481184132%_
                             _%e183482184135%_
                             _%hd183483184138%_
                             _%tl183484184140%_
                             _%e183485184143%_
                             _%hd183486184146%_
                             _%tl183487184148%_
                             _%e183488184151%_
                             _%hd183489184154%_
                             _%tl183490184156%_
                             _%e183491184159%_
                             _%hd183492184162%_
                             _%tl183493184164%_
                             _%e183494184167%_
                             _%hd183495184170%_
                             _%tl183496184172%_
                             _%e183497184175%_
                             _%hd183498184178%_
                             _%tl183499184180%_
                             _%e183500184183%_
                             _%hd183501184186%_
                             _%tl183502184188%_
                             _%e183503184191%_
                             _%hd183504184194%_
                             _%tl183505184196%_))))
                     (_%__match189541189542%_
                      (lambda (_%e183435184319%_
                               _%hd183436184322%_
                               _%tl183437184324%_
                               _%e183438184327%_
                               _%hd183439184330%_
                               _%tl183440184332%_
                               _%e183441184335%_
                               _%hd183442184338%_
                               _%tl183443184340%_
                               _%e183444184343%_
                               _%hd183445184346%_
                               _%tl183446184348%_
                               _%e183447184351%_
                               _%hd183448184354%_
                               _%tl183449184356%_
                               _%e183450184359%_
                               _%hd183451184362%_
                               _%tl183452184364%_
                               _%e183453184367%_
                               _%hd183454184370%_
                               _%tl183455184372%_
                               _%e183456184375%_
                               _%hd183457184378%_
                               _%tl183458184380%_
                               _%e183459184383%_
                               _%hd183460184386%_
                               _%tl183461184388%_
                               _%e183462184391%_
                               _%hd183463184394%_
                               _%tl183464184396%_
                               _%__splice189440189441%_
                               _%target183465184399%_
                               _%tl183467184401%_)
                        (letrec ((_%loop183468184404%_
                                  (lambda (_%hd183466184407%_
                                           _%args183472184409%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183466184407%_))
                                        (let ((_%e183469184412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183466184407%_))))
                                          (let ((_%lp-tl183471184417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183469184412%_)))
                                                (_%lp-hd183470184415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183469184412%_))))
                                            (_%loop183468184404%_
                                             _%lp-tl183471184417%_
                                             (cons _%lp-hd183470184415%_
                                                   _%args183472184409%_))))
                                        (let ((_%args183473184420%_
                                               (reverse _%args183472184409%_)))
                                          (let ((_%L184423%_
                                                 _%args183473184420%_)
                                                (_%L184424%_
                                                 _%hd183463184394%_)
                                                (_%L184425%_
                                                 _%hd183454184370%_)
                                                (_%L184426%_
                                                 _%hd183445184346%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L184426%_
                                                        'call-method))
                                                     (let ((__tmp190130
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183418%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L184425%_
                                                        __tmp190130)))
                                                (_%__kont189438189439%_
                                                 _%L184423%_
                                                 _%L184424%_
                                                 _%L184425%_
                                                 _%L184426%_)
                                                (_%__match189729189730%_
                                                 _%e183435184319%_
                                                 _%hd183436184322%_
                                                 _%tl183437184324%_
                                                 _%e183438184327%_
                                                 _%hd183439184330%_
                                                 _%tl183440184332%_
                                                 _%e183441184335%_
                                                 _%hd183442184338%_
                                                 _%tl183443184340%_
                                                 _%e183444184343%_
                                                 _%hd183445184346%_
                                                 _%tl183446184348%_
                                                 _%e183447184351%_
                                                 _%hd183448184354%_
                                                 _%tl183449184356%_
                                                 _%e183450184359%_
                                                 _%hd183451184362%_
                                                 _%tl183452184364%_
                                                 _%e183453184367%_
                                                 _%hd183454184370%_
                                                 _%tl183455184372%_
                                                 _%e183456184375%_
                                                 _%hd183457184378%_
                                                 _%tl183458184380%_
                                                 _%e183459184383%_
                                                 _%hd183460184386%_
                                                 _%tl183461184388%_
                                                 _%e183462184391%_
                                                 _%hd183463184394%_
                                                 _%tl183464184396%_))))))))
                          (_%loop183468184404%_ _%target183465184399%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189436189437%_))
                    (let ((_%e183435184319%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189436189437%_))))
                      (let ((_%tl183437184324%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183435184319%_)))
                            (_%hd183436184322%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183435184319%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183437184324%_))
                            (let ((_%e183438184327%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183437184324%_))))
                              (let ((_%tl183440184332%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183438184327%_)))
                                    (_%hd183439184330%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183438184327%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd183439184330%_))
                                    (let ((_%e183441184335%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd183439184330%_))))
                                      (let ((_%tl183443184340%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183441184335%_)))
                                            (_%hd183442184338%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183441184335%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd183442184338%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd183442184338%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl183443184340%_))
                                                    (let ((_%e183444184343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl183443184340%_))))
                                                      (let ((_%tl183446184348%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e183444184343%_)))
                    (_%hd183445184346%_
                     (let () (declare (not safe)) (##car _%e183444184343%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl183446184348%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl183440184332%_))
                        (let ((_%e183447184351%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl183440184332%_))))
                          (let ((_%tl183449184356%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e183447184351%_)))
                                (_%hd183448184354%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e183447184351%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd183448184354%_))
                                (let ((_%e183450184359%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd183448184354%_))))
                                  (let ((_%tl183452184364%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183450184359%_)))
                                        (_%hd183451184362%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183450184359%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd183451184362%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd183451184362%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl183452184364%_))
                                                (let ((_%e183453184367%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl183452184364%_))))
                                                  (let ((_%tl183455184372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e183453184367%_)))
                                                        (_%hd183454184370%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e183453184367%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl183455184372%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl183449184356%_))
                                                            (let ((_%e183456184375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl183449184356%_))))
                      (let ((_%tl183458184380%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183456184375%_)))
                            (_%hd183457184378%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183456184375%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd183457184378%_))
                            (let ((_%e183459184383%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd183457184378%_))))
                              (let ((_%tl183461184388%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183459184383%_)))
                                    (_%hd183460184386%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183459184383%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd183460184386%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd183460184386%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183461184388%_))
                                            (let ((_%e183462184391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183461184388%_))))
                                              (let ((_%tl183464184396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183462184391%_)))
                                                    (_%hd183463184394%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183462184391%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl183464184396%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl183458184380%_))
                                                        (let ((_%__splice189440189441%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl183458184380%_
                          '0))))
                  (let ((_%tl183467184401%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice189440189441%_ '1)))
                        (_%target183465184399%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice189440189441%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl183467184401%_))
                        (_%__match189541189542%_
                         _%e183435184319%_
                         _%hd183436184322%_
                         _%tl183437184324%_
                         _%e183438184327%_
                         _%hd183439184330%_
                         _%tl183440184332%_
                         _%e183441184335%_
                         _%hd183442184338%_
                         _%tl183443184340%_
                         _%e183444184343%_
                         _%hd183445184346%_
                         _%tl183446184348%_
                         _%e183447184351%_
                         _%hd183448184354%_
                         _%tl183449184356%_
                         _%e183450184359%_
                         _%hd183451184362%_
                         _%tl183452184364%_
                         _%e183453184367%_
                         _%hd183454184370%_
                         _%tl183455184372%_
                         _%e183456184375%_
                         _%hd183457184378%_
                         _%tl183458184380%_
                         _%e183459184383%_
                         _%hd183460184386%_
                         _%tl183461184388%_
                         _%e183462184391%_
                         _%hd183463184394%_
                         _%tl183464184396%_
                         _%__splice189440189441%_
                         _%target183465184399%_
                         _%tl183467184401%_)
                        (_%__match189729189730%_
                         _%e183435184319%_
                         _%hd183436184322%_
                         _%tl183437184324%_
                         _%e183438184327%_
                         _%hd183439184330%_
                         _%tl183440184332%_
                         _%e183441184335%_
                         _%hd183442184338%_
                         _%tl183443184340%_
                         _%e183444184343%_
                         _%hd183445184346%_
                         _%tl183446184348%_
                         _%e183447184351%_
                         _%hd183448184354%_
                         _%tl183449184356%_
                         _%e183450184359%_
                         _%hd183451184362%_
                         _%tl183452184364%_
                         _%e183453184367%_
                         _%hd183454184370%_
                         _%tl183455184372%_
                         _%e183456184375%_
                         _%hd183457184378%_
                         _%tl183458184380%_
                         _%e183459184383%_
                         _%hd183460184386%_
                         _%tl183461184388%_
                         _%e183462184391%_
                         _%hd183463184394%_
                         _%tl183464184396%_))))
                (_%__match189729189730%_
                 _%e183435184319%_
                 _%hd183436184322%_
                 _%tl183437184324%_
                 _%e183438184327%_
                 _%hd183439184330%_
                 _%tl183440184332%_
                 _%e183441184335%_
                 _%hd183442184338%_
                 _%tl183443184340%_
                 _%e183444184343%_
                 _%hd183445184346%_
                 _%tl183446184348%_
                 _%e183447184351%_
                 _%hd183448184354%_
                 _%tl183449184356%_
                 _%e183450184359%_
                 _%hd183451184362%_
                 _%tl183452184364%_
                 _%e183453184367%_
                 _%hd183454184370%_
                 _%tl183455184372%_
                 _%e183456184375%_
                 _%hd183457184378%_
                 _%tl183458184380%_
                 _%e183459184383%_
                 _%hd183460184386%_
                 _%tl183461184388%_
                 _%e183462184391%_
                 _%hd183463184394%_
                 _%tl183464184396%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match189933189934%_
                                                     _%e183435184319%_
                                                     _%hd183436184322%_
                                                     _%tl183437184324%_
                                                     _%e183438184327%_
                                                     _%hd183439184330%_
                                                     _%tl183440184332%_
                                                     _%e183441184335%_
                                                     _%hd183442184338%_
                                                     _%tl183443184340%_
                                                     _%e183444184343%_
                                                     _%hd183445184346%_
                                                     _%tl183446184348%_
                                                     _%e183447184351%_
                                                     _%hd183448184354%_
                                                     _%tl183449184356%_
                                                     _%e183450184359%_
                                                     _%hd183451184362%_
                                                     _%tl183452184364%_
                                                     _%e183453184367%_
                                                     _%hd183454184370%_
                                                     _%tl183455184372%_
                                                     _%e183456184375%_
                                                     _%hd183457184378%_
                                                     _%tl183458184380%_))))
                                            (_%__match189933189934%_
                                             _%e183435184319%_
                                             _%hd183436184322%_
                                             _%tl183437184324%_
                                             _%e183438184327%_
                                             _%hd183439184330%_
                                             _%tl183440184332%_
                                             _%e183441184335%_
                                             _%hd183442184338%_
                                             _%tl183443184340%_
                                             _%e183444184343%_
                                             _%hd183445184346%_
                                             _%tl183446184348%_
                                             _%e183447184351%_
                                             _%hd183448184354%_
                                             _%tl183449184356%_
                                             _%e183450184359%_
                                             _%hd183451184362%_
                                             _%tl183452184364%_
                                             _%e183453184367%_
                                             _%hd183454184370%_
                                             _%tl183455184372%_
                                             _%e183456184375%_
                                             _%hd183457184378%_
                                             _%tl183458184380%_))
                                        (_%__match189609189610%_
                                         _%e183435184319%_
                                         _%hd183436184322%_
                                         _%tl183437184324%_
                                         _%e183438184327%_
                                         _%hd183439184330%_
                                         _%tl183440184332%_
                                         _%e183441184335%_
                                         _%hd183442184338%_
                                         _%tl183443184340%_
                                         _%e183444184343%_
                                         _%hd183445184346%_
                                         _%tl183446184348%_
                                         _%e183447184351%_
                                         _%hd183448184354%_
                                         _%tl183449184356%_
                                         _%e183450184359%_
                                         _%hd183451184362%_
                                         _%tl183452184364%_
                                         _%e183453184367%_
                                         _%hd183454184370%_
                                         _%tl183455184372%_
                                         _%e183456184375%_
                                         _%hd183457184378%_
                                         _%tl183458184380%_
                                         _%e183459184383%_
                                         _%hd183460184386%_
                                         _%tl183461184388%_))
                                    (_%__match189933189934%_
                                     _%e183435184319%_
                                     _%hd183436184322%_
                                     _%tl183437184324%_
                                     _%e183438184327%_
                                     _%hd183439184330%_
                                     _%tl183440184332%_
                                     _%e183441184335%_
                                     _%hd183442184338%_
                                     _%tl183443184340%_
                                     _%e183444184343%_
                                     _%hd183445184346%_
                                     _%tl183446184348%_
                                     _%e183447184351%_
                                     _%hd183448184354%_
                                     _%tl183449184356%_
                                     _%e183450184359%_
                                     _%hd183451184362%_
                                     _%tl183452184364%_
                                     _%e183453184367%_
                                     _%hd183454184370%_
                                     _%tl183455184372%_
                                     _%e183456184375%_
                                     _%hd183457184378%_
                                     _%tl183458184380%_))))
                            (_%__match189933189934%_
                             _%e183435184319%_
                             _%hd183436184322%_
                             _%tl183437184324%_
                             _%e183438184327%_
                             _%hd183439184330%_
                             _%tl183440184332%_
                             _%e183441184335%_
                             _%hd183442184338%_
                             _%tl183443184340%_
                             _%e183444184343%_
                             _%hd183445184346%_
                             _%tl183446184348%_
                             _%e183447184351%_
                             _%hd183448184354%_
                             _%tl183449184356%_
                             _%e183450184359%_
                             _%hd183451184362%_
                             _%tl183452184364%_
                             _%e183453184367%_
                             _%hd183454184370%_
                             _%tl183455184372%_
                             _%e183456184375%_
                             _%hd183457184378%_
                             _%tl183458184380%_))))
                    (_%__match189871189872%_
                     _%e183435184319%_
                     _%hd183436184322%_
                     _%tl183437184324%_
                     _%e183438184327%_
                     _%hd183439184330%_
                     _%tl183440184332%_
                     _%e183441184335%_
                     _%hd183442184338%_
                     _%tl183443184340%_
                     _%e183444184343%_
                     _%hd183445184346%_
                     _%tl183446184348%_
                     _%e183447184351%_
                     _%hd183448184354%_
                     _%tl183449184356%_
                     _%e183450184359%_
                     _%hd183451184362%_
                     _%tl183452184364%_
                     _%e183453184367%_
                     _%hd183454184370%_
                     _%tl183455184372%_))
                (_%__kont189454189455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont189454189455%_))
                                            (_%__kont189454189455%_))
                                        (_%__kont189454189455%_))))
                                (_%__kont189454189455%_))))
                        (_%__kont189454189455%_))
                    (_%__kont189454189455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont189454189455%_))
                                                (_%__kont189454189455%_))
                                            (_%__kont189454189455%_))))
                                    (_%__kont189454189455%_))))
                            (_%__kont189454189455%_))))
                    (_%__kont189454189455%_))))))))))
